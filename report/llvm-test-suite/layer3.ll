inline.NumInlined: 29
inline.NumDeleted: 6
begin_hunk_0_@init_layer3:bb.a
  %i.alr = add nuw nsw i64 %indvars.iv572, 8      ; 4 uses
  %i.als = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.alq
  %i.alt = trunc i64 %i.alr to i32
  %i.alu = insertelement <4 x i32> poison, i32 %i.alt, i64 0
  %i.alv = shufflevector <4 x i32> %i.alu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.alw = add <4 x i32> %i.alv, <i32 0, i32 512, i32 1024, i32 1536>
  store <4 x i32> %i.alw, ptr %i.als, align 16, !tbaa !4
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.alq
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 16
  %i.alz = trunc i64 %i.alr to i32
  %i.ama = insertelement <4 x i32> poison, i32 %i.alz, i64 0
  %i.amb = shufflevector <4 x i32> %i.ama, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amc = add <4 x i32> %i.amb, <i32 64, i32 576, i32 1088, i32 1600>
  store <4 x i32> %i.amc, ptr %i.aly, align 16, !tbaa !4
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.alq
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 32
  %i.amf = trunc i64 %i.alr to i32
  %i.amg = insertelement <4 x i32> poison, i32 %i.amf, i64 0
  %i.amh = shufflevector <4 x i32> %i.amg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ami = add <4 x i32> %i.amh, <i32 128, i32 640, i32 1152, i32 1664>
  store <4 x i32> %i.ami, ptr %i.ame, align 16, !tbaa !4
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.alq
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 48
  %i.aml = trunc i64 %i.alr to i32
  %i.amm = insertelement <4 x i32> poison, i32 %i.aml, i64 0
  %i.amn = shufflevector <4 x i32> %i.amm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amo = add <4 x i32> %i.amn, <i32 192, i32 704, i32 1216, i32 1728>
  store <4 x i32> %i.amo, ptr %i.amk, align 16, !tbaa !4
  %i.amp = add nuw nsw i64 %i.aks, 32             ; 4 uses
  %i.amq = add nuw nsw i64 %indvars.iv572, 16     ; 4 uses
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.amp
  %i.ams = trunc i64 %i.amq to i32
  %i.amt = insertelement <4 x i32> poison, i32 %i.ams, i64 0
  %i.amu = shufflevector <4 x i32> %i.amt, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amv = add <4 x i32> %i.amu, <i32 0, i32 512, i32 1024, i32 1536>
  store <4 x i32> %i.amv, ptr %i.amr, align 16, !tbaa !4
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.amp
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 16
  %i.amy = trunc i64 %i.amq to i32
  %i.amz = insertelement <4 x i32> poison, i32 %i.amy, i64 0
  %i.ana = shufflevector <4 x i32> %i.amz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anb = add <4 x i32> %i.ana, <i32 64, i32 576, i32 1088, i32 1600>
  store <4 x i32> %i.anb, ptr %i.amx, align 16, !tbaa !4
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.amp
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 32
  %i.ane = trunc i64 %i.amq to i32
  %i.anf = insertelement <4 x i32> poison, i32 %i.ane, i64 0
  %i.ang = shufflevector <4 x i32> %i.anf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anh = add <4 x i32> %i.ang, <i32 128, i32 640, i32 1152, i32 1664>
  store <4 x i32> %i.anh, ptr %i.and, align 16, !tbaa !4
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.amp
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 48
  %i.ank = trunc i64 %i.amq to i32
  %i.anl = insertelement <4 x i32> poison, i32 %i.ank, i64 0
  %i.anm = shufflevector <4 x i32> %i.anl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ann = add <4 x i32> %i.anm, <i32 192, i32 704, i32 1216, i32 1728>
  store <4 x i32> %i.ann, ptr %i.anj, align 16, !tbaa !4
  %i.ano = add nuw nsw i64 %i.aks, 48             ; 4 uses
  %i.anp = add nuw nsw i64 %indvars.iv572, 24     ; 4 uses
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ano
  %i.anr = trunc i64 %i.anp to i32
  %i.ans = insertelement <4 x i32> poison, i32 %i.anr, i64 0
  %i.ant = shufflevector <4 x i32> %i.ans, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anu = add <4 x i32> %i.ant, <i32 0, i32 512, i32 1024, i32 1536>
  store <4 x i32> %i.anu, ptr %i.anq, align 16, !tbaa !4
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ano
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 16
  %i.anx = trunc i64 %i.anp to i32
  %i.any = insertelement <4 x i32> poison, i32 %i.anx, i64 0
  %i.anz = shufflevector <4 x i32> %i.any, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aoa = add <4 x i32> %i.anz, <i32 64, i32 576, i32 1088, i32 1600>
  store <4 x i32> %i.aoa, ptr %i.anw, align 16, !tbaa !4
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ano
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 32
  %i.aod = trunc i64 %i.anp to i32
  %i.aoe = insertelement <4 x i32> poison, i32 %i.aod, i64 0
  %i.aof = shufflevector <4 x i32> %i.aoe, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aog = add <4 x i32> %i.aof, <i32 128, i32 640, i32 1152, i32 1664>
  store <4 x i32> %i.aog, ptr %i.aoc, align 16, !tbaa !4
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.ano
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 48
  %i.aoj = trunc i64 %i.anp to i32
  %i.aok = insertelement <4 x i32> poison, i32 %i.aoj, i64 0
  %i.aol = shufflevector <4 x i32> %i.aok, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aom = add <4 x i32> %i.aol, <i32 192, i32 704, i32 1216, i32 1728>
  store <4 x i32> %i.aom, ptr %i.aoi, align 16, !tbaa !4
  %i.aon = add nuw nsw i64 %i.aks, 64             ; 4 uses
  %i.aoo = add nuw nsw i64 %indvars.iv572, 32     ; 4 uses
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.aon
  %i.aoq = trunc i64 %i.aoo to i32
  %i.aor = insertelement <4 x i32> poison, i32 %i.aoq, i64 0
  %i.aos = shufflevector <4 x i32> %i.aor, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aot = add <4 x i32> %i.aos, <i32 0, i32 512, i32 1024, i32 1536>
  store <4 x i32> %i.aot, ptr %i.aop, align 16, !tbaa !4
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.aon
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 16
  %i.aow = trunc i64 %i.aoo to i32
  %i.aox = insertelement <4 x i32> poison, i32 %i.aow, i64 0
  %i.aoy = shufflevector <4 x i32> %i.aox, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aoz = add <4 x i32> %i.aoy, <i32 64, i32 576, i32 1088, i32 1600>
  store <4 x i32> %i.aoz, ptr %i.aov, align 16, !tbaa !4
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.aon
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 32
  %i.apc = trunc i64 %i.aoo to i32
  %i.apd = insertelement <4 x i32> poison, i32 %i.apc, i64 0
  %i.ape = shufflevector <4 x i32> %i.apd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.apf = add <4 x i32> %i.ape, <i32 128, i32 640, i32 1152, i32 1664>
  store <4 x i32> %i.apf, ptr %i.apb, align 16, !tbaa !4
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr @n_slen2, i64 %i.aon
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 48
  %i.api = trunc i64 %i.aoo to i32
  %i.apj = insertelement <4 x i32> poison, i32 %i.api, i64 0
  %i.apk = shufflevector <4 x i32> %i.apj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.apl = add <4 x i32> %i.apk, <i32 192, i32 704, i32 1216, i32 1728>
  store <4 x i32> %i.apl, ptr %i.aph, align 16, !tbaa !4
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond575.not = icmp eq i64 %indvars.iv.next573, 5
  br i1 %exitcond575.not, label %.preheader316.preheader, label %.preheader320, !llvm.loop !22

.preheader316.preheader:                          ; preds = %.preheader320
  store <4 x i32> <i32 4096, i32 4160, i32 4224, i32 4288>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1600), align 16, !tbaa !4
  store <4 x i32> <i32 4104, i32 4168, i32 4232, i32 4296>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1616), align 16, !tbaa !4
  store <4 x i32> <i32 4112, i32 4176, i32 4240, i32 4304>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1632), align 16, !tbaa !4
  store <4 x i32> <i32 4120, i32 4184, i32 4248, i32 4312>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1648), align 16, !tbaa !4
  store <4 x i32> <i32 4128, i32 4192, i32 4256, i32 4320>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1664), align 16, !tbaa !4
  store <4 x i32> <i32 4097, i32 4161, i32 4225, i32 4289>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1680), align 16, !tbaa !4
  store <4 x i32> <i32 4105, i32 4169, i32 4233, i32 4297>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1696), align 16, !tbaa !4
  store <4 x i32> <i32 4113, i32 4177, i32 4241, i32 4305>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1712), align 16, !tbaa !4
  store <4 x i32> <i32 4121, i32 4185, i32 4249, i32 4313>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1728), align 16, !tbaa !4
  store <4 x i32> <i32 4129, i32 4193, i32 4257, i32 4321>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1744), align 16, !tbaa !4
  store <4 x i32> <i32 4098, i32 4162, i32 4226, i32 4290>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1760), align 16, !tbaa !4
  store <4 x i32> <i32 4106, i32 4170, i32 4234, i32 4298>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1776), align 16, !tbaa !4
  store <4 x i32> <i32 4114, i32 4178, i32 4242, i32 4306>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1792), align 16, !tbaa !4
  store <4 x i32> <i32 4122, i32 4186, i32 4250, i32 4314>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1808), align 16, !tbaa !4
  store <4 x i32> <i32 4130, i32 4194, i32 4258, i32 4322>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1824), align 16, !tbaa !4
  store <4 x i32> <i32 4099, i32 4163, i32 4227, i32 4291>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1840), align 16, !tbaa !4
  store <4 x i32> <i32 4107, i32 4171, i32 4235, i32 4299>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1856), align 16, !tbaa !4
  store <4 x i32> <i32 4115, i32 4179, i32 4243, i32 4307>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1872), align 16, !tbaa !4
  store <4 x i32> <i32 4123, i32 4187, i32 4251, i32 4315>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1888), align 16, !tbaa !4
  store <4 x i32> <i32 4131, i32 4195, i32 4259, i32 4323>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1904), align 16, !tbaa !4
  store <4 x i32> <i32 4100, i32 4164, i32 4228, i32 4292>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1920), align 16, !tbaa !4
  store <4 x i32> <i32 4108, i32 4172, i32 4236, i32 4300>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1936), align 16, !tbaa !4
  store <4 x i32> <i32 4116, i32 4180, i32 4244, i32 4308>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1952), align 16, !tbaa !4
  store <4 x i32> <i32 4124, i32 4188, i32 4252, i32 4316>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1968), align 16, !tbaa !4
  store <4 x i32> <i32 4132, i32 4196, i32 4260, i32 4324>, ptr getelementptr inbounds nuw (i8, ptr @n_slen2, i64 1984), align 16, !tbaa !4
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
  %i.c = load i32, ptr %0, align 4, !tbaa !23     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26   ; 5 uses
  %i.h = icmp ne i32 %i.c, 1                      ; 4 uses
  %i.i = icmp slt i32 %i.e, 0
  %.0128 = select i1 %i.h, i32 %i.e, i32 0        ; 4 uses
  %.not203 = select i1 %i.h, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28   ; 2 uses
  %i.o = and i32 %i.n, 2
  %i.p = and i32 %i.n, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0130 = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ]  ; 4 uses
  %.0129 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29
  %.not = icmp eq i32 %i.r, 0
  %i.s = sext i32 %i.g to i64                     ; 2 uses
  %i.t = icmp eq i32 %.0128, 3
  %i.u = select i1 %i.t, i64 4, i64 0             ; 2 uses
  br i1 %.not, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call i32 @getbits(i32 noundef 8) #10 ; 3 uses
  store i32 %i.v, ptr %3, align 8, !tbaa !30
  br i1 %i.h, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  %i.w = load ptr, ptr @wordpointer, align 8, !tbaa !32 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !34
  %i.y = zext i8 %i.x to i32
  %i.z = load i32, ptr @bitindex, align 4, !tbaa !4 ; 2 uses
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = add nsw i32 %i.z, 1                     ; 2 uses
  %i.ac = ashr i32 %i.ab, 3
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 %i.ad
  store ptr %i.ae, ptr @wordpointer, align 8, !tbaa !32
  %i.af = and i32 %i.ab, 7
  store i32 %i.af, ptr @bitindex, align 4, !tbaa !4
  %i.ag = lshr i32 %i.aa, 7
  %i.ah = and i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !35
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.aj = tail call i32 @getbits_fast(i32 noundef 2) #10
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !35
  %i.al = icmp sgt i32 %i.c, 0
  br i1 %i.al, label %.lr.ph.i, label %III_get_side_info_2.exit

.lr.ph.i:                                         ; preds = %bb.e, %.thread.i
  %invariant.gep.i = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @gainpow2, i64 2048), i64 %i.u
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not.i = icmp eq i32 %.0130, 0
  %spec.select.idx.i = select i1 %.not.i, i64 0, i64 16
  %invariant.gep59.i = getelementptr i8, ptr %invariant.gep.i, i64 %spec.select.idx.i
  %i.an = icmp eq i32 %i.g, 8
  %i.ao = getelementptr inbounds [144 x i8], ptr @bandInfo, i64 %i.s ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [240 x i8], ptr %i.am, i64 %indvars.iv.i ; 23 uses
  %i.aq = tail call i32 @getbits(i32 noundef 12) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !36
  %i.as = tail call i32 @getbits_fast(i32 noundef 9) #10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store i32 %i.as, ptr %i.at, align 8, !tbaa !39
  %i.au = icmp ugt i32 %i.as, 288
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.aw = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %i.av) #11 ; 0 uses
  store i32 288, ptr %i.at, align 8, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = tail call i32 @getbits_fast(i32 noundef 8) #10
  %i.ay = zext i32 %i.ax to i64
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %gep60.i = getelementptr [8 x i8], ptr %invariant.gep59.i, i64 %i.az ; 4 uses
  store ptr %gep60.i, ptr %i.ba, align 8, !tbaa !42
  %i.bb = tail call i32 @getbits(i32 noundef 9) #10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !43
  %i.bd = load ptr, ptr @wordpointer, align 8, !tbaa !32 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !34
  %i.bf = zext i8 %i.be to i32
  %i.bg = load i32, ptr @bitindex, align 4, !tbaa !4 ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1                    ; 2 uses
  %i.bi = ashr i32 %i.bh, 3
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bd, i64 %i.bj
  store ptr %i.bk, ptr @wordpointer, align 8, !tbaa !32
  %i.bl = and i32 %i.bh, 7
  store i32 %i.bl, ptr @bitindex, align 4, !tbaa !4
  %i.bm = lshr i32 128, %i.bg
  %i.bn = and i32 %i.bm, %i.bf
  %.not55.i = icmp eq i32 %i.bn, 0
  br i1 %.not55.i, label %.preheader.i, label %bb.i

.preheader.i:                                     ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bp = tail call i32 @getbits_fast(i32 noundef 5) #10
  store i32 %i.bp, ptr %i.bo, align 8, !tbaa !4
  %i.bq = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !4
  %i.bs = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !4
  %i.bu = tail call i32 @getbits_fast(i32 noundef 4) #10
  %i.bv = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.bw = add nsw i32 %i.bu, 1                    ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  %i.cb = add nsw i32 %i.bw, %i.bv
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr [2 x i8], ptr %i.ao, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !18
  %i.cg = insertelement <2 x i16> poison, i16 %i.bz, i64 0
  %i.ch = insertelement <2 x i16> %i.cg, i16 %i.cf, i64 1
  %i.ci = ashr <2 x i16> %i.ch, splat (i16 1)
  %i.cj = sext <2 x i16> %i.ci to <2 x i32>
  store <2 x i32> %i.cj, ptr %i.ca, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.ck, align 8, !tbaa !44
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i32 0, ptr %i.cl, align 4, !tbaa !45
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.cm = tail call i32 @getbits_fast(i32 noundef 2) #10 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !44
  %i.co = load ptr, ptr @wordpointer, align 8, !tbaa !32 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !34
  %i.cq = zext i8 %i.cp to i32
  %i.cr = load i32, ptr @bitindex, align 4, !tbaa !4 ; 2 uses
  %i.cs = shl i32 %i.cq, %i.cr
  %i.ct = add nsw i32 %i.cr, 1                    ; 2 uses
  %i.cu = ashr i32 %i.ct, 3
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.co, i64 %i.cv
  store ptr %i.cw, ptr @wordpointer, align 8, !tbaa !32
  %i.cx = and i32 %i.ct, 7
  store i32 %i.cx, ptr @bitindex, align 4, !tbaa !4
  %i.cy = lshr i32 %i.cs, 7
  %i.cz = and i32 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !45
  %i.db = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !4
  %i.dd = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 0, ptr %i.df, align 8, !tbaa !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.dh = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.di = shl i32 %i.dh, 3
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %gep60.i, i64 %i.dj
  store ptr %i.dk, ptr %i.dg, align 8, !tbaa !46
  %i.dl = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.dm = shl i32 %i.dl, 3
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %gep60.i, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !46
  %i.dq = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.dr = shl i32 %i.dq, 3
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %gep60.i, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !46
  switch i32 %i.cm, label %bb.l [
    i32 0, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.dw = tail call i64 @fwrite(ptr nonnull @.str.1, i64 54, i64 1, ptr %i.dv) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  store i32 18, ptr %i.dx, align 4, !tbaa !47
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ap, i64 68 ; 2 uses
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 54, ptr %i.dy, align 4, !tbaa !47
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store i32 27, ptr %i.dy, align 4, !tbaa !47
  br label %bb.o
end_hunk_0
begin_hunk_1_@do_layer3:bb.a

._crit_edge.i:                                    ; preds = %bb.y
  %invariant.gep71.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 128
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %._crit_edge.i
  %indvars.iv85.i.1 = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next86.i.1, %bb.ae ] ; 2 uses
  %gep72.i.1 = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep71.i.1, i64 %indvars.iv85.i.1 ; 23 uses
  %i.kb = tail call i32 @getbits(i32 noundef 12) #10
  %i.kc = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 4
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !36
  %i.kd = tail call i32 @getbits_fast(i32 noundef 9) #10 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 8 ; 2 uses
  store i32 %i.kd, ptr %i.ke, align 8, !tbaa !39
  %i.kf = icmp ugt i32 %i.kd, 288
  br i1 %i.kf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.kg = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.kh = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %i.kg) #11 ; 0 uses
  store i32 288, ptr %i.ke, align 8, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ki = tail call i32 @getbits_fast(i32 noundef 8) #10
  %i.kj = zext i32 %i.ki to i64
  %i.kk = sub nsw i64 0, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 112
  %gep74.i.1 = getelementptr [8 x i8], ptr %invariant.gep73.i, i64 %i.kk ; 4 uses
  store ptr %gep74.i.1, ptr %i.kl, align 8, !tbaa !42
  %i.km = tail call i32 @getbits_fast(i32 noundef 4) #10
  %i.kn = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 12
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !43
  %i.ko = load ptr, ptr @wordpointer, align 8, !tbaa !32 ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !34
  %i.kq = zext i8 %i.kp to i32
  %i.kr = load i32, ptr @bitindex, align 4, !tbaa !4 ; 2 uses
  %i.ks = add nsw i32 %i.kr, 1                    ; 2 uses
  %i.kt = ashr i32 %i.ks, 3
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds i8, ptr %i.ko, i64 %i.ku
  store ptr %i.kv, ptr @wordpointer, align 8, !tbaa !32
  %i.kw = and i32 %i.ks, 7
  store i32 %i.kw, ptr @bitindex, align 4, !tbaa !4
  %i.kx = lshr i32 128, %i.kr
  %i.ky = and i32 %i.kx, %i.kq
  %.not63.i.1 = icmp eq i32 %i.ky, 0
  br i1 %.not63.i.1, label %.preheader.i149.1, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kz = tail call i32 @getbits_fast(i32 noundef 2) #10 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 16
  store i32 %i.kz, ptr %i.la, align 8, !tbaa !44
  %i.lb = load ptr, ptr @wordpointer, align 8, !tbaa !32 ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !34
  %i.ld = zext i8 %i.lc to i32
  %i.le = load i32, ptr @bitindex, align 4, !tbaa !4 ; 2 uses
  %i.lf = shl i32 %i.ld, %i.le
  %i.lg = add nsw i32 %i.le, 1                    ; 2 uses
  %i.lh = ashr i32 %i.lg, 3
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds i8, ptr %i.lb, i64 %i.li
  store ptr %i.lj, ptr @wordpointer, align 8, !tbaa !32
  %i.lk = and i32 %i.lg, 7
  store i32 %i.lk, ptr @bitindex, align 4, !tbaa !4
  %i.ll = lshr i32 %i.lf, 7
  %i.lm = and i32 %i.ll, 1
  %i.ln = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 20
  store i32 %i.lm, ptr %i.ln, align 4, !tbaa !45
  %i.lo = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.lp = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 24
  store i32 %i.lo, ptr %i.lp, align 8, !tbaa !4
  %i.lq = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.lr = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 28
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !4
  %i.ls = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 32
  store i32 0, ptr %i.ls, align 8, !tbaa !4
  %i.lt = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 88
  %i.lu = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.lv = shl i32 %i.lu, 3
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %gep74.i.1, i64 %i.lw
  store ptr %i.lx, ptr %i.lt, align 8, !tbaa !46
  %i.ly = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.lz = shl i32 %i.ly, 3
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %gep74.i.1, i64 %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 96
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !46
  %i.md = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.me = shl i32 %i.md, 3
  %i.mf = zext i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %gep74.i.1, i64 %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 104
  store ptr %i.mg, ptr %i.mh, align 8, !tbaa !46
  %i.mi = icmp eq i32 %i.kz, 0
  br i1 %i.mi, label %.loopexit213, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mj = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 68
  store i32 18, ptr %i.mj, align 4, !tbaa !47
  %i.mk = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 72
  store i32 288, ptr %i.mk, align 8, !tbaa !48
  br label %bb.ae

.preheader.i149.1:                                ; preds = %bb.ab
  %i.ml = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 24
  %i.mm = tail call i32 @getbits_fast(i32 noundef 5) #10
  store i32 %i.mm, ptr %i.ml, align 8, !tbaa !4
  %i.mn = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.mo = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 28
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !4
  %i.mp = tail call i32 @getbits_fast(i32 noundef 5) #10
  %i.mq = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 32
  store i32 %i.mp, ptr %i.mq, align 8, !tbaa !4
  %i.mr = tail call i32 @getbits_fast(i32 noundef 4) #10
  %i.ms = tail call i32 @getbits_fast(i32 noundef 3) #10
  %i.mt = add nsw i32 %i.mr, 1                    ; 2 uses
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [2 x i8], ptr %i.fe, i64 %i.mu
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !18
  %i.mx = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 68
  %i.my = add nsw i32 %i.mt, %i.ms
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr [2 x i8], ptr %i.fe, i64 %i.mz
  %i.nb = getelementptr i8, ptr %i.na, i64 2
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !18
  %i.nd = insertelement <2 x i16> poison, i16 %i.mw, i64 0
  %i.ne = insertelement <2 x i16> %i.nd, i16 %i.nc, i64 1
  %i.nf = ashr <2 x i16> %i.ne, splat (i16 1)
  %i.ng = sext <2 x i16> %i.nf to <2 x i32>
  store <2 x i32> %i.ng, ptr %i.mx, align 4, !tbaa !4
  %i.nh = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 16
  store i32 0, ptr %i.nh, align 8, !tbaa !44
  %i.ni = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 20
  store i32 0, ptr %i.ni, align 4, !tbaa !45
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader.i149.1, %bb.ad
  %i.nj = load ptr, ptr @wordpointer, align 8, !tbaa !32 ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !34
  %i.nl = zext i8 %i.nk to i32
  %i.nm = load i32, ptr @bitindex, align 4, !tbaa !4 ; 2 uses
  %i.nn = shl i32 %i.nl, %i.nm
  %i.no = add nsw i32 %i.nm, 1                    ; 2 uses
  %i.np = ashr i32 %i.no, 3
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds i8, ptr %i.nj, i64 %i.nq ; 3 uses
  store ptr %i.nr, ptr @wordpointer, align 8, !tbaa !32
  %i.ns = and i32 %i.no, 7                        ; 3 uses
  store i32 %i.ns, ptr @bitindex, align 4, !tbaa !4
  %i.nt = lshr i32 %i.nn, 7
  %i.nu = and i32 %i.nt, 1
  %i.nv = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 76
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !54
  %i.nw = load i8, ptr %i.nr, align 1, !tbaa !34
  %i.nx = zext i8 %i.nw to i32
  %i.ny = shl nuw nsw i32 %i.nx, %i.ns
  %i.nz = add nuw nsw i32 %i.ns, 1                ; 2 uses
  %i.oa = lshr i32 %i.nz, 3
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.ob ; 3 uses
  store ptr %i.oc, ptr @wordpointer, align 8, !tbaa !32
  %i.od = and i32 %i.nz, 7                        ; 3 uses
  store i32 %i.od, ptr @bitindex, align 4, !tbaa !4
  %i.oe = lshr i32 %i.ny, 7
  %i.of = and i32 %i.oe, 1
  %i.og = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 80
  store i32 %i.of, ptr %i.og, align 8, !tbaa !49
  %i.oh = load i8, ptr %i.oc, align 1, !tbaa !34
  %i.oi = zext i8 %i.oh to i32
  %i.oj = shl nuw nsw i32 %i.oi, %i.od
  %i.ok = add nuw nsw i32 %i.od, 1                ; 2 uses
  %i.ol = lshr i32 %i.ok, 3
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.om
  store ptr %i.on, ptr @wordpointer, align 8, !tbaa !32
  %i.oo = and i32 %i.ok, 7
  store i32 %i.oo, ptr @bitindex, align 4, !tbaa !4
  %i.op = lshr i32 %i.oj, 7
  %i.oq = and i32 %i.op, 1
  %i.or = getelementptr inbounds nuw i8, ptr %gep72.i.1, i64 84
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !50
  %indvars.iv.next86.i.1 = add nuw nsw i64 %indvars.iv85.i.1, 1 ; 2 uses
  %exitcond89.not.i.1 = icmp eq i64 %indvars.iv.next86.i.1, %wide.trip.count.i142
  br i1 %exitcond89.not.i.1, label %III_get_side_info_2.exit, label %bb.z, !llvm.loop !55

III_get_side_info_2.exit:                         ; preds = %bb.p, %bb.ae, %bb.r, %bb.e
  %i.os = phi i32 [ %i.ey, %bb.ae ], [ %i.v, %bb.e ], [ %i.ey, %bb.r ], [ %i.v, %bb.p ]
  %.0126 = phi i64 [ 2, %bb.ae ], [ 1, %bb.e ], [ 2, %bb.r ], [ 1, %bb.p ]
  %i.ot = zext i32 %i.os to i64
  %i.ou = tail call i32 @set_pointer(i64 noundef %i.ot) #10
  %i.ov = icmp eq i32 %i.ou, -1
  br i1 %i.ov, label %.thread, label %.preheader177

.preheader177:                                    ; preds = %III_get_side_info_2.exit
  %i.ow = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ox = icmp eq i32 %i.c, 2
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.oz = getelementptr inbounds nuw i8, ptr %i.a, i64 156 ; 11 uses
  %.not139 = icmp eq i32 %.0130, 0                ; 5 uses
  %.not140 = icmp eq i32 %.0129, 0
  %i.pa = sext i32 %i.g to i64
  %i.pb = getelementptr inbounds [144 x i8], ptr @bandInfo, i64 %i.pa ; 8 uses
  %.0148.v.i = select i1 %.not139, ptr @pow2_1, ptr @pow2_2
  %.0.v.i = select i1 %.not139, ptr @pow1_1, ptr @pow1_2
  %tan2_1.tan2_2.i = select i1 %.not139, ptr @tan2_1, ptr @tan2_2
  %tan1_1.tan1_2.i = select i1 %.not139, ptr @tan1_1, ptr @tan1_2
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 46 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 88
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 118 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 90 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pb, i64 114 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 142 ; 3 uses
  %4 = or disjoint i32 %.0129, %.0130
  %or.cond = icmp ne i32 %4, 0
  %i.pj = icmp eq i32 %.0128, 3
  %or.cond4 = select i1 %or.cond, i1 true, i1 %i.pj
  %i.pk = icmp sgt i32 %.0128, -1
  br label %bb.af

bb.af:                                            ; preds = %.preheader177, %bb.bw
  %indvars.iv224 = phi i64 [ 0, %.preheader177 ], [ %indvars.iv.next225, %bb.bw ] ; 3 uses
  %.0121195 = phi i32 [ 0, %.preheader177 ], [ %.2123, %bb.bw ] ; 3 uses
  %i.pl = getelementptr inbounds nuw [120 x i8], ptr %i.ow, i64 %indvars.iv224 ; 5 uses
  %i.pm = load i32, ptr %i.q, align 4, !tbaa !29
  %.not135 = icmp eq i32 %i.pm, 0
  br i1 %.not135, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pn = call fastcc i32 @III_get_scale_factors_2(ptr noundef %i.a, ptr noundef %i.pl, i32 noundef 0)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.po = call fastcc i32 @III_get_scale_factors_1(ptr noundef %i.a, ptr noundef %i.pl)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0120.in = phi i32 [ %i.pn, %bb.ag ], [ %i.po, %bb.ah ]
  %i.pp = call fastcc i32 @III_dequantize_sample(ptr noundef nonnull @do_layer3.hybridIn, ptr noundef %i.a, ptr noundef %i.pl, i32 noundef %i.g, i32 noundef %.0120.in)
  %.not136 = icmp eq i32 %i.pp, 0
  br i1 %.not136, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.ox, label %bb.ak, label %.loopexit.preheader

bb.ak:                                            ; preds = %bb.aj
  %i.pq = getelementptr inbounds nuw [120 x i8], ptr %i.oy, i64 %indvars.iv224 ; 14 uses
  %i.pr = load i32, ptr %i.q, align 4, !tbaa !29
  %.not137 = icmp eq i32 %i.pr, 0
  br i1 %.not137, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ps = call fastcc i32 @III_get_scale_factors_2(ptr noundef %i.oz, ptr noundef %i.pq, i32 noundef %.0129)
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.pt = call fastcc i32 @III_get_scale_factors_1(ptr noundef %i.oz, ptr noundef %i.pq)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0118.in = phi i32 [ %i.ps, %bb.al ], [ %i.pt, %bb.am ]
  %i.pu = call fastcc i32 @III_dequantize_sample(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), ptr noundef %i.oz, ptr noundef %i.pq, i32 noundef %i.g, i32 noundef %.0118.in)
  %.not138 = icmp eq i32 %i.pu, 0
  br i1 %.not138, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  br i1 %.not139, label %.loopexit176, label %vector.body332

vector.body332:                                   ; preds = %bb.ao, %vector.body332
  %index333 = phi i64 [ %index.next338, %vector.body332 ], [ 0, %bb.ao ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr @do_layer3.hybridIn, i64 %index333 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 2 uses
  %wide.load334.a = load <2 x double>, ptr %i.pv, align 16, !tbaa !8 ; 2 uses
  %wide.load335.a = load <2 x double>, ptr %i.pw, align 16, !tbaa !8 ; 2 uses
  %i.px = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), i64 %index333 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16 ; 2 uses
  %wide.load336 = load <2 x double>, ptr %i.px, align 16, !tbaa !8 ; 2 uses
  %wide.load337 = load <2 x double>, ptr %i.py, align 16, !tbaa !8 ; 2 uses
  %i.pz = fsub <2 x double> %wide.load334.a, %wide.load336
  %i.qa = fsub <2 x double> %wide.load335.a, %wide.load337
  store <2 x double> %i.pz, ptr %i.px, align 16, !tbaa !8
  store <2 x double> %i.qa, ptr %i.py, align 16, !tbaa !8
  %i.qb = fadd <2 x double> %wide.load334.a, %wide.load336
  %i.qc = fadd <2 x double> %wide.load335.a, %wide.load337
  store <2 x double> %i.qb, ptr %i.pv, align 16, !tbaa !8
  store <2 x double> %i.qc, ptr %i.pw, align 16, !tbaa !8
  %index.next338 = add nuw i64 %index333, 4       ; 2 uses
  %i.qd = icmp eq i64 %index.next338, 576
  br i1 %i.qd, label %.loopexit176, label %vector.body332, !llvm.loop !56

.loopexit176:                                     ; preds = %vector.body332, %bb.ao
  br i1 %.not140, label %III_i_stereo.exit, label %bb.ap

bb.ap:                                            ; preds = %.loopexit176
  %i.qe = load i32, ptr %i.q, align 4, !tbaa !29
  %.not.i151 = icmp eq i32 %i.qe, 0
  br i1 %.not.i151, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !43
  %i.qh = and i32 %i.qg, 1
  %i.qi = zext nneg i32 %i.qh to i64              ; 2 uses
  %.0148.i = getelementptr inbounds nuw [128 x i8], ptr %.0148.v.i, i64 %i.qi
  %.0.i = getelementptr inbounds nuw [128 x i8], ptr %.0.v.i, i64 %i.qi
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.1149.i = phi ptr [ %.0148.i, %bb.aq ], [ %tan2_1.tan2_2.i, %bb.ap ] ; 9 uses
  %.1.i = phi ptr [ %.0.i, %bb.aq ], [ %tan1_1.tan1_2.i, %bb.ap ] ; 9 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !44
  %i.ql = icmp eq i32 %i.qk, 2
  br i1 %i.ql, label %bb.as, label %bb.bg

bb.as:                                            ; preds = %bb.ar
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pq, i64 20
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !45 ; 7 uses
  %.not177.i = icmp eq i32 %i.qn, 0
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !4  ; 3 uses
  %i.qq = icmp sgt i32 %i.qp, 3
  %i.qr = icmp slt i32 %i.qp, 12
  br i1 %i.qr, label %.lr.ph22.i, label %._crit_edge23.i

.lr.ph22.i:                                       ; preds = %bb.as
  %i.qs = sext i32 %i.qp to i64
  br label %bb.at

bb.at:                                            ; preds = %.loopexit2.i, %.lr.ph22.i
  %indvars.iv51.i = phi i64 [ %i.qs, %.lr.ph22.i ], [ %indvars.iv.next52.i, %.loopexit2.i ] ; 4 uses
  %i.qt = trunc i64 %indvars.iv51.i to i32
  %i.qu = mul i32 %i.qt, 3
  %i.qv = sub i32 %i.qu, %i.qn
  %i.qw = zext i32 %i.qv to i64
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !4  ; 2 uses
  %.not181.i = icmp eq i32 %i.qy, 7
  br i1 %.not181.i, label %.loopexit2.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.qz = getelementptr inbounds [2 x i8], ptr %i.pf, i64 %indvars.iv51.i
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !18 ; 3 uses
  %i.rb = sext i32 %i.qy to i64                   ; 2 uses
  %i.rc = getelementptr inbounds [8 x i8], ptr %.1.i, i64 %i.rb
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !8 ; 3 uses
  %i.re = getelementptr inbounds [8 x i8], ptr %.1149.i, i64 %i.rb
  %i.rf = load double, ptr %i.re, align 8, !tbaa !8 ; 3 uses
  %i.rg = icmp sgt i16 %i.ra, 0
  br i1 %i.rg, label %.lr.ph19.preheader.i, label %.loopexit2.i

.lr.ph19.preheader.i:                             ; preds = %bb.au
  %i.rh = getelementptr inbounds [2 x i8], ptr %i.pg, i64 %indvars.iv51.i
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !18
  %i.rj = zext nneg i16 %i.ra to i32              ; 3 uses
  %i.rk = sext i16 %i.ri to i64                   ; 4 uses
  %xtraiter = and i32 %i.rj, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph19.i.prol.loopexit, label %.lr.ph19.i.prol

.lr.ph19.i.prol:                                  ; preds = %.lr.ph19.preheader.i
  %i.rl = getelementptr inbounds [8 x i8], ptr @do_layer3.hybridIn, i64 %i.rk ; 2 uses
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !8 ; 2 uses
  %i.rn = fmul double %i.rd, %i.rm
  store double %i.rn, ptr %i.rl, align 8, !tbaa !8
  %i.ro = fmul double %i.rf, %i.rm
  %i.rp = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), i64 %i.rk
  store double %i.ro, ptr %i.rp, align 8, !tbaa !8
  %i.rq = add nsw i32 %i.rj, -1
  %indvars.iv.next49.i.prol = add nsw i64 %i.rk, 3
  br label %.lr.ph19.i.prol.loopexit

.lr.ph19.i.prol.loopexit:                         ; preds = %.lr.ph19.i.prol, %.lr.ph19.preheader.i
  %indvars.iv48.i.unr = phi i64 [ %i.rk, %.lr.ph19.preheader.i ], [ %indvars.iv.next49.i.prol, %.lr.ph19.i.prol ]
  %.015417.i.unr = phi i32 [ %i.rj, %.lr.ph19.preheader.i ], [ %i.rq, %.lr.ph19.i.prol ]
  %i.rr = icmp eq i16 %i.ra, 1
  br i1 %i.rr, label %.loopexit2.i, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.prol.loopexit, %.lr.ph19.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i.1, %.lr.ph19.i ], [ %indvars.iv48.i.unr, %.lr.ph19.i.prol.loopexit ] ; 4 uses
  %.015417.i = phi i32 [ %i.sc, %.lr.ph19.i ], [ %.015417.i.unr, %.lr.ph19.i.prol.loopexit ] ; 2 uses
  %i.rs = getelementptr inbounds [8 x i8], ptr @do_layer3.hybridIn, i64 %indvars.iv48.i ; 2 uses
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !8 ; 2 uses
  %i.ru = fmul double %i.rd, %i.rt
  store double %i.ru, ptr %i.rs, align 8, !tbaa !8
  %i.rv = fmul double %i.rf, %i.rt
  %i.rw = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), i64 %indvars.iv48.i
  store double %i.rv, ptr %i.rw, align 8, !tbaa !8
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, 3 ; 2 uses
  %i.rx = getelementptr inbounds [8 x i8], ptr @do_layer3.hybridIn, i64 %indvars.iv.next49.i ; 2 uses
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !8 ; 2 uses
  %i.rz = fmul double %i.rd, %i.ry
  store double %i.rz, ptr %i.rx, align 8, !tbaa !8
  %i.sa = fmul double %i.rf, %i.ry
  %i.sb = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), i64 %indvars.iv.next49.i
  store double %i.sa, ptr %i.sb, align 8, !tbaa !8
  %i.sc = add nsw i32 %.015417.i, -2
  %indvars.iv.next49.i.1 = add nsw i64 %indvars.iv48.i, 6
  %i.sd = icmp sgt i32 %.015417.i, 2
  br i1 %i.sd, label %.lr.ph19.i, label %.loopexit2.i, !llvm.loop !59

.loopexit2.i:                                     ; preds = %.lr.ph19.i.prol.loopexit, %.lr.ph19.i, %bb.au, %bb.at
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %i.se = and i64 %indvars.iv.next52.i, 4294967295
  %exitcond55.not.i = icmp eq i64 %i.se, 12
  br i1 %exitcond55.not.i, label %._crit_edge23.i, label %bb.at, !llvm.loop !60

._crit_edge23.i:                                  ; preds = %.loopexit2.i, %bb.as
  %i.sf = sub i32 33, %i.qn
  %i.sg = zext i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.sg
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !4  ; 2 uses
  %.not180.i = icmp eq i32 %i.si, 7
  br i1 %.not180.i, label %.loopexit3.i, label %bb.av

bb.av:                                            ; preds = %._crit_edge23.i
  %i.sj = load i16, ptr %i.pi, align 2, !tbaa !18 ; 3 uses
  %i.sk = sext i32 %i.si to i64                   ; 2 uses
  %i.sl = getelementptr inbounds [8 x i8], ptr %.1.i, i64 %i.sk
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !8 ; 3 uses
  %i.sn = getelementptr inbounds [8 x i8], ptr %.1149.i, i64 %i.sk
  %i.so = load double, ptr %i.sn, align 8, !tbaa !8 ; 3 uses
  %i.sp = icmp sgt i16 %i.sj, 0
  br i1 %i.sp, label %.lr.ph27.preheader.i, label %.loopexit3.i

.lr.ph27.preheader.i:                             ; preds = %bb.av
  %i.sq = zext nneg i16 %i.sj to i32              ; 3 uses
  %i.sr = load i16, ptr %i.ph, align 2, !tbaa !18
  %i.ss = sext i16 %i.sr to i64                   ; 4 uses
  %xtraiter352.a = and i32 %i.sq, 1
  %lcmp.mod353.not.a = icmp eq i32 %xtraiter352.a, 0
  br i1 %lcmp.mod353.not.a, label %.lr.ph27.i.prol.loopexit, label %.lr.ph27.i.prol

.lr.ph27.i.prol:                                  ; preds = %.lr.ph27.preheader.i
  %i.st = getelementptr inbounds [8 x i8], ptr @do_layer3.hybridIn, i64 %i.ss ; 2 uses
  %i.su = load double, ptr %i.st, align 8, !tbaa !8 ; 2 uses
  %i.sv = fmul double %i.sm, %i.su
  store double %i.sv, ptr %i.st, align 8, !tbaa !8
  %i.sw = fmul double %i.so, %i.su
  %i.sx = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), i64 %i.ss
  store double %i.sw, ptr %i.sx, align 8, !tbaa !8
  %i.sy = add nsw i32 %i.sq, -1
  %indvars.iv.next57.i.prol = add nsw i64 %i.ss, 3
  br label %.lr.ph27.i.prol.loopexit

.lr.ph27.i.prol.loopexit:                         ; preds = %.lr.ph27.i.prol, %.lr.ph27.preheader.i
  %indvars.iv56.i.unr = phi i64 [ %i.ss, %.lr.ph27.preheader.i ], [ %indvars.iv.next57.i.prol, %.lr.ph27.i.prol ]
  %.115525.i.unr = phi i32 [ %i.sq, %.lr.ph27.preheader.i ], [ %i.sy, %.lr.ph27.i.prol ]
  %i.sz = icmp eq i16 %i.sj, 1
  br i1 %i.sz, label %.loopexit3.i, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %.lr.ph27.i.prol.loopexit, %.lr.ph27.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.1, %.lr.ph27.i ], [ %indvars.iv56.i.unr, %.lr.ph27.i.prol.loopexit ] ; 4 uses
  %.115525.i = phi i32 [ %i.tk, %.lr.ph27.i ], [ %.115525.i.unr, %.lr.ph27.i.prol.loopexit ] ; 2 uses
  %i.ta = getelementptr inbounds [8 x i8], ptr @do_layer3.hybridIn, i64 %indvars.iv56.i ; 2 uses
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !8 ; 2 uses
  %i.tc = fmul double %i.sm, %i.tb
  store double %i.tc, ptr %i.ta, align 8, !tbaa !8
  %i.td = fmul double %i.so, %i.tb
  %i.te = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), i64 %indvars.iv56.i
  store double %i.td, ptr %i.te, align 8, !tbaa !8
  %indvars.iv.next57.i = add nsw i64 %indvars.iv56.i, 3 ; 2 uses
  %i.tf = getelementptr inbounds [8 x i8], ptr @do_layer3.hybridIn, i64 %indvars.iv.next57.i ; 2 uses
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !8 ; 2 uses
  %i.th = fmul double %i.sm, %i.tg
  store double %i.th, ptr %i.tf, align 8, !tbaa !8
  %i.ti = fmul double %i.so, %i.tg
  %i.tj = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @do_layer3.hybridIn, i64 4608), i64 %indvars.iv.next57.i
  store double %i.ti, ptr %i.tj, align 8, !tbaa !8
  %i.tk = add nsw i32 %.115525.i, -2
  %indvars.iv.next57.i.1 = add nsw i64 %indvars.iv56.i, 6
  %i.tl = icmp sgt i32 %.115525.i, 2
  br i1 %i.tl, label %.lr.ph27.i, label %.loopexit3.i, !llvm.loop !61

.loopexit3.i:                                     ; preds = %.lr.ph27.i.prol.loopexit, %.lr.ph27.i, %bb.av, %._crit_edge23.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.pq, i64 52
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !4  ; 3 uses
  %i.to = icmp sgt i32 %i.tn, 3
  %.not93.i = or i1 %i.qq, %i.to
  %i.tp = icmp slt i32 %i.tn, 12
  br i1 %i.tp, label %.lr.ph22.1.i, label %._crit_edge23.1.i

.lr.ph22.1.i:                                     ; preds = %.loopexit3.i
  %i.tq = sext i32 %i.tn to i64
  %invariant.op = sub i32 1, %i.qn
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit2.1.i, %.lr.ph22.1.i
  %indvars.iv51.1.i = phi i64 [ %i.tq, %.lr.ph22.1.i ], [ %indvars.iv.next52.1.i, %.loopexit2.1.i ] ; 4 uses
  %i.tr = trunc i64 %indvars.iv51.1.i to i32
  %i.ts = mul i32 %i.tr, 3
  %.reass.reass = add i32 %i.ts, %invariant.op
end_hunk_1
