inline.NumInlined: 552
inline.NumDeleted: 225
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_511TileOffsets8readFromESt6vectorImSaImEERb:bb.a
  br i1 %exitcond75.not, label %._crit_edge57, label %.preheader, !llvm.loop !75

.lr.ph52:                                         ; preds = %.lr.ph52.prol.loopexit, %.lr.ph52
  %indvars.iv70 = phi i64 [ %indvars.iv.next71.3, %.lr.ph52 ], [ %indvars.iv70.unr, %.lr.ph52.prol.loopexit ] ; 5 uses
  %.051 = phi i64 [ %i.dw, %.lr.ph52 ], [ %.051.unr, %.lr.ph52.prol.loopexit ] ; 5 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv70
  %i.df = load i64, ptr %i.de, align 8, !tbaa !32
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.051
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !32
  %i.dh = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv70
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !32
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.051
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.dj, ptr %i.dl, align 8, !tbaa !32
  %i.dm = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv70
  %i.dn = getelementptr i8, ptr %i.dm, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !32
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.051
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 %i.do, ptr %i.dq, align 8, !tbaa !32
  %i.dr = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv70
  %i.ds = getelementptr i8, ptr %i.dr, i64 24
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !32
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.051
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !32
  %indvars.iv.next71.3 = add nsw i64 %indvars.iv70, 4 ; 2 uses
  %i.dw = add nuw i64 %.051, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dw, %i.cl
  br i1 %exitcond.not.3, label %._crit_edge53.loopexit, label %.lr.ph52, !llvm.loop !76
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK27OpenImageIO_v3_1_Imf__3_3_511TileOffsets7writeToERNS_7OStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 44, ptr %i.b, align 8, !tbaa !32
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !80
  %i.j = load i64, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.i, ptr noundef nonnull align 1 dereferenceable(44) @.str.4, i64 44, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  invoke void @_ZN7Iex_3_313throwErrnoExcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !80     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.h
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.h, align 8, !tbaa !82
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %2, align 8, !tbaa !80     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.h
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.c
  %i.t = load i64, ptr %i.h, align 8, !tbaa !82
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.q

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.x, %i.y
  br i1 %.not, label %._crit_edge34, label %.preheader29

.preheader29:                                     ; preds = %bb.d, %._crit_edge32
  %i.z = phi ptr [ %i.an, %._crit_edge32 ], [ %i.y, %bb.d ] ; 4 uses
  %i.aa = phi ptr [ %i.ao, %._crit_edge32 ], [ %i.x, %bb.d ]
  %i.ab = phi i64 [ %i.aq, %._crit_edge32 ], [ 0, %bb.d ] ; 3 uses
  %.01933 = phi i32 [ %i.ap, %._crit_edge32 ], [ 0, %bb.d ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 2 uses
  %.not35 = icmp eq ptr %i.ae, %i.af
  br i1 %.not35, label %._crit_edge32, label %.preheader

._crit_edge34:                                    ; preds = %._crit_edge32, %bb.d
  ret i64 %i.f

.preheader:                                       ; preds = %.preheader29, %._crit_edge
  %.pre = phi ptr [ %.pre38, %._crit_edge ], [ %i.af, %.preheader29 ] ; 2 uses
  %i.ag = phi ptr [ %i.aw, %._crit_edge ], [ %i.z, %.preheader29 ]
  %i.ah = phi ptr [ %i.ax, %._crit_edge ], [ %i.z, %.preheader29 ]
  %i.ai = phi i64 [ %i.az, %._crit_edge ], [ 0, %.preheader29 ] ; 2 uses
  %.01831 = phi i32 [ %i.ay, %._crit_edge ], [ 0, %.preheader29 ]
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %.not36 = icmp eq ptr %i.al, %i.am
  br i1 %.not36, label %._crit_edge, label %.lr.ph

._crit_edge32.loopexit:                           ; preds = %._crit_edge
  %.pre37 = load ptr, ptr %i.w, align 8, !tbaa !18
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit, %.preheader29
  %i.an = phi ptr [ %i.aw, %._crit_edge32.loopexit ], [ %i.z, %.preheader29 ] ; 2 uses
  %i.ao = phi ptr [ %.pre37, %._crit_edge32.loopexit ], [ %i.aa, %.preheader29 ] ; 2 uses
  %i.ap = add i32 %.01933, 1                      ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 24
  %i.av = icmp ugt i64 %i.au, %i.aq
  br i1 %i.av, label %.preheader29, label %._crit_edge34, !llvm.loop !84

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.pre38 = phi ptr [ %.pre, %.preheader ], [ %i.bt, %.lr.ph ] ; 2 uses
  %i.aw = phi ptr [ %i.ag, %.preheader ], [ %i.br, %.lr.ph ] ; 2 uses
  %i.ax = phi ptr [ %i.ah, %.preheader ], [ %i.br, %.lr.ph ] ; 2 uses
  %i.ay = add i32 %.01831, 1                      ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.ab
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %.pre38 to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 24
  %i.bh = icmp ugt i64 %i.bg, %i.az
  br i1 %i.bh, label %.preheader, label %._crit_edge32.loopexit, !llvm.loop !85

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.bi = phi ptr [ %i.bx, %.lr.ph ], [ %i.am, %.preheader ]
  %i.bj = phi i64 [ %i.bq, %.lr.ph ], [ 0, %.preheader ]
  %.030 = phi i32 [ %i.bp, %.lr.ph ], [ 0, %.preheader ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.bl, ptr %i.a, align 8
  %i.bm = load ptr, ptr %1, align 8, !tbaa !52
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 8), !inline_history !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bp = add i32 %.030, 1                        ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = load ptr, ptr %i.v, align 8, !tbaa !19  ; 3 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.ab
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !23 ; 2 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.ai ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !24 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3
  %i.cc = icmp ugt i64 %i.cb, %i.bq
  br i1 %i.cc, label %.lr.ph, label %._crit_edge, !llvm.loop !87
}

declare void @_ZN7Iex_3_313throwErrnoExcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK27OpenImageIO_v3_1_Imf__3_3_511TileOffsets12getTileOrderEPiS1_S1_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.5.i.i22.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %5 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %.sroa.5.i.i9.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.5.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %6 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24                  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge139, label %.preheader115

.preheader115:                                    ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.069120 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !23   ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24
  %.not146 = icmp eq ptr %i.k, %i.l
  br i1 %.not146, label %._crit_edge, label %.lr.ph

._crit_edge121:                                   ; preds = %._crit_edge
  %i.q = icmp ugt i64 %.1.lcssa, 384307168202282325
  br i1 %i.q, label %.noexc, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %._crit_edge121
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %._crit_edge121
  %.not.i.i.i.i = icmp eq i64 %.1.lcssa, 0        ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit, label %.noexc103

.noexc103:                                        ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.r = mul nuw nsw i64 %.1.lcssa, 24
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #19 ; 6 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.1.lcssa ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %i.v = add nsw i64 %.1.lcssa, -1                ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit, label %bb.b

bb.b:                                             ; preds = %.noexc103
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.v, 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.b
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.u, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !88
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %.preheader115
  %.1.lcssa = phi i64 [ %.069120, %.preheader115 ], [ %i.ak, %.lr.ph ] ; 7 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.z = and i64 %indvars.iv.next, 4294967295
  %i.aa = icmp ugt i64 %i.h, %i.z
  br i1 %i.aa, label %.preheader115, label %._crit_edge121, !llvm.loop !90

.lr.ph:                                           ; preds = %.preheader115, %.lr.ph
  %i.ab = phi i64 [ %i.am, %.lr.ph ], [ 0, %.preheader115 ]
  %.1118 = phi i64 [ %i.ak, %.lr.ph ], [ %.069120, %.preheader115 ]
  %.080117 = phi i32 [ %i.al, %.lr.ph ], [ 0, %.preheader115 ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !24
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = add i64 %i.aj, %.1118                   ; 2 uses
  %i.al = add i32 %.080117, 1                     ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp ugt i64 %i.p, %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !91

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc103, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.069.lcssa180183 = phi i64 [ 0, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ 1, %.noexc103 ], [ %.1.lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %.sroa.21.0 = phi ptr [ null, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.t, %.noexc103 ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0107.0 = phi ptr [ null, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.s, %.noexc103 ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 23 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.u, %.noexc103 ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 7 uses
  br label %.preheader114

.preheader114:                                    ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit, %._crit_edge132
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %._crit_edge132 ], [ 0, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit ] ; 3 uses
  %.074134 = phi i64 [ %.175.lcssa, %._crit_edge132 ], [ 0, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv163 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 24
  %.not148 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not148, label %._crit_edge132, label %.preheader113.preheader

.preheader113.preheader:                          ; preds = %.preheader114
  %i.aw = trunc nuw i64 %indvars.iv163 to i32
  br label %.preheader113

._crit_edge136:                                   ; preds = %._crit_edge132
  %.not.i.i = icmp eq ptr %.sroa.0107.0, %.0.i.i.i.i.i
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge136
  %i.ax = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ay = ptrtoint ptr %.sroa.0107.0 to i64       ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = sdiv exact i64 %i.az, 24
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = shl nuw nsw i64 %i.bb, 1
  %i.bd = xor i64 %i.bc, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %.sroa.0107.0, ptr %.0.i.i.i.i.i, i64 noundef %i.bd)
  %i.be = icmp sgt i64 %i.az, 384
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0107.0, i64 24 ; 3 uses
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.h
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ %.sroa.0.019.i.add.i.i.i, %bb.h ], [ 24, %bb.c ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.h ], [ %.sroa.0107.0, %bb.c ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0107.0, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %.val2.i.i.i.i.i = load i64, ptr %.sroa.0.019.i.ptr.i.i.i, align 8, !tbaa !92 ; 4 uses
  %.val3.i.i.i.i.i = load i64, ptr %.sroa.0107.0, align 8, !tbaa !92
  %i.bf = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.bf, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr.i.i.i, i64 24, i1 false), !tbaa.struct !88
  %i.bg = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 24
  br i1 %i.bg, label %bb.e, label %bb.f, !prof !94

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0107.0, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0107.0, i64 24, i1 false), !tbaa.struct !88
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0107.0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val3.sroa_idx.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !95
  %.val2.i10.i.i.i.i.i = load i64, ptr %.pn18.i.i.i.i, align 8, !tbaa !92
  %i.bi = icmp ult i64 %.val2.i.i.i.i.i, %.val2.i10.i.i.i.i.i
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn18.i.i.i.i, %bb.g ] ; 4 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !88
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !92
  %i.bj = icmp ult i64 %.val2.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, !llvm.loop !96

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %.sroa.08.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.g ], [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i.i.i.i, align 8, !tbaa !32
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i104 = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 384
  br i1 %.not.i.i.i.i104, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !97

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i: ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0107.0, i64 384 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bk, %.0.i.i.i.i.i
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i10.i.i.i

.lr.ph.i10.i.i.i:                                 ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.bn, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i ], [ %i.bk, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i9.i.i.i)
  %.sroa.06.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i, align 8, !tbaa !32 ; 3 uses
  %.sroa.5.0..val3.sroa_idx.i.i11.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i9.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val3.sroa_idx.i.i11.i.i.i, i64 16, i1 false), !tbaa.struct !95
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i.i, i64 -24 ; 2 uses
  %.val2.i10.i.i12.i.i.i = load i64, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !92
  %i.bl = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i, %.val2.i10.i.i12.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i17.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i

.lr.ph.i.i17.i.i.i:                               ; preds = %.lr.ph.i10.i.i.i, %.lr.ph.i.i17.i.i.i
  %.sroa.0.012.i.i18.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i10.i.i.i ] ; 4 uses
  %.sroa.08.011.i.i19.i.i.i = phi ptr [ %.sroa.0.012.i.i18.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.05.i.i.i.i, %.lr.ph.i10.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i19.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i18.i.i.i, i64 24, i1 false), !tbaa.struct !88
  %.sroa.0.0.i.i20.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i18.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i21.i.i.i = load i64, ptr %.sroa.0.0.i.i20.i.i.i, align 8, !tbaa !92
  %i.bm = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i, %.val2.i.i.i21.i.i.i
  br i1 %i.bm, label %.lr.ph.i.i17.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i, !llvm.loop !96

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i: ; preds = %.lr.ph.i.i17.i.i.i, %.lr.ph.i10.i.i.i
  %.sroa.08.0.lcssa.i.i14.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i, %.lr.ph.i10.i.i.i ], [ %.sroa.0.012.i.i18.i.i.i, %.lr.ph.i.i17.i.i.i ] ; 2 uses
  store i64 %.sroa.06.0.copyload.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i14.i.i.i, align 8, !tbaa !32
  %.sroa.5.0..val.sroa_idx.i.i15.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i14.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val.sroa_idx.i.i15.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i9.i.i.i, i64 16, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i9.i.i.i)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.bn, %.0.i.i.i.i.i
  br i1 %.not.i16.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i10.i.i.i, !llvm.loop !98

bb.i:                                             ; preds = %bb.c
  %.not17.i25.i.i.i = icmp eq ptr %scevgep.i.i.i, %.0.i.i.i.i.i
  br i1 %.not17.i25.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i26.i.i.i

.lr.ph.i26.i.i.i:                                 ; preds = %bb.i, %bb.o
  %.sroa.0.019.i27.i.i.i = phi ptr [ %.sroa.0.0.i36.i.i.i, %bb.o ], [ %scevgep.i.i.i, %bb.i ] ; 7 uses
  %.pn18.i28.i.i.i = phi ptr [ %.sroa.0.019.i27.i.i.i, %bb.o ], [ %.sroa.0107.0, %bb.i ] ; 5 uses
  %.val2.i.i29.i.i.i = load i64, ptr %.sroa.0.019.i27.i.i.i, align 8, !tbaa !92 ; 4 uses
  %.val3.i.i30.i.i.i = load i64, ptr %.sroa.0107.0, align 8, !tbaa !92
  %i.bo = icmp ult i64 %.val2.i.i29.i.i.i, %.val3.i.i30.i.i.i
  br i1 %i.bo, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.i26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i27.i.i.i, i64 24, i1 false), !tbaa.struct !88
  %i.bp = ptrtoint ptr %.sroa.0.019.i27.i.i.i to i64
  %i.bq = sub i64 %i.bp, %i.ay                    ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 24
  br i1 %i.br, label %bb.k, label %bb.l, !prof !94

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 48
  %.neg23.i44.i.i.i = udiv exact i64 %i.bq, 24
  %.neg23.neg.i45.i.i.i = sub nsw i64 0, %.neg23.i44.i.i.i
  %i.bt = getelementptr inbounds [24 x i8], ptr %i.bs, i64 %.neg23.neg.i45.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0107.0, i64 %i.bq, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bu = icmp eq i64 %i.bq, 24
  br i1 %i.bu, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0107.0, i64 24, i1 false), !tbaa.struct !88
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0107.0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i22.i.i.i)
  %.sroa.5.0..val3.sroa_idx.i.i31.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i22.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val3.sroa_idx.i.i31.i.i.i, i64 16, i1 false), !tbaa.struct !95
  %.val2.i10.i.i32.i.i.i = load i64, ptr %.pn18.i28.i.i.i, align 8, !tbaa !92
  %i.bw = icmp ult i64 %.val2.i.i29.i.i.i, %.val2.i10.i.i32.i.i.i
  br i1 %i.bw, label %.lr.ph.i.i38.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i

.lr.ph.i.i38.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i38.i.i.i
  %.sroa.0.012.i.i39.i.i.i = phi ptr [ %.sroa.0.0.i.i41.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.pn18.i28.i.i.i, %bb.n ] ; 4 uses
  %.sroa.08.011.i.i40.i.i.i = phi ptr [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.sroa.0.019.i27.i.i.i, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i40.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i39.i.i.i, i64 24, i1 false), !tbaa.struct !88
  %.sroa.0.0.i.i41.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i39.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i42.i.i.i = load i64, ptr %.sroa.0.0.i.i41.i.i.i, align 8, !tbaa !92
  %i.bx = icmp ult i64 %.val2.i.i29.i.i.i, %.val2.i.i.i42.i.i.i
  br i1 %i.bx, label %.lr.ph.i.i38.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i, !llvm.loop !96

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i: ; preds = %.lr.ph.i.i38.i.i.i, %bb.n
  %.sroa.08.0.lcssa.i.i34.i.i.i = phi ptr [ %.sroa.0.019.i27.i.i.i, %bb.n ], [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ] ; 2 uses
  store i64 %.val2.i.i29.i.i.i, ptr %.sroa.08.0.lcssa.i.i34.i.i.i, align 8, !tbaa !32
  %.sroa.5.0..val.sroa_idx.i.i35.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i34.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val.sroa_idx.i.i35.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i22.i.i.i, i64 16, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i22.i.i.i)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i
  %.sroa.0.0.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i27.i.i.i, i64 24 ; 2 uses
  %.not.i37.i.i.i = icmp eq ptr %.sroa.0.0.i36.i.i.i, %.0.i.i.i.i.i
  br i1 %.not.i37.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i26.i.i.i, !llvm.loop !97

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i, %._crit_edge136, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, %bb.i
  br i1 %.not.i.i.i.i, label %._crit_edge139, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %xtraiter = and i64 %.069.lcssa180183, 1
  %i.by = icmp eq i64 %.069.lcssa180183, 1
  br i1 %i.by, label %.lr.ph138.epil.preheader, label %.lr.ph138.preheader.new

.lr.ph138.preheader.new:                          ; preds = %.lr.ph138.preheader
  %unroll_iter = and i64 %.069.lcssa180183, 576460752303423486
  br label %.lr.ph138

.preheader113:                                    ; preds = %.preheader113.preheader, %._crit_edge128
  %indvars.iv159 = phi i64 [ 0, %.preheader113.preheader ], [ %indvars.iv.next160, %._crit_edge128 ] ; 3 uses
  %.175130 = phi i64 [ %.074134, %.preheader113.preheader ], [ %.2.lcssa, %._crit_edge128 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %indvars.iv159 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !31 ; 2 uses
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !24 ; 3 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3
  %.not149 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not149, label %._crit_edge128, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.preheader113
  %i.ch = trunc nuw i64 %indvars.iv159 to i32
  br label %.lr.ph127

._crit_edge132:                                   ; preds = %._crit_edge128, %.preheader114
  %.175.lcssa = phi i64 [ %.074134, %.preheader114 ], [ %.2.lcssa, %._crit_edge128 ]
  %indvars.iv.next164 = add i64 %indvars.iv163, 1 ; 2 uses
  %i.ci = and i64 %indvars.iv.next164, 4294967295
  %i.cj = icmp ugt i64 %i.h, %i.ci
  br i1 %i.cj, label %.preheader114, label %._crit_edge136, !llvm.loop !99

._crit_edge128:                                   ; preds = %.lr.ph127, %.preheader113
  %.2.lcssa = phi i64 [ %.175130, %.preheader113 ], [ %i.ct, %.lr.ph127 ] ; 2 uses
  %indvars.iv.next160 = add i64 %indvars.iv159, 1 ; 2 uses
  %i.ck = and i64 %indvars.iv.next160, 4294967295
  %i.cl = icmp ugt i64 %i.av, %i.ck
  br i1 %i.cl, label %.preheader113, label %._crit_edge132, !llvm.loop !100

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %.lr.ph127
  %i.cm = phi i64 [ %i.cv, %.lr.ph127 ], [ 0, %.lr.ph127.preheader ]
  %.071126 = phi i32 [ %i.cu, %.lr.ph127 ], [ 0, %.lr.ph127.preheader ] ; 2 uses
  %.2125 = phi i64 [ %i.ct, %.lr.ph127 ], [ %.175130, %.lr.ph127.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !32
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.2125 ; 4 uses
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !92
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %.071126, ptr %i.cq, align 8, !tbaa !101
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 %i.ch, ptr %i.cr, align 4, !tbaa !102
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i32 %i.aw, ptr %i.cs, align 8, !tbaa !103
  %i.ct = add i64 %.2125, 1                       ; 2 uses
  %i.cu = add i32 %.071126, 1                     ; 2 uses
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = icmp ugt i64 %i.cg, %i.cv
  br i1 %i.cw, label %.lr.ph127, label %._crit_edge128, !llvm.loop !104

._crit_edge139.loopexit.unr-lcssa:                ; preds = %.lr.ph138
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge139, label %.lr.ph138.epil.preheader

.lr.ph138.epil.preheader:                         ; preds = %._crit_edge139.loopexit.unr-lcssa, %.lr.ph138.preheader
  %.068137.epil.init = phi i64 [ 0, %.lr.ph138.preheader ], [ %i.fu, %._crit_edge139.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod246 = trunc i64 %.069.lcssa180183 to i1
  tail call void @llvm.assume(i1 %lcmp.mod246)
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.068137.epil.init ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !101
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.068137.epil.init
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !3
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !102
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.068137.epil.init
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %.lr.ph138.epil.preheader, %._crit_edge139.loopexit.unr-lcssa, %bb.a, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %.sroa.0107.0193201212 = phi ptr [ null, %bb.a ], [ %.sroa.0107.0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.sroa.0107.0, %._crit_edge139.loopexit.unr-lcssa ], [ %.sroa.0107.0, %.lr.ph138.epil.preheader ] ; 20 uses
  %.sroa.21.0192202211 = phi ptr [ null, %bb.a ], [ %.sroa.21.0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.sroa.21.0, %._crit_edge139.loopexit.unr-lcssa ], [ %.sroa.21.0, %.lr.ph138.epil.preheader ] ; 2 uses
  %.069.lcssa180183191203210 = phi i64 [ 0, %bb.a ], [ %.069.lcssa180183, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.069.lcssa180183, %._crit_edge139.loopexit.unr-lcssa ], [ %.069.lcssa180183, %.lr.ph138.epil.preheader ] ; 10 uses
  %.not.i.i.i.i184190204209 = phi i1 [ true, %bb.a ], [ true, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ false, %._crit_edge139.loopexit.unr-lcssa ], [ false, %.lr.ph138.epil.preheader ] ; 3 uses
  %i.de = load i32, ptr %0, align 8, !tbaa !7
  switch i32 %i.de, label %.loopexit [
    i32 0, label %.lr.ph145.prol
    i32 1, label %.preheader108
    i32 2, label %.preheader110
    i32 3, label %bb.r
  ]

.preheader110:                                    ; preds = %._crit_edge139
  br i1 %.not.i.i.i.i184190204209, label %.loopexit, label %.lr.ph141

.lr.ph141:                                        ; preds = %.preheader110
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.q

.preheader108:                                    ; preds = %._crit_edge139
  br i1 %.not.i.i.i.i184190204209, label %.loopexit, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %.preheader108
  %min.iters.check = icmp ult i64 %.069.lcssa180183191203210, 33
  br i1 %min.iters.check, label %.lr.ph143.preheader242, label %vector.memcheck

.lr.ph143.preheader242:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph143.preheader
  %.066142.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph143.preheader ], [ %n.vec, %vector.body ] ; 7 uses
  %i.dg = sub i64 %.069.lcssa180183191203210, %.066142.ph
  %.neg = add i64 %.066142.ph, 1
  %xtraiter247 = and i64 %i.dg, 1
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %.lr.ph143.prol.loopexit, label %.lr.ph143.prol

.lr.ph143.prol:                                   ; preds = %.lr.ph143.preheader242
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0193201212, i64 %.066142.ph
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !103 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066142.ph
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !3
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.066142.ph
  store i32 %i.dj, ptr %i.dl, align 4, !tbaa !3
  %i.dm = add nuw i64 %.066142.ph, 1
  br label %.lr.ph143.prol.loopexit

.lr.ph143.prol.loopexit:                          ; preds = %.lr.ph143.prol, %.lr.ph143.preheader242
  %.066142.unr = phi i64 [ %.066142.ph, %.lr.ph143.preheader242 ], [ %i.dm, %.lr.ph143.prol ]
  %i.dn = icmp eq i64 %.069.lcssa180183191203210, %.neg
  br i1 %i.dn, label %.loopexit.thread, label %.lr.ph143

vector.memcheck:                                  ; preds = %.lr.ph143.preheader
  %i.do = shl i64 %.069.lcssa180183191203210, 2   ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.do  ; 2 uses
  %scevgep220.a = getelementptr i8, ptr %4, i64 %i.do ; 2 uses
  %scevgep221.a = getelementptr i8, ptr %.sroa.0107.0193201212, i64 16 ; 2 uses
  %i.dp = mul i64 %.069.lcssa180183191203210, 24
  %i.dq = getelementptr i8, ptr %.sroa.0107.0193201212, i64 %i.dp
  %scevgep222 = getelementptr i8, ptr %i.dq, i64 -4 ; 2 uses
  %bound0 = icmp ult ptr %3, %scevgep220.a
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0223 = icmp ult ptr %3, %scevgep222
  %bound1224 = icmp ult ptr %scevgep221.a, %scevgep
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx = or i1 %found.conflict, %found.conflict225
  %bound0226 = icmp ult ptr %4, %scevgep222
  %bound1227 = icmp ult ptr %scevgep221.a, %scevgep220.a
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx229 = or i1 %conflict.rdx, %found.conflict228
  br i1 %conflict.rdx229, label %.lr.ph143.preheader242, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %.069.lcssa180183191203210, 7 ; 2 uses
  %i.dr = icmp eq i64 %n.mod.vf, 0
  %i.ds = select i1 %i.dr, i64 8, i64 %n.mod.vf
  %n.vec = sub i64 %.069.lcssa180183191203210, %i.ds ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 11 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0193201212, i64 %index
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0193201212, i64 %index
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0193201212, i64 %index
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0193201212, i64 %index
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0193201212, i64 %index
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0193201212, i64 %index
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0193201212, i64 %index
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0193201212, i64 %index
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 112
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 136
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 160
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 184
  %i.ej = load i32, ptr %i.eb, align 8, !tbaa !103, !alias.scope !105
  %i.ek = load i32, ptr %i.ec, align 8, !tbaa !103, !alias.scope !105
  %i.el = load i32, ptr %i.ed, align 8, !tbaa !103, !alias.scope !105
  %i.em = load i32, ptr %i.ee, align 8, !tbaa !103, !alias.scope !105
  %i.en = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %i.eo = insertelement <4 x i32> %i.en, i32 %i.ek, i64 1
  %i.ep = insertelement <4 x i32> %i.eo, i32 %i.el, i64 2
  %i.eq = insertelement <4 x i32> %i.ep, i32 %i.em, i64 3 ; 2 uses
  %i.er = load i32, ptr %i.ef, align 8, !tbaa !103, !alias.scope !105
  %i.es = load i32, ptr %i.eg, align 8, !tbaa !103, !alias.scope !105
  %i.et = load i32, ptr %i.eh, align 8, !tbaa !103, !alias.scope !105
  %i.eu = load i32, ptr %i.ei, align 8, !tbaa !103, !alias.scope !105
  %i.ev = insertelement <4 x i32> poison, i32 %i.er, i64 0
  %i.ew = insertelement <4 x i32> %i.ev, i32 %i.es, i64 1
  %i.ex = insertelement <4 x i32> %i.ew, i32 %i.et, i64 2
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.eu, i64 3 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <4 x i32> %i.eq, ptr %i.ez, align 4, !tbaa !3, !alias.scope !108, !noalias !110
  store <4 x i32> %i.ey, ptr %i.fa, align 4, !tbaa !3, !alias.scope !108, !noalias !110
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <4 x i32> %i.eq, ptr %i.fb, align 4, !tbaa !3, !alias.scope !112, !noalias !105
  store <4 x i32> %i.ey, ptr %i.fc, align 4, !tbaa !3, !alias.scope !112, !noalias !105
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %.lr.ph143.preheader242, label %vector.body, !llvm.loop !113

.lr.ph145.prol:                                   ; preds = %._crit_edge139
  br i1 %.not.i.i.i.i184190204209, label %.loopexit, label %.lr.ph145.prol.loopexit

.lr.ph145.prol.loopexit:                          ; preds = %.lr.ph145.prol
  %7 = shl nuw nsw i64 %.069.lcssa180183191203210, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %7, i1 false), !tbaa !3
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %7, i1 false), !tbaa !3
  br label %.loopexit

bb.p:                                             ; preds = %bb.s
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph138:                                        ; preds = %.lr.ph138, %.lr.ph138.preheader.new
  %.068137 = phi i64 [ 0, %.lr.ph138.preheader.new ], [ %i.fu, %.lr.ph138 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph138.preheader.new ], [ %niter.next.1, %.lr.ph138 ]
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.068137 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !101
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.068137
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !102
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.068137
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !3
  %i.fm = or disjoint i64 %.068137, 1             ; 3 uses
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !101
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fm
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !3
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !102
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fm
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !3
  %i.fu = add nuw i64 %.068137, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge139.loopexit.unr-lcssa, label %.lr.ph138, !llvm.loop !114

.lr.ph143:                                        ; preds = %.lr.ph143.prol.loopexit, %.lr.ph143
  %.066142 = phi i64 [ %i.gg, %.lr.ph143 ], [ %.066142.unr, %.lr.ph143.prol.loopexit ] ; 5 uses
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0193201212, i64 %.066142
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !103 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066142
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !3
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.066142
  store i32 %i.fx, ptr %i.fz, align 4, !tbaa !3
  %i.ga = add nuw i64 %.066142, 1                 ; 3 uses
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0193201212, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !103 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ga
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !3
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ga
  store i32 %i.gd, ptr %i.gf, align 4, !tbaa !3
  %i.gg = add nuw i64 %.066142, 2                 ; 2 uses
  %exitcond168.not.1 = icmp eq i64 %i.gg, %.069.lcssa180183191203210
  br i1 %exitcond168.not.1, label %.loopexit.thread, label %.lr.ph143, !llvm.loop !115

bb.q:                                             ; preds = %.lr.ph141, %bb.q
  %.0140 = phi i64 [ 0, %.lr.ph141 ], [ %i.gq, %bb.q ] ; 4 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0193201212, i64 %.0140
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !103 ; 2 uses
  %i.gk = load i32, ptr %i.df, align 4, !tbaa !16
  %i.gl = srem i32 %i.gj, %i.gk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0140
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !3
  %i.gn = load i32, ptr %i.df, align 4, !tbaa !16
  %i.go = sdiv i32 %i.gj, %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0140
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !3
  %i.gq = add nuw i64 %.0140, 1                   ; 2 uses
  %exitcond167.not = icmp eq i64 %i.gq, %.069.lcssa180183191203210
  br i1 %exitcond167.not, label %.loopexit.thread, label %bb.q, !llvm.loop !116

bb.r:                                             ; preds = %._crit_edge139
  %i.gr = tail call ptr @__cxa_allocate_exception(i64 72) #20 ; 3 uses
  invoke void @_ZN7Iex_3_38LogicExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gr, ptr noundef nonnull @.str.5)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.gr, ptr nonnull @_ZTIN7Iex_3_38LogicExcE, ptr nonnull @_ZN7Iex_3_38LogicExcD1Ev) #18
          to label %bb.w unwind label %bb.p

bb.t:                                             ; preds = %bb.r
  %i.gs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.gr) #20
  br label %bb.u

.loopexit:                                        ; preds = %.lr.ph145.prol.loopexit, %.preheader110, %.preheader108, %.lr.ph145.prol, %._crit_edge139
  %.not.i.i.i = icmp eq ptr %.sroa.0107.0193201212, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.q, %.lr.ph143.prol.loopexit, %.lr.ph143, %.loopexit
  %i.gt = ptrtoint ptr %.sroa.21.0192202211 to i64
  %i.gu = ptrtoint ptr %.sroa.0107.0193201212 to i64
  %i.gv = sub i64 %i.gt, %i.gu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0107.0193201212, i64 noundef %i.gv) #17
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EED2Ev.exit

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EED2Ev.exit: ; preds = %.loopexit, %.loopexit.thread
  ret void

bb.u:                                             ; preds = %bb.t, %bb.p
  %.pn = phi { ptr, i32 } [ %i.fe, %bb.p ], [ %i.gs, %bb.t ]
  %.not.i.i.i105 = icmp eq ptr %.sroa.0107.0193201212, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EED2Ev.exit106, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gw = ptrtoint ptr %.sroa.21.0192202211 to i64
  %i.gx = ptrtoint ptr %.sroa.0107.0193201212 to i64
  %i.gy = sub i64 %i.gw, %i.gx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0107.0193201212, i64 noundef %i.gy) #17
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EED2Ev.exit106

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EED2Ev.exit106: ; preds = %bb.v, %bb.u
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.s
  unreachable
}

declare void @_ZN7Iex_3_38LogicExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7Iex_3_38LogicExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_511TileOffsets7isEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = icmp eq ptr %i.c, %i.d
  br i1 %i.i, label %.loopexit, label %.preheader31

.preheader31:                                     ; preds = %bb.a, %._crit_edge37
  %i.j = phi i64 [ %i.ak, %._crit_edge37 ], [ 0, %bb.a ]
  %.01938 = phi i32 [ %i.aj, %._crit_edge37 ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 24
  %.not39 = icmp eq ptr %i.m, %i.n
  br i1 %.not39, label %._crit_edge37, label %.preheader

.preheader:                                       ; preds = %.preheader31, %._crit_edge
  %i.s = phi i64 [ %i.ah, %._crit_edge ], [ 0, %.preheader31 ]
  %.01736 = phi i32 [ %i.ag, %._crit_edge ], [ 0, %.preheader31 ]
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !24   ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %.not2634.not = icmp eq ptr %i.v, %i.w
  br i1 %.not2634.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.ab = add i32 %.035, 1                        ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %.not26 = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not26, label %.lr.ph, label %._crit_edge, !llvm.loop !117

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.ad = phi i64 [ %i.ac, %bb.b ], [ 0, %.preheader ]
  %.035 = phi i32 [ %i.ab, %bb.b ], [ 0, %.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !32
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.b, label %.loopexit

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.ag = add i32 %.01736, 1                      ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = icmp ugt i64 %i.r, %i.ah
  br i1 %i.ai, label %.preheader, label %._crit_edge37, !llvm.loop !118

._crit_edge37:                                    ; preds = %._crit_edge, %.preheader31
  %i.aj = add i32 %.01938, 1                      ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %.not40 = icmp ugt i64 %i.h, %i.ak
  br i1 %.not40, label %.preheader31, label %.loopexit, !llvm.loop !119

.loopexit:                                        ; preds = %._crit_edge37, %.lr.ph, %bb.a
  %i.al = phi i1 [ false, %.lr.ph ], [ true, %bb.a ], [ true, %._crit_edge37 ]
  ret i1 %i.al
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511TileOffsetsclEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511TileOffsetsclEiiii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %3)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511TileOffsetsclEiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !7
  switch i32 %i.a, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = sext i32 %2 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d
  %i.g = sext i32 %1 to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = sext i32 %3 to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.k
  %i.n = sext i32 %2 to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.n
  %i.q = sext i32 %1 to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !16
  %i.w = mul nsw i32 %i.v, %4
  %i.x = add nsw i32 %i.w, %3
  %i.y = sext i32 %i.x to i64
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.y
  %i.ab = sext i32 %2 to i64
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = sext i32 %1 to i64
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 72) #20 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull @.str.6)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #18
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ah) #20
  resume { ptr, i32 } %i.ai

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.s, %bb.c ], [ %i.ag, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511TileOffsetsclEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511TileOffsetsclEiiii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %3)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511TileOffsets10getOffsetsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(40) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIS0_ImSaImEESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIS0_ImSaImEESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !18
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #19 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !125, !alias.scope !123, !noalias !120
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !125, !alias.scope !120, !noalias !123
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37, !alias.scope !123, !noalias !120
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !37, !alias.scope !120, !noalias !123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !123, !noalias !120
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !126

_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #17
  br label %_ZNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37

_ZNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37: ; preds = %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIS0_ImSaImEESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !20
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #19 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !43, !alias.scope !130, !noalias !127
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !43, !alias.scope !127, !noalias !130
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27, !alias.scope !130, !noalias !127
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !27, !alias.scope !127, !noalias !130
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !130, !noalias !127
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !44

_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #17
  br label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #12 {
bb.a:
  %3 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %4 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %5 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %6 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %7 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %8 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %9 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %.sroa.4.i.i8.i = alloca [16 x i8], align 8     ; 4 uses
  %.sroa.4.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %.fr22 = freeze ptr %1                          ; 3 uses
  %.fr21 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr21 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr22 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.fr21, i64 24 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph37

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.g = icmp eq i64 %i.bo, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph37, !llvm.loop !132

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr48.i20.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cc, %bb.b ]
  %storemerge18.lcssa = phi ptr [ %.fr22, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.fr48.i20.lcssa, 24      ; 3 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.fr21, i64 %i.o
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.fr21, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i.i, %._crit_edge
  %.07.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.aj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.r = getelementptr inbounds [24 x i8], ptr %.fr21, i64 %.07.i.i.i ; 2 uses
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.r, align 8, !tbaa !32 ; 2 uses
  %.sroa.46.0..sroa.0.0..val12.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa.0.0..val12.sroa_idx.i.i.i, i64 16, i1 false)
  %i.s = icmp slt i64 %.07.i.i.i, %i.l
  br i1 %i.s, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.042.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.07.i.i.i, %bb.c ] ; 2 uses
  %i.t = shl i64 %.042.i.i.i.i, 1                 ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [24 x i8], ptr %.fr21, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [24 x i8], ptr %.fr21, i64 %i.w
  %.val2.i.i.i.i.i = load i64, ptr %i.v, align 8, !tbaa !92
  %.val3.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !92
  %i.y = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.w, i64 %i.u ; 4 uses
  %i.z = getelementptr inbounds [24 x i8], ptr %.fr21, i64 %spec.select.i.i.i.i
  %i.aa = getelementptr inbounds [24 x i8], ptr %.fr21, i64 %.042.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !88
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %i.l
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !133

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.07.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ac = icmp eq i64 %.0.lcssa.i.i.i.i, %i.j
  %or.cond.i.i.i = select i1 %i.n, i1 %i.ac, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !88
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.o, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ad = icmp sgt i64 %.1.i.i.i.i, %.07.i.i.i
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.06.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.097.in.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i, -1
  %.097.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i, 2 ; 4 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.fr21, i64 %.097.i.i.i.i.i ; 2 uses
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !92
  %i.af = icmp ult i64 %.val1.i.i.i.i.i.i, %.sroa.05.0.copyload.i.i.i
  br i1 %i.af, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.fr21, i64 %.06.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !tbaa.struct !88
  %i.ah = icmp sgt i64 %.097.i.i.i.i.i, %.07.i.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i.i, !llvm.loop !134

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.06.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.097.i.i.i.i.i, %bb.f ]
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %.fr21, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.05.0.copyload.i.i.i, ptr %i.ai, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  %.not.i.i.i = icmp eq i64 %.07.i.i.i, 0
  %i.aj = add nsw i64 %.07.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !135

.lr.ph.i9.i:                                      ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i22.i
  %.sroa.0.02.i.i = phi ptr [ %i.ak, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i22.i ], [ %storemerge18.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -24 ; 4 uses
  %.sroa.05.0.copyload.i.i10.i = load i64, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %.sroa.46.0..sroa.0.0..val4.sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i8.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa.0.0..val4.sroa_idx.i.i11.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %.fr21, i64 24, i1 false), !tbaa.struct !88
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.a                     ; 3 uses
  %i.an = sdiv exact i64 %i.am, 24                ; 3 uses
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = sdiv i64 %i.ao, 2
  %i.aq = icmp sgt i64 %i.am, 48
  br i1 %i.aq, label %.lr.ph.i.i.i27.i, label %._crit_edge.i.i.i12.i

.lr.ph.i.i.i27.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i27.i
  %.042.i.i.i28.i = phi i64 [ %spec.select.i.i.i31.i, %.lr.ph.i.i.i27.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ar = shl i64 %.042.i.i.i28.i, 1              ; 2 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [24 x i8], ptr %.fr21, i64 %i.as
  %i.au = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.av = getelementptr inbounds [24 x i8], ptr %.fr21, i64 %i.au
  %.val2.i.i.i.i29.i = load i64, ptr %i.at, align 8, !tbaa !92
  %.val3.i.i.i.i30.i = load i64, ptr %i.av, align 8, !tbaa !92
  %i.aw = icmp ult i64 %.val2.i.i.i.i29.i, %.val3.i.i.i.i30.i
  %spec.select.i.i.i31.i = select i1 %i.aw, i64 %i.au, i64 %i.as ; 4 uses
  %i.ax = getelementptr inbounds [24 x i8], ptr %.fr21, i64 %spec.select.i.i.i31.i
  %i.ay = getelementptr inbounds [24 x i8], ptr %.fr21, i64 %.042.i.i.i28.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !tbaa.struct !88
  %i.az = icmp slt i64 %spec.select.i.i.i31.i, %i.ap
  br i1 %i.az, label %.lr.ph.i.i.i27.i, label %._crit_edge.i.i.i12.i, !llvm.loop !133

._crit_edge.i.i.i12.i:                            ; preds = %.lr.ph.i.i.i27.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i13.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i31.i, %.lr.ph.i.i.i27.i ] ; 5 uses
  %i.ba = and i64 %i.an, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i12.i
  %i.bc = add nsw i64 %i.an, -2
  %i.bd = ashr exact i64 %i.bc, 1
  %i.be = icmp eq i64 %.0.lcssa.i.i.i13.i, %i.bd
  br i1 %i.be, label %.thread.i.i26.i, label %bb.h

.thread.i.i26.i:                                  ; preds = %bb.g
  %i.bf = shl nuw nsw i64 %.0.lcssa.i.i.i13.i, 1
  %i.bg = or disjoint i64 %i.bf, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %.fr21, i64 %i.bg
  %i.bi = getelementptr inbounds [24 x i8], ptr %.fr21, i64 %.0.lcssa.i.i.i13.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !tbaa.struct !88
  br label %.lr.ph.i.i.i.i17.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i12.i
  %.not.i.i14.i = icmp eq i64 %.0.lcssa.i.i.i13.i, 0
  br i1 %.not.i.i14.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i22.i, label %.lr.ph.i.i.i.i17.i.preheader

.lr.ph.i.i.i.i17.i.preheader:                     ; preds = %bb.h, %.thread.i.i26.i
  %.06.i.i.i.i18.i.ph = phi i64 [ %.0.lcssa.i.i.i13.i, %bb.h ], [ %i.bg, %.thread.i.i26.i ]
  br label %.lr.ph.i.i.i.i17.i

.lr.ph.i.i.i.i17.i:                               ; preds = %.lr.ph.i.i.i.i17.i.preheader, %bb.i
  %.06.i.i.i.i18.i = phi i64 [ %.097.i.i78.i.i20.i, %bb.i ], [ %.06.i.i.i.i18.i.ph, %.lr.ph.i.i.i.i17.i.preheader ] ; 3 uses
  %.097.in.i.i.i.i19.i = add nsw i64 %.06.i.i.i.i18.i, -1
  %.097.i.i78.i.i20.i = lshr i64 %.097.in.i.i.i.i19.i, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %.fr21, i64 %.097.i.i78.i.i20.i ; 2 uses
  %.val1.i.i.i.i.i21.i = load i64, ptr %i.bj, align 8, !tbaa !92
  %i.bk = icmp ult i64 %.val1.i.i.i.i.i21.i, %.sroa.05.0.copyload.i.i10.i
  br i1 %i.bk, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i22.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i17.i
  %i.bl = getelementptr inbounds [24 x i8], ptr %.fr21, i64 %.06.i.i.i.i18.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !tbaa.struct !88
  %.not9.i.i25.i = icmp eq i64 %.097.i.i78.i.i20.i, 0
  br i1 %.not9.i.i25.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i22.i, label %.lr.ph.i.i.i.i17.i, !llvm.loop !134

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i22.i: ; preds = %bb.i, %.lr.ph.i.i.i.i17.i, %bb.h
  %.0.lcssa.i.i.i.i23.i = phi i64 [ 0, %bb.h ], [ %.06.i.i.i.i18.i, %.lr.ph.i.i.i.i17.i ], [ 0, %bb.i ]
  %i.bm = getelementptr inbounds [24 x i8], ptr %.fr21, i64 %.0.lcssa.i.i.i.i23.i ; 2 uses
  store i64 %.sroa.05.0.copyload.i.i10.i, ptr %i.bm, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx.i.i.i24.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i24.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i8.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i8.i)
  %i.bn = icmp sgt i64 %i.am, 24
  br i1 %i.bn, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !136

.lr.ph37:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1836 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr22, %.lr.ph ] ; 3 uses
  %.01935 = phi i64 [ %i.bo, %bb.b ], [ %2, %.lr.ph ]
  %.fr48.i2034 = phi i64 [ %i.cc, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bo = add nsw i64 %.01935, -1                 ; 3 uses
  %i.bp = udiv i64 %.fr48.i2034, 48
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %.fr21, i64 %i.bp ; 5 uses
  %i.br = getelementptr inbounds i8, ptr %storemerge1836, i64 -24 ; 5 uses
  %.val2.i.i.i = load i64, ptr %i.e, align 8, !tbaa !92 ; 3 uses
  %.val3.i.i.i = load i64, ptr %i.bq, align 8, !tbaa !92 ; 3 uses
  %i.bs = icmp ult i64 %.val2.i.i.i, %.val3.i.i.i
  %.val3.i27.i.i = load i64, ptr %i.br, align 8, !tbaa !92 ; 4 uses
  br i1 %i.bs, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph37
  %i.bt = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %.fr21, i64 24, i1 false), !tbaa.struct !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fr21, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.bu = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.fr21, i64 24, i1 false), !tbaa.struct !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fr21, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.fr21, i64 24, i1 false), !tbaa.struct !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fr21, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph37
  %i.bv = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.fr21, i64 24, i1 false), !tbaa.struct !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fr21, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.bw = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.fr21, i64 24, i1 false), !tbaa.struct !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fr21, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.fr21, i64 24, i1 false), !tbaa.struct !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fr21, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.by, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1836, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.val3.i.i14.i = load i64, ptr %.fr21, align 8, !tbaa !92 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %i.by, %bb.t ] ; 9 uses
  %.val2.i.i15.i = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !92
  %i.bx = icmp ult i64 %.val2.i.i15.i, %.val3.i.i14.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24 ; 2 uses
  br i1 %i.bx, label %bb.t, label %.preheader.i.i, !llvm.loop !137

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %.val3.i10.i.i = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !92
  %i.bz = icmp ult i64 %.val3.i.i14.i, %.val3.i10.i.i
  br i1 %i.bz, label %.preheader.i.i, label %bb.u, !llvm.loop !138

bb.u:                                             ; preds = %.preheader.i.i
  %i.ca = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ca, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, i64 24, i1 false), !tbaa.struct !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !139

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1836, i64 noundef %i.bo)
  %i.cb = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cc = sub i64 %i.cb, %i.a                     ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, 384
  br i1 %i.cd, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !132

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i22.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_511TileOffsetsE", !9, i64 0, !4, i64 4, !4, i64 8, !10, i64 16}
!9 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_59LevelModeE", !5, i64 0}
!10 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !11, i64 0}
!11 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !12, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !15, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!8, !4, i64 4}
!17 = !{!8, !4, i64 8}
!18 = !{!13, !14, i64 8}
!19 = !{!13, !14, i64 0}
!20 = !{!21, !22, i64 8}
!21 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 _ZTSSt6vectorImSaImEE", !15, i64 0}
!23 = !{!21, !22, i64 0}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 long", !15, i64 0}
!27 = !{!25, !26, i64 16}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !29}
!31 = !{!25, !26, i64 8}
!32 = !{!33, !33, i64 0}
!33 = !{!"long", !5, i64 0}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !29, !36}
!36 = !{!"llvm.loop.unswitch.partial.disable"}
!37 = !{!21, !22, i64 16}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!40 = distinct !{!40, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!43 = !{!26, !26, i64 0}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = !{!13, !14, i64 16}
!49 = distinct !{!49, !29}
!50 = distinct !{!50, !29}
!51 = distinct !{!51, !29}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !6, i64 0}
!54 = distinct !{null, null, null}
!55 = distinct !{null, null, null}
!56 = distinct !{null, null}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !29}
!59 = distinct !{!59, !29}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !29}
!64 = !{!65, !65, i64 0}
!65 = !{!"bool", !5, i64 0}
!66 = !{ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511TileOffsets19reconstructFromFileERNS_7IStreamEbb}
!67 = distinct !{!67, !29}
!68 = distinct !{!68, !29}
!69 = distinct !{!69, !29, !70, !71}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !29}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29, !70}
!77 = !{!78, !79, i64 0}
!78 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !79, i64 0}
!79 = !{!"p1 omnipotent char", !15, i64 0}
!80 = !{!81, !79, i64 0}
!81 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !78, i64 0, !33, i64 8, !5, i64 16}
!82 = !{!5, !5, i64 0}
!83 = !{!81, !33, i64 8}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !29}
!86 = distinct !{null, null, null}
!87 = distinct !{!87, !29}
!88 = !{i64 0, i64 8, !32, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29}
!92 = !{!93, !33, i64 0}
!93 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposE", !33, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!94 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!95 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, !29}
!98 = distinct !{!98, !29}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = !{!93, !4, i64 8}
!102 = !{!93, !4, i64 12}
!103 = !{!93, !4, i64 16}
!104 = distinct !{!104, !29}
!105 = !{!106}
!106 = distinct !{!106, !107}
!107 = distinct !{!107, !"LVerDomain"}
!108 = !{!109}
!109 = distinct !{!109, !107}
!110 = !{!111, !106}
!111 = distinct !{!111, !107}
!112 = !{!111}
!113 = distinct !{!113, !29, !70, !71}
!114 = distinct !{!114, !29}
!115 = distinct !{!115, !29, !70}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !29}
!119 = distinct !{!119, !29}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZSt19__relocate_object_aISt6vectorIS0_ImSaImEESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!122 = distinct !{!122, !"_ZSt19__relocate_object_aISt6vectorIS0_ImSaImEESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!123 = !{!124}
!124 = distinct !{!124, !122, !"_ZSt19__relocate_object_aISt6vectorIS0_ImSaImEESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!125 = !{!22, !22, i64 0}
!126 = distinct !{!126, !29}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!129 = distinct !{!129, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_"}
!130 = !{!131}
!131 = distinct !{!131, !129, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!132 = distinct !{!132, !29}
!133 = distinct !{!133, !29}
!134 = distinct !{!134, !29}
!135 = distinct !{!135, !29}
!136 = distinct !{!136, !29}
!137 = distinct !{!137, !29}
!138 = distinct !{!138, !29}
!139 = distinct !{!139, !29}
end_hunk_0
