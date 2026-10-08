Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/matroskadec?download=true
inline.NumInlined: 77
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@matroska_read_header:bb.a
  %i.akf = load i64, ptr %i.e, align 8, !tbaa !63
  %i.akg = call ptr @av_packet_side_data_add(ptr noundef nonnull %i.akd, ptr noundef nonnull %i.ake, i32 noundef 20, ptr noundef nonnull %i.akb, i64 noundef %i.akf, i32 noundef 0) #14
  %.not96.i.i.i = icmp eq ptr %i.akg, null
  br i1 %.not96.i.i.i, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  call void @av_freep(ptr noundef nonnull %i.f) #14
  br label %.critedge102.i.i.i

bb.jq:                                            ; preds = %bb.jo
  br i1 %i.ahw, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.akh = load double, ptr %i.agy, align 8, !tbaa !295
  %i.aki = call i64 @av_d2q(double noundef %i.akh, i32 noundef 2147483647) #16
  store i64 %i.aki, ptr %i.akb, align 4, !tbaa !131
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  %i.akk = getelementptr inbounds nuw i8, ptr %.val155.i.i, i64 112
  %i.akl = load double, ptr %i.akk, align 8, !tbaa !296
  %i.akm = call i64 @av_d2q(double noundef %i.akl, i32 noundef 2147483647) #16
  store i64 %i.akm, ptr %i.akj, align 4, !tbaa !131
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akb, i64 16
  %i.ako = getelementptr inbounds nuw i8, ptr %.val155.i.i, i64 120
  %i.akp = load double, ptr %i.ako, align 8, !tbaa !297
  %i.akq = call i64 @av_d2q(double noundef %i.akp, i32 noundef 2147483647) #16
  store i64 %i.akq, ptr %i.akn, align 4, !tbaa !131
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akb, i64 24
  %i.aks = getelementptr inbounds nuw i8, ptr %.val155.i.i, i64 128
  %i.akt = load double, ptr %i.aks, align 8, !tbaa !298
  %i.aku = call i64 @av_d2q(double noundef %i.akt, i32 noundef 2147483647) #16
  store i64 %i.aku, ptr %i.akr, align 4, !tbaa !131
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akb, i64 32
  %i.akw = getelementptr inbounds nuw i8, ptr %.val155.i.i, i64 136
  %i.akx = load double, ptr %i.akw, align 8, !tbaa !299
  %i.aky = call i64 @av_d2q(double noundef %i.akx, i32 noundef 2147483647) #16
  store i64 %i.aky, ptr %i.akv, align 4, !tbaa !131
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akb, i64 40
  %i.ala = getelementptr inbounds nuw i8, ptr %.val155.i.i, i64 144
  %i.alb = load double, ptr %i.ala, align 8, !tbaa !300
  %i.alc = call i64 @av_d2q(double noundef %i.alb, i32 noundef 2147483647) #16
  store i64 %i.alc, ptr %i.akz, align 4, !tbaa !131
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akb, i64 48
  %i.ale = getelementptr inbounds nuw i8, ptr %.val155.i.i, i64 152
  %i.alf = load double, ptr %i.ale, align 8, !tbaa !301
  %i.alg = call i64 @av_d2q(double noundef %i.alf, i32 noundef 2147483647) #16
  store i64 %i.alg, ptr %i.ald, align 4, !tbaa !131
  %i.alh = getelementptr inbounds nuw i8, ptr %i.akb, i64 56
  %i.ali = getelementptr inbounds nuw i8, ptr %.val155.i.i, i64 160
  %i.alj = load double, ptr %i.ali, align 8, !tbaa !302
  %i.alk = call i64 @av_d2q(double noundef %i.alj, i32 noundef 2147483647) #16
  store i64 %i.alk, ptr %i.alh, align 4, !tbaa !131
  %i.all = getelementptr inbounds nuw i8, ptr %i.akb, i64 80
  store i32 1, ptr %i.all, align 4, !tbaa !324
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  br i1 %i.aig, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.alm = getelementptr inbounds nuw i8, ptr %i.akb, i64 72
  %i.aln = load double, ptr %i.ahx, align 8, !tbaa !303
  %i.alo = call i64 @av_d2q(double noundef %i.aln, i32 noundef 2147483647) #16
  store i64 %i.alo, ptr %i.alm, align 4, !tbaa !131
  %i.alp = getelementptr inbounds nuw i8, ptr %i.akb, i64 64
  %i.alq = load double, ptr %i.ahz, align 8, !tbaa !98
  %i.alr = call i64 @av_d2q(double noundef %i.alq, i32 noundef 2147483647) #16
  store i64 %i.alr, ptr %i.alp, align 4, !tbaa !131
  %i.als = getelementptr inbounds nuw i8, ptr %i.akb, i64 84
  store i32 1, ptr %i.als, align 4, !tbaa !325
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.jv

.critedge102.i.i.i:                               ; preds = %bb.jn, %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %mkv_parse_video.exit.thread.i

bb.jv:                                            ; preds = %bb.ju, %bb.jm, %bb.il
  %i.alt = load ptr, ptr %i.eo, align 8, !tbaa !60 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.alu = getelementptr inbounds nuw i8, ptr %i.et, i64 344
  %i.alv = getelementptr inbounds nuw i8, ptr %i.et, i64 352
  %i.alw = getelementptr inbounds nuw i8, ptr %i.et, i64 368
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !326 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.aly = load i32, ptr %i.alv, align 8, !tbaa !327 ; 8 uses
  %.not.i163.i.i = icmp eq i32 %i.aly, 0
  br i1 %.not.i163.i.i, label %bb.jy, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.alz = load i8, ptr %i.alx, align 1, !tbaa !98
  %.not76.i.i.i = icmp eq i8 %i.alz, 0
  br i1 %.not76.i.i.i, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alt, i32 noundef 24, ptr noundef nonnull @.str.159) #14
  br label %mkv_parse_video.exit.i

bb.jy:                                            ; preds = %bb.jw, %bb.jv
  %i.ama = load i64, ptr %i.alu, align 8, !tbaa !328 ; 2 uses
  switch i64 %i.ama, label %bb.kq [
    i64 0, label %bb.jz
    i64 1, label %bb.kf
    i64 2, label %bb.kk
  ]

bb.jz:                                            ; preds = %bb.jy
  %i.amb = getelementptr inbounds nuw i8, ptr %i.et, i64 392
  %i.amc = load double, ptr %i.amb, align 8, !tbaa !329 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.et, i64 384
  %i.ame = load double, ptr %i.amd, align 8, !tbaa !330 ; 4 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %i.et, i64 400
  %i.amg = load double, ptr %i.amf, align 8, !tbaa !331 ; 5 uses
  %i.amh = fcmp nsz oeq double %i.amc, 0.000000e+00 ; 2 uses
  %i.ami = fcmp nsz oeq double %i.ame, 0.000000e+00 ; 3 uses
  %or.cond.i.i.i250.i = select i1 %i.amh, i1 %i.ami, i1 false
  %i.amj = fcmp nsz oeq double %i.amg, 0.000000e+00
  %or.cond3.i.i.i.i = select i1 %or.cond.i.i.i250.i, i1 %i.amj, i1 false
  br i1 %or.cond3.i.i.i.i, label %mkv_parse_video.exit.i, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  br i1 %i.amh, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %.not36.i.i.i.i = xor i1 %i.ami, true           ; 2 uses
  %i.amk = fcmp nsz une double %i.ame, 1.800000e+02
  %i.aml = fcmp nsz une double %i.ame, -1.800000e+02
  %i.amm = and i1 %i.amk, %i.aml
  %or.cond7.i.i.i.i = and i1 %i.amm, %.not36.i.i.i.i
  %i.amn = fcmp uno double %i.amg, 0.000000e+00
  %or.cond34.i.i.i.i = select i1 %or.cond7.i.i.i.i, i1 true, i1 %i.amn
  br i1 %or.cond34.i.i.i.i, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.amp = load i32, ptr %i.amo, align 8, !tbaa !136
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alt, i32 noundef 24, ptr noundef nonnull @.str.164, i32 noundef %i.amp, double noundef %i.ame, double noundef %i.amc, double noundef %i.amg) #14
  br label %mkv_parse_video.exit.i

bb.kd:                                            ; preds = %bb.kb
  %i.amq = load ptr, ptr %i.kk, align 8, !tbaa !116 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 32
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amq, i64 40
  %i.amt = call ptr @av_packet_side_data_new(ptr noundef nonnull %i.amr, ptr noundef nonnull %i.ams, i32 noundef 5, i64 noundef 36, i32 noundef 0) #14 ; 2 uses
  %.not.i.i168.i.i = icmp eq ptr %i.amt, null
  br i1 %.not.i.i168.i.i, label %.loopexit323.i, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !280 ; 2 uses
  %i.amv = zext i1 %.not36.i.i.i.i to i32
  %i.amw = fneg nsz double %i.amg
  %i.amx = select nsz i1 %i.ami, double %i.amw, double %i.amg
  call void @av_display_rotation_set(ptr noundef %i.amu, double noundef %i.amx) #14
  call void @av_display_matrix_flip(ptr noundef %i.amu, i32 noundef %i.amv, i32 noundef 0) #14
  br label %mkv_parse_video.exit.i

bb.kf:                                            ; preds = %bb.jy
  switch i32 %i.aly, label %bb.ki [
    i32 20, label %bb.kg
    i32 0, label %bb.kj
  ]

bb.kg:                                            ; preds = %bb.kf
  %i.amy = getelementptr inbounds nuw i8, ptr %i.alx, i64 4
  %i.amz = load i32, ptr %i.amy, align 1, !tbaa !98
  %i.ana = call i32 @llvm.bswap.i32(i32 %i.amz)   ; 3 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  %i.anc = load i32, ptr %i.anb, align 1, !tbaa !98
  %i.and = call i32 @llvm.bswap.i32(i32 %i.anc)   ; 3 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.alx, i64 12
  %i.anf = load i32, ptr %i.ane, align 1, !tbaa !98
  %i.ang = call i32 @llvm.bswap.i32(i32 %i.anf)   ; 3 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.alx, i64 16
  %i.ani = load i32, ptr %i.anh, align 1, !tbaa !98
  %i.anj = call i32 @llvm.bswap.i32(i32 %i.ani)   ; 3 uses
  %i.ank = xor i32 %i.ana, -1
  %.not79.i.i.i = icmp ult i32 %i.and, %i.ank
  %i.anl = xor i32 %i.ang, -1
  %.not80.i.i.i = icmp ult i32 %i.anj, %i.anl
  %or.cond.i167.i.i = select i1 %.not79.i.i.i, i1 %.not80.i.i.i, i1 false
  br i1 %or.cond.i167.i.i, label %bb.kj, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alt, i32 noundef 16, ptr noundef nonnull @.str.160, i32 noundef %i.ang, i32 noundef %i.ana, i32 noundef %i.anj, i32 noundef %i.and) #14
  br label %.loopexit323.i

bb.ki:                                            ; preds = %bb.kf
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alt, i32 noundef 16, ptr noundef nonnull @.str.159) #14
  br label %.loopexit323.i

bb.kj:                                            ; preds = %bb.kg, %bb.kf
  %.064.i.i.i = phi i32 [ %i.ang, %bb.kg ], [ %i.aly, %bb.kf ] ; 2 uses
  %.062.i.i.i = phi i32 [ %i.ana, %bb.kg ], [ %i.aly, %bb.kf ] ; 2 uses
  %.060.i.i.i = phi i32 [ %i.anj, %bb.kg ], [ %i.aly, %bb.kf ] ; 2 uses
  %.058.i.i.i = phi i32 [ %i.and, %bb.kg ], [ %i.aly, %bb.kf ] ; 2 uses
  %i.anm = or i32 %.062.i.i.i, %.064.i.i.i
  %4 = icmp ne i32 %.060.i.i.i, 0
  %i.ann = or i32 %i.anm, %.058.i.i.i
  %5 = icmp ne i32 %i.ann, 0
  %or.cond5.i.i248.i = select i1 %5, i1 true, i1 %4 ; 4 uses
  %..i.i249.i = select i1 %or.cond5.i.i248.i, i32 2, i32 0
  %.064..i.i.i = select i1 %or.cond5.i.i248.i, i32 %.064.i.i.i, i32 0
  %.062..i.i.i = select i1 %or.cond5.i.i248.i, i32 %.062.i.i.i, i32 0
  %.058..i.i.i = select i1 %or.cond5.i.i248.i, i32 %.058.i.i.i, i32 0
  br label %bb.kr

bb.kk:                                            ; preds = %bb.jy
  %i.ano = icmp slt i32 %i.aly, 4
  br i1 %i.ano, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alt, i32 noundef 16, ptr noundef nonnull @.str.161) #14
  br label %.loopexit323.i

bb.km:                                            ; preds = %bb.kk
  %i.anp = icmp eq i32 %i.aly, 12
  br i1 %i.anp, label %bb.kn, label %bb.kp

bb.kn:                                            ; preds = %bb.km
  %i.anq = getelementptr inbounds nuw i8, ptr %i.alx, i64 4
  %i.anr = load i32, ptr %i.anq, align 1, !tbaa !98 ; 2 uses
  %.not77.i.i.i = icmp eq i32 %i.anr, 0
  br i1 %.not77.i.i.i, label %.thread.i164.i.i, label %bb.ko

.thread.i164.i.i:                                 ; preds = %bb.kn
  %i.ans = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  %i.ant = load i32, ptr %i.ans, align 1, !tbaa !98
  %i.anu = call i32 @llvm.bswap.i32(i32 %i.ant)
  br label %bb.kr

bb.ko:                                            ; preds = %bb.kn
  %i.anv = call i32 @llvm.bswap.i32(i32 %i.anr)
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alt, i32 noundef 24, ptr noundef nonnull @.str.162, i32 noundef %i.anv) #14
  br label %mkv_parse_video.exit.i

bb.kp:                                            ; preds = %bb.km
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alt, i32 noundef 16, ptr noundef nonnull @.str.159) #14
  br label %.loopexit323.i

bb.kq:                                            ; preds = %bb.jy
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alt, i32 noundef 24, ptr noundef nonnull @.str.163, i64 noundef %i.ama) #14
  br label %mkv_parse_video.exit.i

bb.kr:                                            ; preds = %.thread.i164.i.i, %bb.kj
  %.167.i.i.i = phi i32 [ %..i.i249.i, %bb.kj ], [ 1, %.thread.i164.i.i ]
  %.165.i.i.i = phi i32 [ %.064..i.i.i, %bb.kj ], [ 0, %.thread.i164.i.i ]
  %.163.i.i.i = phi i32 [ %.062..i.i.i, %bb.kj ], [ 0, %.thread.i164.i.i ]
  %.161.i.i.i = phi i32 [ %.060.i.i.i, %bb.kj ], [ 0, %.thread.i164.i.i ]
  %.159.i.i.i = phi i32 [ %.058..i.i.i, %bb.kj ], [ 0, %.thread.i164.i.i ]
  %.1.i165.i.i = phi i32 [ 0, %bb.kj ], [ %i.anu, %.thread.i164.i.i ]
  %i.anw = call ptr @av_spherical_alloc(ptr noundef nonnull %i.b) #14 ; 11 uses
  store ptr %i.anw, ptr %i.a, align 8, !tbaa !333
  %.not81.i.i.i = icmp eq ptr %i.anw, null
  br i1 %.not81.i.i.i, label %.loopexit323.i, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  store i32 %.167.i.i.i, ptr %i.anw, align 4, !tbaa !335
  %i.anx = getelementptr inbounds nuw i8, ptr %i.et, i64 384
  %i.any = getelementptr inbounds nuw i8, ptr %i.anw, i64 4
  %i.anz = load <2 x double>, ptr %i.anx, align 8, !tbaa !137
  %i.aoa = fmul nsz <2 x double> %i.anz, splat (double 6.553600e+04)
  %i.aob = fptosi <2 x double> %i.aoa to <2 x i32>
  store <2 x i32> %i.aob, ptr %i.any, align 4, !tbaa !131
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.et, i64 400
  %i.aod = load double, ptr %i.aoc, align 8, !tbaa !336
  %i.aoe = fmul nsz double %i.aod, 6.553600e+04
  %i.aof = fptosi double %i.aoe to i32
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anw, i64 12
  store i32 %i.aof, ptr %i.aog, align 4, !tbaa !337
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anw, i64 32
  store i32 %.1.i165.i.i, ptr %i.aoh, align 4, !tbaa !338
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.anw, i64 16
  store i32 %.165.i.i.i, ptr %i.aoi, align 4, !tbaa !339
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.anw, i64 20
  store i32 %.163.i.i.i, ptr %i.aoj, align 4, !tbaa !340
  %i.aok = getelementptr inbounds nuw i8, ptr %i.anw, i64 24
  store i32 %.161.i.i.i, ptr %i.aok, align 4, !tbaa !341
  %i.aol = getelementptr inbounds nuw i8, ptr %i.anw, i64 28
  store i32 %.159.i.i.i, ptr %i.aol, align 4, !tbaa !342
  %i.aom = load ptr, ptr %i.kk, align 8, !tbaa !116 ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 32
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aom, i64 40
  %i.aop = load i64, ptr %i.b, align 8, !tbaa !63
  %i.aoq = call ptr @av_packet_side_data_add(ptr noundef nonnull %i.aon, ptr noundef nonnull %i.aoo, i32 noundef 21, ptr noundef nonnull %i.anw, i64 noundef %i.aop, i32 noundef 0) #14
  %.not82.i166.i.i = icmp eq ptr %i.aoq, null
  br i1 %.not82.i166.i.i, label %bb.kt, label %mkv_parse_video.exit.i

bb.kt:                                            ; preds = %bb.ks
  call void @av_freep(ptr noundef nonnull %i.a) #14
  br label %.loopexit323.i

.loopexit323.i:                                   ; preds = %bb.kr, %bb.kd, %bb.kt, %bb.kp, %bb.kl, %bb.ki, %bb.kh
  %.169.i.ph.i.i = phi i32 [ -1094995529, %bb.kh ], [ -1094995529, %bb.kl ], [ -1094995529, %bb.ki ], [ -1094995529, %bb.kp ], [ -12, %bb.kt ], [ -12, %bb.kd ], [ -12, %bb.kr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %mkv_parse_video.exit.thread.i

mkv_parse_video.exit.thread.i:                    ; preds = %bb.hq, %.loopexit323.i, %.critedge102.i.i.i, %.loopexit.i, %mkv_stereo3d_conv.exit.thread.i.i, %mkv_parse_video_codec.exit.i.i
  %.1.i.ph.i = phi i32 [ %i.zp, %mkv_parse_video_codec.exit.i.i ], [ %.169.i.ph.i.i, %.loopexit323.i ], [ -12, %.loopexit.i ], [ -12, %.critedge102.i.i.i ], [ -12, %mkv_stereo3d_conv.exit.thread.i.i ], [ -12, %bb.hq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %matroska_parse_dovi_streams.exit

mkv_parse_video.exit.i:                           ; preds = %bb.ks, %bb.kq, %bb.ko, %bb.ke, %bb.kc, %bb.jz, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %thread-pre-split.i

bb.ku:                                            ; preds = %bb.cx
  switch i32 %i.mx, label %mkv_parse_subtitle_codec.exit.i [
    i32 94233, label %bb.kv
    i32 94226, label %bb.lc
  ]

bb.kv:                                            ; preds = %bb.ku
  %i.aor = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 2 uses
  %i.aos = load i32, ptr %i.aor, align 8, !tbaa !241
  %i.aot = icmp eq i32 %i.aos, 3
  br i1 %i.aot, label %bb.kw, label %mkv_parse_subtitle_codec.exit.i

bb.kw:                                            ; preds = %bb.kv
  %i.aou = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !242 ; 2 uses
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !98 ; 3 uses
  %i.aox = zext i8 %i.aow to i32
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aov, i64 1
  %i.aoz = load i16, ptr %i.aoy, align 1, !tbaa !98
  %i.apa = call i16 @llvm.bswap.i16(i16 %i.aoz)   ; 2 uses
  %i.apb = zext i16 %i.apa to i32
  switch i16 %i.apa, label %bb.kz [
    i16 8, label %bb.kx
    i16 18, label %bb.ky
  ]

bb.kx:                                            ; preds = %bb.kw
  %i.apc = and i8 %i.aow, -8
  %or.cond.i261.i = icmp eq i8 %i.apc, 48
  br i1 %or.cond.i261.i, label %.sink.split.i259.i, label %bb.kz

bb.ky:                                            ; preds = %bb.kw
  %i.apd = icmp eq i8 %i.aow, -121
  br i1 %i.apd, label %.sink.split.i259.i, label %bb.kz

.sink.split.i259.i:                               ; preds = %bb.ky, %bb.kx
  %.sink.i260.i = phi i32 [ 0, %bb.kx ], [ 1, %bb.ky ]
  %i.ape = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  store i32 %.sink.i260.i, ptr %i.ape, align 8, !tbaa !343
  br label %bb.kz

bb.kz:                                            ; preds = %.sink.split.i259.i, %bb.ky, %bb.kx, %bb.kw
  %i.apf = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.apg = load i32, ptr %i.apf, align 8, !tbaa !343
  %i.aph = icmp eq i32 %i.apg, -99
  br i1 %i.aph, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  %i.api = load ptr, ptr %i.eo, align 8, !tbaa !60
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.api, i32 noundef 24, ptr noundef nonnull @.str.165, i32 noundef %i.aox, i32 noundef %i.apb) #14
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz
  store i32 0, ptr %i.aor, align 8, !tbaa !241
  br label %mkv_parse_subtitle_codec.exit.i

bb.lc:                                            ; preds = %bb.ku
  %i.apj = load ptr, ptr %i.ex, align 8, !tbaa !222 ; 3 uses
  %i.apk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.apj, ptr noundef nonnull dereferenceable(18) @.str.166) #15
  %.not.i258.i = icmp eq i32 %i.apk, 0
  br i1 %.not.i258.i, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  %i.apl = getelementptr inbounds nuw i8, ptr %i.ki, i64 64 ; 2 uses
  %i.apm = load i32, ptr %i.apl, align 8, !tbaa !247
  %i.apn = or i32 %i.apm, 65536
  store i32 %i.apn, ptr %i.apl, align 8, !tbaa !247
  br label %mkv_parse_subtitle_codec.exit.i

bb.le:                                            ; preds = %bb.lc
  %i.apo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.apj, ptr noundef nonnull dereferenceable(22) @.str.167) #15
  %.not21.i.i = icmp eq i32 %i.apo, 0
  br i1 %.not21.i.i, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.app = getelementptr inbounds nuw i8, ptr %i.ki, i64 64 ; 2 uses
  %i.apq = load i32, ptr %i.app, align 8, !tbaa !247
  %i.apr = or i32 %i.apq, 131072
  store i32 %i.apr, ptr %i.app, align 8, !tbaa !247
  br label %mkv_parse_subtitle_codec.exit.i

bb.lg:                                            ; preds = %bb.le
  %i.aps = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.apj, ptr noundef nonnull dereferenceable(18) @.str.168) #15
  %.not22.i.i = icmp eq i32 %i.aps, 0
  br i1 %.not22.i.i, label %bb.lh, label %mkv_parse_subtitle_codec.exit.i

bb.lh:                                            ; preds = %bb.lg
  %i.apt = getelementptr inbounds nuw i8, ptr %i.ki, i64 64 ; 2 uses
  %i.apu = load i32, ptr %i.apt, align 8, !tbaa !247
  %i.apv = or i32 %i.apu, 262144
  store i32 %i.apv, ptr %i.apt, align 8, !tbaa !247
  br label %mkv_parse_subtitle_codec.exit.i

mkv_parse_subtitle_codec.exit.i:                  ; preds = %bb.lh, %bb.lg, %bb.lf, %bb.ld, %bb.lb, %bb.kv, %bb.ku
  store i32 3, ptr %i.kl, align 8, !tbaa !264
  %i.apw = getelementptr inbounds nuw i8, ptr %i.et, i64 136
  %i.apx = load i64, ptr %i.apw, align 8, !tbaa !344
  %.not241.i = icmp eq i64 %i.apx, 0
  br i1 %.not241.i, label %thread-pre-split.i, label %bb.li

bb.li:                                            ; preds = %mkv_parse_subtitle_codec.exit.i
  %i.apy = getelementptr inbounds nuw i8, ptr %i.ki, i64 64 ; 2 uses
  %i.apz = load i32, ptr %i.apy, align 8, !tbaa !247
  %i.aqa = or i32 %i.apz, 131072
  store i32 %i.aqa, ptr %i.apy, align 8, !tbaa !247
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.li, %mkv_parse_subtitle_codec.exit.i, %mkv_parse_video.exit.i, %bb.fu, %bb.ft
  %.0276.ph.i = phi i32 [ %.1277.i, %bb.fu ], [ %.1277.i, %bb.ft ], [ 0, %mkv_parse_subtitle_codec.exit.i ], [ %.5281.i, %mkv_parse_video.exit.i ], [ 0, %bb.li ]
  %.pr.i = load i32, ptr %i.km, align 4, !tbaa !119
  br label %bb.lj

bb.lj:                                            ; preds = %thread-pre-split.i, %bb.cx
  %i.aqb = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.mx, %bb.cx ]
  %.0276.i = phi i32 [ %.0276.ph.i, %thread-pre-split.i ], [ 0, %bb.cx ] ; 3 uses
  %i.aqc = icmp eq i32 %i.aqb, 0
  br i1 %i.aqc, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.aqd = load ptr, ptr %i.eo, align 8, !tbaa !60
  %i.aqe = load ptr, ptr %i.ex, align 8, !tbaa !222
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aqd, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef %i.aqe) #14
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !125
  %.not242.i = icmp eq ptr %i.aqg, null
  br i1 %.not242.i, label %bb.lm, label %bb.lo

bb.lm:                                            ; preds = %bb.ll
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.aqi = load i32, ptr %i.aqh, align 8, !tbaa !241 ; 2 uses
  %i.aqj = icmp sgt i32 %i.aqi, %.0276.i
  br i1 %i.aqj, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !242
end_hunk_0
