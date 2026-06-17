inline.NumInlined: 426
inline.NumDeleted: 235
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector8toStringB5cxx11Ei:bb.a
  %i.eu = sext i32 %i.eq to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !16
  %i.ex = and i64 %i.ew, %i.et                    ; 2 uses
  %.not.i54.i.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i54.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %.preheader.i55.i.i.i.i

.preheader.i55.i.i.i.i:                           ; preds = %bb.af, %bb.ah
  %.6 = phi i32 [ %i.fe, %bb.ah ], [ %.5, %bb.af ] ; 2 uses
  %.013.i58.i.i.i.i = phi i64 [ %i.fh, %bb.ah ], [ %i.ex, %bb.af ] ; 3 uses
  %i.ey = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.013.i58.i.i.i.i, i1 true)
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = or disjoint i32 %i.br, %i.ez
  %i.fb = icmp sgt i32 %.6, 0
  br i1 %i.fb, label %bb.ag, label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i59.i.i.i.i"

bb.ag:                                            ; preds = %.preheader.i55.i.i.i.i
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i59.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i59.i.i.i.i": ; preds = %bb.ag, %.preheader.i55.i.i.i.i
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.fa)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc21:                                         ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i59.i.i.i.i"
  %i.fe = add nsw i32 %.6, 1                      ; 2 uses
  %i.ff = icmp slt i32 %i.fe, %2
  br i1 %i.ff, label %bb.ah, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"

bb.ah:                                            ; preds = %.noexc21
  %i.fg = add nsw i64 %.013.i58.i.i.i.i, -1
  %i.fh = and i64 %i.fg, %.013.i58.i.i.i.i        ; 2 uses
  %.not12.i61.i.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not12.i61.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %.preheader.i55.i.i.i.i, !llvm.loop !48

bb.ai:                                            ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.loopexit:                               ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i", %.lr.ph.i.peel.next
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.loopexit.split-lp:                      ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.peel"
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.loopexit:             ; preds = %.preheader.i.i.i.i.i.peel.next, %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.i.i.i.i"
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.loopexit.split-lp:    ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.i.i.i.i.peel"
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.ag, %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i59.i.i.i.i"
  %lpad.loopexit49 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i52.i.i.i.i", %bb.ad
  %lpad.loopexit52 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.peel.next, %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i45.i.i.i.i"
  %lpad.loopexit66 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i45.i.i.i.i.peel"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit": ; preds = %.noexc17, %.noexc19, %.noexc21, %bb.ah, %.noexc15, %bb.x, %bb.s, %.noexc13, %.noexc17.peel, %.noexc15.peel, %bb.w, %.noexc13.peel, %bb.r, %bb.q, %bb.t, %bb.v, %.critedge.i.i.i7.i, %bb.af, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.fj, ptr %0, align 8, !tbaa !55, !alias.scope !56
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fk, align 8, !tbaa !57, !alias.scope !56
  store i8 0, ptr %i.fj, align 8, !tbaa !32, !alias.scope !56
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !58, !noalias !56 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fm, null
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !56 ; 2 uses
  %i.fp = icmp ugt ptr %i.fm, %i.fo
  %.08.i.i.i = select i1 %i.fp, ptr %i.fm, ptr %i.fo ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !62, !noalias !56 ; 2 uses
  %i.fs = ptrtoint ptr %.08.i.i.i to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.fr, i64 noundef %i.fu)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !56 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.fj
  br i1 %i.fy, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ak
  %i.fz = load i64, ptr %i.fj, align 8, !tbaa !32, !alias.scope !56
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #18
  br label %.body

bb.al:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gb)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ak

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.al, %bb.aj
  %i.gc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gc, ptr %5, align 8, !tbaa !63
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ge = getelementptr i8, ptr %i.gc, i64 -24
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds i8, ptr %5, i64 %i.gf
  store ptr %i.gd, ptr %i.gg, align 8, !tbaa !63
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.gh, ptr %i.j, align 8, !tbaa !63
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gi, align 8, !tbaa !63
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !33 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !32
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #18
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gi, align 8, !tbaa !63
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gp) #17
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.gq, ptr %5, align 8, !tbaa !63
  %i.gr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gs = getelementptr i8, ptr %i.gq, i64 -24
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds i8, ptr %5, i64 %i.gt
  store ptr %i.gr, ptr %i.gu, align 8, !tbaa !63
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.gv, align 8, !tbaa !65
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gw) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

.body:                                            ; preds = %bb.ak, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.ai
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fi, %bb.ai ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp77, %.loopexit.loopexit.split-lp ], [ %lpad.loopexit49, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit52, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit76, %.loopexit.loopexit ], [ %lpad.loopexit70, %.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.fw, %bb.ak ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.am

bb.am:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK8facebook5velox17SelectivityVector13countSelectedEv(ptr noundef nonnull align 8 dereferenceable(38) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13, !range !37, !noundef !38
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr %i.a, align 4, !range !37
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !27   ; 7 uses
  %.not.i.i = icmp slt i32 %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.k, 63                         ; 2 uses
  %i.o = srem i32 %i.n, 64
  %i.p = sub nsw i32 %i.n, %i.o                   ; 6 uses
  %i.q = and i32 %i.m, -64                        ; 4 uses
  %i.r = icmp slt i32 %i.q, %i.p
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = ashr i32 %i.m, 6
  %i.t = and i32 %i.m, 63
  %i.u = zext nneg i32 %i.t to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.u
  %i.v = xor i64 %notmask.i.i.i, -1
  %i.w = sub nsw i32 %i.p, %i.k                   ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.x
  %i.y = xor i64 %notmask.i.i.i.i, -1
  %i.z = sub nsw i32 64, %i.w
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl i64 %i.y, %i.aa
  %i.ac = and i64 %i.ab, %i.v
  %i.ad = sext i32 %i.s to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = and i64 %i.ac, %i.af
  br label %.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %.not32.i.i = icmp eq i32 %i.k, %i.p
  br i1 %.not32.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = sdiv i32 %i.k, 64
  %i.ai = sub nsw i32 %i.p, %i.k                  ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35.i.i = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35.i.i, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = sext i32 %i.ah to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.ar = and i64 %i.aq, %i.an
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ar)
  %i.at = trunc nuw nsw i64 %i.as to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ 0, %bb.f ], [ %i.at, %bb.g ]  ; 2 uses
  %i.au = add nsw i32 %i.p, 64                    ; 2 uses
  %.not3342.i.i = icmp sgt i32 %i.au, %i.q
  br i1 %.not3342.i.i, label %vec.epilog.vector.body, label %.lr.ph.i.i

vec.epilog.vector.body:                           ; preds = %.lr.ph.i.i, %bb.h
  %index18 = phi i32 [ %.0.i, %bb.h ], [ %i.be, %.lr.ph.i.i ] ; 2 uses
  %i.av = icmp eq i32 %i.m, %i.q
  br i1 %i.av, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit, label %bb.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.aw = phi i32 [ %i.be, %.lr.ph.i.i ], [ %.0.i, %bb.h ]
  %i.ax = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %i.au, %bb.h ] ; 2 uses
  %.043.i.i = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %i.p, %bb.h ]
  %i.ay = sdiv i32 %.043.i.i, 64
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !16
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bb)
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = add nsw i32 %i.aw, %i.bd                ; 2 uses
  %i.bf = add nsw i32 %i.ax, 64                   ; 2 uses
  %.not33.i.i = icmp sgt i32 %i.bf, %i.q
  br i1 %.not33.i.i, label %vec.epilog.vector.body, label %.lr.ph.i.i, !llvm.loop !67

bb.i:                                             ; preds = %vec.epilog.vector.body
  %i.bg = ashr i32 %i.m, 6
  %i.bh = and i32 %i.m, 63
  %i.bi = zext nneg i32 %i.bh to i64
  %notmask.i36.i.i = shl nsw i64 -1, %i.bi
  %i.bj = xor i64 %notmask.i36.i.i, -1
  %i.bk = sext i32 %i.bg to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.bn = and i64 %i.bm, %i.bj
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %bb.e
  %.2.i = phi i32 [ 0, %bb.e ], [ %index18, %bb.i ]
  %.sink50.i.i = phi i64 [ %i.ag, %bb.e ], [ %i.bn, %bb.i ]
  %i.bo = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %.sink50.i.i)
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = add nsw i32 %.2.i, %i.bp
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

_ZN8facebook5velox4bits9countBitsEPKmii.exit:     ; preds = %bb.c, %vec.epilog.vector.body, %.sink.split.i.i
  %.3.i = phi i32 [ %i.bq, %.sink.split.i.i ], [ %index18, %vec.epilog.vector.body ], [ 0, %bb.c ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !18
  %i.bt = icmp eq i32 %.3.i, %i.bs
  %.sroa.0.0.insert.ext = zext i1 %i.bt to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, 256
  store i16 %.sroa.0.0.insert.insert, ptr %i.a, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox4bits9countBitsEPKmii.exit, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %.3.i, %_ZN8facebook5velox4bits9countBitsEPKmii.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox17SelectivityVector9copyNullsEPmPKm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(38) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13, !range !37, !noundef !38
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !39, !range !37
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i26.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i26.not, label %.critedge.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i27, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !40

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i27, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !16
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !40

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !18
  %i.af = sext i32 %i.ae to i64
  tail call void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %2, i64 noundef 0, ptr noundef %1, i64 noundef 0, i64 noundef %i.af)
  br label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit"

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !8     ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27 ; 7 uses
  %.not.i = icmp slt i32 %i.ai, %i.ak
  br i1 %.not.i, label %bb.j, label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit"

bb.j:                                             ; preds = %bb.i
  %i.al = add i32 %i.ai, 63                       ; 2 uses
  %i.am = srem i32 %i.al, 64
  %i.an = sub nsw i32 %i.al, %i.am                ; 6 uses
  %i.ao = and i32 %i.ak, -64                      ; 4 uses
  %i.ap = icmp slt i32 %i.ao, %i.an
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = ashr i32 %i.ak, 6
  %i.ar = and i32 %i.ak, 63
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i, -1
  %i.au = sub nsw i32 %i.an, %i.ai                ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.av
  %i.aw = xor i64 %notmask.i.i.i, -1
  %i.ax = sub nsw i32 64, %i.au
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl i64 %i.aw, %i.ay
  %i.ba = and i64 %i.az, %i.at                    ; 3 uses
  %i.bb = sext i32 %i.aq to i64                   ; 3 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bb ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !16 ; 2 uses
  %i.be = xor i64 %i.ba, -1                       ; 2 uses
  %i.bf = and i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bb ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bi = xor i64 %i.bh, -1
  %i.bj = and i64 %i.bd, %i.bi                    ; 2 uses
  %i.bk = and i64 %i.bj, %i.ba
  %i.bl = or disjoint i64 %i.bk, %i.bf
  store i64 %i.bl, ptr %i.bc, align 8, !tbaa !16
  %i.bm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bb
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.bo = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bp = or i64 %i.bo, %i.be
  %i.bq = and i64 %i.bp, %i.bn
  %i.br = or i64 %i.bq, %i.bj
  %i.bs = and i64 %i.br, %i.ba
  %i.bt = or disjoint i64 %i.bs, %i.bf
  store i64 %i.bt, ptr %i.bc, align 8, !tbaa !16
  br label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit"

bb.l:                                             ; preds = %bb.j
  %.not32.i = icmp eq i32 %i.ai, %i.an
  br i1 %.not32.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = sdiv i32 %i.ai, 64
  %i.bv = sub nsw i32 %i.an, %i.ai                ; 2 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.bw
  %i.bx = xor i64 %notmask.i.i35.i, -1
  %i.by = sub nsw i32 64, %i.bv
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl i64 %i.bx, %i.bz                    ; 3 uses
  %i.cb = sext i32 %i.bu to i64                   ; 3 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cb ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !16 ; 2 uses
  %i.ce = xor i64 %i.ca, -1                       ; 2 uses
  %i.cf = and i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cb ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.ci = xor i64 %i.ch, -1
  %i.cj = and i64 %i.cd, %i.ci                    ; 2 uses
  %i.ck = and i64 %i.cj, %i.ca
  %i.cl = or disjoint i64 %i.ck, %i.cf
  store i64 %i.cl, ptr %i.cc, align 8, !tbaa !16
  %i.cm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cb
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !16
  %i.co = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.cp = or i64 %i.co, %i.ce
  %i.cq = and i64 %i.cp, %i.cn
  %i.cr = or i64 %i.cq, %i.cj
  %i.cs = and i64 %i.cr, %i.ca
  %i.ct = or disjoint i64 %i.cs, %i.cf
  store i64 %i.ct, ptr %i.cc, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cu = add nsw i32 %i.an, 64                   ; 2 uses
  %.not3337.i = icmp sgt i32 %i.cu, %i.ao
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.not34.i = icmp eq i32 %i.ak, %i.ao
  br i1 %.not34.i, label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit", label %bb.o

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.cv = phi i32 [ %i.dj, %.lr.ph.i ], [ %i.cu, %bb.n ] ; 2 uses
  %.038.i = phi i32 [ %i.cv, %.lr.ph.i ], [ %i.an, %bb.n ]
  %i.cw = sdiv i32 %.038.i, 64
  %i.cx = sext i32 %i.cw to i64                   ; 3 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cx ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cx ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !16
  %i.dc = xor i64 %i.db, -1
  %i.dd = and i64 %i.cz, %i.dc                    ; 2 uses
  store i64 %i.dd, ptr %i.cy, align 8, !tbaa !16
  %i.de = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cx
  %i.df = load i64, ptr %i.de, align 8, !tbaa !16
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !16
  %i.dh = and i64 %i.dg, %i.df
  %i.di = or i64 %i.dh, %i.dd
  store i64 %i.di, ptr %i.cy, align 8, !tbaa !16
  %i.dj = add nsw i32 %i.cv, 64                   ; 2 uses
  %.not33.i = icmp sgt i32 %i.dj, %i.ao
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !68

bb.o:                                             ; preds = %._crit_edge.i
  %i.dk = ashr i32 %i.ak, 6
  %i.dl = and i32 %i.ak, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i36.i = shl nsw i64 -1, %i.dm          ; 3 uses
  %i.dn = xor i64 %notmask.i36.i, -1              ; 2 uses
  %i.do = sext i32 %i.dk to i64                   ; 3 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.do ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !16 ; 2 uses
  %i.dr = and i64 %i.dq, %notmask.i36.i           ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.do ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !16
  %i.du = xor i64 %i.dt, -1
  %i.dv = and i64 %i.dq, %i.du                    ; 2 uses
  %i.dw = and i64 %i.dv, %i.dn
  %i.dx = or disjoint i64 %i.dw, %i.dr
  store i64 %i.dx, ptr %i.dp, align 8, !tbaa !16
  %i.dy = getelementptr inbounds [8 x i8], ptr %2, i64 %i.do
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !16
  %i.ea = load i64, ptr %i.ds, align 8, !tbaa !16
  %i.eb = or i64 %i.ea, %notmask.i36.i
  %i.ec = and i64 %i.eb, %i.dz
  %i.ed = or i64 %i.ec, %i.dv
  %i.ee = and i64 %i.ed, %i.dn
  %i.ef = or disjoint i64 %i.ee, %i.dr
  store i64 %i.ef, ptr %i.dp, align 8, !tbaa !16
  br label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit"

"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit": ; preds = %bb.o, %._crit_edge.i, %bb.k, %bb.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #7 comdat {
bb.a:
  %.not64 = icmp ult i64 %4, 64
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = and i64 %1, 7                            ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.d = and i64 %3, 7                            ; 6 uses
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1                         ; 2 uses
  %.not61 = icmp eq i64 %i.d, 0
  %i.g = trunc nuw nsw i64 %i.d to i32
  %notmask23.i = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask23.i, 255
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = xor i64 %i.i, -1                         ; 2 uses
  %i.k = sub nuw nsw i64 64, %i.d                 ; 2 uses
  br i1 %.not61, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not.i, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us: ; preds = %.lr.ph.split.us, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us
  %i.l = phi i64 [ %i.v, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us ], [ 64, %.lr.ph.split.us ] ; 3 uses
  %.065.us.us = phi i64 [ %i.l, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.m = add i64 %.065.us.us, %1
  %i.n = lshr exact i64 %i.m, 3
  %i.o = add i64 %i.n, %i.a
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = add i64 %.065.us.us, %3
  %i.s = lshr exact i64 %i.r, 3
  %i.t = add i64 %i.s, %i.c
  %i.u = inttoptr i64 %i.t to ptr
  store i64 %i.q, ptr %i.u, align 8, !tbaa !16
  %i.v = add i64 %i.l, 64                         ; 2 uses
  %.not.us.us = icmp ugt i64 %i.v, %4
  br i1 %.not.us.us, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us, !llvm.loop !69

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us: ; preds = %.lr.ph.split.us, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us
  %i.w = phi i64 [ %i.ak, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us ], [ 64, %.lr.ph.split.us ] ; 3 uses
  %.065.us = phi i64 [ %i.w, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.x = add i64 %.065.us, %1
  %i.y = lshr i64 %i.x, 3
  %i.z = add i64 %i.y, %i.a
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !32
  %i.ae = zext i8 %i.ad to i64
  %i.af = tail call i64 @llvm.fshr.i64(i64 %i.ae, i64 %i.ab, i64 %i.b)
  %i.ag = add i64 %.065.us, %3
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = add i64 %i.ah, %i.c
  %i.aj = inttoptr i64 %i.ai to ptr
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !16
  %i.ak = add i64 %i.w, 64                        ; 2 uses
  %.not.us = icmp ugt i64 %i.ak, %4
  br i1 %.not.us, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us, !llvm.loop !69

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67: ; preds = %.lr.ph.split, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67
  %i.al = phi i64 [ %i.bh, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67 ], [ 64, %.lr.ph.split ] ; 3 uses
  %.065.us66 = phi i64 [ %i.al, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67 ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.am = add i64 %.065.us66, %1
  %i.an = lshr exact i64 %i.am, 3
  %i.ao = add i64 %i.an, %i.a
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16 ; 2 uses
  %i.ar = add i64 %.065.us66, %3
  %i.as = lshr i64 %i.ar, 3
  %i.at = add i64 %i.as, %i.c
  %i.au = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %i.aw = and i64 %i.av, %i.f
  %i.ax = shl i64 %i.aq, %i.d
  %i.ay = or i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.au, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !32
  %i.bb = zext i8 %i.ba to i64
  %i.bc = and i64 %i.bb, %i.j
  %i.bd = lshr i64 %i.aq, %i.k
  %i.be = and i64 %i.bd, %i.i
  %i.bf = or disjoint i64 %i.bc, %i.be
  %i.bg = trunc nuw i64 %i.bf to i8
  store i8 %i.bg, ptr %i.az, align 8, !tbaa !32
  %i.bh = add i64 %i.al, 64                       ; 2 uses
  %.not.us69 = icmp ugt i64 %i.bh, %4
  br i1 %.not.us69, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67, !llvm.loop !69

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit: ; preds = %.lr.ph.split, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit
  %i.bi = phi i64 [ %i.ci, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit ], [ 64, %.lr.ph.split ] ; 3 uses
  %.065 = phi i64 [ %i.bi, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.bj = add i64 %.065, %1
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add i64 %i.bk, %i.a
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !32
  %i.bq = zext i8 %i.bp to i64
  %i.br = tail call i64 @llvm.fshr.i64(i64 %i.bq, i64 %i.bn, i64 %i.b) ; 2 uses
  %i.bs = add i64 %.065, %3
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add i64 %i.bt, %i.c
  %i.bv = inttoptr i64 %i.bu to ptr               ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !16
  %i.bx = and i64 %i.bw, %i.f
  %i.by = shl i64 %i.br, %i.d
  %i.bz = or i64 %i.bx, %i.by
  store i64 %i.bz, ptr %i.bv, align 8, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !32
  %i.cc = zext i8 %i.cb to i64
  %i.cd = and i64 %i.cc, %i.j
  %i.ce = lshr i64 %i.br, %i.k
  %i.cf = and i64 %i.ce, %i.i
  %i.cg = or disjoint i64 %i.cd, %i.cf
  %i.ch = trunc nuw i64 %i.cg to i8
  store i8 %i.ch, ptr %i.ca, align 8, !tbaa !32
  %i.ci = add i64 %i.bi, 64                       ; 2 uses
  %.not = icmp ugt i64 %i.ci, %4
  br i1 %.not, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit, !llvm.loop !69

._crit_edge:                                      ; preds = %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.al, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67 ], [ %i.w, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us ], [ %i.l, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us ], [ %i.bi, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit ] ; 4 uses
  %i.cj = or disjoint i64 %.0.lcssa, 32           ; 3 uses
  %.not47 = icmp ugt i64 %i.cj, %4
  br i1 %.not47, label %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ck = add i64 %.0.lcssa, %1
  %i.cl = ptrtoint ptr %0 to i64
  %i.cm = lshr i64 %i.ck, 3
  %i.cn = add i64 %i.cm, %i.cl
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 2 uses
  %i.cq = and i64 %1, 7                           ; 2 uses
  %.not.i49 = icmp eq i64 %i.cq, 0
  br i1 %.not.i49, label %_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !32
  %i.ct = zext i8 %i.cs to i32
  %i.cu = trunc nuw nsw i64 %i.cq to i32
  %i.cv = tail call i32 @llvm.fshr.i32(i32 %i.ct, i32 %i.cp, i32 %i.cu)
  br label %_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit

_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit: ; preds = %bb.b, %bb.c
  %.0.i50 = phi i32 [ %i.cp, %bb.b ], [ %i.cv, %bb.c ]
  %i.cw = add i64 %.0.lcssa, %3
  %i.cx = zext i32 %.0.i50 to i64                 ; 2 uses
  %i.cy = ptrtoint ptr %2 to i64
  %i.cz = lshr i64 %i.cw, 3
  %i.da = add i64 %i.cz, %i.cy
  %i.db = inttoptr i64 %i.da to ptr               ; 3 uses
  %i.dc = and i64 %3, 7                           ; 5 uses
  %i.dd = shl nuw nsw i64 4294967295, %i.dc
  %i.de = load i32, ptr %i.db, align 4, !tbaa !3
  %i.df = zext i32 %i.de to i64
  %i.dg = xor i64 %i.dd, -1
  %i.dh = and i64 %i.df, %i.dg
  %i.di = shl nuw nsw i64 %i.cx, %i.dc
  %i.dj = or i64 %i.dh, %i.di
  %i.dk = trunc i64 %i.dj to i32
  store i32 %i.dk, ptr %i.db, align 4, !tbaa !3
  %.not62 = icmp eq i64 %i.dc, 0
  br i1 %.not62, label %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.dm = trunc nuw nsw i64 %i.dc to i32
  %notmask23.i51 = shl nsw i32 -1, %i.dm
  %i.dn = load i8, ptr %i.dl, align 4, !tbaa !32
  %i.do = zext i8 %i.dn to i64
  %i.dp = xor i32 %notmask23.i51, 255
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = xor i64 %i.dq, -1
  %i.ds = and i64 %i.do, %i.dr
  %i.dt = sub nuw nsw i64 32, %i.dc
  %i.du = lshr i64 %i.cx, %i.dt
  %i.dv = and i64 %i.du, %i.dq
  %i.dw = or disjoint i64 %i.ds, %i.dv
  %i.dx = trunc nuw i64 %i.dw to i8
  store i8 %i.dx, ptr %i.dl, align 4, !tbaa !32
  br label %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit

_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit: ; preds = %bb.d, %_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %i.cj, %_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit ], [ %i.cj, %bb.d ] ; 4 uses
  %i.dy = add nuw i64 %.1, 16                     ; 3 uses
  %.not48 = icmp ugt i64 %i.dy, %4
  br i1 %.not48, label %_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit
  %i.dz = add i64 %.1, %1                         ; 2 uses
  %i.ea = ptrtoint ptr %0 to i64
  %i.eb = lshr i64 %i.dz, 3
  %i.ec = add i64 %i.eb, %i.ea
  %i.ed = inttoptr i64 %i.ec to ptr               ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !70 ; 2 uses
  %i.ef = and i64 %i.dz, 7                        ; 2 uses
  %.not.i52 = icmp eq i64 %i.ef, 0
  br i1 %.not.i52, label %_ZN8facebook5velox4bits6detail8loadBitsItEET_PKmmh.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !32
  %i.ei = trunc nuw nsw i64 %i.ef to i16
  %i.ej = zext i8 %i.eh to i16
  %i.ek = tail call i16 @llvm.fshr.i16(i16 %i.ej, i16 %i.ee, i16 %i.ei)
  br label %_ZN8facebook5velox4bits6detail8loadBitsItEET_PKmmh.exit

_ZN8facebook5velox4bits6detail8loadBitsItEET_PKmmh.exit: ; preds = %bb.e, %bb.f
  %.0.i53 = phi i16 [ %i.ee, %bb.e ], [ %i.ek, %bb.f ]
  %i.el = add i64 %.1, %3                         ; 2 uses
  %i.em = zext i16 %.0.i53 to i64                 ; 2 uses
  %i.en = ptrtoint ptr %2 to i64
  %i.eo = lshr i64 %i.el, 3
  %i.ep = add i64 %i.eo, %i.en
  %i.eq = inttoptr i64 %i.ep to ptr               ; 3 uses
  %i.er = and i64 %i.el, 7                        ; 5 uses
  %i.es = shl nuw nsw i64 65535, %i.er
  %i.et = load i16, ptr %i.eq, align 2, !tbaa !70
  %i.eu = zext i16 %i.et to i64
  %i.ev = xor i64 %i.es, -1
  %i.ew = and i64 %i.eu, %i.ev
  %i.ex = shl nuw nsw i64 %i.em, %i.er
  %i.ey = or i64 %i.ew, %i.ex
  %i.ez = trunc i64 %i.ey to i16
  store i16 %i.ez, ptr %i.eq, align 2, !tbaa !70
  %.not63 = icmp eq i64 %i.er, 0
  br i1 %.not63, label %_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4bits6detail8loadBitsItEET_PKmmh.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 2 ; 2 uses
  %i.fb = trunc nuw nsw i64 %i.er to i32
  %notmask23.i54 = shl nsw i32 -1, %i.fb
  %i.fc = load i8, ptr %i.fa, align 2, !tbaa !32
  %i.fd = zext i8 %i.fc to i64
  %i.fe = xor i32 %notmask23.i54, 255
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = xor i64 %i.ff, -1
  %i.fh = and i64 %i.fd, %i.fg
  %i.fi = sub nuw nsw i64 16, %i.er
  %i.fj = lshr i64 %i.em, %i.fi
  %i.fk = and i64 %i.fj, %i.ff
  %i.fl = or i64 %i.fh, %i.fk
  %i.fm = trunc nuw i64 %i.fl to i8
  store i8 %i.fm, ptr %i.fa, align 2, !tbaa !32
  br label %_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit

_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit: ; preds = %bb.g, %_ZN8facebook5velox4bits6detail8loadBitsItEET_PKmmh.exit, %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit
  %.2 = phi i64 [ %.1, %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit ], [ %i.dy, %_ZN8facebook5velox4bits6detail8loadBitsItEET_PKmmh.exit ], [ %i.dy, %bb.g ] ; 4 uses
  %i.fn = icmp ult i64 %.2, %4
  br i1 %i.fn, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit
  %i.fo = ptrtoint ptr %0 to i64
  %i.fp = ptrtoint ptr %2 to i64
  %i.fq = add i64 %.2, %1
  %i.fr = and i64 %i.fq, 7                        ; 3 uses
  %i.fs = add i64 %.2, %3
  %i.ft = and i64 %i.fs, 7                        ; 4 uses
  %.not.i55 = icmp eq i64 %i.fr, 0
  %invariant.op = sub nuw nsw i64 9, %i.fr
  %i.fu = trunc nuw nsw i64 %i.fr to i8
  %i.fv = sub nuw nsw i64 8, %i.ft
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph74, %_ZN8facebook5velox4bits6detail9storeBitsIhEEvPmmmh.exit
  %.373 = phi i64 [ %.2, %.lr.ph74 ], [ %i.hn, %_ZN8facebook5velox4bits6detail9storeBitsIhEEvPmmmh.exit ] ; 4 uses
  %i.fw = sub nuw i64 %4, %.373
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.fw, i64 8) ; 3 uses
  %i.fx = add i64 %.373, %1                       ; 2 uses
  %i.fy = lshr i64 %i.fx, 3
  %i.fz = add i64 %i.fy, %i.fo
  %i.ga = inttoptr i64 %i.fz to ptr               ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !32  ; 3 uses
  br i1 %.not.i55, label %_ZN8facebook5velox4bits6detail8loadBitsIhEET_PKmmh.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gc = icmp samesign ult i64 %.sroa.speculated, %invariant.op
  br i1 %i.gc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gd = lshr i8 %i.gb, %i.fu
  br label %_ZN8facebook5velox4bits6detail8loadBitsIhEET_PKmmh.exit

bb.k:                                             ; preds = %bb.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !32
  %i.gg = trunc i64 %i.fx to i8
  %i.gh = tail call i8 @llvm.fshr.i8(i8 %i.gf, i8 %i.gb, i8 %i.gg)
  br label %_ZN8facebook5velox4bits6detail8loadBitsIhEET_PKmmh.exit

_ZN8facebook5velox4bits6detail8loadBitsIhEET_PKmmh.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.0.i56 = phi i8 [ %i.gd, %bb.j ], [ %i.gh, %bb.k ], [ %i.gb, %bb.h ]
  %i.gi = add i64 %.373, %3
  %i.gj = zext i8 %.0.i56 to i64                  ; 2 uses
  %i.gk = lshr i64 %i.gi, 3
  %i.gl = add i64 %i.gk, %i.fp
  %i.gm = inttoptr i64 %i.gl to ptr               ; 3 uses
  %notmask.i = shl nsw i64 -1, %.sroa.speculated
  %i.gn = xor i64 %notmask.i, -1                  ; 2 uses
  %i.go = shl nuw nsw i64 %i.gn, %i.ft
  %i.gp = load i8, ptr %i.gm, align 1, !tbaa !32
  %i.gq = zext i8 %i.gp to i64
  %i.gr = xor i64 %i.go, -1
  %i.gs = and i64 %i.gq, %i.gr
  %i.gt = and i64 %i.gj, %i.gn
  %i.gu = shl nuw nsw i64 %i.gt, %i.ft
  %i.gv = or i64 %i.gs, %i.gu
  %i.gw = trunc i64 %i.gv to i8
  store i8 %i.gw, ptr %i.gm, align 1, !tbaa !32
  %i.gx = add nuw nsw i64 %i.ft, %.sroa.speculated ; 2 uses
  %i.gy = icmp samesign ugt i64 %i.gx, 8
  br i1 %i.gy, label %bb.l, label %_ZN8facebook5velox4bits6detail9storeBitsIhEEvPmmmh.exit

bb.l:                                             ; preds = %_ZN8facebook5velox4bits6detail8loadBitsIhEET_PKmmh.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gm, i64 1 ; 2 uses
  %i.ha = trunc nuw nsw i64 %i.gx to i32
  %i.hb = add nuw nsw i32 %i.ha, 248
  %i.hc = and i32 %i.hb, 255
  %notmask23.i57 = shl nsw i32 -1, %i.hc
  %i.hd = load i8, ptr %i.gz, align 1, !tbaa !32
  %i.he = zext i8 %i.hd to i64
  %i.hf = xor i32 %notmask23.i57, 255
  %i.hg = zext i32 %i.hf to i64                   ; 2 uses
  %i.hh = xor i64 %i.hg, -1
  %i.hi = and i64 %i.he, %i.hh
  %i.hj = lshr i64 %i.gj, %i.fv
  %i.hk = and i64 %i.hj, %i.hg
  %i.hl = or i64 %i.hi, %i.hk
  %i.hm = trunc nuw i64 %i.hl to i8
  store i8 %i.hm, ptr %i.gz, align 1, !tbaa !32
  br label %_ZN8facebook5velox4bits6detail9storeBitsIhEEvPmmmh.exit

_ZN8facebook5velox4bits6detail9storeBitsIhEEvPmmmh.exit: ; preds = %_ZN8facebook5velox4bits6detail8loadBitsIhEET_PKmmh.exit, %bb.l
  %i.hn = add i64 %.373, 8                        ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %4
  br i1 %i.ho, label %bb.h, label %._crit_edge75, !llvm.loop !72

._crit_edge75:                                    ; preds = %_ZN8facebook5velox4bits6detail9storeBitsIhEEvPmmmh.exit, %_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(38) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(38) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %class.anon.14, align 8             ; 6 uses
  %5 = alloca %class.anon.15, align 8             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13, !range !37, !noundef !38
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.a
  %.0.in.pre.i.i = load i8, ptr %i.b, align 4, !tbaa !39, !range !37
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.j, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = and i32 %i.j, 2147483584                 ; 3 uses
  %i.p = zext nneg i32 %i.o to i64
  %.not37.i.i.not.i.i63.not = icmp eq i32 %i.o, 0
  br i1 %.not37.i.i.not.i.i63.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i64, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.p
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !40

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i.i64 = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.q = lshr exact i64 %indvars.iv.i.i64, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !40

.critedge.i.i.i.i:                                ; preds = %bb.f, %bb.e
  %.not38.i.i.i.i = icmp eq i32 %i.j, %i.o
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.u = lshr i32 %i.j, 6
  %i.v = and i32 %i.j, 63
  %i.w = zext nneg i32 %i.v to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.w
  %i.x = zext nneg i32 %i.u to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16
  %.demorgan.i.i = or i64 %i.z, %notmask.i40.i.i.i.i
  %i.aa = icmp eq i64 %.demorgan.i.i, -1
  %i.ab = zext i1 %i.aa to i16
  %i.ac = or disjoint i16 %i.ab, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i.i ], [ %i.ac, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.b, align 4
  %i.ad = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ad, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !26 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %i.af
  br i1 %i.ai, label %.lr.ph.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit"

.lr.ph.i:                                         ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37 ; 4 uses
  %i.ak = sext i32 %i.ah to i64                   ; 6 uses
  %wide.trip.count.i = sext i32 %i.af to i64      ; 4 uses
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.preheader", label %.lr.ph.i.split

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.preheader": ; preds = %.lr.ph.i
  %i.al = sub nsw i64 %wide.trip.count.i, %i.ak
  %xtraiter = and i64 %i.al, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit", label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.preheader"
  %i.am = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ak
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !8
  %i.ap = sext i32 %i.an to i64
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.at = trunc i32 %i.an to i8
  %i.au = and i8 %i.at, 7
  %i.av = shl nuw i8 1, %i.au
  %i.aw = or i8 %i.av, %i.as
  store i8 %i.aw, ptr %i.ar, align 1, !tbaa !32
  store i8 0, ptr %i.aj, align 1, !tbaa !13
  %indvars.iv.next.i.us.prol = add nsw i64 %i.ak, 1
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.preheader"
  %indvars.iv.i.us.unr = phi i64 [ %i.ak, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.preheader" ], [ %indvars.iv.next.i.us.prol, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol" ]
  %i.ax = add nsw i64 %wide.trip.count.i, -1
  %i.ay = icmp eq i64 %i.ax, %i.ak
  br i1 %i.ay, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us"
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us" ], [ %indvars.iv.i.us.unr, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit" ] ; 3 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.i.us
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3  ; 2 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !8
  %i.bc = sext i32 %i.ba to i64
  %i.bd = lshr i64 %i.bc, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !32
  %i.bg = trunc i32 %i.ba to i8
  %i.bh = and i8 %i.bg, 7
  %i.bi = shl nuw i8 1, %i.bh
  %i.bj = or i8 %i.bi, %i.bf
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !32
  store i8 0, ptr %i.aj, align 1, !tbaa !13
  %i.bk = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i.us
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !8
  %i.bo = sext i32 %i.bm to i64
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !32
  %i.bs = trunc i32 %i.bm to i8
  %i.bt = and i8 %i.bs, 7
  %i.bu = shl nuw i8 1, %i.bt
  %i.bv = or i8 %i.bu, %i.br
  store i8 %i.bv, ptr %i.bq, align 1, !tbaa !32
  store i8 0, ptr %i.aj, align 1, !tbaa !13
  %indvars.iv.next.i.us.1 = add nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %indvars.iv.next.i.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.1, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us", !llvm.loop !73

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i"
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i" ], [ %i.ak, %.lr.ph.i ] ; 4 uses
  %i.bw = lshr i64 %indvars.iv.i, 6
  %i.bx = and i64 %i.bw, 67108863
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !16
  %i.ca = and i64 %indvars.iv.i, 63
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = and i64 %i.bz, %i.cb
  %.not.i.i4.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i4.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i", label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.split
  %i.cd = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3  ; 2 uses
  %i.cf = load ptr, ptr %3, align 8, !tbaa !8
  %i.cg = sext i32 %i.ce to i64
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !32
  %i.ck = trunc i32 %i.ce to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = shl nuw i8 1, %i.cl
  %i.cn = or i8 %i.cm, %i.cj
  store i8 %i.cn, ptr %i.ci, align 1, !tbaa !32
  store i8 0, ptr %i.aj, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i": ; preds = %bb.i, %.lr.ph.i.split
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %.lr.ph.i.split, !llvm.loop !73

bb.j:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.co = load ptr, ptr %0, align 8, !tbaa !8     ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !26 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !27 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.cq, %i.cs
  br i1 %.not.i.i.i.i, label %bb.k, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit"

bb.k:                                             ; preds = %bb.j
  %i.ct = add i32 %i.cq, 63                       ; 2 uses
  %i.cu = srem i32 %i.ct, 64
  %i.cv = sub nsw i32 %i.ct, %i.cu                ; 6 uses
  %i.cw = and i32 %i.cs, -64                      ; 6 uses
  %i.cx = icmp slt i32 %i.cw, %i.cv
  br i1 %i.cx, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.cy = ashr i32 %i.cs, 6
  %i.cz = and i32 %i.cs, 63
  %i.da = zext nneg i32 %i.cz to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.da
  %i.db = xor i64 %notmask.i.i.i.i.i, -1
  %i.dc = sub nsw i32 %i.cv, %i.cq                ; 2 uses
  %i.dd = zext nneg i32 %i.dc to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dd
  %i.de = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.df = sub nsw i32 64, %i.dc
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl i64 %i.de, %i.dg
  %i.di = and i64 %i.dh, %i.db
  %i.dj = sext i32 %i.cy to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !16
  %i.dm = and i64 %i.di, %i.dl                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 37
  %.not.i.i.i.i.i.i = icmp eq ptr %2, null
  br label %bb.m

bb.m:                                             ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.i.i.i.i", %.preheader.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.dm, %.preheader.i.i.i.i.i ], [ %i.el, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.i.i.i.i" ] ; 3 uses
  %i.do = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = or disjoint i32 %i.cw, %i.dp            ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !16
  %i.dv = and i64 %i.dr, 63
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.du, %i.dw
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dy = sext i32 %i.dq to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3  ; 2 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !8
  %i.ec = sext i32 %i.ea to i64
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !32
  %i.eg = trunc i32 %i.ea to i8
  %i.eh = and i8 %i.eg, 7
  %i.ei = shl nuw i8 1, %i.eh
  %i.ej = or i8 %i.ei, %i.ef
  store i8 %i.ej, ptr %i.ee, align 1, !tbaa !32
  store i8 0, ptr %i.dn, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.i.i.i.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.i.i.i.i": ; preds = %bb.o, %bb.n
  %i.ek = add nsw i64 %.011.i.i.i.i.i, -1
  %i.el = and i64 %i.ek, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not10.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %bb.m, !llvm.loop !74

bb.p:                                             ; preds = %bb.k
  %.not32.i.i.i.i = icmp eq i32 %i.cq, %i.cv
  br i1 %.not32.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.em = sdiv i32 %i.cq, 64                      ; 2 uses
  %i.en = sub nsw i32 %i.cv, %i.cq                ; 2 uses
  %i.eo = zext nneg i32 %i.en to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.eo
  %i.ep = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.eq = sub nsw i32 64, %i.en
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = shl i64 %i.ep, %i.er
  %i.et = sext i32 %i.em to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !16
  %i.ew = and i64 %i.ev, %i.es                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i36.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUlimE_clEim.exit43.i.i.i.i", label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.q
  %i.ex = shl nsw i32 %i.em, 6
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 37
  %.not.i.i39.i.i.i.i = icmp eq ptr %2, null
  br label %bb.r

bb.r:                                             ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i41.i.i.i.i", %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.ew, %.preheader.i37.i.i.i.i ], [ %i.fw, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i41.i.i.i.i" ] ; 3 uses
  %i.ez = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  %i.fb = or disjoint i32 %i.ex, %i.fa            ; 2 uses
  br i1 %.not.i.i39.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = lshr i64 %i.fc, 6
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !16
  %i.fg = and i64 %i.fc, 63
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = and i64 %i.ff, %i.fh
  %.not.i.i.i40.i.i.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i40.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i41.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fj = sext i32 %i.fb to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3  ; 2 uses
  %i.fm = load ptr, ptr %3, align 8, !tbaa !8
  %i.fn = sext i32 %i.fl to i64
  %i.fo = lshr i64 %i.fn, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fo ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !32
  %i.fr = trunc i32 %i.fl to i8
  %i.fs = and i8 %i.fr, 7
  %i.ft = shl nuw i8 1, %i.fs
  %i.fu = or i8 %i.ft, %i.fq
  store i8 %i.fu, ptr %i.fp, align 1, !tbaa !32
  store i8 0, ptr %i.ey, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i41.i.i.i.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i41.i.i.i.i": ; preds = %bb.t, %bb.s
  %i.fv = add i64 %.011.i38.i.i.i.i, -1
  %i.fw = and i64 %i.fv, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i42.i.i.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not10.i42.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.r, !llvm.loop !74

"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUlimE_clEim.exit43.i.i.i.i": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i41.i.i.i.i", %bb.q, %bb.p
  %i.fx = add nsw i32 %i.cv, 64                   ; 2 uses
  %.not3359.i.i.i.i = icmp sgt i32 %i.fx, %i.cw
  br i1 %.not3359.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 37 ; 3 uses
  %.not.i.i44.i.i.i.i = icmp eq ptr %2, null      ; 2 uses
  br label %bb.u

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %.not34.i.i.i.i = icmp eq i32 %i.cs, %i.cw
  br i1 %.not34.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %bb.aa

bb.u:                                             ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %i.fz = phi i32 [ %i.fx, %.lr.ph.i.i.i.i ], [ %i.iq, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.060.i.i.i.i = phi i32 [ %i.cv, %.lr.ph.i.i.i.i ], [ %i.fz, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %i.ga = sdiv i32 %.060.i.i.i.i, 64              ; 3 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !16 ; 2 uses
  switch i64 %i.gd, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.v
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u
  %i.ge = shl nsw i32 %i.ga, 6
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gf = shl nsw i32 %i.ga, 6                    ; 2 uses
  %i.gg = add i32 %i.gf, 64
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %.0.off.i.i.i.i = add i32 %.060.i.i.i.i, 127
  %.not25.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not25.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph24.i.i.i.i.i

.lr.ph24.i.i.i.i.i:                               ; preds = %bb.v
  %i.gi = sext i32 %i.gf to i64                   ; 2 uses
  br i1 %.not.i.i44.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us", label %.lr.ph24.i.i.i.i.i.split

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us": ; preds = %.lr.ph24.i.i.i.i.i, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us"
  %.023.i.i.i.i.i.us = phi i64 [ %i.gv, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us" ], [ %i.gi, %.lr.ph24.i.i.i.i.i ] ; 2 uses
  %sext.i.i.i.i.i.us = shl i64 %.023.i.i.i.i.i.us, 32
  %i.gj = ashr exact i64 %sext.i.i.i.i.i.us, 30
  %i.gk = getelementptr inbounds i8, ptr %1, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3  ; 2 uses
  %i.gm = load ptr, ptr %3, align 8, !tbaa !8
  %i.gn = sext i32 %i.gl to i64
  %i.go = lshr i64 %i.gn, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.go ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !32
  %i.gr = trunc i32 %i.gl to i8
  %i.gs = and i8 %i.gr, 7
  %i.gt = shl nuw i8 1, %i.gs
  %i.gu = or i8 %i.gt, %i.gq
  store i8 %i.gu, ptr %i.gp, align 1, !tbaa !32
  store i8 0, ptr %i.fy, align 1, !tbaa !13
  %i.gv = add nuw i64 %.023.i.i.i.i.i.us, 1       ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.gh
  br i1 %i.gw, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us", label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !75

.lr.ph24.i.i.i.i.i.split:                         ; preds = %.lr.ph24.i.i.i.i.i, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i"
  %.023.i.i.i.i.i = phi i64 [ %i.hq, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i" ], [ %i.gi, %.lr.ph24.i.i.i.i.i ] ; 4 uses
  %i.gx = lshr i64 %.023.i.i.i.i.i, 6
  %i.gy = and i64 %i.gx, 67108863
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !16
  %i.hb = and i64 %.023.i.i.i.i.i, 63
  %i.hc = shl nuw i64 1, %i.hb
  %i.hd = and i64 %i.ha, %i.hc
  %.not.i.i.i45.i.i.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i.i45.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %.lr.ph24.i.i.i.i.i.split
  %sext.i.i.i.i.i = shl i64 %.023.i.i.i.i.i, 32
  %i.he = ashr exact i64 %sext.i.i.i.i.i, 30
  %i.hf = getelementptr inbounds i8, ptr %1, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !3  ; 2 uses
  %i.hh = load ptr, ptr %3, align 8, !tbaa !8
  %i.hi = sext i32 %i.hg to i64
  %i.hj = lshr i64 %i.hi, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !32
  %i.hm = trunc i32 %i.hg to i8
  %i.hn = and i8 %i.hm, 7
  %i.ho = shl nuw i8 1, %i.hn
  %i.hp = or i8 %i.ho, %i.hl
  store i8 %i.hp, ptr %i.hk, align 1, !tbaa !32
  store i8 0, ptr %i.fy, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i": ; preds = %bb.w, %.lr.ph24.i.i.i.i.i.split
  %i.hq = add nuw i64 %.023.i.i.i.i.i, 1          ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.gh
  br i1 %i.hr, label %.lr.ph24.i.i.i.i.i.split, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !75

bb.x:                                             ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.01522.i.i.i.i.i = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i ], [ %i.ip, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i" ] ; 3 uses
  %i.hs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i, i1 true)
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = or disjoint i32 %i.ge, %i.ht            ; 2 uses
  br i1 %.not.i.i44.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = lshr i64 %i.hv, 6
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hw
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !16
  %i.hz = and i64 %i.hv, 63
  %i.ia = shl nuw i64 1, %i.hz
  %i.ib = and i64 %i.hy, %i.ia
  %.not.i.i18.i.i.i.i.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i18.i.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ic = sext i32 %i.hu to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3  ; 2 uses
  %i.if = load ptr, ptr %3, align 8, !tbaa !8
  %i.ig = sext i32 %i.ie to i64
  %i.ih = lshr i64 %i.ig, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ih ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !32
  %i.ik = trunc i32 %i.ie to i8
  %i.il = and i8 %i.ik, 7
  %i.im = shl nuw i8 1, %i.il
  %i.in = or i8 %i.im, %i.ij
  store i8 %i.in, ptr %i.ii, align 1, !tbaa !32
  store i8 0, ptr %i.fy, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i": ; preds = %bb.z, %bb.y
  %i.io = add i64 %.01522.i.i.i.i.i, -1
  %i.ip = and i64 %i.io, %.01522.i.i.i.i.i        ; 2 uses
  %.not.i47.i.i.i.i = icmp eq i64 %i.ip, 0
  br i1 %.not.i47.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.x, !llvm.loop !76

"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i", %bb.v, %bb.u
  %i.iq = add nsw i32 %i.fz, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.iq, %i.cw
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.u, !llvm.loop !77

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ir = ashr i32 %i.cs, 6
  %i.is = and i32 %i.cs, 63
  %i.it = zext nneg i32 %i.is to i64
  %notmask.i48.i.i.i.i = shl nsw i64 -1, %i.it
  %i.iu = xor i64 %notmask.i48.i.i.i.i, -1
  %i.iv = sext i32 %i.ir to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.iv
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !16
  %i.iy = and i64 %i.ix, %i.iu                    ; 2 uses
  %.not.i49.i.i.i.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i49.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %.preheader.i50.i.i.i.i

.preheader.i50.i.i.i.i:                           ; preds = %bb.aa
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 37
  %.not.i.i52.i.i.i.i = icmp eq ptr %2, null
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i", %.preheader.i50.i.i.i.i
  %.011.i51.i.i.i.i = phi i64 [ %i.iy, %.preheader.i50.i.i.i.i ], [ %i.jx, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i" ] ; 3 uses
  %i.ja = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51.i.i.i.i, i1 true)
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %i.jc = or disjoint i32 %i.cw, %i.jb            ; 2 uses
  br i1 %.not.i.i52.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %i.je = lshr i64 %i.jd, 6
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.je
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !16
  %i.jh = and i64 %i.jd, 63
  %i.ji = shl nuw i64 1, %i.jh
  %i.jj = and i64 %i.jg, %i.ji
  %.not.i.i.i53.i.i.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not.i.i.i53.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jk = sext i32 %i.jc to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !3  ; 2 uses
  %i.jn = load ptr, ptr %3, align 8, !tbaa !8
  %i.jo = sext i32 %i.jm to i64
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jp ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !32
  %i.js = trunc i32 %i.jm to i8
  %i.jt = and i8 %i.js, 7
  %i.ju = shl nuw i8 1, %i.jt
  %i.jv = or i8 %i.ju, %i.jr
  store i8 %i.jv, ptr %i.jq, align 1, !tbaa !32
  store i8 0, ptr %i.iz, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i": ; preds = %bb.ad, %bb.ac
  %i.jw = add nsw i64 %.011.i51.i.i.i.i, -1
  %i.jx = and i64 %i.jw, %.011.i51.i.i.i.i        ; 2 uses
  %.not10.i55.i.i.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not10.i55.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %bb.ab, !llvm.loop !74

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.i.i.i.i", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us", %bb.h, %bb.j, %bb.l, %._crit_edge.i.i.i.i, %bb.aa
  %i.jy = load ptr, ptr %3, align 8, !tbaa !8     ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !18 ; 6 uses
  %.not.i.i.i3 = icmp sgt i32 %i.ka, 0
  br i1 %.not.i.i.i3, label %bb.ae, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.ae:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit"
  %i.kb = and i32 %i.ka, 2147483584               ; 4 uses
  %i.kc = zext nneg i32 %i.kb to i64
  %.not37.i.i.not.i65.not = icmp eq i32 %i.kb, 0
  br i1 %.not37.i.i.not.i65.not, label %.critedge.i.i.i, label %.lr.ph67

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph67
  %indvars.iv.next.i5 = add nuw nsw i64 %indvars.iv.i466, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i5, %i.kc
  br i1 %.not37.i.i.not.i, label %.lr.ph67, label %.critedge.i.i.i, !llvm.loop !78

.lr.ph67:                                         ; preds = %bb.ae, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i466 = phi i64 [ %indvars.iv.next.i5, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.ae ] ; 3 uses
  %i.kd = lshr exact i64 %indvars.iv.i466, 3
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kd
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !16 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.kf, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !78

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.ae
  %.not38.i.i.i = icmp eq i32 %i.ka, %i.kb
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %.critedge.i.i.i
  %i.kg = lshr i32 %i.ka, 6
  %i.kh = and i32 %i.ka, 63
  %i.ki = zext nneg i32 %i.kh to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.ki
  %i.kj = xor i64 %notmask.i43.i.i.i, -1
  %i.kk = zext nneg i32 %i.kg to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !16
  %i.kn = and i64 %i.km, %i.kj                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.kn, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.af, %.critedge.i.i.i, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit"
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.ko, align 4, !tbaa !26
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.kp, align 8, !tbaa !27
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i16 256, ptr %i.kq, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph67
  %i.kr = trunc nuw nsw i64 %indvars.iv.i466 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.af
  %.sink67.i.i.i = phi i64 [ %i.kn, %bb.af ], [ %i.kf, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.kb, %bb.af ], [ %i.kr, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.ks = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = or disjoint i32 %.sink65.i.i.i, %i.kt   ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.jy, ptr %4, align 8, !tbaa !79
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.kw, align 8, !tbaa !82
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.kx, align 8, !tbaa !83
  store ptr %i.jy, ptr %5, align 8, !tbaa !84
  %i.ky = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.ky, align 8, !tbaa !82
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.kz, align 8, !tbaa !86
  %i.la = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.ku, i32 noundef %i.ka, ptr noundef nonnull byval(%class.anon.14) align 8 %4, ptr noundef nonnull byval(%class.anon.15) align 8 %5) ; 0 uses
  %i.lb = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.lc = add nsw i32 %i.lb, 1
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.lc, ptr %i.ld, align 8, !tbaa !27
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 37
  store i8 0, ptr %i.le, align 1, !tbaa !13
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !16     ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !88

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !87
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !16
  store i64 %i.s, ptr %i.d, align 8, !tbaa !16
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !87
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !88

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %iter.check168

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %iter.check168

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !16
  br label %iter.check168

iter.check168:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 5 uses
  %min.iters.check153 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check153, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check154

vector.main.loop.iter.check154:                   ; preds = %iter.check168
  %min.iters.check155 = icmp ult i64 %i.ae, 120
  br i1 %min.iters.check155, label %vec.epilog.ph172, label %vector.ph156

vector.ph156:                                     ; preds = %vector.main.loop.iter.check154
  %n.mod.vf157 = and i64 %i.ag, 12
  %n.vec158 = and i64 %i.ag, 4611686018427387888  ; 4 uses
  %i.ah = shl i64 %n.vec158, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert159 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat160 = shufflevector <4 x i64> %broadcast.splatinsert159, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph156
  %index162 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body161 ] ; 2 uses
  %i.aj = shl i64 %index162, 3
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.aj ; 4 uses
  %i.ak = getelementptr i8, ptr %next.gep163, i64 32
  %i.al = getelementptr i8, ptr %next.gep163, i64 64
  %i.am = getelementptr i8, ptr %next.gep163, i64 96
  store <4 x i64> %broadcast.splat160, ptr %next.gep163, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat160, ptr %i.ak, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat160, ptr %i.al, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat160, ptr %i.am, align 8, !tbaa !16
  %index.next164 = add nuw i64 %index162, 16      ; 2 uses
  %i.an = icmp eq i64 %index.next164, %n.vec158
  br i1 %i.an, label %middle.block165, label %vector.body161, !llvm.loop !89

middle.block165:                                  ; preds = %vector.body161
  %cmp.n166 = icmp eq i64 %i.ag, %n.vec158
  br i1 %cmp.n166, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %vec.epilog.iter.check170

vec.epilog.iter.check170:                         ; preds = %middle.block165
  %min.epilog.iters.check171 = icmp eq i64 %n.mod.vf157, 0
  br i1 %min.epilog.iters.check171, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph172, !prof !92

vec.epilog.ph172:                                 ; preds = %vector.main.loop.iter.check154, %vec.epilog.iter.check170
  %vec.epilog.resume.val167 = phi i64 [ %n.vec158, %vec.epilog.iter.check170 ], [ 0, %vector.main.loop.iter.check154 ]
  %n.vec174 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ao = shl i64 %n.vec174, 3
  %i.ap = getelementptr i8, ptr %1, i64 %i.ao
  %broadcast.splatinsert175 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat176 = shufflevector <4 x i64> %broadcast.splatinsert175, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body177

vec.epilog.vector.body177:                        ; preds = %vec.epilog.vector.body177, %vec.epilog.ph172
  %index178 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph172 ], [ %index.next180, %vec.epilog.vector.body177 ] ; 2 uses
  %i.aq = shl i64 %index178, 3
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.aq
  store <4 x i64> %broadcast.splat176, ptr %next.gep179, align 8, !tbaa !16
  %index.next180 = add nuw i64 %index178, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next180, %n.vec174
  br i1 %i.ar, label %vec.epilog.middle.block181, label %vec.epilog.vector.body177, !llvm.loop !93

vec.epilog.middle.block181:                       ; preds = %vec.epilog.vector.body177
  %cmp.n182 = icmp eq i64 %i.ag, %n.vec174
  br i1 %cmp.n182, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check168, %vec.epilog.iter.check170, %vec.epilog.middle.block181
  %.06.i.i.i.ph = phi ptr [ %1, %iter.check168 ], [ %i.ai, %vec.epilog.iter.check170 ], [ %i.ap, %vec.epilog.middle.block181 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !94

bb.k:                                             ; preds = %bb.c
  %i.at = icmp eq i64 %2, %i.l
  br i1 %i.at, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.au = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.aw = shl i64 %2, 3
  %i.ax = add i64 %i.aw, -8
  %i.ay = sub i64 %i.ax, %i.k                     ; 3 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ay, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i64 %i.ay, 120
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ba, 12
  %n.vec = and i64 %i.ba, 4611686018427387888     ; 4 uses
  %i.bb = shl i64 %n.vec, 3
  %i.bc = getelementptr i8, ptr %i.d, i64 %i.bb
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bd ; 4 uses
  %i.be = getelementptr i8, ptr %next.gep, i64 32
  %i.bf = getelementptr i8, ptr %next.gep, i64 64
  %i.bg = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat, ptr %i.be, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat, ptr %i.bf, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat, ptr %i.bg, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !92

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec114 = and i64 %i.ba, 4611686018427387900  ; 3 uses
  %i.bi = shl i64 %n.vec114, 3
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bi
  %broadcast.splatinsert115 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat116 = shufflevector <4 x i64> %broadcast.splatinsert115, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 2 uses
  %i.bk = shl i64 %index117, 3
  %next.gep118 = getelementptr i8, ptr %i.d, i64 %i.bk
  store <4 x i64> %broadcast.splat116, ptr %next.gep118, align 8, !tbaa !16
  %index.next119 = add nuw i64 %index117, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next119, %n.vec114
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n120 = icmp eq i64 %i.ba, %n.vec114
  br i1 %cmp.n120, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.av
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !97

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.av, %middle.block ], [ %i.av, %vec.epilog.middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !87
  %i.bn = icmp sgt i64 %i.k, 8
  br i1 %i.bn, label %bb.l, label %bb.m, !prof !88

bb.l:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !87
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bo = icmp eq i64 %i.k, 8
  br i1 %i.bo, label %bb.n, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.n:                                             ; preds = %bb.m
  %i.bp = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.bp, ptr %.0.i.i.i.i.i, align 8, !tbaa !16
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.n, %bb.m, %bb.l
  %i.bq = phi ptr [ %.0.i.i.i.i.i, %bb.n ], [ %.0.i.i.i.i.i, %bb.m ], [ %.pre, %bb.l ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.k
  store ptr %i.br, ptr %i.c, align 8, !tbaa !87
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %iter.check137

iter.check137:                                    ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
  %i.bs = add i64 %i.f, -8
  %i.bt = sub i64 %i.bs, %i.j                     ; 3 uses
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 5 uses
  %min.iters.check122 = icmp ult i64 %i.bt, 24
  br i1 %min.iters.check122, label %.lr.ph.i.i.i71.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %iter.check137
  %min.iters.check124 = icmp ult i64 %i.bt, 120
  br i1 %min.iters.check124, label %vec.epilog.ph141, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %n.mod.vf126 = and i64 %i.bv, 12
  %n.vec127 = and i64 %i.bv, 4611686018427387888  ; 4 uses
  %i.bw = shl i64 %n.vec127, 3
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  %broadcast.splatinsert128 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat129 = shufflevector <4 x i64> %broadcast.splatinsert128, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph125
  %index131 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body130 ] ; 2 uses
  %i.by = shl i64 %index131, 3
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.by ; 4 uses
  %i.bz = getelementptr i8, ptr %next.gep132, i64 32
  %i.ca = getelementptr i8, ptr %next.gep132, i64 64
  %i.cb = getelementptr i8, ptr %next.gep132, i64 96
  store <4 x i64> %broadcast.splat129, ptr %next.gep132, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat129, ptr %i.bz, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat129, ptr %i.ca, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat129, ptr %i.cb, align 8, !tbaa !16
  %index.next133 = add nuw i64 %index131, 16      ; 2 uses
  %i.cc = icmp eq i64 %index.next133, %n.vec127
  br i1 %i.cc, label %middle.block134, label %vector.body130, !llvm.loop !98

middle.block134:                                  ; preds = %vector.body130
  %cmp.n135 = icmp eq i64 %i.bv, %n.vec127
  br i1 %cmp.n135, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %vec.epilog.iter.check139

vec.epilog.iter.check139:                         ; preds = %middle.block134
  %min.epilog.iters.check140 = icmp eq i64 %n.mod.vf126, 0
  br i1 %min.epilog.iters.check140, label %.lr.ph.i.i.i71.preheader, label %vec.epilog.ph141, !prof !92

vec.epilog.ph141:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check139
  %vec.epilog.resume.val136 = phi i64 [ %n.vec127, %vec.epilog.iter.check139 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec143 = and i64 %i.bv, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec143, 3
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %broadcast.splatinsert144 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat145 = shufflevector <4 x i64> %broadcast.splatinsert144, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body146

vec.epilog.vector.body146:                        ; preds = %vec.epilog.vector.body146, %vec.epilog.ph141
  %index147 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph141 ], [ %index.next149, %vec.epilog.vector.body146 ] ; 2 uses
  %i.cf = shl i64 %index147, 3
  %next.gep148 = getelementptr i8, ptr %1, i64 %i.cf
  store <4 x i64> %broadcast.splat145, ptr %next.gep148, align 8, !tbaa !16
  %index.next149 = add nuw i64 %index147, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cg, label %vec.epilog.middle.block150, label %vec.epilog.vector.body146, !llvm.loop !99

vec.epilog.middle.block150:                       ; preds = %vec.epilog.vector.body146
  %cmp.n151 = icmp eq i64 %i.bv, %n.vec143
  br i1 %cmp.n151, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %iter.check137, %vec.epilog.iter.check139, %vec.epilog.middle.block150
  %.06.i.i.i72.ph = phi ptr [ %1, %iter.check137 ], [ %i.bx, %vec.epilog.iter.check139 ], [ %i.ce, %vec.epilog.middle.block150 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.ch, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ch, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !100

bb.o:                                             ; preds = %bb.b
  %i.ci = load ptr, ptr %0, align 8, !tbaa !8     ; 5 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.ck = sub i64 %i.f, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3                 ; 4 uses
  %i.cm = sub nsw i64 1152921504606846975, %i.cl
  %i.cn = icmp ult i64 %i.cm, %2
  br i1 %i.cn, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.o
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 %2)
  %i.co = add nsw i64 %.sroa.speculated.i, %i.cl  ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cl
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %i.cs = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ct = sub i64 %i.cs, %i.cj                    ; 4 uses
  %.not.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i, label %iter.check199, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cu = shl nuw nsw i64 %i.cr, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #20
  br label %iter.check199

iter.check199:                                    ; preds = %bb.q, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cw = phi ptr [ %i.cv, %bb.q ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.ct ; 7 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i.i.i.i.i75
  %i.cz = load i64, ptr %3, align 8, !tbaa !16    ; 3 uses
  %i.da = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 3 uses
  %i.db = lshr exact i64 %i.da, 3
  %i.dc = add nuw nsw i64 %i.db, 1                ; 5 uses
  %min.iters.check184 = icmp ult i64 %i.da, 24
  br i1 %min.iters.check184, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.main.loop.iter.check185

vector.main.loop.iter.check185:                   ; preds = %iter.check199
  %min.iters.check186 = icmp ult i64 %i.da, 120
  br i1 %min.iters.check186, label %vec.epilog.ph203, label %vector.ph187

vector.ph187:                                     ; preds = %vector.main.loop.iter.check185
  %n.mod.vf188 = and i64 %i.dc, 12
  %n.vec189 = and i64 %i.dc, 4611686018427387888  ; 4 uses
  %i.dd = shl i64 %n.vec189, 3
  %i.de = getelementptr i8, ptr %i.cx, i64 %i.dd
  %broadcast.splatinsert190 = insertelement <4 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat191 = shufflevector <4 x i64> %broadcast.splatinsert190, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph187
  %index193 = phi i64 [ 0, %vector.ph187 ], [ %index.next195, %vector.body192 ] ; 2 uses
  %i.df = shl i64 %index193, 3
  %next.gep194 = getelementptr i8, ptr %i.cx, i64 %i.df ; 4 uses
  %i.dg = getelementptr i8, ptr %next.gep194, i64 32
  %i.dh = getelementptr i8, ptr %next.gep194, i64 64
  %i.di = getelementptr i8, ptr %next.gep194, i64 96
  store <4 x i64> %broadcast.splat191, ptr %next.gep194, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat191, ptr %i.dg, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat191, ptr %i.dh, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat191, ptr %i.di, align 8, !tbaa !16
  %index.next195 = add nuw i64 %index193, 16      ; 2 uses
  %i.dj = icmp eq i64 %index.next195, %n.vec189
  br i1 %i.dj, label %middle.block196, label %vector.body192, !llvm.loop !101

middle.block196:                                  ; preds = %vector.body192
  %cmp.n197 = icmp eq i64 %i.dc, %n.vec189
  br i1 %cmp.n197, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %middle.block196
  %min.epilog.iters.check202 = icmp eq i64 %n.mod.vf188, 0
  br i1 %min.epilog.iters.check202, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vec.epilog.ph203, !prof !92

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check201
  %vec.epilog.resume.val198 = phi i64 [ %n.vec189, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check185 ]
  %n.vec205 = and i64 %i.dc, 4611686018427387900  ; 3 uses
  %i.dk = shl i64 %n.vec205, 3
  %i.dl = getelementptr i8, ptr %i.cx, i64 %i.dk
  %broadcast.splatinsert206 = insertelement <4 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat207 = shufflevector <4 x i64> %broadcast.splatinsert206, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body208

vec.epilog.vector.body208:                        ; preds = %vec.epilog.vector.body208, %vec.epilog.ph203
  %index209 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph203 ], [ %index.next211, %vec.epilog.vector.body208 ] ; 2 uses
  %i.dm = shl i64 %index209, 3
  %next.gep210 = getelementptr i8, ptr %i.cx, i64 %i.dm
  store <4 x i64> %broadcast.splat207, ptr %next.gep210, align 8, !tbaa !16
  %index.next211 = add nuw i64 %index209, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next211, %n.vec205
  br i1 %i.dn, label %vec.epilog.middle.block212, label %vec.epilog.vector.body208, !llvm.loop !102

vec.epilog.middle.block212:                       ; preds = %vec.epilog.vector.body208
  %cmp.n213 = icmp eq i64 %i.dc, %n.vec205
  br i1 %cmp.n213, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check199, %vec.epilog.iter.check201, %vec.epilog.middle.block212
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cx, %iter.check199 ], [ %i.de, %vec.epilog.iter.check201 ], [ %i.dl, %vec.epilog.middle.block212 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.cz, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.do, %i.cy
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !103

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block212, %middle.block196
  %i.dp = icmp sgt i64 %i.ct, 8
  br i1 %i.dp, label %bb.r, label %bb.s, !prof !88

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cw, ptr align 8 %i.ci, i64 %i.ct, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.dq = icmp eq i64 %i.ct, 8
  br i1 %i.dq, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.dr = load i64, ptr %i.ci, align 8, !tbaa !16
  store i64 %i.dr, ptr %i.cw, align 8, !tbaa !16
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %2 ; 3 uses
  %i.dt = sub i64 %i.f, %i.cs                     ; 4 uses
  %i.du = icmp sgt i64 %i.dt, 8
  br i1 %i.du, label %bb.u, label %bb.v, !prof !88

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr align 8 %1, i64 %i.dt, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.dv = icmp eq i64 %i.dt, 8
  br i1 %i.dv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dw = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.dw, ptr %i.ds, align 8, !tbaa !16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  %.not.i82 = icmp eq ptr %i.ci, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = sub i64 %i.e, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.dy) #18
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cw, ptr %0, align 8, !tbaa !8
  store ptr %i.dx, ptr %i.c, align 8, !tbaa !87
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cr
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !12
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block134, %vec.epilog.middle.block150, %middle.block165, %vec.epilog.middle.block181, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.14) align 8 %2, ptr noundef byval(%class.anon.15) align 8 %3) local_unnamed_addr #7 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 5 uses
  %i.d = and i32 %1, -64                          ; 3 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !83, !range !37, !noundef !38
  %i.s = load ptr, ptr %2, align 8, !tbaa !79
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16
  %i.w = xor i8 %i.r, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i32 %1, 63
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 %i.ab, %i.ad
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %.not35 = icmp eq i32 %1, %i.d
  br i1 %.not35, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %1, 6
  %i.ag = and i32 %1, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i38 = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i38, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !83, !range !37, !noundef !38
  %i.al = load ptr, ptr %2, align 8, !tbaa !79
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !16
  %i.ap = xor i8 %i.ak, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = and i64 %i.as, %i.ai                    ; 2 uses
  %.not.i39 = icmp eq i64 %i.at, 0
  br i1 %.not.i39, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40: ; preds = %bb.f
  %i.au = or i32 %1, 63
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i32 %i.au, %i.aw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread: ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !37
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = xor i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc                    ; 2 uses
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit: ; preds = %bb.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread
  %.0.in = phi i32 [ %i.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread ], [ %.0, %bb.g ] ; 2 uses
  %.0 = add nsw i32 %.0.in, -64                   ; 3 uses
  %.not36 = icmp slt i32 %.0, %i.c
  br i1 %.not36, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %i.be = ashr exact i32 %.0, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16 ; 2 uses
  %.not.i41 = icmp eq i64 %i.bh, %i.bd
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bh, %i.bd
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %.0.in, %i.bl
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

.critedge:                                        ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %.not37 = icmp eq i32 %0, %i.c
  br i1 %.not37, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bn = sdiv i32 %0, 64                         ; 2 uses
  %i.bo = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %notmask.i.i42 = shl nsw i64 -1, %i.bp
  %i.bq = xor i64 %notmask.i.i42, -1
  %i.br = sub nsw i32 64, %i.bo
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !83, !range !37, !noundef !38
  %i.bw = load ptr, ptr %2, align 8, !tbaa !79
  %i.bx = sext i32 %i.bn to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !16
  %i.ca = xor i8 %i.bv, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = xor i64 %i.bz, %i.cc
  %i.ce = and i64 %i.cd, %i.bt                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ce, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = shl nsw i32 %i.bn, 6
  %i.cg = or disjoint i32 %i.cf, 63
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = sub nuw nsw i32 %i.cg, %i.ci
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40, %bb.h, %bb.j
  %.sink61 = phi ptr [ %2, %bb.j ], [ %3, %bb.h ], [ %2, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %2, %bb.d ]
  %.sink = phi i32 [ %i.cj, %bb.j ], [ %i.bm, %bb.h ], [ %i.ax, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %i.ae, %bb.d ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !82, !nonnull !38, !align !104
  store i32 %.sink, ptr %i.cl, align 4, !tbaa !3
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split, %bb.i, %bb.c, %.critedge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ true, %bb.i ], [ true, %bb.c ], [ false, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !88

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !32
  store i8 %i.v, ptr %i.t, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !32
  store i8 %i.w, ptr %i.m, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !57
  %i.x = load ptr, ptr %0, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !32
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !33     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #19
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !28

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #20 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !32
  store i8 %i.t, ptr %i.s, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !32
  store i8 %i.x, ptr %i.w, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !32
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !33
  store i64 %.0, ptr %i.h, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #20 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #18
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !33
  store i64 %.0, ptr %i.d, align 8, !tbaa !32
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !57
  store i8 0, ptr %i.c, align 1, !tbaa !32
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !32
  store i8 %i.s, ptr %i.q, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !57
  %i.u = load ptr, ptr %0, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshr.i16(i16, i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 long", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!9, !10, i64 16}
!13 = !{!14, !15, i64 1}
!14 = !{!"_ZTSSt22_Optional_payload_baseIbE", !5, i64 0, !15, i64 1}
!15 = !{!"bool", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!19, !4, i64 24}
!19 = !{!"_ZTSN8facebook5velox17SelectivityVectorE", !20, i64 0, !4, i64 24, !4, i64 28, !4, i64 32, !23, i64 36}
!20 = !{!"_ZTSSt6vectorImSaImEE", !21, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseImSaImEE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !9, i64 0}
!23 = !{!"_ZTSSt8optionalIbE", !24, i64 0}
!24 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !25, i64 0}
!25 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !14, i64 0}
!26 = !{!19, !4, i64 28}
!27 = !{!19, !4, i64 32}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!31 = distinct !{!31, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!32 = !{!5, !5, i64 0}
!33 = !{!34, !36, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !17, i64 8, !5, i64 16}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!36 = !{!"p1 omnipotent char", !11, i64 0}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!15, !15, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41, !43}
!43 = !{!"llvm.loop.peeled.count", i32 1}
!44 = distinct !{!44, !41, !43}
!45 = distinct !{!45, !41, !43}
!46 = distinct !{!46, !41}
!47 = distinct !{!47, !41}
!48 = distinct !{!48, !41}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!51 = distinct !{!51, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!54 = distinct !{!54, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!55 = !{!35, !36, i64 0}
!56 = !{!53, !50}
!57 = !{!34, !17, i64 8}
!58 = !{!59, !36, i64 40}
!59 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !60, i64 56}
!60 = !{!"_ZTSSt6locale", !61, i64 0}
!61 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!62 = !{!59, !36, i64 32}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !6, i64 0}
!65 = !{!66, !17, i64 8}
!66 = !{!"_ZTSSi", !17, i64 8}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !41}
!69 = distinct !{!69, !41}
!70 = !{!71, !71, i64 0}
!71 = !{!"short", !5, i64 0}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41}
!74 = distinct !{!74, !41}
!75 = distinct !{!75, !41}
!76 = distinct !{!76, !41}
!77 = distinct !{!77, !41}
!78 = distinct !{!78, !41}
!79 = !{!80, !10, i64 0}
!80 = !{!"_ZTSZN8facebook5velox4bits11findLastBitEPKmiibEUlimE_", !10, i64 0, !81, i64 8, !15, i64 16}
!81 = !{!"p1 int", !11, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!80, !15, i64 16}
!84 = !{!85, !10, i64 0}
!85 = !{!"_ZTSZN8facebook5velox4bits11findLastBitEPKmiibEUliE_", !10, i64 0, !81, i64 8, !15, i64 16}
!86 = !{!85, !15, i64 16}
!87 = !{!9, !10, i64 8}
!88 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!89 = distinct !{!89, !41, !90, !91}
!90 = !{!"llvm.loop.isvectorized", i32 1}
!91 = !{!"llvm.loop.unroll.runtime.disable"}
!92 = !{!"branch_weights", i32 4, i32 12}
!93 = distinct !{!93, !41, !90, !91}
!94 = distinct !{!94, !41, !91, !90}
!95 = distinct !{!95, !41, !90, !91}
!96 = distinct !{!96, !41, !90, !91}
!97 = distinct !{!97, !41, !91, !90}
!98 = distinct !{!98, !41, !90, !91}
!99 = distinct !{!99, !41, !90, !91}
!100 = distinct !{!100, !41, !91, !90}
!101 = distinct !{!101, !41, !90, !91}
!102 = distinct !{!102, !41, !90, !91}
!103 = distinct !{!103, !41, !91, !90}
!104 = !{i64 4}
end_hunk_0
