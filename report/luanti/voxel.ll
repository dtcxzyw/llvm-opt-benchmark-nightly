Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxel?download=true
inline.NumInlined: 186
inline.NumDeleted: 98
begin_hunk_0_@_ZNK16VoxelManipulator5printERSoPK14NodeDefManager14VoxelPrintMode:bb.a
  %i.cr = sext i16 %i.cq to i32
  %.not58.not = icmp slt i32 %.05084, %i.cr
  br i1 %.not58.not, label %.lr.ph86, label %._crit_edge87, !llvm.loop !51

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit66
  %.04982 = phi i32 [ %i.fz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit66 ], [ %i.cg, %.lr.ph.preheader ] ; 3 uses
  %i.cs = load ptr, ptr %i.at, align 8, !tbaa !22
  %i.ct = load i16, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !32
  %i.cu = sext i16 %i.ct to i32
  %i.cv = sub nsw i32 %.05084, %i.cu
  %i.cw = load i32, ptr %i.i, align 8, !tbaa !33
  %i.cx = mul nsw i32 %i.cv, %i.cw
  %i.cy = load i32, ptr %i.d, align 4, !tbaa !34
  %i.cz = load i16, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !35
  %i.da = sext i16 %i.cz to i32
  %i.db = add i32 %i.cx, %.05189
  %i.dc = sub i32 %i.db, %i.da
  %i.dd = mul i32 %i.dc, %i.cy
  %i.de = load i16, ptr %i.c, align 8, !tbaa !36
  %i.df = sext i16 %i.de to i32
  %i.dg = sub i32 %.04982, %i.df
  %i.dh = add nsw i32 %i.dg, %i.dd
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.cs, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !25
  %i.dl = and i8 %i.dk, 1
  %.not60 = icmp eq i8 %i.dl, 0
  br i1 %.not60, label %bb.p, label %bb.z

bb.p:                                             ; preds = %.lr.ph
  %i.dm = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.di
  %i.do = load i32, ptr %i.dn, align 4            ; 7 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.do to i16 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i32 %i.do, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i32 %i.do, 24
  %.sroa.6.0.extract.trunc = trunc nuw i32 %.sroa.6.0.extract.shift to i8
  switch i32 %3, label %bb.z [
    i32 1, label %bb.q
    i32 2, label %bb.s
    i32 3, label %bb.x
  ]

bb.q:                                             ; preds = %bb.p
  %i.dp = icmp ult i16 %.sroa.0.0.extract.trunc, 10
  br i1 %i.dp, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.dq = trunc i32 %i.do to i8
  %i.dr = or disjoint i8 %i.dq, 48
  br label %bb.z

bb.s:                                             ; preds = %bb.p
  %.sroa.0.0.extract.trunc.mask78 = and i32 %i.do, 65535
  %i.ds = zext nneg i32 %.sroa.0.0.extract.trunc.mask78 to i64 ; 2 uses
  %i.dt = load ptr, ptr %i.av, align 8, !tbaa !81
  %i.du = load ptr, ptr %2, align 8, !tbaa !82    ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 2072
  %i.dz = icmp ugt i64 %i.dy, %i.ds
  br i1 %i.dz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw [2072 x i8], ptr %i.du, i64 %i.ds ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !39
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.u, label %_ZNK14NodeDefManager3getEt.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.t, %bb.u
  %i.ef = phi ptr [ %i.ee, %bb.u ], [ %i.ea, %bb.t ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1449
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !123
  %.not79 = icmp eq i8 %i.eh, 0
  br i1 %.not79, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit
  %i.ei = icmp ult i32 %i.do, 167772160
  %i.ej = or disjoint i8 %.sroa.6.0.extract.trunc, 48
  %spec.select = select i1 %i.ei, i8 %i.ej, i8 119
  br label %bb.z

bb.w:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit
  %i.ek = icmp eq i16 %.sroa.0.0.extract.trunc, 126
  %. = select i1 %i.ek, i8 32, i8 35
  br label %bb.z

bb.x:                                             ; preds = %bb.p
  %.sroa.0.0.extract.trunc.mask = and i32 %i.do, 65535
  %i.el = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 3 uses
  %i.em = load ptr, ptr %i.av, align 8, !tbaa !81
  %i.en = load ptr, ptr %2, align 8, !tbaa !82    ; 5 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = sdiv exact i64 %i.eq, 2072
  %i.es = icmp ugt i64 %i.er, %i.el
  br i1 %i.es, label %bb.y, label %_ZNK14NodeDefManager3getEt.exit62.thread74

bb.y:                                             ; preds = %bb.x
  %i.et = getelementptr inbounds nuw [2072 x i8], ptr %i.en, i64 %i.el ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !39
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_ZNK14NodeDefManager3getEt.exit62, label %_ZNK14NodeDefManager3getEt.exit62.thread

_ZNK14NodeDefManager3getEt.exit62:                ; preds = %bb.y
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 260401
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !124
  %.not61 = icmp eq i8 %i.ey, 0
  br i1 %.not61, label %.thread76, label %bb.z

_ZNK14NodeDefManager3getEt.exit62.thread74:       ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 260401
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !124
  %.not6175 = icmp eq i8 %i.fa, 0
  br i1 %.not6175, label %.thread76, label %bb.z

_ZNK14NodeDefManager3getEt.exit62.thread:         ; preds = %bb.y
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 1401
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !124
  %.not6173 = icmp eq i8 %i.fc, 0
  br i1 %.not6173, label %_ZNK14NodeDefManager3getEt.exit63, label %bb.z

.thread76:                                        ; preds = %_ZNK14NodeDefManager3getEt.exit62, %_ZNK14NodeDefManager3getEt.exit62.thread74
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit63

_ZNK14NodeDefManager3getEt.exit63:                ; preds = %_ZNK14NodeDefManager3getEt.exit62.thread, %.thread76
  %i.fe = phi ptr [ %i.fd, %.thread76 ], [ %i.et, %_ZNK14NodeDefManager3getEt.exit62.thread ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1399
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !125, !range !126, !noundef !127
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit, label %bb.z

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit: ; preds = %_ZNK14NodeDefManager3getEt.exit63
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.el
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.fi, align 1, !tbaa !25 ; 2 uses
  %i.fj = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i.i = icmp eq i8 %i.fj, 0
  %i.fk = and i8 %.sroa.5.0.extract.trunc, 15
  %i.fl = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  %i.fm = call i8 @llvm.umax.i8(i8 %i.fl, i8 %i.fk)
  %i.fn = select i1 %.not.i.i, i8 %i.fl, i8 %i.fm ; 3 uses
  %i.fo = icmp samesign ult i8 %i.fn, 10
  %i.fp = or disjoint i8 %i.fn, 48
  %i.fq = add nuw nsw i8 %i.fn, 87
  %.0 = select i1 %i.fo, i8 %i.fp, i8 %i.fq
  br label %bb.z

bb.z:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit62.thread74, %bb.r, %bb.q, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit, %bb.w, %bb.p, %_ZNK14NodeDefManager3getEt.exit62, %_ZNK14NodeDefManager3getEt.exit63, %bb.v, %_ZNK14NodeDefManager3getEt.exit62.thread, %.lr.ph
  %.2 = phi i8 [ 78, %.lr.ph ], [ %i.dr, %bb.r ], [ 88, %bb.q ], [ 88, %bb.p ], [ 88, %_ZNK14NodeDefManager3getEt.exit63 ], [ %., %bb.w ], [ %spec.select, %bb.v ], [ 83, %_ZNK14NodeDefManager3getEt.exit62 ], [ %.0, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit ], [ 83, %_ZNK14NodeDefManager3getEt.exit62.thread ], [ 83, %_ZNK14NodeDefManager3getEt.exit62.thread74 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.2, ptr %i.a, align 1, !tbaa !25
  %i.fr = load ptr, ptr %1, align 8, !tbaa !10
  %i.fs = getelementptr i8, ptr %i.fr, i64 -24
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds i8, ptr %1, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !78
  %.not.i64 = icmp eq i64 %i.fw, 0
  br i1 %.not.i64, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit66

bb.ab:                                            ; preds = %bb.z
  %i.fy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.2) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit66

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit66: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fz = add nsw i32 %.04982, 1
  %i.ga = load i16, ptr %i.am, align 2, !tbaa !77
  %i.gb = sext i16 %i.ga to i32
  %.not59.not = icmp slt i32 %.04982, %i.gb
  br i1 %.not59.not, label %.lr.ph, label %._crit_edge, !llvm.loop !52
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load <2 x i32>, ptr %i.a, align 4
  %.fr = freeze <2 x i32> %i.b                    ; 2 uses
  %4 = icmp eq <2 x i32> %.fr, zeroinitializer
  %5 = bitcast <2 x i1> %4 to i2
  %or.cond.i = icmp ne i2 %5, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not2.i = icmp eq i32 %i.d, 0
  %or.cond = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i16, ptr %1, align 4, !tbaa !36
  %i.g = load i16, ptr %i.e, align 8, !tbaa !36
  %.not.i32 = icmp slt i16 %i.f, %i.g
  br i1 %.not.i32, label %_ZNK9VoxelArea8containsERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !130
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.k = load i16, ptr %i.j, align 2, !tbaa !130
  %.not9.i = icmp sgt i16 %i.i, %i.k
  br i1 %.not9.i, label %_ZNK9VoxelArea8containsERKS_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.o = load i16, ptr %i.n, align 2, !tbaa !35
  %.not10.i = icmp slt i16 %i.m, %i.o
  br i1 %.not10.i, label %_ZNK9VoxelArea8containsERKS_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i16, ptr %i.p, align 4, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i16, ptr %i.r, align 8, !tbaa !40
  %.not11.i = icmp sgt i16 %i.q, %i.s
  br i1 %.not11.i, label %_ZNK9VoxelArea8containsERKS_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i16, ptr %i.t, align 4, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i16, ptr %i.v, align 4, !tbaa !32
  %.not12.i = icmp slt i16 %i.u, %i.w
  br i1 %.not12.i, label %_ZNK9VoxelArea8containsERKS_.exit.thread, label %_ZNK9VoxelArea8containsERKS_.exit

_ZNK9VoxelArea8containsERKS_.exit:                ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.y = load i16, ptr %i.x, align 2, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !41
  %.not86 = icmp sgt i16 %i.y, %i.aa
  br i1 %.not86, label %_ZNK9VoxelArea8containsERKS_.exit.thread, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread

_ZNK9VoxelArea8containsERKS_.exit.thread:         ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %_ZNK9VoxelArea8containsERKS_.exit
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.sroa.20.0.copyload = load i32, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !11
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !11
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.sroa.30.0.copyload = load i32, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !11
  %.not.i.i33 = icmp eq i32 %.sroa.20.0.copyload, 0
  %.not1.i.i34 = icmp eq i32 %.sroa.25.0.copyload, 0
  %or.cond.i.i35 = select i1 %.not.i.i33, i1 true, i1 %.not1.i.i34
  %.not2.i.i36 = icmp eq i32 %.sroa.30.0.copyload, 0
  %or.cond.i37 = select i1 %or.cond.i.i35, i1 true, i1 %.not2.i.i36
  br i1 %or.cond.i37, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i, label %bb.g

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i:   ; preds = %_ZNK9VoxelArea8containsERKS_.exit.thread
  %i.ab = load <2 x i16>, ptr %1, align 4, !tbaa !13
  %.sroa.11.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load <4 x i16>, ptr %.sroa.11.0..sroa_idx48, align 4, !tbaa !13
  br label %_ZN9VoxelArea7addAreaERKS_.exit

bb.g:                                             ; preds = %_ZNK9VoxelArea8containsERKS_.exit.thread
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.sroa.18.0.copyload = load i16, ptr %.sroa.18.0..sroa_idx, align 2, !tbaa !13
  %.sroa.11.0.copyload = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !13
  %i.ad = load <2 x i16>, ptr %i.e, align 8, !tbaa !13
  %i.ae = load <2 x i16>, ptr %1, align 4, !tbaa !13
  %i.af = tail call <2 x i16> @llvm.smin.v2i16(<2 x i16> %i.ae, <2 x i16> %i.ad) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !41
  %.sroa.11.0 = tail call i16 @llvm.smin.i16(i16 %i.ah, i16 %.sroa.11.0.copyload) ; 2 uses
  %.sroa.18.0 = tail call i16 @llvm.smax.i16(i16 %i.ak, i16 %.sroa.18.0.copyload) ; 2 uses
  %i.al = load <2 x i16>, ptr %.sroa.14.0..sroa_idx, align 2, !tbaa !13
  %i.am = load <2 x i16>, ptr %i.ai, align 2, !tbaa !13
  %i.an = tail call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.am, <2 x i16> %i.al) ; 2 uses
  %i.ao = sext <2 x i16> %i.an to <2 x i32>
  %i.ap = sext <2 x i16> %i.af to <2 x i32>
  %i.aq = sub nsw <2 x i32> %i.ao, %i.ap
  %i.ar = add nsw <2 x i32> %i.aq, splat (i32 1)
  %i.as = sext i16 %.sroa.18.0 to i32
  %i.at = sext i16 %.sroa.11.0 to i32
  %reass.sub101 = sub nsw i32 %i.as, %i.at
  %i.au = add nsw i32 %reass.sub101, 1
  %i.av = insertelement <4 x i16> poison, i16 %.sroa.11.0, i64 0
  %i.aw = shufflevector <2 x i16> %i.an, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x i16> %i.av, <4 x i16> %i.aw, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ay = insertelement <4 x i16> %i.ax, i16 %.sroa.18.0, i64 3
  br label %_ZN9VoxelArea7addAreaERKS_.exit

_ZN9VoxelArea7addAreaERKS_.exit:                  ; preds = %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i, %bb.g
  %.sroa.30.0 = phi i32 [ %i.d, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i ], [ %i.au, %bb.g ] ; 3 uses
  %i.az = phi <4 x i16> [ %i.ac, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i ], [ %i.ay, %bb.g ] ; 2 uses
  %i.ba = phi <2 x i16> [ %i.ab, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i ], [ %i.af, %bb.g ] ; 3 uses
  %i.bb = phi <2 x i32> [ %.fr, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i ], [ %i.ar, %bb.g ] ; 3 uses
  %i.bc = extractelement <2 x i32> %i.bb, i64 0   ; 3 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = extractelement <2 x i32> %i.bb, i64 1   ; 3 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = sext i32 %.sroa.30.0 to i64
  %i.bh = mul nsw i64 %i.bf, %i.bg
  %i.bi = mul i64 %i.bh, %i.bd
  %i.bj = icmp ugt i64 %i.bi, 150000000
  br i1 %i.bj, label %bb.h, label %_ZL9checkAreaRK9VoxelArea.exit

bb.h:                                             ; preds = %_ZN9VoxelArea7addAreaERKS_.exit
  %i.bk = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef 150000000)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %bb.i
  call void @_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  invoke void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTI13BaseException, ptr nonnull @_ZN13BaseExceptionD2Ev) #21
          to label %bb.m unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread.i: ; preds = %bb.h
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i

bb.k:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !25
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bs = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.i
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !25
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !25
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.cc) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread.i
  %.pn.pn18.i = phi { ptr, i32 } [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread.i ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread.i ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @__cxa_free_exception(ptr %i.bk) #20
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  %.pn.pn17.i = phi { ptr, i32 } [ %.pn.pn18.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ]
  resume { ptr, i32 } %.pn.pn17.i

bb.m:                                             ; preds = %bb.j
  unreachable

_ZL9checkAreaRK9VoxelArea.exit:                   ; preds = %_ZN9VoxelArea7addAreaERKS_.exit
  %i.cd = mul i32 %i.be, %.sroa.30.0
  %i.ce = mul i32 %i.cd, %i.bc
  %i.cf = zext i32 %i.ce to i64                   ; 3 uses
  %i.cg = shl nuw nsw i64 %i.cf, 2
  %i.ch = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cg) #22 ; 2 uses
  %i.ci = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 1, i64 %i.cf, i1 false)
  %i.cj = load i32, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !23 ; 2 uses
  %i.ck = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !28 ; 3 uses
  %i.cl = sext i16 %i.ck to i32                   ; 2 uses
  %i.cm = load i16, ptr %.sroa.18.0..sroa_idx, align 2, !tbaa !29 ; 2 uses
  %.not96 = icmp sgt i16 %i.ck, %i.cm
  br i1 %.not96, label %._crit_edge99.split, label %.lr.ph98

.lr.ph98:                                         ; preds = %_ZL9checkAreaRK9VoxelArea.exit
  %i.cn = load i16, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !27 ; 2 uses
  %i.co = sext i16 %i.cn to i32                   ; 2 uses
  %i.cp = load i16, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %.not3092 = icmp sgt i16 %i.cn, %i.cp
  %i.cq = extractelement <4 x i16> %i.az, i64 0
  %i.cr = sext i16 %i.cq to i32
  %i.cs = extractelement <2 x i16> %i.ba, i64 1
  %i.ct = sext i16 %i.cs to i32
  %i.cu = zext i32 %i.cj to i64                   ; 2 uses
  %i.cv = shl nuw nsw i64 %i.cu, 2
  br i1 %.not3092, label %._crit_edge99.split, label %.lr.ph98.split

.lr.ph98.split:                                   ; preds = %.lr.ph98
  %i.cw = sext i16 %i.cp to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cz = extractelement <2 x i16> %i.ba, i64 0
  %i.da = sext i16 %i.cz to i32
  %i.db = load i16, ptr %i.e, align 8, !tbaa !31
  %i.dc = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !33
  %i.dd = sext i16 %i.db to i32
  %invariant.op94 = sub nsw i32 %i.dd, %i.da
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.df = load ptr, ptr %i.cx, align 8, !tbaa !22
  %i.dg = tail call i16 @llvm.smax.i16(i16 %i.cm, i16 %i.ck)
  %smax102 = sext i16 %i.dg to i32
  br label %.lr.ph

._crit_edge99.split:                              ; preds = %._crit_edge, %.lr.ph98, %_ZL9checkAreaRK9VoxelArea.exit
  store <2 x i16> %i.ba, ptr %i.e, align 8, !tbaa !13
  store <4 x i16> %i.az, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !13
  store <2 x i32> %i.bb, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !11
  store i32 %.sroa.30.0, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !21 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !22 ; 2 uses
  store ptr %i.ch, ptr %i.dh, align 8, !tbaa !21
  store ptr %i.ci, ptr %i.dj, align 8, !tbaa !22
  %i.dl = icmp eq ptr %i.di, null
  br i1 %i.dl, label %bb.p, label %bb.o

.lr.ph:                                           ; preds = %.lr.ph98.split, %._crit_edge
  %.02797 = phi i32 [ %i.cl, %.lr.ph98.split ], [ %i.dr, %._crit_edge ] ; 4 uses
  %i.dm = sub nsw i32 %.02797, %i.cl
  %i.dn = mul nsw i32 %i.dm, %i.dc
  %invariant.op = sub i32 %i.dn, %i.co
  %i.do = sub nsw i32 %.02797, %i.cr
  %i.dp = mul nsw i32 %i.do, %i.be
  %i.dq = sub i32 %i.dp, %i.ct
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  %i.dr = add nsw i32 %.02797, 1
  %exitcond103.not = icmp eq i32 %.02797, %smax102
  br i1 %exitcond103.not, label %._crit_edge99.split, label %.lr.ph, !llvm.loop !128

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %.093 = phi i32 [ %i.co, %.lr.ph ], [ %i.eb, %bb.n ] ; 4 uses
  %.reass = add i32 %.093, %invariant.op
  %i.ds = mul i32 %.reass, %i.cj
  %i.dt = add i32 %i.dq, %.093
  %i.du = mul i32 %i.dt, %i.bc
  %.reass95 = add i32 %i.du, %invariant.op94
  %i.dv = zext i32 %.reass95 to i64               ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.dv
  %i.dx = zext i32 %i.ds to i64                   ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dw, ptr align 4 %i.dy, i64 %i.cv, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr align 1 %i.ea, i64 %i.cu, i1 false)
  %i.eb = add nsw i32 %.093, 1
  %exitcond.not = icmp eq i32 %.093, %i.cw
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !129

bb.o:                                             ; preds = %._crit_edge99.split
  tail call void @_ZdaPv(ptr noundef nonnull %i.di) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge99.split
  %i.ec = icmp eq ptr %i.dk, null
  br i1 %i.ec, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZdaPv(ptr noundef nonnull %i.dk) #18
  br label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %bb.a, %bb.p, %bb.q, %_ZNK9VoxelArea8containsERKS_.exit
  ret void
}

end_hunk_0
