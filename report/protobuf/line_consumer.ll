inline.NumInlined: 269
inline.NumDeleted: 106
begin_hunk_0_@_ZN6google8protobuf8compiler10objectivec17ParseSimpleStreamERNS0_2io19ZeroCopyInputStreamESt17basic_string_viewIcSt11char_traitsIcEEPNS2_12LineConsumerEPNSt7__cxx1112basic_stringIcS8_SaIcEEE:bb.a
  store i64 6, ptr %i.cd, align 8, !noalias !39
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.3, ptr %i.ce, align 8, !noalias !39
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.by, ptr %i.cf, align 8, !noalias !39
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.bu, ptr %i.cg, align 8, !noalias !39
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 2, ptr %i.ch, align 8, !noalias !39
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr @.str.4, ptr %i.ci, align 8, !noalias !39
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ck = load ptr, ptr %7, align 8, !tbaa !13, !noalias !39
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !16, !noalias !39
  store i64 %i.cl, ptr %i.cj, align 8, !noalias !39
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %i.ck, ptr %i.cm, align 8, !noalias !39
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull %5, i64 6)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12, !noalias !39
  %i.cn = load ptr, ptr %4, align 8, !tbaa !13    ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  %i.cq = load ptr, ptr %11, align 8, !tbaa !13   ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr                ; 2 uses
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i56: ; preds = %bb.x
  br i1 %i.cs, label %bb.y, label %.thread.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i50: ; preds = %bb.x
  br i1 %i.cs, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i51

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i56
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !16 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %.not21.i53 = icmp eq ptr %11, %4
  br i1 %.not21.i53, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit58, label %bb.z, !prof !20

bb.z:                                             ; preds = %bb.y
  switch i64 %i.cu, label %bb.ab [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i54
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cw = load i8, ptr %i.cq, align 1, !tbaa !15
  store i8 %i.cw, ptr %i.cn, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i54

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.cq, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i54: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.cx = load i64, ptr %i.ct, align 8, !tbaa !16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !16
  %i.cz = load ptr, ptr %4, align 8, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !15
  %.pre.i55 = load ptr, ptr %11, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit58

.thread.i57:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i56
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cq, ptr %4, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dd = load <2 x i64>, ptr %i.dc, align 8, !tbaa !15
  store <2 x i64> %i.dd, ptr %i.db, align 8, !tbaa !15
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i50
  %i.de = load i64, ptr %i.co, align 8, !tbaa !15
  store ptr %i.cq, ptr %4, align 8, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dh = load <2 x i64>, ptr %i.df, align 8, !tbaa !15
  store <2 x i64> %i.dh, ptr %i.dg, align 8, !tbaa !15
  %.not.i52 = icmp eq ptr %i.cn, null
  br i1 %.not.i52, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i51
  store ptr %i.cn, ptr %11, align 8, !tbaa !13
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit58

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i51, %.thread.i57
  store ptr %i.cr, ptr %11, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit58: ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i54, %bb.ac, %bb.ad
  %i.di = phi ptr [ %.pre.i55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i54 ], [ %i.cn, %bb.ac ], [ %i.cr, %bb.ad ], [ %i.cq, %bb.y ]
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.dj, align 8, !tbaa !16
  store i8 0, ptr %i.di, align 1, !tbaa !15
  %i.dk = load ptr, ptr %11, align 8, !tbaa !13   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit58
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !15
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16Parser6FinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.ae:                                            ; preds = %bb.v
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.w
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.dq, %bb.af ], [ %i.dp, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.ah

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16Parser6FinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.t, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ true, %bb.r ], [ true, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.g
  br i1 %i.ds, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16Parser6FinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.dt = load i64, ptr %i.g, align 8, !tbaa !15
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #14
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit: ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16Parser6FinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.dv = load ptr, ptr %7, align 8, !tbaa !13    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.c
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit
  %i.dx = load i64, ptr %i.c, align 8, !tbaa !15
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret i1 %.0

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ag, %bb.q
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22, %bb.q ], [ %.pn, %bb.ag ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.g
  br i1 %i.ea, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65: ; preds = %bb.ah
  %i.eb = load i64, ptr %i.g, align 8, !tbaa !15
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #14
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit67

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit67: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.ed = load ptr, ptr %7, align 8, !tbaa !13    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.c
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit67
  %i.ef = load i64, ptr %i.c, align 8, !tbaa !15
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  resume { ptr, i32 } %.pn22.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16Parser10ParseChunkESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, ptr %2, ptr noundef nonnull %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !7
  %i.h = icmp eq ptr %2, null
  %i.i = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.i, %i.h
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  %i.j = icmp ugt i64 %1, 15
  br i1 %i.j, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !13
  %i.l = load i64, ptr %i.b, align 8, !tbaa !11
  store i64 %i.l, ptr %i.g, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %1, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = load i8, ptr %2, align 1, !tbaa !15
  store i8 %i.n, ptr %i.m, align 1, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.o = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = load ptr, ptr %4, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.s = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !16
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #13
          to label %.noexc18 unwind label %bb.h

.noexc18:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.f
  %i.w = load ptr, ptr %4, align 8, !tbaa !13
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef %i.w, i64 noundef %i.s)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = load ptr, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.g
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !15
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !16
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.g
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.h
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !15
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.1147.0 = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %2, %bb.a ]
  %.sroa.044.0 = phi i64 [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %1, %bb.a ] ; 2 uses
  %.not.i73 = icmp eq i64 %.sroa.044.0, 0
  br i1 %.not.i73, label %._crit_edge, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %bb.w
  %.sroa.044.175 = phi i64 [ %.sroa.044.0, %.lr.ph.i.preheader.lr.ph ], [ %i.ao, %bb.w ] ; 6 uses
  %.sroa.1147.174 = phi ptr [ %.sroa.1147.0, %.lr.ph.i.preheader.lr.ph ], [ %i.an, %bb.w ] ; 7 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.01524.i = phi i64 [ %i.am, %bb.j ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.1147.174, i64 %.01524.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.am = add nuw i64 %.01524.i, 1                ; 4 uses
  switch i8 %i.al, label %bb.j [
    i8 13, label %bb.k
    i8 10, label %bb.k
  ]

bb.j:                                             ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %i.am, %.sroa.044.175
  br i1 %exitcond.not.i, label %bb.x, label %.lr.ph.i, !llvm.loop !42

bb.k:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.1147.174, i64 %i.am
  %i.ao = sub i64 %.sroa.044.175, %i.am           ; 2 uses
  %i.ap = load i32, ptr %i.aj, align 8, !tbaa !28
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.aj, align 8, !tbaa !28
  %.not6.i = icmp eq i64 %.01524.i, 0
  br i1 %.not6.i, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.k
  %i.ar = call ptr @memchr(ptr noundef nonnull %.sroa.1147.174, i32 noundef 35, i64 noundef %.01524.i) #12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %.sroa.1147.174 to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %.not.i23 = icmp eq i64 %i.au, -1
  %or.cond.i = or i1 %.not.i.i, %.not.i23
  %spec.select = select i1 %or.cond.i, i64 %.01524.i, i64 %i.au
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.k
  %.sroa.038.2 = phi i64 [ 0, %bb.k ], [ %spec.select, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.av = call { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %.sroa.038.2, ptr nonnull %.sroa.1147.174) ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0      ; 4 uses
  %i.ax = extractvalue { i64, ptr } %i.av, 1      ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.ba = ashr i64 %i.aw, 2                       ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.preheader.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bc = and i64 %i.aw, 3
  %scevgep.i.i = getelementptr i8, ptr %i.ax, i64 %i.bc
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.preheader.i.i
  %.sroa.03.3.i.i.i.i = phi ptr [ %i.bv, %bb.o ], [ %i.ay, %.lr.ph.i.i.i.preheader.i.i ] ; 8 uses
  %.015.i.i.i.i.i = phi i64 [ %i.cb, %bb.o ], [ %i.ba, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15, !noalias !43
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15, !noalias !43
  %i.bi = and i8 %i.bh, 8
  %.not.i.i24 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i24, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bj = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15, !noalias !43
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !15, !noalias !43
  %i.bo = and i8 %i.bn, 8
  %.not9.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not9.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit112, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !15, !noalias !43
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !15, !noalias !43
  %i.bu = and i8 %i.bt, 8
  %.not10.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not10.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit110.a, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -4 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !15, !noalias !43
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15, !noalias !43
  %i.ca = and i8 %i.bz, 8
  %.not11.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not11.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = add nsw i64 %.015.i.i.i.i.i, -1
  %i.cc = icmp sgt i64 %.015.i.i.i.i.i, 1
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !50

._crit_edge.i.i.i.i.i:                            ; preds = %bb.o, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.ay, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %scevgep.i.i, %bb.o ] ; 5 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.i.i.i.i to i64
  %i.cd = sub i64 %.pre-phi.i.i.i.i.i, %i.az
  switch i64 %i.cd, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit [
    i64 3, label %bb.p
    i64 2, label %bb.q
    i64 1, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ce = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i, i64 -1 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15, !noalias !43
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !15, !noalias !43
  %i.cj = and i8 %i.ci, 8
  %.not12.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not12.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i.i
  %.sroa.03.2.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ce, %bb.p ] ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.03.2.i.i.i.i, i64 -1 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !15, !noalias !43
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !15, !noalias !43
  %i.cp = and i8 %i.co, 8
  %.not13.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ck, %bb.q ] ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i.i, i64 -1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !15, !noalias !43
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !15, !noalias !43
  %i.cv = and i8 %i.cu, 8
  %.not14.i.i = icmp eq i8 %i.cv, 0
  %spec.select.i.i.i.i = select i1 %.not14.i.i, ptr %.sroa.03.1.i.i.i.i, ptr %i.ax
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit: ; preds = %bb.n
  %i.cw = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit110.a: ; preds = %bb.m
  %i.cx = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit112: ; preds = %bb.l
  %i.cy = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit110.a, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit112, %._crit_edge.i.i.i.i.i, %bb.p, %bb.q, %bb.r
  %.sink.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.r ], [ %.sroa.03.2.i.i.i.i, %bb.q ], [ %.sroa.03.0.i.i.i.i, %bb.p ], [ %i.ax, %._crit_edge.i.i.i.i.i ], [ %i.cy, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit112 ], [ %i.cx, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit110.a ], [ %i.cw, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit ], [ %.sroa.03.3.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.cz = ptrtoint ptr %.sink.i.i.i.i.i to i64
  %i.da = sub i64 %i.cz, %i.az
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.da) ; 2 uses
  %i.db = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.db, label %bb.w, label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.dc = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !29
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i64 %.sroa.speculated.i.i.i, ptr %i.ax, ptr noundef nonnull %3)
  br i1 %i.dg, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !16
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 44) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i64 0, ptr %i.d, align 8, !tbaa !16
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.dl, align 1, !tbaa !15
  br label %bb.ag

bb.w:                                             ; preds = %bb.s, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.w, %bb.i
  store i64 0, ptr %i.d, align 8, !tbaa !16
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.dm, align 1, !tbaa !15
  br label %bb.ag

bb.x:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.dn, ptr %5, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %.sroa.044.175, ptr %i.a, align 8, !tbaa !11
  %i.do = icmp ugt i64 %.sroa.044.175, 15
  br i1 %i.do, label %._crit_edge.i.i.i.i29.thread, label %._crit_edge.i.i.i.i29

._crit_edge.i.i.i.i29.thread:                     ; preds = %bb.x
  %i.dp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dp, ptr %5, align 8, !tbaa !13
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.dq, ptr %i.dn, align 8, !tbaa !15
  br label %bb.z

._crit_edge.i.i.i.i29:                            ; preds = %bb.x
  %cond = icmp eq i64 %.sroa.044.175, 1
  br i1 %cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i.i29
  %i.dr = load i8, ptr %.sroa.1147.174, align 1, !tbaa !15
  store i8 %i.dr, ptr %i.dn, align 8, !tbaa !15
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i.i29.thread, %._crit_edge.i.i.i.i29
  %i.ds = phi ptr [ %i.dp, %._crit_edge.i.i.i.i29.thread ], [ %i.dn, %._crit_edge.i.i.i.i29 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr nonnull align 1 %.sroa.1147.174, i64 %.sroa.044.175, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !16
  %i.dv = load ptr, ptr %5, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dt
  store i8 0, ptr %i.dw, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !13  ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  %i.ea = load ptr, ptr %5, align 8, !tbaa !13    ; 5 uses
  %i.eb = icmp eq ptr %i.ea, %i.dn                ; 2 uses
  br i1 %i.dz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.aa
  br i1 %i.eb, label %bb.ab, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.aa
  br i1 %i.eb, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ec = load i64, ptr %i.du, align 8, !tbaa !16 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  switch i64 %i.ec, label %bb.ad [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ee = load i8, ptr %i.ea, align 1, !tbaa !15
  store i8 %i.ee, ptr %i.dx, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %i.ea, i64 %i.ec, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ef = load i64, ptr %i.du, align 8, !tbaa !16 ; 2 uses
  store i64 %i.ef, ptr %i.d, align 8, !tbaa !16
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  store i8 0, ptr %i.eh, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ea, ptr %i.c, align 8, !tbaa !13
  %i.ei = load <2 x i64>, ptr %i.du, align 8, !tbaa !15
  store <2 x i64> %i.ei, ptr %i.d, align 8, !tbaa !15
  br label %bb.af

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ej = load i64, ptr %i.dy, align 8, !tbaa !15
  store ptr %i.ea, ptr %i.c, align 8, !tbaa !13
  %i.ek = load <2 x i64>, ptr %i.du, align 8, !tbaa !15
  store <2 x i64> %i.ek, ptr %i.d, align 8, !tbaa !15
  %.not.i34 = icmp eq ptr %i.dx, null
  br i1 %.not.i34, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dx, ptr %5, align 8, !tbaa !13
  store i64 %i.ej, ptr %i.dn, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.dn, ptr %5, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ae, %bb.af
  %6 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.dx, %bb.ae ], [ %i.dn, %bb.af ]
  store i64 0, ptr %i.du, align 8, !tbaa !16
  store i8 0, ptr %6, align 1, !tbaa !15
  %i.el = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.dn
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.en = load i64, ptr %i.dn, align 8, !tbaa !15
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.v
  %.0 = phi i1 [ true, %._crit_edge ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ false, %bb.v ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6google8protobuf2io25CopyingInputStreamAdaptorD1Ev(ptr noundef nonnull align 8 dereferenceable(52)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6google8protobuf2io15FileInputStream22CopyingFileInputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ashr i64 %0, 2                           ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.f = and i64 %0, -4
  %scevgep = getelementptr i8, ptr %1, i64 %i.f   ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.047.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.d, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %1, %.lr.ph.i.i.i.preheader ] ; 9 uses
  %i.g = load i8, ptr %.02946.i.i.i, align 1, !tbaa !15
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = and i8 %i.j, 8
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15
  %i.q = and i8 %i.p, 8
  %.not5 = icmp eq i8 %i.q, 0
  br i1 %.not5, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !15
  %i.w = and i8 %i.v, 8
  %.not6 = icmp eq i8 %i.w, 0
  br i1 %.not6, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15
  %i.ac = and i8 %i.ab, 8
  %.not7 = icmp eq i8 %i.ac, 0
  br i1 %.not7, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.ae = add nsw i64 %.047.i.i.i, -1
  %i.af = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !52

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %scevgep to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.c, %bb.a ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i ], [ %1, %bb.a ] ; 5 uses
  %i.ag = sub i64 %i.b, %.pre-phi.i.i.i
  switch i64 %i.ag, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !15
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.al = and i8 %i.ak, 8
  %.not8 = icmp eq i8 %i.al, 0
  br i1 %.not8, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.1.i.i.i = phi ptr [ %i.am, %bb.g ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.an = load i8, ptr %.1.i.i.i, align 1, !tbaa !15
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !15
  %i.ar = and i8 %i.aq, 8
  %.not9 = icmp eq i8 %i.ar, 0
  br i1 %.not9, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.2.i.i.i = phi ptr [ %i.as, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.at = load i8, ptr %.2.i.i.i, align 1, !tbaa !15
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !15
  %i.ax = and i8 %i.aw, 8
  %.not10 = icmp eq i8 %i.ax, 0
  br i1 %.not10, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26: ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28: ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit:      ; preds = %.lr.ph.i.i.i, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28, %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %bb.h ], [ %i.a, %bb.k ], [ %.2.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i, %bb.f ], [ %i.ba, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28 ], [ %i.az, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26 ], [ %i.ay, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %.lr.ph.i.i.i ]
  %i.bb = ptrtoint ptr %.028.i.i.i to i64
  %i.bc = sub i64 %i.bb, %i.c                     ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, %0
  br i1 %i.bd, label %bb.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.l:                                             ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i64 noundef %i.bc, i64 noundef %0) #13
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit
  %i.be = sub nuw i64 %0, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.be, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.bf, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #4

end_hunk_0
