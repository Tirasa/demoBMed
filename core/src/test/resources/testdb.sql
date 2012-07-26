-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--       http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
ALTER USER sa SET PASSWORD '${testdb.password}';

DROP TABLE liferay IF EXISTS;
CREATE TABLE liferay (
id VARCHAR(50) PRIMARY KEY,
password VARCHAR(255) NOT NULL,
nome VARCHAR(255) NOT NULL,
cognome VARCHAR(255) NOT NULL,
classe VARCHAR(255) NOT NULL,
status VARCHAR(5));

INSERT INTO liferay VALUES ('testuser1', 'password', 'nome1', 'cognome1', 'oro', 'false');

DROP TABLE oracle IF EXISTS;
CREATE TABLE oracle (
id VARCHAR(50) PRIMARY KEY,
password VARCHAR(255) NOT NULL,
nome VARCHAR(255) NOT NULL,
cognome VARCHAR(255) NOT NULL,
classe VARCHAR(255) NOT NULL,
altro_solo_oracle VARCHAR(255),
status VARCHAR(5));

INSERT INTO oracle VALUES ('testuser2', 'password321', 'nome2', 'cognome2', 'argento', 'altro valore', 'false');
