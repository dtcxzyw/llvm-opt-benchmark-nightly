begin_hunk_0
@.str.205 = private unnamed_addr constant [53 x i8] c"Petite: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.206 = private unnamed_addr constant [41 x i8] c"Petite: Unpacked and rebuilt executable\0A\00", align 1
@.str.207 = private unnamed_addr constant [26 x i8] c"Petite: Unpacking failed\0A\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"\E8\00\00\00\00\8B\1C$\83\C3\00", align 1
@.str.209 = private unnamed_addr constant [36 x i8] c"PEspin: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.210 = private unnamed_addr constant [27 x i8] c"PE.PEspin.ExceededFileSize\00", align 1
@.str.211 = private unnamed_addr constant [29 x i8] c"PESpin: Can't read %d bytes\0A\00", align 1
end_hunk_0
begin_hunk_1
@.str.221 = private unnamed_addr constant [49 x i8] c"yC: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.222 = private unnamed_addr constant [37 x i8] c"yC: Unpacked and rebuilt executable\0A\00", align 1
@.str.223 = private unnamed_addr constant [22 x i8] c"yC: Unpacking failed\0A\00", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"SU\8B\E83\DB\EB\00", align 1
@.str.225 = private unnamed_addr constant [20 x i8] c"\E8\00\00\00\00X-m\00\00\00P`3\C9PXPP\00", align 1
@.str.226 = private unnamed_addr constant [36 x i8] c"WWPack: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.227 = private unnamed_addr constant [27 x i8] c"PE.WWPack.ExceededFileSize\00", align 1
@.str.228 = private unnamed_addr constant [33 x i8] c"WWPack: Can't allocate %d bytes\0A\00", align 1
end_hunk_1
begin_hunk_2
@.str.233 = private unnamed_addr constant [53 x i8] c"WWPack: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.234 = private unnamed_addr constant [41 x i8] c"WWPack: Unpacked and rebuilt executable\0A\00", align 1
@.str.235 = private unnamed_addr constant [31 x i8] c"WWPpack: Decompression failed\0A\00", align 1
@.str.237 = private unnamed_addr constant [7 x i8] c"h\00\00\00\00\C3\00", align 1
@.str.238 = private unnamed_addr constant [36 x i8] c"Aspack: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.239 = private unnamed_addr constant [27 x i8] c"PE.Aspack.ExceededFileSize\00", align 1
@.str.240 = private unnamed_addr constant [46 x i8] c"Aspack: Probably hacked/damaged Aspack file.\0A\00", align 1
end_hunk_2
begin_hunk_3
@.str.242 = private unnamed_addr constant [53 x i8] c"Aspack: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.243 = private unnamed_addr constant [41 x i8] c"Aspack: Unpacked and rebuilt executable\0A\00", align 1
@.str.244 = private unnamed_addr constant [26 x i8] c"Aspack: Unpacking failed\0A\00", align 1
@.str.245 = private unnamed_addr constant [14 x i8] c"\9C`\E8\00\00\00\00]\B8\07\00\00\00\00", align 1
@.str.246 = private unnamed_addr constant [41 x i8] c"NsPack: Found *start_of_stuff @delta-%x\0A\00", align 1
@.str.247 = private unnamed_addr constant [36 x i8] c"NsPack: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.248 = private unnamed_addr constant [27 x i8] c"PE.NsPack.ExceededFileSize\00", align 1
end_hunk_3
begin_hunk_4
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %i.d = alloca [9 x i8], align 1                 ; 6 uses
  %i.e = alloca [4096 x i8], align 16             ; 16 uses
  %i.f = alloca [4096 x i8], align 16             ; 47 uses
  %i.g = alloca i32, align 4                      ; 12 uses
  %i.h = alloca i32, align 4                      ; 39 uses
  %i.i = alloca [16 x i8], align 16               ; 5 uses
end_hunk_4
begin_hunk_5
  br i1 %i.bds, label %bb.wr, label %bb.xs

bb.wr:                                            ; preds = %bb.wq
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.bdt, ptr noundef nonnull dereferenceable(10) @.str.208, i64 10)
  %i.bdu = icmp eq i32 %bcmp, 0
  br i1 %i.bdu, label %bb.ws, label %bb.xs

bb.ws:                                            ; preds = %bb.wr
end_hunk_5
begin_hunk_6
  br i1 %i.bhe, label %bb.yu, label %.thread3842

bb.yu:                                            ; preds = %bb.yt
  %bcmp2887 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.f, ptr noundef nonnull dereferenceable(7) @.str.224, i64 7)
  %i.bhf = icmp eq i32 %bcmp2887, 0
  br i1 %i.bhf, label %bb.yv, label %.thread3842

bb.yv:                                            ; preds = %bb.yu
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %bcmp2888 = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) %i.bhg, ptr noundef nonnull dereferenceable(19) @.str.225, i64 19)
  %i.bhh = icmp eq i32 %bcmp2888, 0
  br i1 %i.bhh, label %.preheader3342, label %.thread3842

.preheader3342:                                   ; preds = %bb.yv
end_hunk_6
begin_hunk_7
  br i1 %or.cond219, label %.critedge200, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae
  %i.bls = getelementptr inbounds nuw i8, ptr %i.f, i64 953
  %bcmp2905 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.bls, ptr noundef nonnull dereferenceable(6) @.str.237, i64 6)
  %.not2906 = icmp ne i32 %bcmp2905, 0
  %brmerge = or i1 %.not2906, %.not3489
  br i1 %brmerge, label %.critedge200, label %.lr.ph3474.preheader

end_hunk_7
begin_hunk_8
  %.02279 = phi i32 [ %i.cj, %bb.abh ], [ %i.boi, %bb.abk ] ; 2 uses
  %.02274 = phi i32 [ %i.ky, %bb.abh ], [ %i.boj, %bb.abk ] ; 2 uses
  %.02271.sroa.phi = phi ptr [ %.02271.sroa.gep, %bb.abh ], [ %.02271.sroa.gep3126, %bb.abk ]
  %.02271 = phi ptr [ %i.f, %bb.abh ], [ %i.k, %bb.abk ]
  %bcmp2926 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %.02271, ptr noundef nonnull dereferenceable(13) @.str.245, i64 13)
  %.not2927 = icmp eq i32 %bcmp2926, 0
  br i1 %.not2927, label %bb.abm, label %.thread3311

bb.abm:                                           ; preds = %bb.abl
end_hunk_8
