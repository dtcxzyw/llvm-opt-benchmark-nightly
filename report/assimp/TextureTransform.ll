inline.NumInlined: 493
inline.NumDeleted: 245
begin_hunk_0_@_ZN6Assimp6Logger4infoIJRA512_cEEEvDpOT_:bb.a
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.v = load ptr, ptr %2, align 8                ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.d, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.z, ptr %3, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %3, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #17
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.am) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.g:                                             ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %2, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  br i1 %i.ap, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.r, %bb.d ], [ %i.ao, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.an, %bb.g ]
  %i.aq = load i64, ptr %i.d, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ar) #18
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.an, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %1, ptr %i.a, align 4
  %.sroa.08.012 = load ptr, ptr %0, align 8       ; 2 uses
  %.not1113 = icmp eq ptr %.sroa.08.012, %0
  br i1 %.not1113, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.08.014 = phi ptr [ %.sroa.08.0, %bb.e ], [ %.sroa.08.012, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = load i32, ptr %i.a, align 4              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i32 %i.d, ptr %i.c, align 4
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 36
  %i.j = load i32, ptr %i.i, align 4
  %i.k = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 4) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.08.0 = load ptr, ptr %.sroa.08.014, align 8 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.08.0, %0
  br i1 %.not11, label %._crit_edge, label %.lr.ph, !llvm.loop !16
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp20TextureTransformStep7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.Assimp::STransformVecInfo", align 16 ; 20 uses
  %i.c = alloca [1024 x i8], align 16             ; 5 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 13 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca [8 x ptr], align 16               ; 5 uses
  %i.k = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull @.str.10)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8              ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit, label %_ZNSt12_Vector_baseINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %bb.a
  %i.n = zext i32 %i.m to i64                     ; 5 uses
  %i.o = mul nuw nsw i64 %i.n, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 4 uses
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %_ZNSt12_Vector_baseINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.i ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store ptr %.08.i.i.i.i.i.prol, ptr %i.q, align 8
  store ptr %.08.i.i.i.i.i.prol, ptr %.08.i.i.i.i.i.prol, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16
  store i64 0, ptr %i.r, align 8
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !18

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa860.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.p, %_ZNSt12_Vector_baseINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i32 %i.m, 4
  br i1 %i.u, label %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 15 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store ptr %.08.i.i.i.i.i, ptr %i.v, align 8
  store ptr %.08.i.i.i.i.i, ptr %.08.i.i.i.i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  store ptr %i.x, ptr %i.y, align 8
  store ptr %i.x, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  store ptr %i.aa, ptr %i.ab, align 8
  store ptr %i.aa, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store ptr %i.ad, ptr %i.ae, align 8
  store ptr %i.ad, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.af, align 8
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa860 = phi ptr [ %.lcssa860.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.n
  %i.aj = ptrtoint ptr %i.ai to i64
  br label %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit

_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit: ; preds = %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.loopexit, %bb.a
  %.sroa.20.0 = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.loopexit ] ; 2 uses
  %.sroa.0545.0 = phi ptr [ null, %bb.a ], [ %i.p, %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.loopexit ] ; 14 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %.lcssa860, %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit.loopexit ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %.not679.a = icmp eq i32 %i.al, 0
  br i1 %.not679.a, label %._crit_edge631, label %.lr.ph630

.lr.ph630:                                        ; preds = %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 15 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.b

._crit_edge631.loopexit:                          ; preds = %._crit_edge628
  %.pre723 = load i32, ptr %i.l, align 8
  br label %._crit_edge631

._crit_edge631:                                   ; preds = %._crit_edge631.loopexit, %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit
  %i.ba = phi i32 [ %.pre723, %._crit_edge631.loopexit ], [ %i.m, %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EEC2EmRKS6_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i32 0, ptr %i.f, align 4
  %.not684.a = icmp eq i32 %i.ba, 0
  br i1 %.not684.a, label %._crit_edge677, label %.lr.ph676

.lr.ph676:                                        ; preds = %._crit_edge631
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0545.0) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  br label %bb.aq

bb.b:                                             ; preds = %.lr.ph630, %._crit_edge628
  %i.bj = phi i32 [ %i.al, %.lr.ph630 ], [ %i.bp, %._crit_edge628 ]
  %indvars.iv706 = phi i64 [ 0, %.lr.ph630 ], [ %indvars.iv.next707, %._crit_edge628 ] ; 8 uses
  %i.bk = load ptr, ptr %i.am, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv706
  %i.bm = load ptr, ptr %i.bl, align 8            ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 7 uses
  %i.bo = load i32, ptr %i.bn, align 8
  %.not680.a = icmp eq i32 %i.bo, 0
  br i1 %.not680.a, label %._crit_edge628, label %.lr.ph627

._crit_edge628.loopexit:                          ; preds = %bb.ap
  %.pre = load i32, ptr %i.ak, align 8
  br label %._crit_edge628

._crit_edge628:                                   ; preds = %._crit_edge628.loopexit, %bb.b
  %i.bp = phi i32 [ %.pre, %._crit_edge628.loopexit ], [ %i.bj, %bb.b ] ; 2 uses
  %indvars.iv.next707 = add nuw nsw i64 %indvars.iv706, 1 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next707, %i.bq
  br i1 %i.br, label %bb.b, label %._crit_edge631.loopexit, !llvm.loop !21

.lr.ph627:                                        ; preds = %bb.b, %bb.ap
  %indvars.iv703 = phi i64 [ %indvars.iv.next704, %bb.ap ], [ 0, %bb.b ] ; 2 uses
  %i.bs = load ptr, ptr %i.bm, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv703
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(10) @.str.11) #20
  %.not259 = icmp eq i32 %i.bw, 0
  br i1 %.not259, label %bb.c, label %bb.ap

bb.c:                                             ; preds = %.lr.ph627
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.ar, align 16
  store ptr %i.as, ptr %i.at, align 16
  store ptr %i.as, ptr %i.as, align 8
  store i64 0, ptr %i.au, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1028 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1032 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8            ; 2 uses
  %i.cb = load i32, ptr %i.bn, align 8
  %.not681.a = icmp eq i32 %i.cb, 0
  br i1 %.not681.a, label %._crit_edge608, label %.lr.ph607

._crit_edge608:                                   ; preds = %bb.o, %bb.c
  %.sroa.0532.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.0532.1, %bb.o ] ; 2 uses
  %i.cc = load i32, ptr %i.ay, align 8            ; 3 uses
  %i.cd = and i32 %i.cc, 2
  %.not260 = icmp eq i32 %i.cd, 0
  br i1 %.not260, label %bb.p, label %bb.q

.lr.ph607:                                        ; preds = %bb.c, %bb.o
  %.0206605 = phi i32 [ %i.dr, %bb.o ], [ 0, %bb.c ] ; 9 uses
  %.sroa.0532.0604 = phi ptr [ %.sroa.0532.1, %bb.o ], [ null, %bb.c ] ; 6 uses
  %i.ce = load ptr, ptr %i.bm, align 8
  %i.cf = zext i32 %.0206605 to i64               ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8            ; 8 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1028
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = load i32, ptr %i.bx, align 4
  %.not273 = icmp eq i32 %i.cj, %i.ck
  br i1 %.not273, label %bb.d, label %bb.o

bb.d:                                             ; preds = %.lr.ph607
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 1032
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = load i32, ptr %i.bz, align 8
  %.not274 = icmp eq i32 %i.cm, %i.cn
  br i1 %.not274, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 4 uses
  %i.cp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(12) @.str.9) #20
  %.not275 = icmp eq i32 %i.cp, 0
  br i1 %.not275, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 1048
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4
  store i32 %i.cs, ptr %i.ax, align 4
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.ct = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(14) @.str.12) #20
  %.not276 = icmp eq i32 %i.ct, 0
  br i1 %.not276, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 1048
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = load i32, ptr %i.cv, align 4
  store i32 %i.cw, ptr %i.aw, align 8
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.cx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(14) @.str.13) #20
  %.not277 = icmp eq i32 %i.cx, 0
  br i1 %.not277, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 1048
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = load i32, ptr %i.cz, align 4
  store i32 %i.da, ptr %i.av, align 4
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.db = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(13) @.str.14) #20
  %.not278 = icmp eq i32 %i.db, 0
  br i1 %.not278, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 1048 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %2, ptr noundef nonnull align 1 dereferenceable(20) %i.dd, i64 20, i1 false)
  %i.de = load i32, ptr %i.bn, align 8
  %i.df = add i32 %i.de, -1                       ; 2 uses
  store i32 %i.df, ptr %i.bn, align 8
  %i.dg = icmp ult i32 %.0206605, %i.df
  br i1 %i.dg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.cf, %bb.l ] ; 2 uses
  %i.dh = load ptr, ptr %i.bm, align 8            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.next
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv
  store ptr %i.dj, ptr %i.dk, align 8
  %i.dl = load i32, ptr %i.bn, align 8
  %i.dm = zext i32 %i.dl to i64
  %i.dn = icmp samesign ult i64 %indvars.iv.next, %i.dm
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %i.do = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.do) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 1056) #18
  %i.dq = add i32 %.0206605, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.j, %bb.n, %bb.k, %bb.h, %.lr.ph607, %bb.d
  %.sroa.0532.1 = phi ptr [ %i.cr, %bb.f ], [ %.sroa.0532.0604, %bb.h ], [ %.sroa.0532.0604, %bb.j ], [ %.sroa.0532.0604, %bb.n ], [ %.sroa.0532.0604, %bb.k ], [ %.sroa.0532.0604, %bb.d ], [ %.sroa.0532.0604, %.lr.ph607 ] ; 2 uses
  %.2208 = phi i32 [ %.0206605, %bb.f ], [ %.0206605, %bb.h ], [ %.0206605, %bb.j ], [ %i.dq, %bb.n ], [ %.0206605, %bb.k ], [ %.0206605, %bb.d ], [ %.0206605, %.lr.ph607 ]
  %i.dr = add i32 %.2208, 1                       ; 2 uses
  %i.ds = load i32, ptr %i.bn, align 8
  %i.dt = icmp ult i32 %i.dr, %i.ds
  br i1 %i.dt, label %.lr.ph607, label %._crit_edge608, !llvm.loop !23

bb.p:                                             ; preds = %._crit_edge608
  store float 0.000000e+00, ptr %i.aq, align 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge608
  %i.du = and i32 %i.cc, 1
  %.not261 = icmp eq i32 %i.du, 0
  br i1 %.not261, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 1065353216, ptr %i.ao, align 8
  store i32 1065353216, ptr %i.ap, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dv = and i32 %i.cc, 4
  %.not262 = icmp eq i32 %i.dv, 0
  br i1 %.not262, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %2, align 16
  store i32 0, ptr %i.an, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  invoke void @_ZN6Assimp20TextureTransformStep21PreProcessUVTransformERNS_17STransformVecInfoE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dw = load i32, ptr %i.ax, align 4
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.dw, i32 7)
  store i32 %.sroa.speculated, ptr %i.ax, align 4
  %i.dx = load i32, ptr %i.l, align 8             ; 3 uses
  %.not682 = icmp eq i32 %i.dx, 0
  br i1 %.not682, label %.critedge280, label %.lr.ph612

.lr.ph612:                                        ; preds = %bb.v
  %i.dy = load ptr, ptr %i.az, align 8            ; 5 uses
  %wide.trip.count = zext i32 %i.dx to i64        ; 2 uses
  %xtraiter861 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.dz = icmp ult i32 %i.dx, 4
  br i1 %i.dz, label %.epil.preheader, label %.lr.ph612.new

.lr.ph612.new:                                    ; preds = %.lr.ph612
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.y

._crit_edge613.unr-lcssa:                         ; preds = %bb.y
  %lcmp.mod862.not = icmp eq i64 %xtraiter861, 0
  br i1 %lcmp.mod862.not, label %._crit_edge613, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge613.unr-lcssa, %.lr.ph612
  %indvars.iv697.epil.init = phi i64 [ 0, %.lr.ph612 ], [ %indvars.iv.next698.3, %._crit_edge613.unr-lcssa ]
  %.0210610.epil.init = phi i32 [ 0, %.lr.ph612 ], [ %spec.select.3, %._crit_edge613.unr-lcssa ]
  %lcmp.mod864 = icmp ne i64 %xtraiter861, 0
  call void @llvm.assume(i1 %lcmp.mod864)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader
  %indvars.iv697.epil = phi i64 [ %indvars.iv697.epil.init, %.epil.preheader ], [ %indvars.iv.next698.epil, %bb.w ] ; 2 uses
  %.0210610.epil = phi i32 [ %.0210610.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.w ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.w ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv697.epil
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 232
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = zext i32 %i.ed to i64
  %i.ef = icmp eq i64 %indvars.iv706, %i.ee
  %i.eg = zext i1 %i.ef to i32
  %spec.select.epil = add i32 %.0210610.epil, %i.eg ; 2 uses
  %indvars.iv.next698.epil = add nuw nsw i64 %indvars.iv697.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter861
  br i1 %epil.iter.cmp.not, label %._crit_edge613, label %bb.w, !llvm.loop !24

._crit_edge613:                                   ; preds = %bb.w, %._crit_edge613.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.3, %._crit_edge613.unr-lcssa ], [ %spec.select.epil, %bb.w ]
  switch i32 %spec.select.lcssa, label %bb.z [
    i32 0, label %.critedge280
    i32 1, label %.lr.ph623.preheader
  ]

bb.x:                                             ; preds = %bb.u
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.y, %.lr.ph612.new
  %indvars.iv697 = phi i64 [ 0, %.lr.ph612.new ], [ %indvars.iv.next698.3, %bb.y ] ; 5 uses
  %.0210610 = phi i32 [ 0, %.lr.ph612.new ], [ %spec.select.3, %bb.y ]
  %niter = phi i64 [ 0, %.lr.ph612.new ], [ %niter.next.3, %bb.y ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv697
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 232
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = zext i32 %i.el to i64
  %i.en = icmp eq i64 %indvars.iv706, %i.em
  %i.eo = zext i1 %i.en to i32
  %spec.select = add i32 %.0210610, %i.eo
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv697
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 232
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp eq i64 %indvars.iv706, %i.eu
  %i.ew = zext i1 %i.ev to i32
  %spec.select.1 = add i32 %spec.select, %i.ew
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv697
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 232
  %i.fb = load i32, ptr %i.fa, align 8
  %i.fc = zext i32 %i.fb to i64
  %i.fd = icmp eq i64 %indvars.iv706, %i.fc
  %i.fe = zext i1 %i.fd to i32
  %spec.select.2 = add i32 %spec.select.1, %i.fe
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv697
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 232
  %i.fj = load i32, ptr %i.fi, align 8
  %i.fk = zext i32 %i.fj to i64
  %i.fl = icmp eq i64 %indvars.iv706, %i.fk
  %i.fm = zext i1 %i.fl to i32
  %spec.select.3 = add i32 %spec.select.2, %i.fm  ; 3 uses
  %indvars.iv.next698.3 = add nuw nsw i64 %indvars.iv697, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge613.unr-lcssa, label %bb.y, !llvm.loop !25

bb.z:                                             ; preds = %._crit_edge613
  store i32 -1, ptr %i.ar, align 16
  br label %.lr.ph623.preheader

.lr.ph623.preheader:                              ; preds = %bb.z, %._crit_edge613
  br label %.lr.ph623

.lr.ph623:                                        ; preds = %.lr.ph623.preheader, %bb.ao
  %indvars.iv700 = phi i64 [ %indvars.iv.next701, %bb.ao ], [ 0, %.lr.ph623.preheader ] ; 3 uses
  %i.fn = load ptr, ptr %i.az, align 8
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv700
  %i.fp = load ptr, ptr %i.fo, align 8            ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 232
  %i.fr = load i32, ptr %i.fq, align 8
  %i.fs = zext i32 %i.fr to i64
  %.not265 = icmp eq i64 %indvars.iv706, %i.fs
  br i1 %.not265, label %bb.aa, label %bb.ao

bb.aa:                                            ; preds = %.lr.ph623
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 112 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8
  %.not266 = icmp eq ptr %i.fu, null
  br i1 %.not266, label %bb.ao, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fv = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8
  %.not267 = icmp eq ptr %i.fy, null
  %spec.store.select = select i1 %.not267, i32 0, i32 %i.fv ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 176
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fw
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = icmp ugt i32 %i.gb, 2
  br i1 %i.gc, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.gd = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.gd, ptr noundef nonnull @.str.15)
          to label %bb.ao unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %bb.ab
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0545.0, i64 %indvars.iv700 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0545.0) ]
  %.sroa.0520.0615 = load ptr, ptr %i.gf, align 8 ; 2 uses
  %.not567616 = icmp eq ptr %.sroa.0520.0615, %i.gf
  br i1 %.not567616, label %.loopexit585.thread, label %.lr.ph619

.lr.ph619:                                        ; preds = %bb.af
  %i.gg = load float, ptr %2, align 16
  %i.gh = load float, ptr %i.an, align 4
  %i.gi = load float, ptr %i.ao, align 8
  %i.gj = load float, ptr %i.ap, align 4
  %i.gk = load float, ptr %i.aq, align 16
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph619, %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread
  %.sroa.0520.0617 = phi ptr [ %.sroa.0520.0615, %.lr.ph619 ], [ %.sroa.0520.0, %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread ] ; 10 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 16
  %i.gm = load float, ptr %i.gl, align 8
  %i.gn = fsub float %i.gm, %i.gg
  %i.go = call noundef float @llvm.fabs.f32(float %i.gn)
  %i.gp = fcmp ogt float %i.go, 5.000000e-02
  br i1 %i.gp, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 20
  %i.gr = load float, ptr %i.gq, align 4
  %i.gs = fsub float %i.gr, %i.gh
  %i.gt = call noundef float @llvm.fabs.f32(float %i.gs)
  %i.gu = fcmp ogt float %i.gt, 5.000000e-02
  br i1 %i.gu, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 24
  %i.gw = load float, ptr %i.gv, align 8
  %i.gx = fsub float %i.gw, %i.gi
  %i.gy = call noundef float @llvm.fabs.f32(float %i.gx)
  %i.gz = fcmp ogt float %i.gy, 5.000000e-02
  br i1 %i.gz, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 28
  %i.hb = load float, ptr %i.ha, align 4
  %i.hc = fsub float %i.hb, %i.gj
  %i.hd = call noundef float @llvm.fabs.f32(float %i.hc)
  %i.he = fcmp ogt float %i.hd, 5.000000e-02
  br i1 %i.he, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit

_ZNK6Assimp17STransformVecInfoeqERKS0_.exit:      ; preds = %bb.aj
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 32
  %i.hg = load float, ptr %i.hf, align 8
  %i.hh = fsub float %i.hg, %i.gk
  %i.hi = call noundef float @llvm.fabs.f32(float %i.hh)
  %i.hj = fcmp ule float %i.hi, 5.000000e-02
  br i1 %i.hj, label %bb.ak, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread

bb.ak:                                            ; preds = %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 36
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = icmp eq i32 %i.hl, %spec.store.select
  br i1 %i.hm, label %bb.al, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.hn = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %.loopexit585 unwind label %bb.am ; 5 uses

bb.am:                                            ; preds = %.loopexit585.thread, %.loopexit584, %bb.al
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread: ; preds = %bb.aj, %bb.ah, %bb.ag, %bb.ai, %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit, %bb.ak
  %.sroa.0520.0 = load ptr, ptr %.sroa.0520.0617, align 8 ; 2 uses
  %.not567 = icmp eq ptr %.sroa.0520.0, %i.gf
  br i1 %.not567, label %.loopexit585.thread, label %bb.ag, !llvm.loop !26

.loopexit585:                                     ; preds = %bb.al
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 56
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store ptr %.sroa.0532.0.lcssa, ptr %i.hq, align 8
  %.sroa.8534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store ptr %i.bm, ptr %.sroa.8534.0..sroa_idx, align 8
  %.sroa.9537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  store i32 %i.by, ptr %.sroa.9537.0..sroa_idx, align 8
  %.sroa.10540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 36
  store i32 %i.ca, ptr %.sroa.10540.0..sroa_idx, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.hn, ptr noundef nonnull align 8 dereferenceable(24) %i.hp) #17
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 72 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.hr, align 8
  %i.hu = icmp eq ptr %.sroa.0520.0617, %i.gf
  br i1 %i.hu, label %.loopexit585.thread, label %bb.ao

.loopexit585.thread:                              ; preds = %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread, %bb.af, %.loopexit585
  %i.hv = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %.noexc375 unwind label %bb.am ; 7 uses

.noexc375:                                        ; preds = %.loopexit585.thread
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hw, ptr noundef nonnull align 16 dereferenceable(64) %2, i64 20, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hx, ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 56 ; 7 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  store ptr %i.hy, ptr %i.hz, align 8
  store ptr %i.hy, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 72 ; 3 uses
  store i64 0, ptr %i.ia, align 8
  %i.ib = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ib, %i.as
  br i1 %.not4.i.i.i.i, label %.loopexit584, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc375, %.noexc.i.i.i
  %.sroa.01.05.i.i.i.i = phi ptr [ %i.ih, %.noexc.i.i.i ], [ %i.ib, %.noexc375 ] ; 2 uses
  %i.ic = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %.noexc.i.i.i unwind label %bb.an ; 2 uses

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i.i, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, ptr noundef nonnull align 8 dereferenceable(24) %i.id, i64 24, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(24) %i.hy) #17
  %i.if = load i64, ptr %i.ia, align 8
  %i.ig = add i64 %i.if, 1
  store i64 %i.ig, ptr %i.ia, align 8
  %i.ih = load ptr, ptr %.sroa.01.05.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i374 = icmp eq ptr %i.ih, %i.as
  br i1 %.not.i.i.i.i374, label %.loopexit584, label %.lr.ph.i.i.i.i, !llvm.loop !27

bb.an:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  %i.ij = load ptr, ptr %i.hy, align 8            ; 2 uses
  %.not8.i.i.i.i.i370 = icmp eq ptr %i.ij, %i.hy
  br i1 %.not8.i.i.i.i.i370, label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i, label %.lr.ph.i.i.i.i.i371

.lr.ph.i.i.i.i.i371:                              ; preds = %bb.an, %.lr.ph.i.i.i.i.i371
  %.09.i.i.i.i.i372 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i371 ], [ %i.ij, %bb.an ] ; 2 uses
  %i.ik = load ptr, ptr %.09.i.i.i.i.i372, align 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i372, i64 noundef 40) #18
  %.not.i.i.i.i.i373 = icmp eq ptr %i.ik, %i.hy
  br i1 %.not.i.i.i.i.i373, label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i, label %.lr.ph.i.i.i.i.i371, !llvm.loop !28

_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i: ; preds = %.lr.ph.i.i.i.i.i371, %bb.an
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef 80) #18
  br label %.body

.loopexit584:                                     ; preds = %.noexc.i.i.i, %.noexc375
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %i.gf) #17
  %i.il = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.il, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 36
  store i32 %spec.store.select, ptr %i.iq, align 4
  %i.ir = load ptr, ptr %i.io, align 8            ; 2 uses
  %i.is = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %_ZNSt7__cxx114listIN6Assimp12TTUpdateInfoESaIS2_EE9push_backERKS2_.exit286 unwind label %bb.am ; 5 uses

_ZNSt7__cxx114listIN6Assimp12TTUpdateInfoESaIS2_EE9push_backERKS2_.exit286: ; preds = %.loopexit584
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store ptr %.sroa.0532.0.lcssa, ptr %i.iu, align 8
  %.sroa.8534.0..sroa_idx535 = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  store ptr %i.bm, ptr %.sroa.8534.0..sroa_idx535, align 8
  %.sroa.9537.0..sroa_idx538 = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  store i32 %i.by, ptr %.sroa.9537.0..sroa_idx538, align 8
  %.sroa.10540.0..sroa_idx541 = getelementptr inbounds nuw i8, ptr %i.is, i64 36
  store i32 %i.ca, ptr %.sroa.10540.0..sroa_idx541, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %i.it) #17
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 72 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = add i64 %i.iw, 1
  store i64 %i.ix, ptr %i.iv, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit585, %_ZNSt7__cxx114listIN6Assimp12TTUpdateInfoESaIS2_EE9push_backERKS2_.exit286, %bb.ad, %.lr.ph623, %bb.aa
  %indvars.iv.next701 = add nuw nsw i64 %indvars.iv700, 1 ; 2 uses
  %i.iy = load i32, ptr %i.l, align 8
  %i.iz = zext i32 %i.iy to i64
  %i.ja = icmp samesign ult i64 %indvars.iv.next701, %i.iz
  br i1 %i.ja, label %.lr.ph623, label %._crit_edge624, !llvm.loop !29

._crit_edge624:                                   ; preds = %bb.ao
  %i.jb = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.jb, %i.as
  br i1 %.not8.i.i.i, label %.sink.split, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge624, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i.i ], [ %i.jb, %._crit_edge624 ] ; 2 uses
  %i.jc = load ptr, ptr %.09.i.i.i, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 40) #18
  %.not.i.i.i = icmp eq ptr %i.jc, %i.as
  br i1 %.not.i.i.i, label %.sink.split, label %.lr.ph.i.i.i, !llvm.loop !28

.body:                                            ; preds = %bb.am, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i, %bb.ae, %bb.x
  %.pn268.pn = phi { ptr, i32 } [ %i.eh, %bb.x ], [ %i.ge, %bb.ae ], [ %i.ho, %bb.am ], [ %i.ii, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i ]
  %i.jd = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not8.i.i.i287 = icmp eq ptr %i.jd, %i.as
  br i1 %.not8.i.i.i287, label %_ZN6Assimp17STransformVecInfoD2Ev.exit291, label %.lr.ph.i.i.i288
end_hunk_0
