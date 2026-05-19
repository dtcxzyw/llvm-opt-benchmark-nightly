inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_mpi = type { ptr, i16, i16 }

@mbedtls_psa_ffdh_set_prime_generator.dhm_P_2048 = internal constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\AD\F8TX\A2\BBJ\9A\AF\DCV '=<\F1\D8\B9\C5\83\CE-6\95\A9\E16A\14d3\FB\CC\93\9D\CE$\9B>\F9}/\E3cc\0Cu\D8\F6\81\B2\02\AE\C4az\D3\DF\1E\D5\D5\FDea$3\F5\1F_\06n\D0\85ceU=\ED\1A\F3\B5W\13^\7FW\C95\98O\0Cp\E0\E6\8Bw\E2\A6\89\DA\F3\EF\E8r\1D\F1X\A16\AD\E750\AC\CAOH:yz\BC\0A\B1\82\B3$\FBa\D1\08\A9K\B2\C8\E3\FB\B9j\DA\B7`\D7\F4h\1DOB\A3\DE9M\F4\AEV\ED\E7cr\BB\19\0B\07\A7\C8\EE\0Amp\9E\02\FC\E1\CD\F7\E2\EC\C04\04\CD(4/a\91r\FE\9C\E9\85\83\FF\8EO\122\EE\F2\81\83\C3\FE;\1BLo\ADs;\B5\FC\BC.\C2 \05\C5\8E\F1\83}\16\83\B2\C6\F3J&\C1\B2\EF\FA\88kB8a(\\\97\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@mbedtls_psa_ffdh_set_prime_generator.dhm_G_2048 = internal constant [1 x i8] c"\02", align 1
@mbedtls_psa_ffdh_set_prime_generator.dhm_P_3072 = internal constant [384 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\AD\F8TX\A2\BBJ\9A\AF\DCV '=<\F1\D8\B9\C5\83\CE-6\95\A9\E16A\14d3\FB\CC\93\9D\CE$\9B>\F9}/\E3cc\0Cu\D8\F6\81\B2\02\AE\C4az\D3\DF\1E\D5\D5\FDea$3\F5\1F_\06n\D0\85ceU=\ED\1A\F3\B5W\13^\7FW\C95\98O\0Cp\E0\E6\8Bw\E2\A6\89\DA\F3\EF\E8r\1D\F1X\A16\AD\E750\AC\CAOH:yz\BC\0A\B1\82\B3$\FBa\D1\08\A9K\B2\C8\E3\FB\B9j\DA\B7`\D7\F4h\1DOB\A3\DE9M\F4\AEV\ED\E7cr\BB\19\0B\07\A7\C8\EE\0Amp\9E\02\FC\E1\CD\F7\E2\EC\C04\04\CD(4/a\91r\FE\9C\E9\85\83\FF\8EO\122\EE\F2\81\83\C3\FE;\1BLo\ADs;\B5\FC\BC.\C2 \05\C5\8E\F1\83}\16\83\B2\C6\F3J&\C1\B2\EF\FA\88kB8a\1F\CF\DC\DE5[;e\19\03[\BC4\F4\DE\F9\9C\028a\B4o\C9\D6\E6\C9\07z\D9\1D&\91\F7\F7\EEY\8C\B0\FA\C1\86\D9\1C\AE\FE\13\09\85\13\92p\B4\13\0C\93\BCCyD\F4\FDDR\E2\D7M\D3d\F2\E2\1Eq\F5K\FF\\\AE\82\AB\9C\9D\F6\9E\E8m+\C5\226:\0D\AB\C5!\97\9B\0D\EA\DA\1D\BF\9AB\D5\C4HN\0A\BC\D0k\FAS\DD\EF<\1B \EE?\D5\9D|%\E4\1D+f\C6.7\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@mbedtls_psa_ffdh_set_prime_generator.dhm_G_3072 = internal constant [1 x i8] c"\02", align 1
@mbedtls_psa_ffdh_set_prime_generator.dhm_P_4096 = internal constant [512 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\AD\F8TX\A2\BBJ\9A\AF\DCV '=<\F1\D8\B9\C5\83\CE-6\95\A9\E16A\14d3\FB\CC\93\9D\CE$\9B>\F9}/\E3cc\0Cu\D8\F6\81\B2\02\AE\C4az\D3\DF\1E\D5\D5\FDea$3\F5\1F_\06n\D0\85ceU=\ED\1A\F3\B5W\13^\7FW\C95\98O\0Cp\E0\E6\8Bw\E2\A6\89\DA\F3\EF\E8r\1D\F1X\A16\AD\E750\AC\CAOH:yz\BC\0A\B1\82\B3$\FBa\D1\08\A9K\B2\C8\E3\FB\B9j\DA\B7`\D7\F4h\1DOB\A3\DE9M\F4\AEV\ED\E7cr\BB\19\0B\07\A7\C8\EE\0Amp\9E\02\FC\E1\CD\F7\E2\EC\C04\04\CD(4/a\91r\FE\9C\E9\85\83\FF\8EO\122\EE\F2\81\83\C3\FE;\1BLo\ADs;\B5\FC\BC.\C2 \05\C5\8E\F1\83}\16\83\B2\C6\F3J&\C1\B2\EF\FA\88kB8a\1F\CF\DC\DE5[;e\19\03[\BC4\F4\DE\F9\9C\028a\B4o\C9\D6\E6\C9\07z\D9\1D&\91\F7\F7\EEY\8C\B0\FA\C1\86\D9\1C\AE\FE\13\09\85\13\92p\B4\13\0C\93\BCCyD\F4\FDDR\E2\D7M\D3d\F2\E2\1Eq\F5K\FF\\\AE\82\AB\9C\9D\F6\9E\E8m+\C5\226:\0D\AB\C5!\97\9B\0D\EA\DA\1D\BF\9AB\D5\C4HN\0A\BC\D0k\FAS\DD\EF<\1B \EE?\D5\9D|%\E4\1D+f\9E\1E\F1noR\C3\16M\F4\FBy0\E9\E4\E5\88W\B6\AC}_B\D6\9Fm\18wc\CF\1DU\03@\04\87\F5[\A5~1\CCzq5\C8\86\EF\B41\8A\EDj\1E\01-\9Eh2\A9\07`\0A\91\810\C4m\C7x\F9q\AD\008\09)\99\A33\CB\8Bz\1A\1D\B9=q@\00<*N\CE\A9\F9\8D\0A\CC\0A\82\91\CD\CE\C9}\CF\8E\C9\B5Z\7F\88\A4kM\B5\A8Q\F4A\82\E1\C6\8A\00~^e_j\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@mbedtls_psa_ffdh_set_prime_generator.dhm_G_4096 = internal constant [1 x i8] c"\02", align 1
@mbedtls_psa_ffdh_set_prime_generator.dhm_P_6144 = internal constant [768 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\AD\F8TX\A2\BBJ\9A\AF\DCV '=<\F1\D8\B9\C5\83\CE-6\95\A9\E16A\14d3\FB\CC\93\9D\CE$\9B>\F9}/\E3cc\0Cu\D8\F6\81\B2\02\AE\C4az\D3\DF\1E\D5\D5\FDea$3\F5\1F_\06n\D0\85ceU=\ED\1A\F3\B5W\13^\7FW\C95\98O\0Cp\E0\E6\8Bw\E2\A6\89\DA\F3\EF\E8r\1D\F1X\A16\AD\E750\AC\CAOH:yz\BC\0A\B1\82\B3$\FBa\D1\08\A9K\B2\C8\E3\FB\B9j\DA\B7`\D7\F4h\1DOB\A3\DE9M\F4\AEV\ED\E7cr\BB\19\0B\07\A7\C8\EE\0Amp\9E\02\FC\E1\CD\F7\E2\EC\C04\04\CD(4/a\91r\FE\9C\E9\85\83\FF\8EO\122\EE\F2\81\83\C3\FE;\1BLo\ADs;\B5\FC\BC.\C2 \05\C5\8E\F1\83}\16\83\B2\C6\F3J&\C1\B2\EF\FA\88kB8a\1F\CF\DC\DE5[;e\19\03[\BC4\F4\DE\F9\9C\028a\B4o\C9\D6\E6\C9\07z\D9\1D&\91\F7\F7\EEY\8C\B0\FA\C1\86\D9\1C\AE\FE\13\09\85\13\92p\B4\13\0C\93\BCCyD\F4\FDDR\E2\D7M\D3d\F2\E2\1Eq\F5K\FF\\\AE\82\AB\9C\9D\F6\9E\E8m+\C5\226:\0D\AB\C5!\97\9B\0D\EA\DA\1D\BF\9AB\D5\C4HN\0A\BC\D0k\FAS\DD\EF<\1B \EE?\D5\9D|%\E4\1D+f\9E\1E\F1noR\C3\16M\F4\FBy0\E9\E4\E5\88W\B6\AC}_B\D6\9Fm\18wc\CF\1DU\03@\04\87\F5[\A5~1\CCzq5\C8\86\EF\B41\8A\EDj\1E\01-\9Eh2\A9\07`\0A\91\810\C4m\C7x\F9q\AD\008\09)\99\A33\CB\8Bz\1A\1D\B9=q@\00<*N\CE\A9\F9\8D\0A\CC\0A\82\91\CD\CE\C9}\CF\8E\C9\B5Z\7F\88\A4kM\B5\A8Q\F4A\82\E1\C6\8A\00~^\0D\D9\02\0B\FDd\B6E\03lzNg},8S*:#\BADB\CA\F5>\A6;\B4T2\9Bv$\C8\91{\DDd\B1\C0\FDL\B3\8E\8C3Lp\1C:\CD\AD\06W\FC\CF\ECq\9B\1F\\>NF\04\1F8\81G\FBL\FD\B4w\A5$q\F7\A9\A9i\10\B8U2.\DBc@\D8\A0\0E\F0\925\05\11\E3\0A\BE\C1\FF\F9\E3\A2n\7F\B2\9F\8C\180#\C3X~8\DA\00w\D9\B4v>NK\94\B2\BB\C1\94\C6e\1Ew\CA\F9\92\EE\AA\C0#*(\1B\F6\B3\A79\C1\22a\16\82\0A\E8\DBXG\A6|\BE\F9\C9\09\1BF-S\8C\D7+\03tj\E7\7F^b),1\15b\A8FP]\C8-\B8T3\8A\E4\9FR5\C9[\91\17\8C\CF-\D5\CA\CE\F4\03\EC\9D\18\10\C6'+\04[;q\F9\DCk\80\D6?\DDJ\8E\9A\DB\1Eib\A6\95&\D41a\C1\A4\1DW\0Dy8\DA\D4\A4\0E2\9C\D0\E4\0Ee\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@mbedtls_psa_ffdh_set_prime_generator.dhm_G_6144 = internal constant [1 x i8] c"\02", align 1
@mbedtls_psa_ffdh_set_prime_generator.dhm_P_8192 = internal constant [1024 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\AD\F8TX\A2\BBJ\9A\AF\DCV '=<\F1\D8\B9\C5\83\CE-6\95\A9\E16A\14d3\FB\CC\93\9D\CE$\9B>\F9}/\E3cc\0Cu\D8\F6\81\B2\02\AE\C4az\D3\DF\1E\D5\D5\FDea$3\F5\1F_\06n\D0\85ceU=\ED\1A\F3\B5W\13^\7FW\C95\98O\0Cp\E0\E6\8Bw\E2\A6\89\DA\F3\EF\E8r\1D\F1X\A16\AD\E750\AC\CAOH:yz\BC\0A\B1\82\B3$\FBa\D1\08\A9K\B2\C8\E3\FB\B9j\DA\B7`\D7\F4h\1DOB\A3\DE9M\F4\AEV\ED\E7cr\BB\19\0B\07\A7\C8\EE\0Amp\9E\02\FC\E1\CD\F7\E2\EC\C04\04\CD(4/a\91r\FE\9C\E9\85\83\FF\8EO\122\EE\F2\81\83\C3\FE;\1BLo\ADs;\B5\FC\BC.\C2 \05\C5\8E\F1\83}\16\83\B2\C6\F3J&\C1\B2\EF\FA\88kB8a\1F\CF\DC\DE5[;e\19\03[\BC4\F4\DE\F9\9C\028a\B4o\C9\D6\E6\C9\07z\D9\1D&\91\F7\F7\EEY\8C\B0\FA\C1\86\D9\1C\AE\FE\13\09\85\13\92p\B4\13\0C\93\BCCyD\F4\FDDR\E2\D7M\D3d\F2\E2\1Eq\F5K\FF\\\AE\82\AB\9C\9D\F6\9E\E8m+\C5\226:\0D\AB\C5!\97\9B\0D\EA\DA\1D\BF\9AB\D5\C4HN\0A\BC\D0k\FAS\DD\EF<\1B \EE?\D5\9D|%\E4\1D+f\9E\1E\F1noR\C3\16M\F4\FBy0\E9\E4\E5\88W\B6\AC}_B\D6\9Fm\18wc\CF\1DU\03@\04\87\F5[\A5~1\CCzq5\C8\86\EF\B41\8A\EDj\1E\01-\9Eh2\A9\07`\0A\91\810\C4m\C7x\F9q\AD\008\09)\99\A33\CB\8Bz\1A\1D\B9=q@\00<*N\CE\A9\F9\8D\0A\CC\0A\82\91\CD\CE\C9}\CF\8E\C9\B5Z\7F\88\A4kM\B5\A8Q\F4A\82\E1\C6\8A\00~^\0D\D9\02\0B\FDd\B6E\03lzNg},8S*:#\BADB\CA\F5>\A6;\B4T2\9Bv$\C8\91{\DDd\B1\C0\FDL\B3\8E\8C3Lp\1C:\CD\AD\06W\FC\CF\ECq\9B\1F\\>NF\04\1F8\81G\FBL\FD\B4w\A5$q\F7\A9\A9i\10\B8U2.\DBc@\D8\A0\0E\F0\925\05\11\E3\0A\BE\C1\FF\F9\E3\A2n\7F\B2\9F\8C\180#\C3X~8\DA\00w\D9\B4v>NK\94\B2\BB\C1\94\C6e\1Ew\CA\F9\92\EE\AA\C0#*(\1B\F6\B3\A79\C1\22a\16\82\0A\E8\DBXG\A6|\BE\F9\C9\09\1BF-S\8C\D7+\03tj\E7\7F^b),1\15b\A8FP]\C8-\B8T3\8A\E4\9FR5\C9[\91\17\8C\CF-\D5\CA\CE\F4\03\EC\9D\18\10\C6'+\04[;q\F9\DCk\80\D6?\DDJ\8E\9A\DB\1Eib\A6\95&\D41a\C1\A4\1DW\0Dy8\DA\D4\A4\0E2\9C\CF\F4j\AA6\AD\00L\F6\00\C88\1EBZ1\D9Q\AEd\FD\B2?\CE\C9P\9DCh\7F\EBi\ED\D1\CC^\0B\8C\C3\BD\F6K\10\EF\86\B61B\A3\AB\88)U[/t|\93&e\CB,\0F\1C\C0\1B\D7\02)8\889\D2\AF\05\E4TPJ\C7\8Bu\82\82(F\C0\BA5\C3_\\Y\16\0C\C0F\FD\82QT\1F\C6\8C\9C\86\B0\22\BBp\99\87jF\0EtQ\A8\A91\09p?\EE\1C!~l8&\E5,Q\AAi\1E\0EB<\FC\99\E9\E3\16P\C1!{bH\16\CD\AD\9A\95\F9\D5\B8\01\94\88\D9\C0\A0\A1\FE0u\A5w\E21\83\F8\1DJ?/\A4W\1E\FC\8C\E0\BA\8AO\E8\B6\85]\FEr\B0\A6n\DE\D2\FB\AB\FB\E5\8A0\FA\FA\BE\1C]q\A8~/t\1E\F8\C1\FE\86\FE\A6\BB\FD\E50g\7F\0D\97\D1\1DI\F7\A8D=\08\22\E5\06\A9\F4aN\01\1E*\94\83\8F\F8\8C\D6\8C\8B\B7\C5\C6BL\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@mbedtls_psa_ffdh_set_prime_generator.dhm_G_8192 = internal constant [1 x i8] c"\02", align 1
@switch.table.mbedtls_psa_ffdh_key_agreement = private unnamed_addr constant [7 x ptr] [ptr @mbedtls_psa_ffdh_set_prime_generator.dhm_P_2048, ptr @mbedtls_psa_ffdh_set_prime_generator.dhm_P_3072, ptr @mbedtls_psa_ffdh_set_prime_generator.dhm_P_4096, ptr poison, ptr @mbedtls_psa_ffdh_set_prime_generator.dhm_P_6144, ptr poison, ptr @mbedtls_psa_ffdh_set_prime_generator.dhm_P_8192], align 8
@switch.table.mbedtls_psa_ffdh_key_agreement.5 = private unnamed_addr constant [7 x ptr] [ptr @mbedtls_psa_ffdh_set_prime_generator.dhm_G_2048, ptr @mbedtls_psa_ffdh_set_prime_generator.dhm_G_3072, ptr @mbedtls_psa_ffdh_set_prime_generator.dhm_G_4096, ptr poison, ptr @mbedtls_psa_ffdh_set_prime_generator.dhm_G_6144, ptr poison, ptr @mbedtls_psa_ffdh_set_prime_generator.dhm_G_8192], align 8
@switch.table.mbedtls_psa_ffdh_key_agreement.6 = private unnamed_addr constant [7 x i64] [i64 256, i64 384, i64 512, i64 poison, i64 768, i64 poison, i64 1024], align 8

; Function Attrs: nounwind uwtable
define i32 @mbedtls_psa_ffdh_export_public_key(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %7 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %8 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %9 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %i.a = load i16, ptr %0, align 4, !tbaa !8
  %i.b = and i16 %i.a, 28672
  %i.c = icmp eq i16 %i.b, 16384
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, %4
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %1, i64 %2, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %2
  %i.f = sub nuw i64 %4, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.f, i1 false)
  store i64 %2, ptr %5, align 8, !tbaa !12
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @mbedtls_mpi_init(ptr noundef nonnull %6) #6
  call void @mbedtls_mpi_init(ptr noundef nonnull %7) #6
  call void @mbedtls_mpi_init(ptr noundef nonnull %8) #6
  call void @mbedtls_mpi_init(ptr noundef nonnull %9) #6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !14
  %i.i = zext i16 %i.h to i64
  %i.j = add nuw nsw i64 %i.i, 7
  %i.k = lshr i64 %i.j, 3                         ; 3 uses
  %10 = add nsw i64 %i.k, -256                    ; 2 uses
  %11 = call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 57) ; 5 uses
  %i.l = icmp ult i64 %11, 7
  %switch.maskindex = trunc i64 %11 to i8
  %switch.shifted = lshr i8 87, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond61 = select i1 %i.l, i1 %switch.lobit, i1 false
  br i1 %or.cond61, label %switch.lookup, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread46

switch.lookup:                                    ; preds = %bb.d
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_psa_ffdh_key_agreement, i64 %11
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep57 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_psa_ffdh_key_agreement.5, i64 %11
  %switch.load58 = load ptr, ptr %switch.gep57, align 8
  %switch.gep59 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_psa_ffdh_key_agreement.6, i64 %11
  %switch.load60 = load i64, ptr %switch.gep59, align 8
  %i.m = call i32 @mbedtls_mpi_read_binary(ptr noundef nonnull %9, ptr noundef nonnull %switch.load, i64 noundef %switch.load60) #6 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %mbedtls_psa_ffdh_set_prime_generator.exit

bb.e:                                             ; preds = %switch.lookup
  %i.o = call i32 @mbedtls_mpi_read_binary(ptr noundef nonnull %7, ptr noundef nonnull %switch.load58, i64 noundef 1) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread, label %mbedtls_psa_ffdh_set_prime_generator.exit

mbedtls_psa_ffdh_set_prime_generator.exit:        ; preds = %switch.lookup, %bb.e
  %.0.i39 = phi i32 [ %i.o, %bb.e ], [ %i.m, %switch.lookup ]
  %i.p = call i32 @mbedtls_to_psa_error(i32 noundef %.0.i39) #6 ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread46

mbedtls_psa_ffdh_set_prime_generator.exit.thread: ; preds = %bb.e, %mbedtls_psa_ffdh_set_prime_generator.exit
  %i.q = call i32 @mbedtls_mpi_read_binary(ptr noundef nonnull %8, ptr noundef %1, i64 noundef %2) #6 ; 2 uses
  %.not34 = icmp eq i32 %i.q, 0
  br i1 %.not34, label %bb.f, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread46

bb.f:                                             ; preds = %mbedtls_psa_ffdh_set_prime_generator.exit.thread
  %i.r = call i32 @mbedtls_mpi_exp_mod(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null) #6 ; 2 uses
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %bb.g, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread46

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @mbedtls_mpi_write_binary(ptr noundef nonnull %6, ptr noundef %3, i64 noundef %i.k) #6 ; 2 uses
  %.not36 = icmp eq i32 %i.s, 0
  br i1 %.not36, label %bb.h, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread46

bb.h:                                             ; preds = %bb.g
  store i64 %i.k, ptr %5, align 8, !tbaa !12
  br label %mbedtls_psa_ffdh_set_prime_generator.exit.thread46

mbedtls_psa_ffdh_set_prime_generator.exit.thread46: ; preds = %bb.d, %bb.g, %bb.f, %mbedtls_psa_ffdh_set_prime_generator.exit.thread, %mbedtls_psa_ffdh_set_prime_generator.exit, %bb.h
  %.not44 = phi i1 [ false, %mbedtls_psa_ffdh_set_prime_generator.exit ], [ true, %mbedtls_psa_ffdh_set_prime_generator.exit.thread ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ false, %bb.d ]
  %.020.i42 = phi i32 [ %i.p, %mbedtls_psa_ffdh_set_prime_generator.exit ], [ 0, %mbedtls_psa_ffdh_set_prime_generator.exit.thread ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ -135, %bb.d ]
  %.027 = phi i32 [ -110, %mbedtls_psa_ffdh_set_prime_generator.exit ], [ %i.q, %mbedtls_psa_ffdh_set_prime_generator.exit.thread ], [ %i.r, %bb.f ], [ %i.s, %bb.g ], [ 0, %bb.h ], [ -110, %bb.d ] ; 2 uses
  call void @mbedtls_mpi_free(ptr noundef nonnull %9) #6
  call void @mbedtls_mpi_free(ptr noundef nonnull %7) #6
  call void @mbedtls_mpi_free(ptr noundef nonnull %8) #6
  call void @mbedtls_mpi_free(ptr noundef nonnull %6) #6
  %i.t = icmp ne i32 %.027, 0
  %or.cond = and i1 %.not44, %i.t
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %mbedtls_psa_ffdh_set_prime_generator.exit.thread46
  %i.u = call i32 @mbedtls_to_psa_error(i32 noundef %.027) #6
  br label %bb.j

bb.j:                                             ; preds = %mbedtls_psa_ffdh_set_prime_generator.exit.thread46, %bb.i, %bb.b, %bb.c
  %.0 = phi i32 [ -138, %bb.b ], [ 0, %bb.c ], [ %i.u, %bb.i ], [ %.020.i42, %mbedtls_psa_ffdh_set_prime_generator.exit.thread46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @mbedtls_mpi_init(ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_mpi_read_binary(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @mbedtls_mpi_exp_mod(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_mpi_write_binary(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @mbedtls_mpi_free(ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_to_psa_error(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @mbedtls_psa_ffdh_generate_key(ptr noundef readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 8 uses
  %5 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @mbedtls_mpi_init(ptr noundef nonnull %5) #6
  call void @mbedtls_mpi_init(ptr noundef nonnull %4) #6
  %6 = add i64 %2, -256                           ; 2 uses
  %7 = call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 57) ; 4 uses
  %i.a = icmp ult i64 %7, 7
  %switch.maskindex = trunc i64 %7 to i8
  %switch.shifted = lshr i8 87, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond34 = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond34, label %switch.lookup, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread24

switch.lookup:                                    ; preds = %bb.a
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_psa_ffdh_key_agreement, i64 %7
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep32 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_psa_ffdh_key_agreement.6, i64 %7
  %switch.load33 = load i64, ptr %switch.gep32, align 8
  %i.b = call i32 @mbedtls_mpi_read_binary(ptr noundef nonnull %5, ptr noundef nonnull %switch.load, i64 noundef %switch.load33) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread, label %mbedtls_psa_ffdh_set_prime_generator.exit

mbedtls_psa_ffdh_set_prime_generator.exit:        ; preds = %switch.lookup
  %i.c = call i32 @mbedtls_to_psa_error(i32 noundef %i.b) #6 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread24

mbedtls_psa_ffdh_set_prime_generator.exit.thread: ; preds = %switch.lookup, %mbedtls_psa_ffdh_set_prime_generator.exit
  %i.d = call i32 @mbedtls_mpi_random(ptr noundef nonnull %4, i64 noundef 3, ptr noundef nonnull %5, ptr noundef nonnull @mbedtls_psa_get_random, ptr noundef null) #6 ; 2 uses
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.b, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread24

bb.b:                                             ; preds = %mbedtls_psa_ffdh_set_prime_generator.exit.thread
  %i.e = call i32 @mbedtls_mpi_sub_int(ptr noundef nonnull %4, ptr noundef nonnull %4, i64 noundef 1) #6 ; 2 uses
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %bb.c, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread24

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @mbedtls_mpi_write_binary(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2) #6 ; 2 uses
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.d, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread24

bb.d:                                             ; preds = %bb.c
  store i64 %2, ptr %3, align 8, !tbaa !12
  br label %mbedtls_psa_ffdh_set_prime_generator.exit.thread24

mbedtls_psa_ffdh_set_prime_generator.exit.thread24: ; preds = %bb.a, %bb.c, %bb.b, %mbedtls_psa_ffdh_set_prime_generator.exit.thread, %mbedtls_psa_ffdh_set_prime_generator.exit, %bb.d
  %.not22 = phi i1 [ false, %mbedtls_psa_ffdh_set_prime_generator.exit ], [ true, %mbedtls_psa_ffdh_set_prime_generator.exit.thread ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.a ]
  %.020.i20 = phi i32 [ %i.c, %mbedtls_psa_ffdh_set_prime_generator.exit ], [ 0, %mbedtls_psa_ffdh_set_prime_generator.exit.thread ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ -135, %bb.a ]
  %.0 = phi i32 [ -110, %mbedtls_psa_ffdh_set_prime_generator.exit ], [ %i.d, %mbedtls_psa_ffdh_set_prime_generator.exit.thread ], [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.d ], [ -110, %bb.a ] ; 2 uses
  call void @mbedtls_mpi_free(ptr noundef nonnull %5) #6
  call void @mbedtls_mpi_free(ptr noundef nonnull %4) #6
  %i.g = icmp ne i32 %.0, 0
  %or.cond = and i1 %.not22, %i.g
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %mbedtls_psa_ffdh_set_prime_generator.exit.thread24
  %i.h = call i32 @mbedtls_to_psa_error(i32 noundef %.0) #6
  br label %bb.f

bb.f:                                             ; preds = %mbedtls_psa_ffdh_set_prime_generator.exit.thread24, %bb.e
  %.011 = phi i32 [ %i.h, %bb.e ], [ %.020.i20, %mbedtls_psa_ffdh_set_prime_generator.exit.thread24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.011
}

declare i32 @mbedtls_mpi_random(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_psa_get_random(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @mbedtls_mpi_sub_int(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -138, 1) i32 @mbedtls_psa_ffdh_import_key(ptr noundef readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(none) %3, i64 noundef %4, ptr noundef writeonly captures(none) %5, ptr noundef writeonly captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %4, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %1, i64 %2, i1 false)
  store i64 %2, ptr %5, align 8, !tbaa !12
  %i.b = shl i64 %2, 3
  store i64 %i.b, ptr %6, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -138, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_psa_ffdh_key_agreement(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %9 = alloca %struct.mbedtls_mpi, align 8        ; 5 uses
  %10 = alloca %struct.mbedtls_mpi, align 8       ; 6 uses
  %11 = alloca %struct.mbedtls_mpi, align 8       ; 6 uses
  %12 = alloca %struct.mbedtls_mpi, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  %.not = icmp ne i64 %2, %4
  %i.a = icmp ugt i64 %2, %6
  %or.cond34 = or i1 %.not, %i.a
  br i1 %or.cond34, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i16, ptr %0, align 4, !tbaa !8
  %i.b = and i16 %.val, -256
  %i.c = icmp eq i16 %i.b, 29184
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @mbedtls_mpi_init(ptr noundef nonnull %8) #6
  call void @mbedtls_mpi_init(ptr noundef nonnull %9) #6
  call void @mbedtls_mpi_init(ptr noundef nonnull %10) #6
  call void @mbedtls_mpi_init(ptr noundef nonnull %11) #6
  call void @mbedtls_mpi_init(ptr noundef nonnull %12) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !14
  %i.f = zext i16 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 7
  %i.h = lshr i64 %i.g, 3
  %13 = add nsw i64 %i.h, -256                    ; 2 uses
  %14 = call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 57) ; 5 uses
  %i.i = icmp ult i64 %14, 7
  %switch.maskindex = trunc i64 %14 to i8
  %switch.shifted = lshr i8 87, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond59 = select i1 %i.i, i1 %switch.lobit, i1 false
  br i1 %or.cond59, label %switch.lookup, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread44

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_psa_ffdh_key_agreement, i64 %14
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep55 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_psa_ffdh_key_agreement.5, i64 %14
  %switch.load56 = load ptr, ptr %switch.gep55, align 8
  %switch.gep57 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_psa_ffdh_key_agreement.6, i64 %14
  %switch.load58 = load i64, ptr %switch.gep57, align 8
  %i.j = call i32 @mbedtls_mpi_read_binary(ptr noundef nonnull %8, ptr noundef nonnull %switch.load, i64 noundef %switch.load58) #6 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %mbedtls_psa_ffdh_set_prime_generator.exit

bb.d:                                             ; preds = %switch.lookup
  %i.l = call i32 @mbedtls_mpi_read_binary(ptr noundef nonnull %9, ptr noundef nonnull %switch.load56, i64 noundef 1) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread, label %mbedtls_psa_ffdh_set_prime_generator.exit

mbedtls_psa_ffdh_set_prime_generator.exit:        ; preds = %switch.lookup, %bb.d
  %.0.i37 = phi i32 [ %i.l, %bb.d ], [ %i.j, %switch.lookup ]
  %i.m = call i32 @mbedtls_to_psa_error(i32 noundef %.0.i37) #6 ; 2 uses
  %.not29 = icmp eq i32 %i.m, 0
  br i1 %.not29, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread44

mbedtls_psa_ffdh_set_prime_generator.exit.thread: ; preds = %bb.d, %mbedtls_psa_ffdh_set_prime_generator.exit
  %i.n = call i32 @mbedtls_mpi_read_binary(ptr noundef nonnull %10, ptr noundef %3, i64 noundef %2) #6 ; 2 uses
  %.not30 = icmp eq i32 %i.n, 0
  br i1 %.not30, label %bb.e, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread44

bb.e:                                             ; preds = %mbedtls_psa_ffdh_set_prime_generator.exit.thread
  %i.o = call i32 @mbedtls_mpi_read_binary(ptr noundef nonnull %11, ptr noundef %1, i64 noundef %2) #6 ; 2 uses
  %.not31 = icmp eq i32 %i.o, 0
  br i1 %.not31, label %bb.f, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread44

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @mbedtls_mpi_exp_mod(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef null) #6 ; 2 uses
  %.not32 = icmp eq i32 %i.p, 0
  br i1 %.not32, label %bb.g, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread44

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 @mbedtls_mpi_write_binary(ptr noundef nonnull %12, ptr noundef %5, i64 noundef %2) #6 ; 2 uses
  %.not33 = icmp eq i32 %i.q, 0
  br i1 %.not33, label %bb.h, label %mbedtls_psa_ffdh_set_prime_generator.exit.thread44

bb.h:                                             ; preds = %bb.g
  store i64 %2, ptr %7, align 8, !tbaa !12
  br label %mbedtls_psa_ffdh_set_prime_generator.exit.thread44

mbedtls_psa_ffdh_set_prime_generator.exit.thread44: ; preds = %bb.c, %bb.g, %bb.f, %bb.e, %mbedtls_psa_ffdh_set_prime_generator.exit.thread, %mbedtls_psa_ffdh_set_prime_generator.exit, %bb.h
  %.not2942 = phi i1 [ false, %mbedtls_psa_ffdh_set_prime_generator.exit ], [ true, %mbedtls_psa_ffdh_set_prime_generator.exit.thread ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ false, %bb.c ]
  %.020.i40 = phi i32 [ %i.m, %mbedtls_psa_ffdh_set_prime_generator.exit ], [ 0, %mbedtls_psa_ffdh_set_prime_generator.exit.thread ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ -135, %bb.c ]
  %.022 = phi i32 [ -110, %mbedtls_psa_ffdh_set_prime_generator.exit ], [ %i.n, %mbedtls_psa_ffdh_set_prime_generator.exit.thread ], [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %i.q, %bb.g ], [ 0, %bb.h ], [ -110, %bb.c ] ; 2 uses
  call void @mbedtls_mpi_free(ptr noundef nonnull %8) #6
  call void @mbedtls_mpi_free(ptr noundef nonnull %9) #6
  call void @mbedtls_mpi_free(ptr noundef nonnull %10) #6
  call void @mbedtls_mpi_free(ptr noundef nonnull %11) #6
  call void @mbedtls_mpi_free(ptr noundef nonnull %12) #6
  %i.r = icmp ne i32 %.022, 0
  %or.cond = and i1 %.not2942, %i.r
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %mbedtls_psa_ffdh_set_prime_generator.exit.thread44
  %i.s = call i32 @mbedtls_to_psa_error(i32 noundef %.022) #6
  br label %bb.j

bb.j:                                             ; preds = %mbedtls_psa_ffdh_set_prime_generator.exit.thread44, %bb.i, %bb.b, %bb.a
  %.0 = phi i32 [ -135, %bb.a ], [ -135, %bb.b ], [ %i.s, %bb.i ], [ %.020.i40, %mbedtls_psa_ffdh_set_prime_generator.exit.thread44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"psa_key_attributes_s", !10, i64 0, !10, i64 2, !5, i64 4, !11, i64 8, !5, i64 20}
!10 = !{!"short", !6, i64 0}
!11 = !{!"psa_key_policy_s", !5, i64 0, !5, i64 4, !5, i64 8}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!9, !10, i64 2}
end_hunk_0
