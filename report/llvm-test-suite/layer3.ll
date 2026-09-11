Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/layer3?download=true
inline.NumInlined: 29
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 68
begin_hunk_0_@init_layer3:bb.a
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.alt
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 32
  %i.ami = trunc i64 %i.alu to i32
  %i.amj = insertelement <4 x i32> poison, i32 %i.ami, i64 0
  %i.amk = shufflevector <4 x i32> %i.amj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aml = add <4 x i32> %i.amk, <i32 128, i32 640, i32 1152, i32 1664>
  store <4 x i32> %i.aml, ptr %i.amh, align 16, !tbaa !7
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.alt
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 48
  %i.amo = trunc i64 %i.alu to i32
  %i.amp = insertelement <4 x i32> poison, i32 %i.amo, i64 0
  %i.amq = shufflevector <4 x i32> %i.amp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amr = add <4 x i32> %i.amq, <i32 192, i32 704, i32 1216, i32 1728>
  store <4 x i32> %i.amr, ptr %i.amn, align 16, !tbaa !7
  %i.ams = add nuw nsw i64 %i.ajw, 48             ; 4 uses
  %i.amt = add nuw nsw i64 %indvars.iv572, 24     ; 4 uses
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ams
  %i.amv = trunc i64 %i.amt to i32
  %i.amw = insertelement <4 x i32> poison, i32 %i.amv, i64 0
  %i.amx = shufflevector <4 x i32> %i.amw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amy = add <4 x i32> %i.amx, <i32 0, i32 512, i32 1024, i32 1536>
  store <4 x i32> %i.amy, ptr %i.amu, align 16, !tbaa !7
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ams
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  %i.anb = trunc i64 %i.amt to i32
  %i.anc = insertelement <4 x i32> poison, i32 %i.anb, i64 0
  %i.and = shufflevector <4 x i32> %i.anc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ane = add <4 x i32> %i.and, <i32 64, i32 576, i32 1088, i32 1600>
  store <4 x i32> %i.ane, ptr %i.ana, align 16, !tbaa !7
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ams
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 32
  %i.anh = trunc i64 %i.amt to i32
  %i.ani = insertelement <4 x i32> poison, i32 %i.anh, i64 0
  %i.anj = shufflevector <4 x i32> %i.ani, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ank = add <4 x i32> %i.anj, <i32 128, i32 640, i32 1152, i32 1664>
  store <4 x i32> %i.ank, ptr %i.ang, align 16, !tbaa !7
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ams
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 48
  %i.ann = trunc i64 %i.amt to i32
  %i.ano = insertelement <4 x i32> poison, i32 %i.ann, i64 0
  %i.anp = shufflevector <4 x i32> %i.ano, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anq = add <4 x i32> %i.anp, <i32 192, i32 704, i32 1216, i32 1728>
  store <4 x i32> %i.anq, ptr %i.anm, align 16, !tbaa !7
  %i.anr = add nuw nsw i64 %i.ajw, 64             ; 4 uses
  %i.ans = add nuw nsw i64 %indvars.iv572, 32     ; 4 uses
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.anr
  %i.anu = trunc i64 %i.ans to i32
  %i.anv = insertelement <4 x i32> poison, i32 %i.anu, i64 0
  %i.anw = shufflevector <4 x i32> %i.anv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anx = add <4 x i32> %i.anw, <i32 0, i32 512, i32 1024, i32 1536>
  store <4 x i32> %i.anx, ptr %i.ant, align 16, !tbaa !7
  %i.any = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.anr
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 16
  %i.aoa = trunc i64 %i.ans to i32
  %i.aob = insertelement <4 x i32> poison, i32 %i.aoa, i64 0
  %i.aoc = shufflevector <4 x i32> %i.aob, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aod = add <4 x i32> %i.aoc, <i32 64, i32 576, i32 1088, i32 1600>
  store <4 x i32> %i.aod, ptr %i.anz, align 16, !tbaa !7
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.anr
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 32
  %i.aog = trunc i64 %i.ans to i32
  %i.aoh = insertelement <4 x i32> poison, i32 %i.aog, i64 0
  %i.aoi = shufflevector <4 x i32> %i.aoh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aoj = add <4 x i32> %i.aoi, <i32 128, i32 640, i32 1152, i32 1664>
  store <4 x i32> %i.aoj, ptr %i.aof, align 16, !tbaa !7
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.anr
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 48
  %i.aom = trunc i64 %i.ans to i32
  %i.aon = insertelement <4 x i32> poison, i32 %i.aom, i64 0
  %i.aoo = shufflevector <4 x i32> %i.aon, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aop = add <4 x i32> %i.aoo, <i32 192, i32 704, i32 1216, i32 1728>
  store <4 x i32> %i.aop, ptr %i.aol, align 16, !tbaa !7
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond575.not = icmp eq i64 %indvars.iv.next573, 5
  br i1 %exitcond575.not, label %.preheader316.preheader, label %.preheader320, !llvm.loop !43

.preheader316.preheader:                          ; preds = %.preheader320
  store <4 x i32> <i32 4096, i32 4160, i32 4224, i32 4288>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1600), align 16, !tbaa !7
  store <4 x i32> <i32 4104, i32 4168, i32 4232, i32 4296>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1616), align 16, !tbaa !7
  store <4 x i32> <i32 4112, i32 4176, i32 4240, i32 4304>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1632), align 16, !tbaa !7
  store <4 x i32> <i32 4120, i32 4184, i32 4248, i32 4312>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1648), align 16, !tbaa !7
  store <4 x i32> <i32 4128, i32 4192, i32 4256, i32 4320>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1664), align 16, !tbaa !7
  store <4 x i32> <i32 4097, i32 4161, i32 4225, i32 4289>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1680), align 16, !tbaa !7
  store <4 x i32> <i32 4105, i32 4169, i32 4233, i32 4297>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1696), align 16, !tbaa !7
  store <4 x i32> <i32 4113, i32 4177, i32 4241, i32 4305>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1712), align 16, !tbaa !7
  store <4 x i32> <i32 4121, i32 4185, i32 4249, i32 4313>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1728), align 16, !tbaa !7
  store <4 x i32> <i32 4129, i32 4193, i32 4257, i32 4321>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1744), align 16, !tbaa !7
  store <4 x i32> <i32 4098, i32 4162, i32 4226, i32 4290>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1760), align 16, !tbaa !7
  store <4 x i32> <i32 4106, i32 4170, i32 4234, i32 4298>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1776), align 16, !tbaa !7
  store <4 x i32> <i32 4114, i32 4178, i32 4242, i32 4306>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1792), align 16, !tbaa !7
  store <4 x i32> <i32 4122, i32 4186, i32 4250, i32 4314>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1808), align 16, !tbaa !7
  store <4 x i32> <i32 4130, i32 4194, i32 4258, i32 4322>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1824), align 16, !tbaa !7
  store <4 x i32> <i32 4099, i32 4163, i32 4227, i32 4291>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1840), align 16, !tbaa !7
  store <4 x i32> <i32 4107, i32 4171, i32 4235, i32 4299>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1856), align 16, !tbaa !7
  store <4 x i32> <i32 4115, i32 4179, i32 4243, i32 4307>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1872), align 16, !tbaa !7
  store <4 x i32> <i32 4123, i32 4187, i32 4251, i32 4315>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1888), align 16, !tbaa !7
  store <4 x i32> <i32 4131, i32 4195, i32 4259, i32 4323>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1904), align 16, !tbaa !7
  store <4 x i32> <i32 4100, i32 4164, i32 4228, i32 4292>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1920), align 16, !tbaa !7
  store <4 x i32> <i32 4108, i32 4172, i32 4236, i32 4300>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1936), align 16, !tbaa !7
  store <4 x i32> <i32 4116, i32 4180, i32 4244, i32 4308>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1952), align 16, !tbaa !7
  store <4 x i32> <i32 4124, i32 4188, i32 4252, i32 4316>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1968), align 16, !tbaa !7
  store <4 x i32> <i32 4132, i32 4196, i32 4260, i32 4324>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1984), align 16, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @do_layer3(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [39 x i32]], align 16        ; 7 uses
  %3 = alloca %struct.III_sideinfo, align 8       ; 12 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.c = load i32, ptr %0, align 4, !tbaa !70     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !71   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !72   ; 5 uses
  %i.h = icmp ne i32 %i.c, 1                      ; 4 uses
  %i.i = icmp slt i32 %i.e, 0
  %.0126 = select i1 %i.h, i32 %i.e, i32 0        ; 4 uses
  %.not204 = select i1 %i.h, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 4, !tbaa !73
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !74   ; 2 uses
  %i.o = and i32 %i.n, 2
  %i.p = and i32 %i.n, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0125 = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ]  ; 4 uses
  %.0124 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !75
  %.not = icmp eq i32 %i.r, 0
  %i.s = sext i32 %i.g to i64                     ; 2 uses
  %i.t = icmp eq i32 %.0126, 3
  %i.u = select i1 %i.t, i64 4, i64 0             ; 2 uses
  br i1 %.not, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call i32 @getbits(i32 noundef 8) #10 ; 3 uses
  store i32 %i.v, ptr %3, align 8, !tbaa !77
  br i1 %i.h, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  %i.w = load ptr, ptr @wordpointer, align 8, !tbaa !17 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18
  %i.y = zext i8 %i.x to i32
  %i.z = load i32, ptr @bitindex, align 4, !tbaa !7 ; 2 uses
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = add nsw i32 %i.z, 1                     ; 2 uses
  %i.ac = ashr i32 %i.ab, 3
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 %i.ad
  store ptr %i.ae, ptr @wordpointer, align 8, !tbaa !17
  %i.af = and i32 %i.ab, 7
  store i32 %i.af, ptr @bitindex, align 4, !tbaa !7
  %i.ag = lshr i32 %i.aa, 7
  %i.ah = and i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !78
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.aj = tail call i32 @getbits_fast(i32 noundef 2) #10
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !78
  %i.al = icmp sgt i32 %i.c, 0
  br i1 %i.al, label %.lr.ph.i, label %III_get_side_info_2.exit

.lr.ph.i:                                         ; preds = %bb.e, %.thread.i
  %invariant.gep.i = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @gainpow2, i64 2048), i64 %i.u
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = shl nuw nsw i32 %.0125, 3
  %spec.select.idx.i = zext nneg i32 %4 to i64
  %invariant.gep60.i = getelementptr i8, ptr %invariant.gep.i, i64 %spec.select.idx.i
  %i.an = icmp eq i32 %i.g, 8
  %i.ao = getelementptr inbounds [144 x i8], ptr @bandInfo, i64 %i.s ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [240 x i8], ptr %i.am, i64 %indvars.iv.i ; 23 uses
  %i.aq = tail call i32 @getbits(i32 noundef 12) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !21
  %i.as = tail call i32 @getbits_fast(i32 noundef 9) #10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store i32 %i.as, ptr %i.at, align 8, !tbaa !22
  %i.au = icmp ugt i32 %i.as, 288
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %i.av) #11 ; 0 uses
  store i32 288, ptr %i.at, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = tail call i32 @getbits_fast(i32 noundef 8) #10
  %i.ax = zext i32 %i.aw to i64
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %gep61.i = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.ay ; 4 uses
  store ptr %gep61.i, ptr %i.az, align 8, !tbaa !25
  %i.ba = tail call i32 @getbits(i32 noundef 9) #10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !26
  %i.bc = load ptr, ptr @wordpointer, align 8, !tbaa !17 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18
  %i.be = zext i8 %i.bd to i32
  %i.bf = load i32, ptr @bitindex, align 4, !tbaa !7 ; 2 uses
  %i.bg = add nsw i32 %i.bf, 1                    ; 2 uses
  %i.bh = ashr i32 %i.bg, 3
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bc, i64 %i.bi
  store ptr %i.bj, ptr @wordpointer, align 8, !tbaa !17
  %i.bk = and i32 %i.bg, 7
  store i32 %i.bk, ptr @bitindex, align 4, !tbaa !7
  %i.bl = lshr i32 128, %i.bf
  %i.bm = and i32 %i.bl, %i.be
  %.not55.i = icmp eq i32 %i.bm, 0
  br i1 %.not55.i, label %.preheader.i, label %bb.i

.preheader.i:                                     ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bo = tail call i32 @getbits_fast(i32 noundef 5) #10
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !7
  %i.bp = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !7
  %i.br = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !7
  %i.bt = tail call i32 @getbits_fast(i32 noundef 4) #10
  %i.bu = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.bv = add nsw i32 %i.bt, 1                    ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  %i.ca = add nsw i32 %i.bv, %i.bu
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr [2 x i8], ptr %i.ao, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !15
  %i.cf = insertelement <2 x i16> poison, i16 %i.by, i64 0
  %i.cg = insertelement <2 x i16> %i.cf, i16 %i.ce, i64 1
  %i.ch = ashr <2 x i16> %i.cg, splat (i16 1)
  %i.ci = sext <2 x i16> %i.ch to <2 x i32>
  store <2 x i32> %i.ci, ptr %i.bz, align 4, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.cj, align 8, !tbaa !27
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i32 0, ptr %i.ck, align 4, !tbaa !28
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.cl = tail call i32 @getbits_fast(i32 noundef 2) #10 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !27
  %i.cn = load ptr, ptr @wordpointer, align 8, !tbaa !17 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.cp = zext i8 %i.co to i32
  %i.cq = load i32, ptr @bitindex, align 4, !tbaa !7 ; 2 uses
  %i.cr = shl i32 %i.cp, %i.cq
  %i.cs = add nsw i32 %i.cq, 1                    ; 2 uses
  %i.ct = ashr i32 %i.cs, 3
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cn, i64 %i.cu
  store ptr %i.cv, ptr @wordpointer, align 8, !tbaa !17
  %i.cw = and i32 %i.cs, 7
  store i32 %i.cw, ptr @bitindex, align 4, !tbaa !7
  %i.cx = lshr i32 %i.cr, 7
  %i.cy = and i32 %i.cx, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !28
  %i.da = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.db = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 %i.da, ptr %i.db, align 8, !tbaa !7
  %i.dc = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 0, ptr %i.de, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.dg = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.dh = shl i32 %i.dg, 3
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %gep61.i, i64 %i.di
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !29
  %i.dk = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.dl = shl i32 %i.dk, 3
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %gep61.i, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !29
  %i.dp = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.dq = shl i32 %i.dp, 3
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %gep61.i, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !29
  switch i32 %i.cl, label %bb.l [
    i32 0, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.du = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite56.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 54, i64 1, ptr %i.du) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  store i32 18, ptr %i.dv, align 4, !tbaa !30
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ap, i64 68 ; 2 uses
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 54, ptr %i.dw, align 4, !tbaa !30
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store i32 27, ptr %i.dw, align 4, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  store i32 288, ptr %i.dx, align 8, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader.i
  %i.dy = load ptr, ptr @wordpointer, align 8, !tbaa !17 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !18
  %i.ea = zext i8 %i.dz to i32
  %i.eb = load i32, ptr @bitindex, align 4, !tbaa !7 ; 2 uses
  %i.ec = shl i32 %i.ea, %i.eb
  %i.ed = add nsw i32 %i.eb, 1                    ; 2 uses
  %i.ee = ashr i32 %i.ed, 3
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.dy, i64 %i.ef ; 3 uses
  store ptr %i.eg, ptr @wordpointer, align 8, !tbaa !17
  %i.eh = and i32 %i.ed, 7                        ; 3 uses
  store i32 %i.eh, ptr @bitindex, align 4, !tbaa !7
  %i.ei = lshr i32 %i.ec, 7
  %i.ej = and i32 %i.ei, 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store i32 %i.ej, ptr %i.ek, align 8, !tbaa !32
  %i.el = load i8, ptr %i.eg, align 1, !tbaa !18
  %i.em = zext i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, %i.eh
  %i.eo = add nuw nsw i32 %i.eh, 1                ; 2 uses
  %i.ep = lshr i32 %i.eo, 3
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eq
  store ptr %i.er, ptr @wordpointer, align 8, !tbaa !17
  %i.es = and i32 %i.eo, 7
  store i32 %i.es, ptr @bitindex, align 4, !tbaa !7
  %i.et = lshr i32 %i.en, 7
  %i.eu = and i32 %i.et, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ap, i64 84
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !33
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %III_get_side_info_2.exit, label %bb.f, !llvm.loop !45

bb.q:                                             ; preds = %bb.c
  %i.ew = tail call i32 @getbits(i32 noundef 9) #10 ; 3 uses
  store i32 %i.ew, ptr %3, align 8, !tbaa !77
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  br i1 %i.h, label %bb.r, label %.thread.i151

.thread.i151:                                     ; preds = %bb.q
  %i.ey = tail call i32 @getbits_fast(i32 noundef 5) #10
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !78
  br label %.lr.ph.i141

bb.r:                                             ; preds = %bb.q
  %i.ez = tail call i32 @getbits_fast(i32 noundef 3) #10
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !78
  %i.fa = icmp sgt i32 %i.c, 0
  br i1 %i.fa, label %.lr.ph.i141, label %III_get_side_info_2.exit

.lr.ph.i141:                                      ; preds = %bb.r, %.thread.i151
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %wide.trip.count.i142 = zext nneg i32 %i.c to i64 ; 3 uses
  br label %bb.s

.preheader66.i:                                   ; preds = %bb.s
  %invariant.gep.i146 = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @gainpow2, i64 2048), i64 %i.u
  %5 = shl nuw nsw i32 %.0125, 3
  %spec.select.idx.i148 = zext nneg i32 %5 to i64
  %invariant.gep74.i = getelementptr i8, ptr %invariant.gep.i146, i64 %spec.select.idx.i148 ; 2 uses
  %i.fc = getelementptr inbounds [144 x i8], ptr @bandInfo, i64 %i.s ; 4 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph.i141
  %indvars.iv.i143 = phi i64 [ 0, %.lr.ph.i141 ], [ %indvars.iv.next.i144, %bb.s ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [240 x i8], ptr %i.fb, i64 %indvars.iv.i143 ; 2 uses
  store i32 -1, ptr %i.fd, align 8, !tbaa !34
  %i.fe = tail call i32 @getbits_fast(i32 noundef 4) #10
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 120
  store i32 %i.fe, ptr %i.ff, align 8, !tbaa !34
  %indvars.iv.next.i144 = add nuw nsw i64 %indvars.iv.i143, 1 ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %indvars.iv.next.i144, %wide.trip.count.i142
  br i1 %exitcond.not.i145, label %.preheader66.i, label %bb.s, !llvm.loop !46

bb.t:                                             ; preds = %bb.y, %.preheader66.i
  %indvars.iv86.i = phi i64 [ 0, %.preheader66.i ], [ %indvars.iv.next87.i, %bb.y ] ; 2 uses
  %gep73.i = getelementptr inbounds nuw [240 x i8], ptr %i.fb, i64 %indvars.iv86.i ; 23 uses
  %i.fg = tail call i32 @getbits(i32 noundef 12) #10
  %i.fh = getelementptr inbounds nuw i8, ptr %gep73.i, i64 4
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !21
  %i.fi = tail call i32 @getbits_fast(i32 noundef 9) #10 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %gep73.i, i64 8 ; 2 uses
  store i32 %i.fi, ptr %i.fj, align 8, !tbaa !22
  %i.fk = icmp ugt i32 %i.fi, 288
  br i1 %i.fk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fl = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite.i150 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %i.fl) #11 ; 0 uses
  store i32 288, ptr %i.fj, align 8, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fm = tail call i32 @getbits_fast(i32 noundef 8) #10
  %i.fn = zext i32 %i.fm to i64
  %i.fo = sub nsw i64 0, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %gep73.i, i64 112
  %gep75.i = getelementptr [8 x i8], ptr %invariant.gep74.i, i64 %i.fo ; 4 uses
  store ptr %gep75.i, ptr %i.fp, align 8, !tbaa !25
  %i.fq = tail call i32 @getbits_fast(i32 noundef 4) #10
  %i.fr = getelementptr inbounds nuw i8, ptr %gep73.i, i64 12
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !26
  %i.fs = load ptr, ptr @wordpointer, align 8, !tbaa !17 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !18
  %i.fu = zext i8 %i.ft to i32
  %i.fv = load i32, ptr @bitindex, align 4, !tbaa !7 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1                    ; 2 uses
  %i.fx = ashr i32 %i.fw, 3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %i.fs, i64 %i.fy
  store ptr %i.fz, ptr @wordpointer, align 8, !tbaa !17
  %i.ga = and i32 %i.fw, 7
  store i32 %i.ga, ptr @bitindex, align 4, !tbaa !7
  %i.gb = lshr i32 128, %i.fv
  %i.gc = and i32 %i.gb, %i.fu
  %.not63.i = icmp eq i32 %i.gc, 0
  br i1 %.not63.i, label %.preheader.i149, label %bb.w

.preheader.i149:                                  ; preds = %bb.v
  %i.gd = getelementptr inbounds nuw i8, ptr %gep73.i, i64 24
  %i.ge = tail call i32 @getbits_fast(i32 noundef 5) #10
  store i32 %i.ge, ptr %i.gd, align 8, !tbaa !7
  %i.gf = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.gg = getelementptr inbounds nuw i8, ptr %gep73.i, i64 28
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !7
  %i.gh = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.gi = getelementptr inbounds nuw i8, ptr %gep73.i, i64 32
  store i32 %i.gh, ptr %i.gi, align 8, !tbaa !7
  %i.gj = tail call i32 @getbits_fast(i32 noundef 4) #10
  %i.gk = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.gl = add nsw i32 %i.gj, 1                    ; 2 uses
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.fc, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !15
  %i.gp = getelementptr inbounds nuw i8, ptr %gep73.i, i64 68
  %i.gq = add nsw i32 %i.gl, %i.gk
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr [2 x i8], ptr %i.fc, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gs, i64 2
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !15
  %i.gv = insertelement <2 x i16> poison, i16 %i.go, i64 0
  %i.gw = insertelement <2 x i16> %i.gv, i16 %i.gu, i64 1
  %i.gx = ashr <2 x i16> %i.gw, splat (i16 1)
  %i.gy = sext <2 x i16> %i.gx to <2 x i32>
  store <2 x i32> %i.gy, ptr %i.gp, align 4, !tbaa !7
  %i.gz = getelementptr inbounds nuw i8, ptr %gep73.i, i64 16
  store i32 0, ptr %i.gz, align 8, !tbaa !27
  %i.ha = getelementptr inbounds nuw i8, ptr %gep73.i, i64 20
  store i32 0, ptr %i.ha, align 4, !tbaa !28
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.hb = tail call i32 @getbits_fast(i32 noundef 2) #10 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %gep73.i, i64 16
  store i32 %i.hb, ptr %i.hc, align 8, !tbaa !27
  %i.hd = load ptr, ptr @wordpointer, align 8, !tbaa !17 ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !18
  %i.hf = zext i8 %i.he to i32
  %i.hg = load i32, ptr @bitindex, align 4, !tbaa !7 ; 2 uses
  %i.hh = shl i32 %i.hf, %i.hg
  %i.hi = add nsw i32 %i.hg, 1                    ; 2 uses
  %i.hj = ashr i32 %i.hi, 3
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds i8, ptr %i.hd, i64 %i.hk
  store ptr %i.hl, ptr @wordpointer, align 8, !tbaa !17
  %i.hm = and i32 %i.hi, 7
  store i32 %i.hm, ptr @bitindex, align 4, !tbaa !7
  %i.hn = lshr i32 %i.hh, 7
  %i.ho = and i32 %i.hn, 1
  %i.hp = getelementptr inbounds nuw i8, ptr %gep73.i, i64 20
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !28
  %i.hq = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.hr = getelementptr inbounds nuw i8, ptr %gep73.i, i64 24
  store i32 %i.hq, ptr %i.hr, align 8, !tbaa !7
  %i.hs = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.ht = getelementptr inbounds nuw i8, ptr %gep73.i, i64 28
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !7
  %i.hu = getelementptr inbounds nuw i8, ptr %gep73.i, i64 32
  store i32 0, ptr %i.hu, align 8, !tbaa !7
  %i.hv = getelementptr inbounds nuw i8, ptr %gep73.i, i64 88
  %i.hw = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.hx = shl i32 %i.hw, 3
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %gep75.i, i64 %i.hy
  store ptr %i.hz, ptr %i.hv, align 8, !tbaa !29
  %i.ia = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.ib = shl i32 %i.ia, 3
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %gep75.i, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %gep73.i, i64 96
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !29
  %i.if = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.ig = shl i32 %i.if, 3
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %gep75.i, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %gep73.i, i64 104
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !29
  %i.ik = icmp eq i32 %i.hb, 0
  br i1 %i.ik, label %.loopexit214, label %bb.x

.loopexit214:                                     ; preds = %bb.w, %bb.ac
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite64.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 54, i64 1, ptr %i.il) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.im = getelementptr inbounds nuw i8, ptr %gep73.i, i64 68
  store i32 18, ptr %i.im, align 4, !tbaa !30
  %i.in = getelementptr inbounds nuw i8, ptr %gep73.i, i64 72
  store i32 288, ptr %i.in, align 8, !tbaa !31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.preheader.i149
  %i.io = load ptr, ptr @wordpointer, align 8, !tbaa !17 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !18
  %i.iq = zext i8 %i.ip to i32
  %i.ir = load i32, ptr @bitindex, align 4, !tbaa !7 ; 2 uses
  %i.is = shl i32 %i.iq, %i.ir
  %i.it = add nsw i32 %i.ir, 1                    ; 2 uses
  %i.iu = ashr i32 %i.it, 3
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds i8, ptr %i.io, i64 %i.iv ; 3 uses
  store ptr %i.iw, ptr @wordpointer, align 8, !tbaa !17
  %i.ix = and i32 %i.it, 7                        ; 3 uses
  store i32 %i.ix, ptr @bitindex, align 4, !tbaa !7
  %i.iy = lshr i32 %i.is, 7
  %i.iz = and i32 %i.iy, 1
  %i.ja = getelementptr inbounds nuw i8, ptr %gep73.i, i64 76
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !35
  %i.jb = load i8, ptr %i.iw, align 1, !tbaa !18
  %i.jc = zext i8 %i.jb to i32
  %i.jd = shl nuw nsw i32 %i.jc, %i.ix
  %i.je = add nuw nsw i32 %i.ix, 1                ; 2 uses
  %i.jf = lshr i32 %i.je, 3
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jg ; 3 uses
  store ptr %i.jh, ptr @wordpointer, align 8, !tbaa !17
  %i.ji = and i32 %i.je, 7                        ; 3 uses
  store i32 %i.ji, ptr @bitindex, align 4, !tbaa !7
  %i.jj = lshr i32 %i.jd, 7
  %i.jk = and i32 %i.jj, 1
  %i.jl = getelementptr inbounds nuw i8, ptr %gep73.i, i64 80
  store i32 %i.jk, ptr %i.jl, align 8, !tbaa !32
  %i.jm = load i8, ptr %i.jh, align 1, !tbaa !18
  %i.jn = zext i8 %i.jm to i32
  %i.jo = shl nuw nsw i32 %i.jn, %i.ji
  %i.jp = add nuw nsw i32 %i.ji, 1                ; 2 uses
  %i.jq = lshr i32 %i.jp, 3
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jr
  store ptr %i.js, ptr @wordpointer, align 8, !tbaa !17
  %i.jt = and i32 %i.jp, 7
  store i32 %i.jt, ptr @bitindex, align 4, !tbaa !7
  %i.ju = lshr i32 %i.jo, 7
  %i.jv = and i32 %i.ju, 1
  %i.jw = getelementptr inbounds nuw i8, ptr %gep73.i, i64 84
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !33
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1 ; 2 uses
end_hunk_0
