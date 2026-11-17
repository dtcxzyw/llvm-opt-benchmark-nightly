Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/vm?download=true
inline.NumInlined: 28114
inline.NumDeleted: 15480
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN3fmt3v116detail12write_paddedIcLNS0_5align4typeE1ENS0_14basic_appenderIcEEZNS1_5writeIcS6_EET0_S8_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS6_E_EET1_SG_SE_mmOT2_:bb.a
  %i.ac = load i8, ptr %4, align 8, !tbaa !820, !range !164, !noundef !165
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ae, align 8, !tbaa !810
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !76
  %i.af = tail call ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %.sroa.09.0, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  br label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !821 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !822 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj ; 2 uses
  %.not24.i.i.i = icmp samesign eq i64 %i.aj, 0
  br i1 %.not24.i.i.i, label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph27.i.i.i

.lr.ph27.i.i.i:                                   ; preds = %bb.f
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.am, align 8, !tbaa !741
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph27.i.i.i
  %i.ap = phi i64 [ %.pre.i.i.i, %.lr.ph27.i.i.i ], [ %i.bu, %._crit_edge.i.i.i ] ; 2 uses
  %.01925.i.i.i = phi ptr [ %i.ah, %.lr.ph27.i.i.i ], [ %i.bv, %._crit_edge.i.i.i ] ; 9 uses
  %i.aq = ptrtoint ptr %.01925.i.i.i to i64       ; 2 uses
  %i.ar = sub i64 %i.al, %i.aq                    ; 2 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !740 ; 2 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !738
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.as), !inline_history !1956
  %.pre30.i.i.i = load i64, ptr %i.an, align 8, !tbaa !740
  %.pre31.i.i.i = load i64, ptr %i.am, align 8, !tbaa !741
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.aw = phi i64 [ %i.ap, %bb.g ], [ %.pre31.i.i.i, %bb.h ] ; 4 uses
  %i.ax = phi i64 [ %i.at, %bb.g ], [ %.pre30.i.i.i, %bb.h ]
  %i.ay = sub i64 %i.ax, %i.aw
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ar) ; 13 uses
  %i.az = load ptr, ptr %.sroa.09.0, align 8, !tbaa !739 ; 2 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw ; 7 uses
  %.not29.i.i.i = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %.not29.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bc = add i64 %i.aw, %i.ba
  %i.bd = sub i64 %i.aq, %i.bc
  %diff.check = icmp ugt i64 %i.bd, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check36 = icmp ult i64 %spec.select.i.i.i, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %spec.select.i.i.i, 28
  %n.vec = and i64 %spec.select.i.i.i, -32        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !319
  %wide.load37 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !319
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <16 x i8> %wide.load, ptr %i.bh, align 1, !tbaa !319
  store <16 x i8> %wide.load37, ptr %i.bi, align 1, !tbaa !319
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1957

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !823

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %spec.select.i.i.i, -4       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %index39
  %wide.load40 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !319
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index39
  store <4 x i8> %wide.load40, ptr %i.bl, align 1, !tbaa !319
  %index.next41 = add nuw i64 %index39, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1958

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %spec.select.i.i.i, %n.vec38
  br i1 %cmp.n42, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.023.i.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.prol ], [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %.023.i.i.i.prol
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !319
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.i.prol
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !319
  %i.bq = add nuw i64 %.023.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1959

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.023.i.i.i.unr = phi i64 [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.i.prol ]
  %i.br = sub i64 %.023.i.i.i.ph, %spec.select.i.i.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i = load i64, ptr %i.am, align 8, !tbaa !741
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %i.bt = phi i64 [ %.pre32.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aw, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i ]
  %i.bu = add i64 %i.bt, %spec.select.i.i.i       ; 2 uses
  store i64 %i.bu, ptr %i.am, align 8, !tbaa !741
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %spec.select.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, %i.ak
  br i1 %.not.i.i.i, label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !35

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.023.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i ], [ %.023.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %.023.i.i.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !319
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.i
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !319
  %i.bz = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !319
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !319
  %i.cd = add nuw i64 %.023.i.i.i, 2              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !319
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !319
  %i.ch = add nuw i64 %.023.i.i.i, 3              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !319
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !319
  %i.cl = add nuw i64 %.023.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cl, %spec.select.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1960

_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.04.0.i = phi ptr [ %i.af, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.c, %i.l
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cm = tail call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS1_6fill_tE(ptr %.sroa.04.0.i, i64 noundef %i.m, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cm, %bb.i ], [ %.sroa.04.0.i, %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_(ptr %0, i64 %1, ptr noundef byval(%class.anon.1280) align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !810 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !811 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !811 ; 2 uses
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit, %bb.b
  %.028 = phi ptr [ %0, %bb.b ], [ %i.br, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit ] ; 8 uses
  %.not36 = icmp ult ptr %.028, %i.f
  br i1 %.not36, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %.028, align 1, !tbaa !319
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = lshr i32 %i.i, 3                         ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @.str.207, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !319
  %i.n = sext i8 %i.m to i64                      ; 5 uses
  %i.o = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !409
  %i.q = getelementptr inbounds nuw i8, ptr %.028, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !319   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.028, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !319   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.028, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !319   ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.n
  %i.x = load i32, ptr %i.w, align 4, !tbaa !409
  %i.y = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.n
  %i.z = load i32, ptr %i.y, align 4, !tbaa !409
  %i.aa = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.n
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !409
  %i.ac = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !76 ; 2 uses
  %.not.i8.not.i = icmp eq i64 %i.ac, 0           ; 2 uses
  br i1 %.not.i8.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %.sroa.5.0.copyload, align 8, !tbaa !76
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %.028 to i64
  %i.af = sub i64 %i.ae, %i.g
  store i64 %i.af, ptr %.sroa.7.0.copyload, align 8, !tbaa !76
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit

_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit: ; preds = %bb.e, %bb.f
  %i.ag = and i8 %i.t, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 6
  %i.aj = and i8 %i.r, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 12
  %i.am = and i32 %i.p, %i.i
  %i.an = shl nuw nsw i32 %i.am, 18
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ai, %i.ao
  %i.aq = and i8 %i.v, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = lshr i32 %i.as, %i.x                    ; 3 uses
  %i.au = icmp ult i32 %i.at, %i.z
  %i.av = select i1 %i.au, i32 64, i32 0
  %i.aw = lshr i8 %i.t, 4
  %i.ax = and i8 %i.aw, 12
  %i.ay = lshr i8 %i.r, 2
  %i.az = and i8 %i.ay, 48
  %i.ba = or disjoint i8 %i.ax, %i.az
  %i.bb = lshr i8 %i.v, 6
  %i.bc = or disjoint i8 %i.ba, %i.bb
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.av, %i.bd
  %i.bf = icmp samesign ugt i32 %i.at, 1114111
  %i.bg = select i1 %i.bf, i32 256, i32 0
  %i.bh = or disjoint i32 %i.be, %i.bg
  %.mask.i.i = and i32 %i.at, 2147481600
  %i.bi = icmp eq i32 %.mask.i.i, 55296
  %i.bj = select i1 %i.bi, i32 128, i32 0
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = xor i32 %i.bk, 42
  %i.bm = lshr i32 %i.bl, %i.ab
  %.not.i = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds i8, ptr %.028, i64 %i.n
  %.not.i.i = lshr i32 -2130771968, %i.j
  %i.bo = and i32 %.not.i.i, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.br = select i1 %.not.i, ptr %i.bq, ptr %i.q
  br i1 %.not.i8.not.i, label %.thread, label %bb.c, !llvm.loop !1961

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.230 = phi ptr [ %0, %bb.a ], [ %.028, %bb.c ] ; 9 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %.230 to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %.not37 = icmp eq ptr %i.bs, %.230
  br i1 %.not37, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bv, 8
  %i.bw = sub i64 %i.bu, %i.c
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check67 = icmp ult i64 %i.bv, 32
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bx = and i64 %i.bv, 24
  %n.vec = and i64 %i.bv, -32                     ; 5 uses
  %i.by = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.bz = getelementptr i8, ptr %.230, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep68 = getelementptr i8, ptr %.230, i64 %index ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep68, align 1, !tbaa !319
  %wide.load69 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !319
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !319
  store <16 x i8> %wide.load69, ptr %i.cb, align 1, !tbaa !319
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1962

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !817

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.bv, -8                    ; 4 uses
  %i.cd = getelementptr i8, ptr %i.b, i64 %n.vec70
  %i.ce = getelementptr i8, ptr %.230, i64 %n.vec70
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next75, %vec.epilog.vector.body ] ; 3 uses
  %next.gep72 = getelementptr i8, ptr %i.b, i64 %index71
  %next.gep73 = getelementptr i8, ptr %.230, i64 %index71
  %wide.load74 = load <8 x i8>, ptr %next.gep73, align 1, !tbaa !319
  store <8 x i8> %wide.load74, ptr %next.gep72, align 1, !tbaa !319
  %index.next75 = add nuw i64 %index71, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1963

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.bv, %n.vec70
  br i1 %cmp.n76, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.230, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 3 uses
  %i.cg = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph79 = ptrtoaddr ptr %.057.i.ph to i64  ; 2 uses
  %i.ch = sub i64 %i.cg, %.057.i.ph79
  %xtraiter = and i64 %i.ch, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.ck, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ci, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cj = load i8, ptr %.057.i.prol, align 1, !tbaa !319
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cj, ptr %.08.i.prol, align 1, !tbaa !319
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1964

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ci, %.lr.ph.i.prol ]
  %i.cl = sub i64 %.057.i.ph79, %i.cg
  %i.cm = icmp ugt i64 %i.cl, -8
  br i1 %i.cm, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.di, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.co = load i8, ptr %.057.i, align 1, !tbaa !319
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.co, ptr %.08.i, align 1, !tbaa !319
  %i.cq = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !319
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !319
  %i.ct = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !319
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !319
  %i.cw = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !319
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !319
  %i.cz = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !319
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !319
  %i.dc = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !319
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !319
  %i.df = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !319
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !319
  %i.di = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !319
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !319
  %.not.i39.7 = icmp eq ptr %i.di, %i.bs
  br i1 %.not.i39.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1965

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dl = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.dm = ptrtoint ptr %i.b to i64
  %.pre55 = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !76 ; 2 uses
  %.not.i8.not.i4064 = icmp eq i64 %.pre55, 0
  br i1 %.not.i8.not.i4064, label %.critedge, label %.lr.ph

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit: ; preds = %.lr.ph
  %i.dn = ptrtoint ptr %.066 to i64
  %i.do = sub i64 %i.fz, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %.33165, i64 %i.do ; 2 uses
  %.not.i8.not.i40 = icmp eq i64 %i.em, 0
  br i1 %.not.i8.not.i40, label %.critedge, label %.lr.ph, !llvm.loop !1966

.lr.ph:                                           ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  %.066 = phi ptr [ %i.fy, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 6 uses
  %.33165 = phi ptr [ %i.dp, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit ], [ %.230, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ]
  %i.dq = phi i64 [ %i.em, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit ], [ %.pre55, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ]
  %i.dr = load i8, ptr %.066, align 1, !tbaa !319
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = lshr i32 %i.ds, 3                       ; 2 uses
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @.str.207, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !319
  %i.dx = sext i8 %i.dw to i64                    ; 5 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !409
  %i.ea = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.dx
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !409
  %i.ec = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dx
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !409
  %i.ee = getelementptr inbounds nuw i8, ptr %.066, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !319 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.066, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !319 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.066, i64 1 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !319 ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.dx
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !409
  %i.em = add i64 %i.dq, -1                       ; 3 uses
  store i64 %i.em, ptr %.sroa.5.0.copyload, align 8, !tbaa !76
  %i.en = and i8 %i.eh, 63
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 6
  %i.eq = and i8 %i.ej, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 12
  %i.et = and i32 %i.el, %i.ds
  %i.eu = shl nuw nsw i32 %i.et, 18
  %i.ev = or disjoint i32 %i.es, %i.eu
  %i.ew = or disjoint i32 %i.ep, %i.ev
  %i.ex = and i8 %i.ef, 63
  %i.ey = zext nneg i8 %i.ex to i32
  %i.ez = or disjoint i32 %i.ew, %i.ey
  %i.fa = lshr i32 %i.ez, %i.ed                   ; 3 uses
  %i.fb = icmp ult i32 %i.fa, %i.eb
  %i.fc = select i1 %i.fb, i32 64, i32 0
  %i.fd = lshr i8 %i.eh, 4
  %i.fe = and i8 %i.fd, 12
  %i.ff = lshr i8 %i.ej, 2
  %i.fg = and i8 %i.ff, 48
  %i.fh = or disjoint i8 %i.fe, %i.fg
  %i.fi = lshr i8 %i.ef, 6
  %i.fj = or disjoint i8 %i.fh, %i.fi
  %i.fk = zext nneg i8 %i.fj to i32
  %i.fl = or disjoint i32 %i.fc, %i.fk
  %i.fm = icmp samesign ugt i32 %i.fa, 1114111
  %i.fn = select i1 %i.fm, i32 256, i32 0
  %i.fo = or disjoint i32 %i.fl, %i.fn
  %.mask.i.i41 = and i32 %i.fa, 2147481600
  %i.fp = icmp eq i32 %.mask.i.i41, 55296
  %i.fq = select i1 %i.fp, i32 128, i32 0
  %i.fr = or disjoint i32 %i.fo, %i.fq
  %i.fs = xor i32 %i.fr, 42
  %i.ft = lshr i32 %i.fs, %i.dz
  %.not.i42 = icmp eq i32 %i.ft, 0
  %i.fu = getelementptr inbounds i8, ptr %.066, i64 %i.dx
  %.not.i.i43 = lshr i32 -2130771968, %i.dt
  %i.fv = and i32 %.not.i.i43, 1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fw
  %i.fy = select i1 %.not.i42, ptr %i.fx, ptr %i.ei ; 2 uses
  %i.fz = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.ga = sub i64 %i.fz, %i.dm
  %i.gb = icmp slt i64 %i.ga, %i.bv
  br i1 %i.gb, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, label %.thread.sink.split, !llvm.loop !1966

.critedge:                                        ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader
  %.331.lcssa = phi ptr [ %.230, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ], [ %i.dp, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit ]
  %i.gc = ptrtoint ptr %.331.lcssa to i64
  %i.gd = sub i64 %i.gc, %i.dl
  store i64 %i.gd, ptr %.sroa.7.0.copyload, align 8, !tbaa !76
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %.lr.ph, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.thread

.thread:                                          ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit, %.thread.sink.split, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN3fmt3v116detail16write_escaped_cpINS1_17counting_iteratorEcEET_S4_RKNS1_18find_escape_resultIT0_EE(i64 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 4 uses
  %i.b = alloca [4 x i8], align 1                 ; 4 uses
  %i.c = alloca [2 x i8], align 1                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !815  ; 7 uses
  switch i32 %i.e, label %bb.b [
    i32 10, label %bb.l
    i32 13, label %bb.l
    i32 9, label %bb.l
    i32 34, label %bb.l
    i32 39, label %bb.l
    i32 92, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %i.e, 256
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.09.i.i = phi i32 [ %i.e, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.g, %bb.c ], [ %i.l, %bb.d ]
  %i.h = and i32 %.09.i.i, 15
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.209, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !319
  %i.l = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.k, ptr %i.l, align 1, !tbaa !319
  %i.m = lshr i32 %.09.i.i, 4                     ; 2 uses
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail15write_codepointILm2EcNS1_17counting_iteratorEEET1_S4_cj.exit, label %bb.d, !llvm.loop !36

_ZN3fmt3v116detail15write_codepointILm2EcNS1_17counting_iteratorEEET1_S4_cj.exit: ; preds = %bb.d
  %i.n = add i64 %0, 2
  %i.o = ptrtoaddr ptr %i.g to i64
  %i.p = ptrtoaddr ptr %i.c to i64
  %i.q = sub i64 %i.n, %i.p
  %i.r = add i64 %i.q, %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp ult i32 %i.e, 65536
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.09.i.i27 = phi i32 [ %i.e, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %.0.i.i28 = phi ptr [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %i.u = and i32 %.09.i.i27, 15
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @.str.209, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !319
  %i.y = getelementptr inbounds i8, ptr %.0.i.i28, i64 -1 ; 2 uses
  store i8 %i.x, ptr %i.y, align 1, !tbaa !319
  %i.z = lshr i32 %.09.i.i27, 4                   ; 2 uses
  %.not.i.i29 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i29, label %_ZN3fmt3v116detail15write_codepointILm4EcNS1_17counting_iteratorEEET1_S4_cj.exit, label %bb.g, !llvm.loop !36

_ZN3fmt3v116detail15write_codepointILm4EcNS1_17counting_iteratorEEET1_S4_cj.exit: ; preds = %bb.g
  %i.aa = add i64 %0, 2
  %i.ab = ptrtoaddr ptr %i.t to i64
  %i.ac = ptrtoaddr ptr %i.b to i64
  %i.ad = sub i64 %i.aa, %i.ac
  %i.ae = add i64 %i.ad, %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.af = icmp ult i32 %i.e, 1114112
  br i1 %i.af, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.09.i.i30 = phi i32 [ %i.e, %bb.i ], [ %i.am, %bb.j ] ; 2 uses
  %.0.i.i31 = phi ptr [ %i.ag, %bb.i ], [ %i.al, %bb.j ]
  %i.ah = and i32 %.09.i.i30, 15
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @.str.209, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !319
  %i.al = getelementptr inbounds i8, ptr %.0.i.i31, i64 -1 ; 2 uses
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !319
  %i.am = lshr i32 %.09.i.i30, 4                  ; 2 uses
  %.not.i.i32 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i32, label %_ZN3fmt3v116detail15write_codepointILm8EcNS1_17counting_iteratorEEET1_S4_cj.exit, label %bb.j, !llvm.loop !36

_ZN3fmt3v116detail15write_codepointILm8EcNS1_17counting_iteratorEEET1_S4_cj.exit: ; preds = %bb.j
  %i.an = add i64 %0, 2
  %i.ao = ptrtoaddr ptr %i.ag to i64
  %i.ap = ptrtoaddr ptr %i.a to i64
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = add i64 %i.aq, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.loopexit

bb.k:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %1, align 8, !tbaa !813   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !814 ; 2 uses
  %.not63 = icmp eq ptr %i.as, %i.au
  br i1 %.not63, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.065 = phi ptr [ %i.ax, %.lr.ph ], [ %i.as, %bb.k ] ; 2 uses
  %.sroa.049.064 = phi i64 [ %i.aw, %.lr.ph ], [ %0, %bb.k ]
  %i.av = load i8, ptr %.065, align 1, !tbaa !319
  %.not.i.i35 = icmp ult i8 %i.av, 16             ; 0 uses
  %i.aw = add i64 %.sroa.049.064, 4               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.065, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.au
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ay = add i64 %0, 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.l, %_ZN3fmt3v116detail15write_codepointILm8EcNS1_17counting_iteratorEEET1_S4_cj.exit, %_ZN3fmt3v116detail15write_codepointILm4EcNS1_17counting_iteratorEEET1_S4_cj.exit, %_ZN3fmt3v116detail15write_codepointILm2EcNS1_17counting_iteratorEEET1_S4_cj.exit
  %.sroa.021.0 = phi i64 [ %i.r, %_ZN3fmt3v116detail15write_codepointILm2EcNS1_17counting_iteratorEEET1_S4_cj.exit ], [ %i.ae, %_ZN3fmt3v116detail15write_codepointILm4EcNS1_17counting_iteratorEEET1_S4_cj.exit ], [ %i.ar, %_ZN3fmt3v116detail15write_codepointILm8EcNS1_17counting_iteratorEEET1_S4_cj.exit ], [ %i.ay, %bb.l ], [ %0, %bb.k ], [ %i.aw, %.lr.ph ]
  ret i64 %.sroa.021.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 12 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -3
  %.not3669 = icmp sgt i64 %1, 3
  br i1 %.not3669, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02870 = phi ptr [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.02870, align 1, !tbaa !319
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.207, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !319
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.02870, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !409
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.02870, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !319   ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.02870, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !319 ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.02870, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !319 ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !409
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !409
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
end_hunk_0
