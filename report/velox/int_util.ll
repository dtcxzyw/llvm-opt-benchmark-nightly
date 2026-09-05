Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/int_util?download=true
inline.NumInlined: 2119
inline.NumDeleted: 601
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 286
loop-unroll.NumUnrolled: 304
begin_hunk_0_@_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.cz = add i64 %i.cy, 1
  tail call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit13: ; preds = %bb.f
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal7ToCharsItJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i16 noundef zeroext %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !261
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 15, i8 noundef signext 0)
  %i.b = load ptr, ptr %0, align 8, !tbaa !196    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !262
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = zext i16 %1 to i32                       ; 4 uses
  %i.g = icmp eq i64 %i.e, 0
  %i.h = icmp eq i16 %1, 0                        ; 2 uses
  br i1 %i.g, label %.lr.ph, label %bb.a, !prof !150

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.h, label %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i16 %1, 10
  br i1 %i.i, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.j = icmp ult i16 %1, 100
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.k = icmp ult i16 %1, 1000
  br i1 %i.k, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult i16 %1, 10000
  %..i = select i1 %i.l, i32 4, i32 5
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i, %bb.b
  %.022.i.i.i = phi i32 [ %..i, %bb.d ], [ 3, %bb.c ], [ 2, %.lr.ph.i.i.i ], [ 1, %bb.b ] ; 2 uses
  %i.m = zext nneg i32 %.022.i.i.i to i64         ; 3 uses
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.thread, label %bb.e, !prof !150

.lr.ph.thread:                                    ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.o = icmp ult i16 %1, 10000
  %..i1583 = select i1 %i.o, i32 4, i32 5
  br label %.lr.ph.split

bb.e:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.p = icmp ugt i16 %1, 99
  br i1 %i.p, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.q = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.t, %.lr.ph.i9.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.ae, %.lr.ph.i9.i.i ], [ %i.q, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.r = urem i32 %.020.i.i.i, 100
  %i.s = shl nuw nsw i32 %i.r, 1
  %i.t = udiv i32 %.020.i.i.i, 100                ; 2 uses
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !142
  %i.y = zext i32 %.01819.i.i.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  store i8 %i.x, ptr %i.z, align 1, !tbaa !142
  %i.aa = load i8, ptr %i.v, align 2, !tbaa !142
  %i.ab = add i32 %.01819.i.i.i, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !142
  %i.ae = add i32 %.01819.i.i.i, -2
  %i.af = icmp samesign ugt i32 %.020.i.i.i, 9999
  br i1 %i.af, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !129

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.t, %.lr.ph.i9.i.i ] ; 3 uses
  %i.ag = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !142
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !142
  %i.an = load i8, ptr %i.aj, align 2, !tbaa !142
  br label %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.ap = or disjoint i8 %i.ao, 48
  br label %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge

_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge: ; preds = %bb.g, %bb.f, %bb.a
  %.sink96.i = phi i8 [ 48, %bb.a ], [ %i.an, %bb.f ], [ %i.ap, %bb.g ]
  %.sink.i = phi i64 [ 1, %bb.a ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  store i8 %.sink96.i, ptr %i.b, align 1, !tbaa !142
  %.pn63.i = getelementptr i8, ptr %i.b, i64 %.sink.i
  br label %bb.k

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.aq = icmp ult i16 %1, 10000
  %..i15 = select i1 %i.aq, i32 4, i32 5
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre70 = load ptr, ptr %0, align 8, !tbaa !196
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us, %.lr.ph.split.us.preheader
  %i.ar = phi ptr [ %.pre70, %.lr.ph.split.us.preheader ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us ]
  %i.as = icmp eq ptr %i.ar, %i.a
  %i.at = load i64, ptr %i.a, align 8
  %i.au = shl i64 %i.at, 1
  %i.av = select i1 %i.as, i64 30, i64 %i.au
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.av, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us unwind label %.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us: ; preds = %.lr.ph.split.us
  %i.aw = load ptr, ptr %0, align 8, !tbaa !196   ; 3 uses
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !262
  %.not59 = icmp eq i64 %i.ax, 1
  br i1 %.not59, label %.lr.ph.split.us, label %._crit_edge.loopexit, !prof !150

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph.split:                                     ; preds = %.lr.ph.thread, %.lr.ph
  %..i1584 = phi i32 [ %..i1583, %.lr.ph.thread ], [ %..i15, %.lr.ph ]
  %i.az = icmp ugt i16 %1, 99
  br i1 %i.az, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ba = icmp ult i16 %1, 1000
  %.pre68 = load ptr, ptr %0, align 8, !tbaa !196
  %spec.select = select i1 %i.ba, i32 3, i32 %..i1584 ; 2 uses
  %i.bb = zext nneg i32 %spec.select to i64       ; 2 uses
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us44, %.lr.ph.split.split.us.preheader
  %i.bc = phi ptr [ %.pre68, %.lr.ph.split.split.us.preheader ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us44 ]
  %i.bd = icmp eq ptr %i.bc, %i.a
  %i.be = load i64, ptr %i.a, align 8
  %i.bf = shl i64 %i.be, 1
  %i.bg = select i1 %i.bd, i64 30, i64 %i.bf
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bg, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us44 unwind label %.split.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us44: ; preds = %.lr.ph.split.split.us
  %i.bh = load ptr, ptr %0, align 8, !tbaa !196   ; 6 uses
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !262
  %i.bj = add i64 %i.bi, -1                       ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = icmp slt i64 %i.bj, %i.bb
  %or.cond = select i1 %i.bk, i1 true, i1 %i.bl, !prof !263
  br i1 %or.cond, label %.lr.ph.split.split.us, label %.lr.ph.preheader.i.i.i27.us, !prof !263

.lr.ph.preheader.i.i.i27.us:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us44
  %i.bm = add nsw i32 %spec.select, -1
  br label %.lr.ph.i9.i.i28.us

.lr.ph.i9.i.i28.us:                               ; preds = %.lr.ph.i9.i.i28.us, %.lr.ph.preheader.i.i.i27.us
  %.020.i.i.i29.us = phi i32 [ %i.bp, %.lr.ph.i9.i.i28.us ], [ %i.f, %.lr.ph.preheader.i.i.i27.us ] ; 4 uses
  %.01819.i.i.i30.us = phi i32 [ %i.ca, %.lr.ph.i9.i.i28.us ], [ %i.bm, %.lr.ph.preheader.i.i.i27.us ] ; 3 uses
  %i.bn = urem i32 %.020.i.i.i29.us, 100
  %i.bo = shl nuw nsw i32 %i.bn, 1
  %i.bp = udiv i32 %.020.i.i.i29.us, 100          ; 3 uses
  %i.bq = zext nneg i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !142
  %i.bu = zext i32 %.01819.i.i.i30.us to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bu
  store i8 %i.bt, ptr %i.bv, align 1, !tbaa !142
  %i.bw = load i8, ptr %i.br, align 2, !tbaa !142
  %i.bx = add i32 %.01819.i.i.i30.us, -1
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.by
  store i8 %i.bw, ptr %i.bz, align 1, !tbaa !142
  %i.ca = add i32 %.01819.i.i.i30.us, -2
  %i.cb = icmp samesign ugt i32 %.020.i.i.i29.us, 9999
  br i1 %i.cb, label %.lr.ph.i9.i.i28.us, label %._crit_edge.i.i.i18.loopexit.us, !llvm.loop !129

._crit_edge.i.i.i18.loopexit.us:                  ; preds = %.lr.ph.i9.i.i28.us
  %2 = icmp samesign ugt i32 %.020.i.i.i29.us, 999
  br i1 %2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i18.loopexit.us
  %i.cc = trunc nuw nsw i32 %i.bp to i8
  %i.cd = or disjoint i8 %i.cc, 48
  br label %._crit_edge.loopexit60

bb.i:                                             ; preds = %._crit_edge.i.i.i18.loopexit.us
  %i.ce = shl nuw nsw i32 %i.bp, 1
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !142
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !142
  %i.ck = load i8, ptr %i.cg, align 2, !tbaa !142
  br label %._crit_edge.loopexit60

.split.split.us:                                  ; preds = %.lr.ph.split.split.us
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.cm = icmp ult i16 %1, 10
  %i.cn = icmp samesign ugt i16 %1, 9
  %i.co = trunc nuw nsw i16 %1 to i8
  %i.cp = or disjoint i8 %i.co, 48
  %i.cq = shl nuw nsw i32 %i.f, 1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %.pre66 = load ptr, ptr %0, align 8, !tbaa !196
  %i.cu = select i1 %i.cm, i64 1, i64 2           ; 2 uses
  br label %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit31

_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %.lr.ph.split.split
  %i.cv = phi ptr [ %.pre66, %.lr.ph.split.split ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ]
  %i.cw = icmp eq ptr %i.cv, %i.a
  %i.cx = load i64, ptr %i.a, align 8
  %i.cy = shl i64 %i.cx, 1
  %i.cz = select i1 %i.cw, i64 30, i64 %i.cy
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cz, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %.split.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit31
  %i.da = load ptr, ptr %0, align 8, !tbaa !196   ; 4 uses
  %i.db = load i64, ptr %i.c, align 8, !tbaa !262
  %i.dc = add i64 %i.db, -1
  %i.dd = icmp slt i64 %i.dc, %i.cu
  br i1 %i.dd, label %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit31, label %._crit_edge.i.i.i18, !prof !263

._crit_edge.i.i.i18:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  br i1 %i.cn, label %bb.j, label %._crit_edge.loopexit61

bb.j:                                             ; preds = %._crit_edge.i.i.i18
  %i.de = load i8, ptr %i.ct, align 1, !tbaa !142
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store i8 %i.de, ptr %i.df, align 1, !tbaa !142
  %i.dg = load i8, ptr %i.cs, align 2, !tbaa !142
  br label %._crit_edge.loopexit61

.split.split:                                     ; preds = %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit31
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.split

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us
  store i8 48, ptr %i.aw, align 1, !tbaa !142
  br label %._crit_edge

._crit_edge.loopexit60:                           ; preds = %bb.h, %bb.i
  %.sink96.i21.us46 = phi i8 [ %i.cd, %bb.h ], [ %i.ck, %bb.i ]
  store i8 %.sink96.i21.us46, ptr %i.bh, align 1, !tbaa !142
  br label %._crit_edge

._crit_edge.loopexit61:                           ; preds = %bb.j, %._crit_edge.i.i.i18
  %.sink96.i21 = phi i8 [ %i.dg, %bb.j ], [ %i.cp, %._crit_edge.i.i.i18 ]
  store i8 %.sink96.i21, ptr %i.da, align 1, !tbaa !142
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit61, %._crit_edge.loopexit60, %._crit_edge.loopexit
  %.us-phi39 = phi i64 [ %i.bb, %._crit_edge.loopexit60 ], [ 1, %._crit_edge.loopexit ], [ %i.cu, %._crit_edge.loopexit61 ]
  %.us-phi40 = phi ptr [ %i.bh, %._crit_edge.loopexit60 ], [ %i.aw, %._crit_edge.loopexit ], [ %i.da, %._crit_edge.loopexit61 ]
  %.pn63.i23.le = getelementptr i8, ptr %.us-phi40, i64 %.us-phi39
  br label %bb.k

bb.k:                                             ; preds = %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge, %._crit_edge
  %.pn63.i.pn.lcssa = phi ptr [ %.pn63.i23.le, %._crit_edge ], [ %.pn63.i, %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge ]
  %i.di = load ptr, ptr %0, align 8, !tbaa !196
  %i.dj = ptrtoint ptr %.pn63.i.pn.lcssa to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dl, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit13 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split:                                           ; preds = %.split.us, %.split.split.us, %.split.split, %bb.l
  %.pn10 = phi { ptr, i32 } [ %i.dm, %bb.l ], [ %i.ay, %.split.us ], [ %i.dh, %.split.split ], [ %i.cl, %.split.split.us ]
  %i.dn = load ptr, ptr %0, align 8, !tbaa !196   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.a
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.split
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !142
  %i.dq = add i64 %i.dp, 1
  tail call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit13: ; preds = %bb.k
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal7ToCharsIjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !261
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 15, i8 noundef signext 0)
  %i.b = load ptr, ptr %0, align 8, !tbaa !196    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !262
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %bb.a, !prof !150

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %1, 10
  br i1 %i.h, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.h
  %.030.i.i.i = phi i32 [ %i.p, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02329.i.i.i = phi i32 [ %i.o, %bb.h ], [ %1, %bb.b ] ; 5 uses
  %i.i = icmp ult i32 %.02329.i.i.i, 100
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.j = add i32 %.030.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.k = icmp ult i32 %.02329.i.i.i, 1000
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = add i32 %.030.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = icmp ult i32 %.02329.i.i.i, 10000
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = add i32 %.030.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.o = udiv i32 %.02329.i.i.i, 10000
  %i.p = add i32 %.030.i.i.i, 4                   ; 2 uses
  %i.q = icmp ult i32 %.02329.i.i.i, 100000
  br i1 %i.q, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !128

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.022.i.i.i = phi i32 [ %i.n, %bb.g ], [ %i.j, %bb.c ], [ %i.l, %bb.e ], [ 1, %bb.b ], [ %i.p, %bb.h ] ; 2 uses
  %i.r = zext i32 %.022.i.i.i to i64              ; 3 uses
  %i.s = icmp slt i64 %i.e, %i.r
  br i1 %i.s, label %.lr.ph, label %bb.i, !prof !150

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.t = icmp ugt i32 %1, 99
  br i1 %i.t, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.i
  %i.u = add i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.x, %.lr.ph.i9.i.i ], [ %1, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.ai, %.lr.ph.i9.i.i ], [ %i.u, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.v = urem i32 %.020.i.i.i, 100
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = udiv i32 %.020.i.i.i, 100                ; 2 uses
  %i.y = zext nneg i32 %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !142
  %i.ac = zext i32 %.01819.i.i.i to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ac
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !142
  %i.ae = load i8, ptr %i.z, align 2, !tbaa !142
  %i.af = add i32 %.01819.i.i.i, -1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ag
  store i8 %i.ae, ptr %i.ah, align 1, !tbaa !142
  %i.ai = add i32 %.01819.i.i.i, -2
  %i.aj = icmp ugt i32 %.020.i.i.i, 9999
  br i1 %i.aj, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !129

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.i
  %.0.lcssa.i.i.i = phi i32 [ %1, %bb.i ], [ %i.x, %.lr.ph.i9.i.i ] ; 3 uses
  %i.ak = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.al = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.am ; 2 uses
end_hunk_0
