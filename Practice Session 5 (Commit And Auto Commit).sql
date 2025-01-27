 SET AUTOCOMMIT = OFF;          -- Used to save data manually
 COMMIT;                        -- Used to save as a checkpoint
 
 DELETE FROM burger; -- Oopss Accidently deleted all the data :(
 
 SELECT * FROM burger; 
 
 ROLLBACK;                      -- It's okay I have already fired the COMMIT I can rollback from the checkpoint :)
 
 SET AUTOCOMMIT = ON;           -- Back to default