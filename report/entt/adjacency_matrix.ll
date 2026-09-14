Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/adjacency_matrix?download=true
inline.NumInlined: 3282
inline.NumDeleted: 744
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN34AdjacencyMatrix_EdgesDirected_Test8TestBodyEv:bb.a

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #28
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  store i64 1, ptr %i.b, align 8, !tbaa !33, !noalias !248
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %i.ag, align 8, !tbaa !33, !noalias !249
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !250
  %.not1.i.i.i92 = icmp eq i64 %i.ah, 0           ; 4 uses
  %spec.select = zext i1 %.not1.i.i.i92 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit unwind label %bb.o

_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit: ; preds = %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit
  %i.ai = load i8, ptr %4, align 8, !tbaa !43, !range !44, !noundef !45
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge56, label %bb.p

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit66, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit66 ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit189

bb.o:                                             ; preds = %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i106, label %_ZNK7testing15AssertionResult15failure_messageEv.exit107, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit107

_ZNK7testing15AssertionResult15failure_messageEv.exit107: ; preds = %bb.r, %bb.q
  %i.ao = phi ptr [ %i.an, %bb.r ], [ @.str.108, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 307, ptr noundef %i.ao)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit107
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ap = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i108, label %_ZN7testing7MessageD2Ev.exit110, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109: ; preds = %bb.t
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit110

_ZN7testing7MessageD2Ev.exit110:                  ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !46 ; 4 uses
  %.not.i.i111 = icmp eq ptr %i.at, null
  br i1 %.not.i.i111, label %_ZN7testing15AssertionResultD2Ev.exit115, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit110
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112: ; preds = %bb.u
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !53
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit115

_ZN7testing15AssertionResultD2Ev.exit115:         ; preds = %_ZN7testing7MessageD2Ev.exit110, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

bb.v:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit118

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit107
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn36 = phi { ptr, i32 } [ %i.bb, %bb.x ], [ %i.ba, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bc = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i116, label %_ZN7testing7MessageD2Ev.exit118, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.y
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit118

_ZN7testing7MessageD2Ev.exit118:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117, %bb.y, %bb.v
  %.pn36.pn = phi { ptr, i32 } [ %i.az, %bb.v ], [ %.pn36, %bb.y ], [ %.pn36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.ac

.critedge56:                                      ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46 ; 4 uses
  %.not.i.i119 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i119, label %.lr.ph.i.i.i125.preheader, label %bb.z

bb.z:                                             ; preds = %.critedge56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120: ; preds = %bb.z
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !53
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 32) #28
  br label %.lr.ph.i.i.i125.preheader

.lr.ph.i.i.i125.preheader:                        ; preds = %.critedge56, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.a, ptr %7, align 8, !tbaa !64
  %.sroa.8213.0..sroa_idx216 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %.sroa.8213.0..sroa_idx216, align 8, !tbaa !33
  %.sroa.10218.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %.sroa.12223.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 9, ptr %.sroa.12223.0..sroa_idx226, align 8, !tbaa !33
  %.sroa.14.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %.sroa.14.0..sroa_idx230, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bn = select i1 %.not1.i.i.i92, i64 2, i64 1  ; 10 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126273 = icmp eq i64 %i.bp, 0
  br i1 %.not1.i.i.i126273, label %.lr.ph.i.i.i125, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit

.lr.ph.i.i.i125:                                  ; preds = %.lr.ph.i.i.i125.preheader
  %i.bq = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126 = icmp eq i64 %i.bs, 0
  br i1 %.not1.i.i.i126, label %.lr.ph.i.i.i125.1, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i125.1:                                ; preds = %.lr.ph.i.i.i125
  %i.bt = add nuw nsw i64 %i.bn, 2                ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.1 = icmp eq i64 %i.bv, 0
  br i1 %.not1.i.i.i126.1, label %.lr.ph.i.i.i125.2, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i125.2:                                ; preds = %.lr.ph.i.i.i125.1
  %i.bw = add nuw nsw i64 %i.bn, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.2 = icmp eq i64 %i.by, 0
  br i1 %.not1.i.i.i126.2, label %.lr.ph.i.i.i125.3, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i125.3:                                ; preds = %.lr.ph.i.i.i125.2
  %i.bz = or disjoint i64 %i.bn, 4                ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.3 = icmp eq i64 %i.cb, 0
  br i1 %.not1.i.i.i126.3, label %.lr.ph.3, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.3:                                         ; preds = %.lr.ph.i.i.i125.3
  %22 = add nuw nsw i64 %i.bn, 5                  ; 3 uses
  %.not.i.i.i127.3 = icmp eq i64 %22, 9
  br i1 %.not.i.i.i127.3, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i125.4

.lr.ph.i.i.i125.4:                                ; preds = %.lr.ph.3
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %22
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.4 = icmp eq i64 %i.cd, 0
  br i1 %.not1.i.i.i126.4, label %.lr.ph.4, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.4:                                         ; preds = %.lr.ph.i.i.i125.4
  %i.ce = add nuw nsw i64 %i.bn, 6                ; 3 uses
  %.not.i.i.i127.4 = icmp eq i64 %i.ce, 9
  br i1 %.not.i.i.i127.4, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i125.5

.lr.ph.i.i.i125.5:                                ; preds = %.lr.ph.4
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.5 = icmp eq i64 %i.cg, 0
  br i1 %.not1.i.i.i126.5, label %.lr.ph.5, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.5:                                         ; preds = %.lr.ph.i.i.i125.5
  %i.ch = add nuw nsw i64 %i.bn, 7                ; 3 uses
  %.not.i.i.i127.5 = icmp eq i64 %i.ch, 9
  br i1 %.not.i.i.i127.5, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i125.6

.lr.ph.i.i.i125.6:                                ; preds = %.lr.ph.5
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.6 = icmp eq i64 %i.cj, 0
  br i1 %.not1.i.i.i126.6, label %.lr.ph.6, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.6:                                         ; preds = %.lr.ph.i.i.i125.6
  br i1 %.not1.i.i.i92, label %.lr.ph.i.i.i125.7, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge

.lr.ph.i.i.i125.7:                                ; preds = %.lr.ph.6
  %i.ck = or disjoint i64 %i.bn, 8                ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.7 = icmp eq i64 %i.cm, 0
  br i1 %.not1.i.i.i126.7, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i125.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i125, %.lr.ph.i.i.i125.1, %.lr.ph.i.i.i125.2, %.lr.ph.i.i.i125.3, %.lr.ph.i.i.i125.4, %.lr.ph.i.i.i125.5, %.lr.ph.i.i.i125.6, %.lr.ph.i.i.i125.7, %.lr.ph.i.i.i125.preheader, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge
  %i.cn = phi i64 [ 9, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge ], [ %i.bn, %.lr.ph.i.i.i125.preheader ], [ %i.bq, %.lr.ph.i.i.i125 ], [ %i.bt, %.lr.ph.i.i.i125.1 ], [ %i.bw, %.lr.ph.i.i.i125.2 ], [ %i.bz, %.lr.ph.i.i.i125.3 ], [ %22, %.lr.ph.i.i.i125.4 ], [ %i.ce, %.lr.ph.i.i.i125.5 ], [ %i.ch, %.lr.ph.i.i.i125.6 ], [ %i.ck, %.lr.ph.i.i.i125.7 ] ; 5 uses
  store i64 %i.cn, ptr %.sroa.10218.0..sroa_idx221, align 8
  store i64 0, ptr %9, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %spec.select, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 0, ptr %10, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.cp, align 8
  br i1 %.not1.i.i.i92, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

bb.ab:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.cq = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %.critedge58, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit118, %bb.o
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit118 ], [ %i.ak, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit189

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.as

bb.ae:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i130, label %_ZNK7testing15AssertionResult15failure_messageEv.exit131, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit131

_ZNK7testing15AssertionResult15failure_messageEv.exit131: ; preds = %bb.ag, %bb.af
  %i.cw = phi ptr [ %i.cv, %bb.ag ], [ @.str.108, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 311, ptr noundef %i.cw)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cx = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.ai
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(128) %i.cx) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.db = load ptr, ptr %i.ct, align 8, !tbaa !46 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.db, null
  br i1 %.not.i.i135, label %_ZN7testing15AssertionResultD2Ev.exit139, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit134
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !50 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.aj
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !53
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit139

_ZN7testing15AssertionResultD2Ev.exit139:         ; preds = %_ZN7testing7MessageD2Ev.exit134, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bu

bb.ak:                                            ; preds = %bb.ae
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit142

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn40 = phi { ptr, i32 } [ %i.dj, %bb.am ], [ %i.di, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.dk = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.an
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !21
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(128) %i.dk) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, %bb.an, %bb.ak
  %.pn40.pn = phi { ptr, i32 } [ %i.dh, %bb.ak ], [ %.pn40, %bb.an ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.as

.critedge58:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !46 ; 4 uses
  %.not.i.i143 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i143, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge58
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !50 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144: ; preds = %bb.ao
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !53
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef 32) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, %.critedge58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.dv = udiv i64 %i.cn, 3
  %i.dw = urem i64 %i.cn, 3                       ; 2 uses
  store i64 %i.dv, ptr %14, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.dw, ptr %i.dx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i64 1, ptr %15, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 2, ptr %i.dy, align 8
  %.off = add i64 %i.cn, -3
  %i.dz = icmp ult i64 %.off, 3
  %i.ea = icmp eq i64 %i.dw, 2
  %i.eb = and i1 %i.dz, %i.ea
  br i1 %i.eb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit152 unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit152 unwind label %bb.at

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit152: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ec = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.critedge60, label %bb.au

bb.as:                                            ; preds = %_ZN7testing7MessageD2Ev.exit142, %bb.ad
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit142 ], [ %i.cs, %bb.ad ]
end_hunk_0
begin_hunk_1_@_ZN36AdjacencyMatrix_EdgesUndirected_Test8TestBodyEv:bb.a

_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %i.ag, align 8, !tbaa !33, !noalias !269
  store i64 1, ptr %i.b, align 8, !tbaa !33, !noalias !269
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 1, ptr %i.ah, align 8, !tbaa !33, !noalias !270
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %i.ai, align 8, !tbaa !33, !noalias !270
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !271
  %.not1.i.i.i116 = icmp eq i64 %i.aj, 0          ; 4 uses
  %spec.select = zext i1 %.not1.i.i.i116 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit unwind label %bb.o

_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit: ; preds = %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit
  %i.ak = load i8, ptr %4, align 8, !tbaa !43, !range !44, !noundef !45
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.critedge76, label %bb.p

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit90, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit90 ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit273

bb.o:                                             ; preds = %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i130, label %_ZNK7testing15AssertionResult15failure_messageEv.exit131, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit131

_ZNK7testing15AssertionResult15failure_messageEv.exit131: ; preds = %bb.r, %bb.q
  %i.aq = phi ptr [ %i.ap, %bb.r ], [ @.str.108, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 343, ptr noundef %i.aq)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ar = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.t
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(128) %i.ar) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !46 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.av, null
  br i1 %.not.i.i135, label %_ZN7testing15AssertionResultD2Ev.exit139, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit134
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.u
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !53
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit139

_ZN7testing15AssertionResultD2Ev.exit139:         ; preds = %_ZN7testing7MessageD2Ev.exit134, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit

bb.v:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit142

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn48 = phi { ptr, i32 } [ %i.bd, %bb.x ], [ %i.bc, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.be = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.be, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.y
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(128) %i.be) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, %bb.y, %bb.v
  %.pn48.pn = phi { ptr, i32 } [ %i.bb, %bb.v ], [ %.pn48, %bb.y ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.ac

.critedge76:                                      ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 4 uses
  %.not.i.i143 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i143, label %.lr.ph.i.i.i149.preheader, label %bb.z

bb.z:                                             ; preds = %.critedge76
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !50 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144: ; preds = %bb.z
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !53
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 32) #28
  br label %.lr.ph.i.i.i149.preheader

.lr.ph.i.i.i149.preheader:                        ; preds = %.critedge76, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.a, ptr %7, align 8, !tbaa !64
  %.sroa.8301.0..sroa_idx304 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %.sroa.8301.0..sroa_idx304, align 8, !tbaa !33
  %.sroa.10306.0..sroa_idx309 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %.sroa.12311.0..sroa_idx314 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 9, ptr %.sroa.12311.0..sroa_idx314, align 8, !tbaa !33
  %.sroa.14.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %.sroa.14.0..sroa_idx318, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bp = select i1 %.not1.i.i.i116, i64 2, i64 1 ; 10 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150361 = icmp eq i64 %i.br, 0
  br i1 %.not1.i.i.i150361, label %.lr.ph.i.i.i149, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit

.lr.ph.i.i.i149:                                  ; preds = %.lr.ph.i.i.i149.preheader
  %i.bs = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150 = icmp eq i64 %i.bu, 0
  br i1 %.not1.i.i.i150, label %.lr.ph.i.i.i149.1, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i149.1:                                ; preds = %.lr.ph.i.i.i149
  %i.bv = add nuw nsw i64 %i.bp, 2                ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.1 = icmp eq i64 %i.bx, 0
  br i1 %.not1.i.i.i150.1, label %.lr.ph.i.i.i149.2, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i149.2:                                ; preds = %.lr.ph.i.i.i149.1
  %i.by = add nuw nsw i64 %i.bp, 3                ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.2 = icmp eq i64 %i.ca, 0
  br i1 %.not1.i.i.i150.2, label %.lr.ph.i.i.i149.3, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i149.3:                                ; preds = %.lr.ph.i.i.i149.2
  %i.cb = or disjoint i64 %i.bp, 4                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.3 = icmp eq i64 %i.cd, 0
  br i1 %.not1.i.i.i150.3, label %.lr.ph.3, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.3:                                         ; preds = %.lr.ph.i.i.i149.3
  %32 = add nuw nsw i64 %i.bp, 5                  ; 3 uses
  %.not.i.i.i151.3 = icmp eq i64 %32, 9
  br i1 %.not.i.i.i151.3, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i149.4

.lr.ph.i.i.i149.4:                                ; preds = %.lr.ph.3
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.4 = icmp eq i64 %i.cf, 0
  br i1 %.not1.i.i.i150.4, label %.lr.ph.4, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.4:                                         ; preds = %.lr.ph.i.i.i149.4
  %i.cg = add nuw nsw i64 %i.bp, 6                ; 3 uses
  %.not.i.i.i151.4 = icmp eq i64 %i.cg, 9
  br i1 %.not.i.i.i151.4, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i149.5

.lr.ph.i.i.i149.5:                                ; preds = %.lr.ph.4
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.5 = icmp eq i64 %i.ci, 0
  br i1 %.not1.i.i.i150.5, label %.lr.ph.5, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.5:                                         ; preds = %.lr.ph.i.i.i149.5
  %i.cj = add nuw nsw i64 %i.bp, 7                ; 3 uses
  %.not.i.i.i151.5 = icmp eq i64 %i.cj, 9
  br i1 %.not.i.i.i151.5, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i149.6

.lr.ph.i.i.i149.6:                                ; preds = %.lr.ph.5
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.6 = icmp eq i64 %i.cl, 0
  br i1 %.not1.i.i.i150.6, label %.lr.ph.6, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.6:                                         ; preds = %.lr.ph.i.i.i149.6
  br i1 %.not1.i.i.i116, label %.lr.ph.i.i.i149.7, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge

.lr.ph.i.i.i149.7:                                ; preds = %.lr.ph.6
  %i.cm = or disjoint i64 %i.bp, 8                ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.7 = icmp eq i64 %i.co, 0
  br i1 %.not1.i.i.i150.7, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i149.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i149, %.lr.ph.i.i.i149.1, %.lr.ph.i.i.i149.2, %.lr.ph.i.i.i149.3, %.lr.ph.i.i.i149.4, %.lr.ph.i.i.i149.5, %.lr.ph.i.i.i149.6, %.lr.ph.i.i.i149.7, %.lr.ph.i.i.i149.preheader, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge
  %i.cp = phi i64 [ 9, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge ], [ %i.bp, %.lr.ph.i.i.i149.preheader ], [ %i.bs, %.lr.ph.i.i.i149 ], [ %i.bv, %.lr.ph.i.i.i149.1 ], [ %i.by, %.lr.ph.i.i.i149.2 ], [ %i.cb, %.lr.ph.i.i.i149.3 ], [ %32, %.lr.ph.i.i.i149.4 ], [ %i.cg, %.lr.ph.i.i.i149.5 ], [ %i.cj, %.lr.ph.i.i.i149.6 ], [ %i.cm, %.lr.ph.i.i.i149.7 ] ; 5 uses
  store i64 %i.cp, ptr %.sroa.10306.0..sroa_idx309, align 8
  store i64 0, ptr %9, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %spec.select, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 0, ptr %10, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.cr, align 8
  br i1 %.not1.i.i.i116, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

bb.ab:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.cs = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %.critedge78, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit142, %bb.o
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit142 ], [ %i.am, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit273

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.as

bb.ae:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i154 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i154, label %_ZNK7testing15AssertionResult15failure_messageEv.exit155, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit155

_ZNK7testing15AssertionResult15failure_messageEv.exit155: ; preds = %bb.ag, %bb.af
  %i.cy = phi ptr [ %i.cx, %bb.ag ], [ @.str.108, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 347, ptr noundef %i.cy)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit155
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cz = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %bb.ai
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(128) %i.cz) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit158

_ZN7testing7MessageD2Ev.exit158:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.dd = load ptr, ptr %i.cv, align 8, !tbaa !46 ; 4 uses
  %.not.i.i159 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i159, label %_ZN7testing15AssertionResultD2Ev.exit163, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit158
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !50 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160: ; preds = %bb.aj
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !53
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit163

_ZN7testing15AssertionResultD2Ev.exit163:         ; preds = %_ZN7testing7MessageD2Ev.exit158, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.dc

bb.ak:                                            ; preds = %bb.ae
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit166

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit155
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn52 = phi { ptr, i32 } [ %i.dl, %bb.am ], [ %i.dk, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.dm = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i164, label %_ZN7testing7MessageD2Ev.exit166, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165: ; preds = %bb.an
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(128) %i.dm) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit166

_ZN7testing7MessageD2Ev.exit166:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165, %bb.an, %bb.ak
  %.pn52.pn = phi { ptr, i32 } [ %i.dj, %bb.ak ], [ %.pn52, %bb.an ], [ %.pn52, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.as

.critedge78:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !46 ; 4 uses
  %.not.i.i167 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i167, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge78
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !50 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168: ; preds = %bb.ao
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !53
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef 32) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, %.critedge78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.dx = udiv i64 %i.cp, 3
  %i.dy = urem i64 %i.cp, 3                       ; 2 uses
  store i64 %i.dx, ptr %14, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.dy, ptr %i.dz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i64 1, ptr %15, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.ea, align 8
  %.off = add i64 %i.cp, -3
  %i.eb = icmp ult i64 %.off, 3
  %i.ec = icmp eq i64 %i.dy, 0
  %i.ed = and i1 %i.eb, %i.ec
  br i1 %i.ed, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit176 unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.73, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit176 unwind label %bb.at

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit176: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ee = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %.critedge80, label %bb.au

bb.as:                                            ; preds = %_ZN7testing7MessageD2Ev.exit166, %bb.ad
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %_ZN7testing7MessageD2Ev.exit166 ], [ %i.cu, %bb.ad ]
end_hunk_1
