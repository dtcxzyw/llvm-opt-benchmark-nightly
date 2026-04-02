begin_hunk_0
@.str.205 = private unnamed_addr constant [53 x i8] c"Petite: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.206 = private unnamed_addr constant [41 x i8] c"Petite: Unpacked and rebuilt executable\0A\00", align 1
@.str.207 = private unnamed_addr constant [26 x i8] c"Petite: Unpacking failed\0A\00", align 1
@.str.209 = private unnamed_addr constant [36 x i8] c"PEspin: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.210 = private unnamed_addr constant [27 x i8] c"PE.PEspin.ExceededFileSize\00", align 1
@.str.211 = private unnamed_addr constant [29 x i8] c"PESpin: Can't read %d bytes\0A\00", align 1
end_hunk_0
begin_hunk_1
@.str.221 = private unnamed_addr constant [49 x i8] c"yC: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.222 = private unnamed_addr constant [37 x i8] c"yC: Unpacked and rebuilt executable\0A\00", align 1
@.str.223 = private unnamed_addr constant [22 x i8] c"yC: Unpacking failed\0A\00", align 1
@.str.226 = private unnamed_addr constant [36 x i8] c"WWPack: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.227 = private unnamed_addr constant [27 x i8] c"PE.WWPack.ExceededFileSize\00", align 1
@.str.228 = private unnamed_addr constant [33 x i8] c"WWPack: Can't allocate %d bytes\0A\00", align 1
end_hunk_1
begin_hunk_2
@.str.233 = private unnamed_addr constant [53 x i8] c"WWPack: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.234 = private unnamed_addr constant [41 x i8] c"WWPack: Unpacked and rebuilt executable\0A\00", align 1
@.str.235 = private unnamed_addr constant [31 x i8] c"WWPpack: Decompression failed\0A\00", align 1
@.str.238 = private unnamed_addr constant [36 x i8] c"Aspack: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.239 = private unnamed_addr constant [27 x i8] c"PE.Aspack.ExceededFileSize\00", align 1
@.str.240 = private unnamed_addr constant [46 x i8] c"Aspack: Probably hacked/damaged Aspack file.\0A\00", align 1
end_hunk_2
begin_hunk_3
@.str.242 = private unnamed_addr constant [53 x i8] c"Aspack: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.243 = private unnamed_addr constant [41 x i8] c"Aspack: Unpacked and rebuilt executable\0A\00", align 1
@.str.244 = private unnamed_addr constant [26 x i8] c"Aspack: Unpacking failed\0A\00", align 1
@.str.246 = private unnamed_addr constant [41 x i8] c"NsPack: Found *start_of_stuff @delta-%x\0A\00", align 1
@.str.247 = private unnamed_addr constant [36 x i8] c"NsPack: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.248 = private unnamed_addr constant [27 x i8] c"PE.NsPack.ExceededFileSize\00", align 1
end_hunk_3
begin_hunk_4
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %i.d = alloca [9 x i8], align 1                 ; 6 uses
  %i.e = alloca [4096 x i8], align 16             ; 16 uses
  %i.f = alloca [4096 x i8], align 16             ; 48 uses
  %i.g = alloca i32, align 4                      ; 12 uses
  %i.h = alloca i32, align 4                      ; 39 uses
  %i.i = alloca [16 x i8], align 16               ; 5 uses
end_hunk_4
begin_hunk_5
  br i1 %i.bds, label %bb.wr, label %bb.xs

bb.wr:                                            ; preds = %bb.wq
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %5 = load i64, ptr %i.bdt, align 1
  %6 = xor i64 %5, 2602107516829565160
  %7 = getelementptr i8, ptr %i.bdt, i64 8
  %8 = load i16, ptr %7, align 1
  %9 = zext i16 %8 to i64
  %10 = xor i64 %9, 50051
  %11 = or i64 %6, %10
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %i.bdu = icmp eq i32 %13, 0
  br i1 %i.bdu, label %bb.ws, label %bb.xs

bb.ws:                                            ; preds = %bb.wr
end_hunk_5
begin_hunk_6
  br i1 %i.bhe, label %bb.yu, label %.thread3842

bb.yu:                                            ; preds = %bb.yt
  %14 = load i32, ptr %i.f, align 16
  %15 = xor i32 %14, -393521837
  %16 = getelementptr i8, ptr %i.f, i64 3
  %17 = load i32, ptr %16, align 1
  %18 = xor i32 %17, -337955864
  %19 = or i32 %15, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %i.bhf = icmp eq i32 %21, 0
  br i1 %i.bhf, label %bb.yv, label %.thread3842

bb.yv:                                            ; preds = %bb.yu
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %22 = load i128, ptr %i.bhg, align 1
  %23 = xor i128 %22, 107382933364910958583781871253727477992
  %24 = getelementptr i8, ptr %i.bhg, i64 3
  %25 = load i128, ptr %24, align 1
  %26 = xor i128 %25, 106755414664042775544543906123602198528
  %27 = or i128 %23, %26
  %28 = icmp ne i128 %27, 0
  %29 = zext i1 %28 to i32
  %i.bhh = icmp eq i32 %29, 0
  br i1 %i.bhh, label %.preheader3342, label %.thread3842

.preheader3342:                                   ; preds = %bb.yv
end_hunk_6
begin_hunk_7
  br i1 %or.cond219, label %.critedge200, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae
  %i.bls = getelementptr inbounds nuw i8, ptr %i.f, i64 953 ; 2 uses
  %30 = load i32, ptr %i.bls, align 1
  %31 = xor i32 %30, 104
  %32 = getelementptr i8, ptr %i.bls, i64 4
  %33 = load i16, ptr %32, align 1
  %34 = zext i16 %33 to i32
  %35 = xor i32 %34, 49920
  %36 = or i32 %31, %35
  %.not2906 = icmp ne i32 %36, 0                  ; 2 uses
  %37 = zext i1 %.not2906 to i32                  ; 0 uses
  %brmerge = or i1 %.not2906, %.not3489
  br i1 %brmerge, label %.critedge200, label %.lr.ph3474.preheader

end_hunk_7
begin_hunk_8
  %.02279 = phi i32 [ %i.cj, %bb.abh ], [ %i.boi, %bb.abk ] ; 2 uses
  %.02274 = phi i32 [ %i.ky, %bb.abh ], [ %i.boj, %bb.abk ] ; 2 uses
  %.02271.sroa.phi = phi ptr [ %.02271.sroa.gep, %bb.abh ], [ %.02271.sroa.gep3126, %bb.abk ]
  %.02271 = phi ptr [ %i.f, %bb.abh ], [ %i.k, %bb.abk ] ; 2 uses
  %38 = load i64, ptr %.02271, align 1
  %39 = xor i64 %38, 6701356245542527132
  %40 = getelementptr i8, ptr %.02271, i64 5
  %41 = load i64, ptr %40, align 1
  %42 = xor i64 %41, 33157873664
  %43 = or i64 %39, %42
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i32
  %.not2927 = icmp eq i32 %45, 0
  br i1 %.not2927, label %bb.abm, label %.thread3311

bb.abm:                                           ; preds = %bb.abl
end_hunk_8
