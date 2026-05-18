inline.NumInlined: 804
inline.NumDeleted: 412
begin_hunk_0_@_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE:bb.a
  %i.br = phi i64 [ %i.af, %bb.e ], [ %i.bl, %bb.j ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread
  %i.bu = phi ptr [ %i.bq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.pre28, %bb.q ]
  %i.bv = phi i64 [ %i.br, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %i.dg, %bb.q ]
  %.0 = phi i64 [ 0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %i.cc, %bb.q ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1             ; 2 uses
  %i.by = load ptr, ptr %1, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.0 ; 2 uses
  switch i8 %i.bx, label %_ZN6Assimp9IsLineEndIcEEbT_.exit19 [
    i8 13, label %bb.r
    i8 10, label %bb.r
    i8 0, label %bb.r
    i8 12, label %bb.r
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit19:               ; preds = %bb.k
  store i8 %i.bx, ptr %i.bz, align 1
  %i.ca = load i64, ptr %i.c, align 8
  %i.cb = add i64 %i.ca, 1                        ; 2 uses
  store i64 %i.cb, ptr %i.c, align 8
  %i.cc = add i64 %.0, 1                          ; 3 uses
  %i.cd = load ptr, ptr %i.bs, align 8
  %i.ce = load ptr, ptr %1, align 8
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp eq i64 %i.cc, %i.ch
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit19
  %i.cj = shl i64 %i.cc, 1
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cj)
  %.pre29 = load i64, ptr %i.c, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6Assimp9IsLineEndIcEEbT_.exit19
  %i.ck = phi i64 [ %.pre29, %bb.l ], [ %i.cb, %_ZN6Assimp9IsLineEndIcEEbT_.exit19 ] ; 2 uses
  %i.cl = load i64, ptr %i.a, align 8
  %.not15 = icmp ult i64 %i.ck, %i.cl
  br i1 %.not15, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = load ptr, ptr %0, align 8               ; 2 uses
  %i.cn = load i64, ptr %i.f, align 8
  %i.co = load ptr, ptr %i.cm, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call noundef i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i64 noundef %i.cn, i32 noundef 0), !inline_history !13 ; 0 uses
  %i.cs = load ptr, ptr %0, align 8               ; 2 uses
  %i.ct = load ptr, ptr %i.ag, align 8
  %i.cu = load i64, ptr %i.a, align 8
  %i.cv = load ptr, ptr %i.cs, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call noundef i64 %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull %i.ct, i64 noundef 1, i64 noundef %i.cu), !inline_history !13 ; 4 uses
  %.not23 = icmp eq i64 %i.cy, 0
  br i1 %.not23, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = load i64, ptr %i.a, align 8             ; 2 uses
  %i.da = icmp ult i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.p, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread

bb.p:                                             ; preds = %bb.o
  store i64 %i.cy, ptr %i.a, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread: ; preds = %bb.o, %bb.p
  %i.db = phi i64 [ %i.cy, %bb.p ], [ %i.cz, %bb.o ]
  %i.dc = load i64, ptr %i.f, align 8
  %i.dd = add i64 %i.dc, %i.db
  store i64 %i.dd, ptr %i.f, align 8
  store i64 0, ptr %i.c, align 8
  %i.de = load i64, ptr %i.bt, align 8
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.bt, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread, %bb.m
  %i.dg = phi i64 [ 0, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread ], [ %i.ck, %bb.m ]
  %.pre28 = load ptr, ptr %i.ag, align 8
  br label %bb.k, !llvm.loop !15

bb.r:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  store i8 10, ptr %i.bz, align 1
  %i.dh = load i64, ptr %i.c, align 8             ; 5 uses
  %i.di = load i64, ptr %i.a, align 8             ; 2 uses
  %i.dj = icmp ult i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %i.ag, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dh
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = icmp eq i8 %i.dm, 13
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.do = add nuw i64 %i.dh, 1                    ; 2 uses
  store i64 %i.do, ptr %i.c, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.dp = phi i64 [ %i.do, %bb.t ], [ %i.dh, %bb.s ], [ %i.dh, %bb.r ] ; 3 uses
  %i.dq = icmp ult i64 %i.dp, %i.di
  br i1 %i.dq, label %bb.v, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit

bb.v:                                             ; preds = %bb.u
  %i.dr = load ptr, ptr %i.ag, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dp
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = icmp eq i8 %i.dt, 10
  br i1 %i.du, label %bb.w, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit

bb.w:                                             ; preds = %bb.v
  %i.dv = add nuw i64 %i.dp, 1
  store i64 %i.dv, ptr %i.c, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit: ; preds = %bb.g, %bb.n, %bb.b, %bb.w, %bb.v, %bb.u
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.n ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #19
  resume { ptr, i32 } %i.p
}

declare noundef zeroext i1 @_ZN6Assimp3PLY3DOM13ParseInstanceERNS_14IOStreamBufferIcEEPS1_PNS_11PLYImporterE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN6Assimp3PLY3DOM19ParseInstanceBinaryERNS_14IOStreamBufferIcEEPS1_PNS_11PLYImporterEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11PLYImporter12LoadMaterialEPSt6vectorIP10aiMaterialSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [3 x [4 x i32]], align 16         ; 19 uses
  %i.d = alloca [3 x [4 x i32]], align 16         ; 19 uses
  %4 = alloca %class.aiColor4t, align 4           ; 10 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.aiString, align 4           ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %7 = alloca %struct.aiColor3D, align 8          ; 9 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct.aiString, align 4           ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 -1, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %.not283296 = icmp eq ptr %i.o, %i.q
  br i1 %.not283296, label %.thread275, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %i.r = phi ptr [ %i.cr, %bb.s ], [ %i.n, %bb.a ] ; 2 uses
  %.048298 = phi i32 [ %i.ct, %bb.s ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0160.0297 = phi ptr [ %i.cs, %bb.s ], [ %i.o, %bb.a ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0160.0297, i64 24
  %i.t = load i32, ptr %i.s, align 8
  switch i32 %i.t, label %bb.s [
    i32 4, label %bb.b
    i32 5, label %bb.r
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = zext i32 %.048298 to i64
  %i.w = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.y = load ptr, ptr %.sroa.0160.0297, align 8  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0160.0297, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not284303 = icmp eq ptr %i.y, %i.aa
  br i1 %.not284303, label %bb.t, label %.lr.ph311

.lr.ph311:                                        ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph311, %.thread270
  %i.ax = phi i32 [ 0, %.lr.ph311 ], [ %i.cc, %.thread270 ] ; 15 uses
  %.047309368 = phi i32 [ -1, %.lr.ph311 ], [ %.047309369, %.thread270 ] ; 15 uses
  %i.ay = phi i32 [ 0, %.lr.ph311 ], [ %i.cd, %.thread270 ] ; 15 uses
  %.047309363 = phi i32 [ -1, %.lr.ph311 ], [ %.047309364, %.thread270 ] ; 15 uses
  %i.az = phi i32 [ 0, %.lr.ph311 ], [ %i.ce, %.thread270 ] ; 15 uses
  %.047309358 = phi i32 [ -1, %.lr.ph311 ], [ %.047309359, %.thread270 ] ; 15 uses
  %i.ba = phi i32 [ 0, %.lr.ph311 ], [ %i.cf, %.thread270 ] ; 15 uses
  %.047309353 = phi i32 [ -1, %.lr.ph311 ], [ %.047309354, %.thread270 ] ; 15 uses
  %i.bb = phi i32 [ 0, %.lr.ph311 ], [ %i.cg, %.thread270 ] ; 15 uses
  %.047309348 = phi i32 [ -1, %.lr.ph311 ], [ %.047309349, %.thread270 ] ; 15 uses
  %i.bc = phi i32 [ 0, %.lr.ph311 ], [ %i.ch, %.thread270 ] ; 15 uses
  %.047309343 = phi i32 [ -1, %.lr.ph311 ], [ %.047309344, %.thread270 ] ; 15 uses
  %i.bd = phi i32 [ 0, %.lr.ph311 ], [ %i.ci, %.thread270 ] ; 15 uses
  %.047309338 = phi i32 [ -1, %.lr.ph311 ], [ %.047309339, %.thread270 ] ; 15 uses
  %i.be = phi i32 [ 0, %.lr.ph311 ], [ %i.cj, %.thread270 ] ; 15 uses
  %.047309333 = phi i32 [ -1, %.lr.ph311 ], [ %.047309334, %.thread270 ] ; 15 uses
  %i.bf = phi i32 [ 0, %.lr.ph311 ], [ %i.ck, %.thread270 ] ; 15 uses
  %.047309328 = phi i32 [ -1, %.lr.ph311 ], [ %.047309329, %.thread270 ] ; 15 uses
  %i.bg = phi i32 [ 0, %.lr.ph311 ], [ %i.cl, %.thread270 ] ; 15 uses
  %.047309323 = phi i32 [ -1, %.lr.ph311 ], [ %.047309324, %.thread270 ] ; 15 uses
  %i.bh = phi i32 [ 0, %.lr.ph311 ], [ %i.cm, %.thread270 ] ; 15 uses
  %.047309318 = phi i32 [ -1, %.lr.ph311 ], [ %.047309319, %.thread270 ] ; 15 uses
  %.040310 = phi i32 [ -1, %.lr.ph311 ], [ %.2, %.thread270 ] ; 15 uses
  %.047309 = phi i32 [ 0, %.lr.ph311 ], [ %i.cp, %.thread270 ] ; 15 uses
  %.049308 = phi i32 [ 0, %.lr.ph311 ], [ %.251, %.thread270 ] ; 15 uses
  %.053307 = phi i32 [ -1, %.lr.ph311 ], [ %.255, %.thread270 ] ; 15 uses
  %.057306 = phi i32 [ 0, %.lr.ph311 ], [ %.259, %.thread270 ] ; 15 uses
  %.sroa.0127.0305 = phi ptr [ %i.y, %.lr.ph311 ], [ %i.co, %.thread270 ] ; 17 uses
  %.047300304 = phi i32 [ -1, %.lr.ph311 ], [ %.047299, %.thread270 ] ; 15 uses
  %i.bi = phi i32 [ 0, %.lr.ph311 ], [ %i.cn, %.thread270 ] ; 15 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0127.0305, i64 40
  %i.bk = load i8, ptr %i.bj, align 8, !range !16, !noundef !17
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.thread270, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0127.0305, i64 4
  %i.bn = load i32, ptr %i.bm, align 4
  switch i32 %i.bn, label %.thread270 [
    i32 28, label %.thread
    i32 29, label %bb.e
    i32 20, label %bb.f
    i32 21, label %bb.g
    i32 22, label %bb.h
    i32 23, label %bb.i
    i32 24, label %bb.j
    i32 25, label %bb.k
    i32 26, label %bb.l
    i32 27, label %bb.m
    i32 16, label %bb.n
    i32 17, label %bb.o
    i32 18, label %bb.p
    i32 19, label %bb.q
  ]

.thread:                                          ; preds = %bb.d
  %i.bo = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.e:                                             ; preds = %bb.d
  %i.bp = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.f:                                             ; preds = %bb.d
  %i.bq = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.g:                                             ; preds = %bb.d
  %i.br = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.h:                                             ; preds = %bb.d
  %i.bs = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.i:                                             ; preds = %bb.d
  %i.bt = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.j:                                             ; preds = %bb.d
  %i.bu = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.k:                                             ; preds = %bb.d
  %i.bv = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.l:                                             ; preds = %bb.d
  %i.bw = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.m:                                             ; preds = %bb.d
  %i.bx = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.n:                                             ; preds = %bb.d
  %i.by = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.o:                                             ; preds = %bb.d
  %i.bz = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.p:                                             ; preds = %bb.d
  %i.ca = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

bb.q:                                             ; preds = %bb.d
  %i.cb = load i32, ptr %.sroa.0127.0305, align 8
  br label %.thread270

.thread270:                                       ; preds = %bb.d, %.thread, %bb.e, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.c
  %i.cc = phi i32 [ %i.ax, %bb.c ], [ %i.ax, %bb.f ], [ %i.br, %bb.g ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ], [ %i.ax, %bb.j ], [ %i.ax, %bb.k ], [ %i.ax, %bb.l ], [ %i.ax, %bb.m ], [ %i.ax, %bb.n ], [ %i.ax, %bb.o ], [ %i.ax, %bb.p ], [ %i.ax, %bb.q ], [ %i.ax, %bb.d ], [ %i.ax, %.thread ], [ %i.ax, %bb.e ] ; 2 uses
  %.047309369 = phi i32 [ %.047309368, %bb.c ], [ %.047309368, %bb.f ], [ %.047309, %bb.g ], [ %.047309368, %bb.h ], [ %.047309368, %bb.i ], [ %.047309368, %bb.j ], [ %.047309368, %bb.k ], [ %.047309368, %bb.l ], [ %.047309368, %bb.m ], [ %.047309368, %bb.n ], [ %.047309368, %bb.o ], [ %.047309368, %bb.p ], [ %.047309368, %bb.q ], [ %.047309368, %bb.d ], [ %.047309368, %.thread ], [ %.047309368, %bb.e ] ; 2 uses
  %i.cd = phi i32 [ %i.ay, %bb.c ], [ %i.ay, %bb.f ], [ %i.ay, %bb.g ], [ %i.bs, %bb.h ], [ %i.ay, %bb.i ], [ %i.ay, %bb.j ], [ %i.ay, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ], [ %i.ay, %bb.n ], [ %i.ay, %bb.o ], [ %i.ay, %bb.p ], [ %i.ay, %bb.q ], [ %i.ay, %bb.d ], [ %i.ay, %.thread ], [ %i.ay, %bb.e ] ; 2 uses
  %.047309364 = phi i32 [ %.047309363, %bb.c ], [ %.047309363, %bb.f ], [ %.047309363, %bb.g ], [ %.047309, %bb.h ], [ %.047309363, %bb.i ], [ %.047309363, %bb.j ], [ %.047309363, %bb.k ], [ %.047309363, %bb.l ], [ %.047309363, %bb.m ], [ %.047309363, %bb.n ], [ %.047309363, %bb.o ], [ %.047309363, %bb.p ], [ %.047309363, %bb.q ], [ %.047309363, %bb.d ], [ %.047309363, %.thread ], [ %.047309363, %bb.e ] ; 2 uses
  %i.ce = phi i32 [ %i.az, %bb.c ], [ %i.az, %bb.f ], [ %i.az, %bb.g ], [ %i.az, %bb.h ], [ %i.bt, %bb.i ], [ %i.az, %bb.j ], [ %i.az, %bb.k ], [ %i.az, %bb.l ], [ %i.az, %bb.m ], [ %i.az, %bb.n ], [ %i.az, %bb.o ], [ %i.az, %bb.p ], [ %i.az, %bb.q ], [ %i.az, %bb.d ], [ %i.az, %.thread ], [ %i.az, %bb.e ] ; 2 uses
  %.047309359 = phi i32 [ %.047309358, %bb.c ], [ %.047309358, %bb.f ], [ %.047309358, %bb.g ], [ %.047309358, %bb.h ], [ %.047309, %bb.i ], [ %.047309358, %bb.j ], [ %.047309358, %bb.k ], [ %.047309358, %bb.l ], [ %.047309358, %bb.m ], [ %.047309358, %bb.n ], [ %.047309358, %bb.o ], [ %.047309358, %bb.p ], [ %.047309358, %bb.q ], [ %.047309358, %bb.d ], [ %.047309358, %.thread ], [ %.047309358, %bb.e ] ; 2 uses
  %i.cf = phi i32 [ %i.ba, %bb.c ], [ %i.ba, %bb.f ], [ %i.ba, %bb.g ], [ %i.ba, %bb.h ], [ %i.ba, %bb.i ], [ %i.bu, %bb.j ], [ %i.ba, %bb.k ], [ %i.ba, %bb.l ], [ %i.ba, %bb.m ], [ %i.ba, %bb.n ], [ %i.ba, %bb.o ], [ %i.ba, %bb.p ], [ %i.ba, %bb.q ], [ %i.ba, %bb.d ], [ %i.ba, %.thread ], [ %i.ba, %bb.e ] ; 2 uses
  %.047309354 = phi i32 [ %.047309353, %bb.c ], [ %.047309353, %bb.f ], [ %.047309353, %bb.g ], [ %.047309353, %bb.h ], [ %.047309353, %bb.i ], [ %.047309, %bb.j ], [ %.047309353, %bb.k ], [ %.047309353, %bb.l ], [ %.047309353, %bb.m ], [ %.047309353, %bb.n ], [ %.047309353, %bb.o ], [ %.047309353, %bb.p ], [ %.047309353, %bb.q ], [ %.047309353, %bb.d ], [ %.047309353, %.thread ], [ %.047309353, %bb.e ] ; 2 uses
  %i.cg = phi i32 [ %i.bb, %bb.c ], [ %i.bb, %bb.f ], [ %i.bb, %bb.g ], [ %i.bb, %bb.h ], [ %i.bb, %bb.i ], [ %i.bb, %bb.j ], [ %i.bv, %bb.k ], [ %i.bb, %bb.l ], [ %i.bb, %bb.m ], [ %i.bb, %bb.n ], [ %i.bb, %bb.o ], [ %i.bb, %bb.p ], [ %i.bb, %bb.q ], [ %i.bb, %bb.d ], [ %i.bb, %.thread ], [ %i.bb, %bb.e ] ; 2 uses
  %.047309349 = phi i32 [ %.047309348, %bb.c ], [ %.047309348, %bb.f ], [ %.047309348, %bb.g ], [ %.047309348, %bb.h ], [ %.047309348, %bb.i ], [ %.047309348, %bb.j ], [ %.047309, %bb.k ], [ %.047309348, %bb.l ], [ %.047309348, %bb.m ], [ %.047309348, %bb.n ], [ %.047309348, %bb.o ], [ %.047309348, %bb.p ], [ %.047309348, %bb.q ], [ %.047309348, %bb.d ], [ %.047309348, %.thread ], [ %.047309348, %bb.e ] ; 2 uses
  %i.ch = phi i32 [ %i.bc, %bb.c ], [ %i.bc, %bb.f ], [ %i.bc, %bb.g ], [ %i.bc, %bb.h ], [ %i.bc, %bb.i ], [ %i.bc, %bb.j ], [ %i.bc, %bb.k ], [ %i.bw, %bb.l ], [ %i.bc, %bb.m ], [ %i.bc, %bb.n ], [ %i.bc, %bb.o ], [ %i.bc, %bb.p ], [ %i.bc, %bb.q ], [ %i.bc, %bb.d ], [ %i.bc, %.thread ], [ %i.bc, %bb.e ] ; 2 uses
  %.047309344 = phi i32 [ %.047309343, %bb.c ], [ %.047309343, %bb.f ], [ %.047309343, %bb.g ], [ %.047309343, %bb.h ], [ %.047309343, %bb.i ], [ %.047309343, %bb.j ], [ %.047309343, %bb.k ], [ %.047309, %bb.l ], [ %.047309343, %bb.m ], [ %.047309343, %bb.n ], [ %.047309343, %bb.o ], [ %.047309343, %bb.p ], [ %.047309343, %bb.q ], [ %.047309343, %bb.d ], [ %.047309343, %.thread ], [ %.047309343, %bb.e ] ; 2 uses
  %i.ci = phi i32 [ %i.bd, %bb.c ], [ %i.bd, %bb.f ], [ %i.bd, %bb.g ], [ %i.bd, %bb.h ], [ %i.bd, %bb.i ], [ %i.bd, %bb.j ], [ %i.bd, %bb.k ], [ %i.bd, %bb.l ], [ %i.bx, %bb.m ], [ %i.bd, %bb.n ], [ %i.bd, %bb.o ], [ %i.bd, %bb.p ], [ %i.bd, %bb.q ], [ %i.bd, %bb.d ], [ %i.bd, %.thread ], [ %i.bd, %bb.e ] ; 2 uses
  %.047309339 = phi i32 [ %.047309338, %bb.c ], [ %.047309338, %bb.f ], [ %.047309338, %bb.g ], [ %.047309338, %bb.h ], [ %.047309338, %bb.i ], [ %.047309338, %bb.j ], [ %.047309338, %bb.k ], [ %.047309338, %bb.l ], [ %.047309, %bb.m ], [ %.047309338, %bb.n ], [ %.047309338, %bb.o ], [ %.047309338, %bb.p ], [ %.047309338, %bb.q ], [ %.047309338, %bb.d ], [ %.047309338, %.thread ], [ %.047309338, %bb.e ] ; 2 uses
  %i.cj = phi i32 [ %i.be, %bb.c ], [ %i.be, %bb.f ], [ %i.be, %bb.g ], [ %i.be, %bb.h ], [ %i.be, %bb.i ], [ %i.be, %bb.j ], [ %i.be, %bb.k ], [ %i.be, %bb.l ], [ %i.be, %bb.m ], [ %i.by, %bb.n ], [ %i.be, %bb.o ], [ %i.be, %bb.p ], [ %i.be, %bb.q ], [ %i.be, %bb.d ], [ %i.be, %.thread ], [ %i.be, %bb.e ] ; 2 uses
  %.047309334 = phi i32 [ %.047309333, %bb.c ], [ %.047309333, %bb.f ], [ %.047309333, %bb.g ], [ %.047309333, %bb.h ], [ %.047309333, %bb.i ], [ %.047309333, %bb.j ], [ %.047309333, %bb.k ], [ %.047309333, %bb.l ], [ %.047309333, %bb.m ], [ %.047309, %bb.n ], [ %.047309333, %bb.o ], [ %.047309333, %bb.p ], [ %.047309333, %bb.q ], [ %.047309333, %bb.d ], [ %.047309333, %.thread ], [ %.047309333, %bb.e ] ; 2 uses
  %i.ck = phi i32 [ %i.bf, %bb.c ], [ %i.bf, %bb.f ], [ %i.bf, %bb.g ], [ %i.bf, %bb.h ], [ %i.bf, %bb.i ], [ %i.bf, %bb.j ], [ %i.bf, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ], [ %i.bf, %bb.n ], [ %i.bz, %bb.o ], [ %i.bf, %bb.p ], [ %i.bf, %bb.q ], [ %i.bf, %bb.d ], [ %i.bf, %.thread ], [ %i.bf, %bb.e ] ; 2 uses
  %.047309329 = phi i32 [ %.047309328, %bb.c ], [ %.047309328, %bb.f ], [ %.047309328, %bb.g ], [ %.047309328, %bb.h ], [ %.047309328, %bb.i ], [ %.047309328, %bb.j ], [ %.047309328, %bb.k ], [ %.047309328, %bb.l ], [ %.047309328, %bb.m ], [ %.047309328, %bb.n ], [ %.047309, %bb.o ], [ %.047309328, %bb.p ], [ %.047309328, %bb.q ], [ %.047309328, %bb.d ], [ %.047309328, %.thread ], [ %.047309328, %bb.e ] ; 2 uses
  %i.cl = phi i32 [ %i.bg, %bb.c ], [ %i.bg, %bb.f ], [ %i.bg, %bb.g ], [ %i.bg, %bb.h ], [ %i.bg, %bb.i ], [ %i.bg, %bb.j ], [ %i.bg, %bb.k ], [ %i.bg, %bb.l ], [ %i.bg, %bb.m ], [ %i.bg, %bb.n ], [ %i.bg, %bb.o ], [ %i.ca, %bb.p ], [ %i.bg, %bb.q ], [ %i.bg, %bb.d ], [ %i.bg, %.thread ], [ %i.bg, %bb.e ] ; 2 uses
  %.047309324 = phi i32 [ %.047309323, %bb.c ], [ %.047309323, %bb.f ], [ %.047309323, %bb.g ], [ %.047309323, %bb.h ], [ %.047309323, %bb.i ], [ %.047309323, %bb.j ], [ %.047309323, %bb.k ], [ %.047309323, %bb.l ], [ %.047309323, %bb.m ], [ %.047309323, %bb.n ], [ %.047309323, %bb.o ], [ %.047309, %bb.p ], [ %.047309323, %bb.q ], [ %.047309323, %bb.d ], [ %.047309323, %.thread ], [ %.047309323, %bb.e ] ; 2 uses
  %i.cm = phi i32 [ %i.bh, %bb.c ], [ %i.bh, %bb.f ], [ %i.bh, %bb.g ], [ %i.bh, %bb.h ], [ %i.bh, %bb.i ], [ %i.bh, %bb.j ], [ %i.bh, %bb.k ], [ %i.bh, %bb.l ], [ %i.bh, %bb.m ], [ %i.bh, %bb.n ], [ %i.bh, %bb.o ], [ %i.bh, %bb.p ], [ %i.cb, %bb.q ], [ %i.bh, %bb.d ], [ %i.bh, %.thread ], [ %i.bh, %bb.e ] ; 2 uses
  %.047309319 = phi i32 [ %.047309318, %bb.c ], [ %.047309318, %bb.f ], [ %.047309318, %bb.g ], [ %.047309318, %bb.h ], [ %.047309318, %bb.i ], [ %.047309318, %bb.j ], [ %.047309318, %bb.k ], [ %.047309318, %bb.l ], [ %.047309318, %bb.m ], [ %.047309318, %bb.n ], [ %.047309318, %bb.o ], [ %.047309318, %bb.p ], [ %.047309, %bb.q ], [ %.047309318, %bb.d ], [ %.047309318, %.thread ], [ %.047309318, %bb.e ] ; 2 uses
  %i.cn = phi i32 [ %i.bi, %bb.c ], [ %i.bq, %bb.f ], [ %i.bi, %bb.g ], [ %i.bi, %bb.h ], [ %i.bi, %bb.i ], [ %i.bi, %bb.j ], [ %i.bi, %bb.k ], [ %i.bi, %bb.l ], [ %i.bi, %bb.m ], [ %i.bi, %bb.n ], [ %i.bi, %bb.o ], [ %i.bi, %bb.p ], [ %i.bi, %bb.q ], [ %i.bi, %bb.d ], [ %i.bi, %.thread ], [ %i.bi, %bb.e ] ; 2 uses
  %.047299 = phi i32 [ %.047300304, %bb.c ], [ %.047309, %bb.f ], [ %.047300304, %bb.g ], [ %.047300304, %bb.h ], [ %.047300304, %bb.i ], [ %.047300304, %bb.j ], [ %.047300304, %bb.k ], [ %.047300304, %bb.l ], [ %.047300304, %bb.m ], [ %.047300304, %bb.n ], [ %.047300304, %bb.o ], [ %.047300304, %bb.p ], [ %.047300304, %bb.q ], [ %.047300304, %bb.d ], [ %.047300304, %.thread ], [ %.047300304, %bb.e ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11PLYImporter12LoadMaterialEPSt6vectorIP10aiMaterialSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  store ptr %i.dg, ptr %6, align 8
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.fc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fa) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.fc, ptr %i.b, align 8
  %i.fd = icmp ugt i64 %i.fc, 15
  br i1 %i.fd, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.at
  %i.fe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc76 unwind label %.loopexit286 ; 2 uses

.noexc76:                                         ; preds = %.noexc.i
  store ptr %i.fe, ptr %6, align 8
  %i.ff = load i64, ptr %i.b, align 8
  store i64 %i.ff, ptr %i.dg, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc76, %bb.at
  %i.fg = phi ptr [ %i.fe, %.noexc76 ], [ %i.dg, %bb.at ] ; 2 uses
  switch i64 %i.fc, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %._crit_edge.i.i
  %i.fh = load i8, ptr %i.fa, align 1
  store i8 %i.fh, ptr %i.fg, align 1
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fg, ptr nonnull align 1 %i.fa, i64 %i.fc, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i.i
  %i.fi = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.fi, ptr %i.dh, align 8
  %i.fj = load ptr, ptr %6, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fi
  store i8 0, ptr %i.fk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.fl = load i64, ptr %i.dh, align 8            ; 3 uses
  %i.fm = trunc i64 %i.fl to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.di, i8 0, i64 1024, i1 false)
  %i.fn = and i64 %i.fl, 4294966272
  %.not.i77 = icmp eq i64 %i.fn, 0
  %spec.select.i = select i1 %.not.i77, i32 %i.fm, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %5, align 4
  %i.fo = load ptr, ptr %6, align 8               ; 3 uses
  %i.fp = zext i32 %spec.select.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.di, ptr align 1 %i.fo, i64 %i.fp, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.fp
  store i8 0, ptr %i.fq, align 1
  %i.fr = icmp eq ptr %i.fo, %i.dg
  br i1 %i.fr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.aw
  %i.fs = icmp ult i64 %i.fl, 16
  call void @llvm.assume(i1 %i.fs)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aw
  %i.ft = load i64, ptr %i.dg, align 8
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.fv = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull %5, ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ay

.loopexit286:                                     ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp, %.loopexit286
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit286 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.bg

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aq
  br i1 %3, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fw = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull %i.h, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  br label %bb.ba

.critedge:                                        ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  store i32 1, ptr %i.i, align 4
  %i.fx = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull %i.i, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.critedge
  %i.fy = load ptr, ptr %i.dj, align 8            ; 3 uses
  %i.fz = load ptr, ptr %i.dk, align 8
  %.not.i78 = icmp eq ptr %i.fy, %i.fz
  br i1 %.not.i78, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.dl, ptr %i.fy, align 8
  %i.ga = load ptr, ptr %i.dj, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.gb, ptr %i.dj, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

bb.bc:                                            ; preds = %bb.ba
  %i.gc = load ptr, ptr %1, align 8               ; 4 uses
  %i.gd = ptrtoint ptr %i.fy to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 6 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775800
  br i1 %i.gg, label %bb.bd, label %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #22
  unreachable

_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bc
  %i.gh = ashr exact i64 %i.gf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i, %i.gh ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gh
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gi, i64 1152921504606846975)
  %i.gl = select i1 %i.gj, i64 1152921504606846975, i64 %i.gk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gm = shl nuw nsw i64 %i.gl, 3
  %i.gn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #23 ; 4 uses
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.gf ; 2 uses
  store ptr %i.dl, ptr %i.go, align 8
  %i.gp = icmp sgt i64 %i.gf, 0
  br i1 %i.gp, label %bb.be, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.be:                                            ; preds = %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr align 8 %i.gc, i64 %i.gf, i1 false)
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.be, %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.not.i17.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gf) #20
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bf, %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.gn, ptr %1, align 8
  store ptr %i.gq, ptr %i.dj, align 8
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gl
  store ptr %i.gr, ptr %i.dk, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.bb, %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0119.0373, i64 24 ; 2 uses
  %i.gt = load ptr, ptr %i.cy, align 8
  %.not285 = icmp eq ptr %i.gs, %i.gt
  br i1 %.not285, label %.loopexit, label %bb.v, !llvm.loop !20

bb.bg:                                            ; preds = %bb.ax, %bb.ag
  %.pn65 = phi { ptr, i32 } [ %lpad.phi, %bb.ax ], [ %i.eg, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ca

.thread275:                                       ; preds = %bb.s, %bb.a, %bb.t
  %i.gu = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 11 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.gu)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %.thread275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  store i32 2, ptr %i.j, align 4
  %i.gv = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull %i.j, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %7, align 8
  store float 1.000000e+00, ptr %10, align 8
  %i.gw = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.gx = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  store <2 x float> splat (float 1.000000e+00), ptr %7, align 8
  store float 1.000000e+00, ptr %10, align 8
  %i.gy = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br i1 %3, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  store i32 1, ptr %i.k, align 4
  %i.gz = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull %i.k, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  br label %bb.bk

bb.bj:                                            ; preds = %.thread275
  %i.ha = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef 16) #20
  br label %bb.ca

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %bb.bs, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.he = load ptr, ptr %2, align 8               ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.hf, ptr %9, align 8
  %i.hg = icmp eq ptr %i.he, null
  br i1 %i.hg, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc81 unwind label %bb.br

.noexc81:                                         ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.hh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.he) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.hh, ptr %i.a, align 8
  %i.hi = icmp ugt i64 %i.hh, 15
  br i1 %i.hi, label %.noexc.i80, label %._crit_edge.i.i79

.noexc.i80:                                       ; preds = %bb.bn
  %i.hj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc82 unwind label %bb.br  ; 2 uses

.noexc82:                                         ; preds = %.noexc.i80
  store ptr %i.hj, ptr %9, align 8
  %i.hk = load i64, ptr %i.a, align 8
  store i64 %i.hk, ptr %i.hf, align 8
  br label %._crit_edge.i.i79

._crit_edge.i.i79:                                ; preds = %.noexc82, %bb.bn
  %i.hl = phi ptr [ %i.hj, %.noexc82 ], [ %i.hf, %bb.bn ] ; 2 uses
  switch i64 %i.hh, label %bb.bp [
    i64 1, label %bb.bo
    i64 0, label %bb.bq
  ]

bb.bo:                                            ; preds = %._crit_edge.i.i79
  %i.hm = load i8, ptr %i.he, align 1
  store i8 %i.hm, ptr %i.hl, align 1
  br label %bb.bq

bb.bp:                                            ; preds = %._crit_edge.i.i79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hl, ptr nonnull align 1 %i.he, i64 %i.hh, i1 false)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %._crit_edge.i.i79
  %i.hn = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.hn, ptr %i.ho, align 8
  %i.hp = load ptr, ptr %9, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hn
  store i8 0, ptr %i.hq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.hr = load i64, ptr %i.ho, align 8            ; 3 uses
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ht, i8 0, i64 1024, i1 false)
  %i.hu = and i64 %i.hr, 4294966272
  %.not.i84 = icmp eq i64 %i.hu, 0
  %spec.select.i85 = select i1 %.not.i84, i32 %i.hs, i32 1023 ; 2 uses
  store i32 %spec.select.i85, ptr %8, align 4
  %i.hv = load ptr, ptr %9, align 8               ; 3 uses
  %i.hw = zext i32 %spec.select.i85 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ht, ptr align 1 %i.hv, i64 %i.hw, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hw
  store i8 0, ptr %i.hx, align 1
  %i.hy = icmp eq ptr %i.hv, %i.hf
  br i1 %i.hy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87: ; preds = %bb.bq
  %i.hz = icmp ult i64 %i.hr, 16
  call void @llvm.assume(i1 %i.hz)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.bq
  %i.ia = load i64, ptr %i.hf, align 8
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.ib) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.ic = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull %8, ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bs

bb.br:                                            ; preds = %.noexc.i80, %bb.bm
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  br label %bb.ca

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.bk
  br i1 %3, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  store i32 1, ptr %i.l, align 4
  %i.ie = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull %i.l, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ig = load ptr, ptr %i.if, align 8            ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8
  %.not.i89 = icmp eq ptr %i.ig, %i.ii
  br i1 %.not.i89, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.gu, ptr %i.ig, align 8
  %i.ij = load ptr, ptr %i.if, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %i.ik, ptr %i.if, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit96

bb.bw:                                            ; preds = %bb.bu
  %i.il = load ptr, ptr %1, align 8               ; 4 uses
  %i.im = ptrtoint ptr %i.ig to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in                    ; 6 uses
  %i.ip = icmp eq i64 %i.io, 9223372036854775800
  br i1 %i.ip, label %bb.bx, label %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i90

bb.bx:                                            ; preds = %bb.bw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #22
  unreachable

_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i90: ; preds = %bb.bw
  %i.iq = ashr exact i64 %i.io, 3                 ; 3 uses
  %.sroa.speculated.i.i.i91 = call i64 @llvm.umax.i64(i64 %i.iq, i64 1)
  %i.ir = add nsw i64 %.sroa.speculated.i.i.i91, %i.iq ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.iq
  %i.it = call i64 @llvm.umin.i64(i64 %i.ir, i64 1152921504606846975)
  %i.iu = select i1 %i.is, i64 1152921504606846975, i64 %i.it ; 3 uses
  %.not.i.i.i92 = icmp ne i64 %i.iu, 0
  call void @llvm.assume(i1 %.not.i.i.i92)
  %i.iv = shl nuw nsw i64 %i.iu, 3
  %i.iw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #23 ; 4 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 %i.io ; 2 uses
  store ptr %i.gu, ptr %i.ix, align 8
  %i.iy = icmp sgt i64 %i.io, 0
  br i1 %i.iy, label %bb.by, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i93

bb.by:                                            ; preds = %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i90
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iw, ptr align 8 %i.il, i64 %i.io, i1 false)
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i93

_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i93: ; preds = %bb.by, %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i90
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.not.i17.i.i94 = icmp eq ptr %i.il, null
  br i1 %.not.i17.i.i94, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i95, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i93
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.io) #20
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i95

_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i95: ; preds = %bb.bz, %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i93
  store ptr %i.iw, ptr %1, align 8
  store ptr %i.iz, ptr %i.if, align 8
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iu
  store ptr %i.ja, ptr %i.ih, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit96

_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit96: ; preds = %bb.bv, %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit, %bb.u, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit96
end_hunk_1
