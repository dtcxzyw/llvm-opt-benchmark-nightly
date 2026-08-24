Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/pystring?download=true
inline.NumInlined: 1018
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8pystring6rsplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EES7_i:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

.critedge4.i:                                     ; preds = %.lr.ph270, %.critedge2.i
  %.141.i = phi i32 [ %.04083.i, %.critedge2.i ], [ %i.ak, %.lr.ph270 ]
  %.4.i = phi i64 [ %.239.i.lcssa, %.critedge2.i ], [ %.3.i269, %.lr.ph270 ] ; 2 uses
  %.1.i = phi i64 [ %.138.i.lcssa, %.critedge2.i ], [ %.3.i269, %.lr.ph270 ] ; 2 uses
  %.not.i = icmp eq i64 %.4.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !52

._crit_edge.i:                                    ; preds = %.critedge4.i
  %.not48.i = icmp eq i64 %.1.i, 0
  br i1 %.not48.i, label %._crit_edge.thread.i, label %.thread.i

.thread.i:                                        ; preds = %bb.h, %._crit_edge.i
  %.271.i = phi i64 [ %.1.i, %._crit_edge.i ], [ %.138.i.lcssa, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.cb = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !53
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.cc, ptr %5, align 8, !tbaa !27, !alias.scope !53
  %i.cd = load ptr, ptr %0, align 8, !tbaa !13, !noalias !53 ; 2 uses
  %spec.select.i.i.i54.i = call noundef i64 @llvm.umin.i64(i64 %.271.i, i64 %i.cb) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !53
  store i64 %spec.select.i.i.i54.i, ptr %i.d, align 8, !tbaa !28, !noalias !53
  %i.ce = icmp ugt i64 %spec.select.i.i.i54.i, 15
  br i1 %i.ce, label %.noexc10.i.i56.i, label %._crit_edge.i.i.i55.i

.noexc10.i.i56.i:                                 ; preds = %.thread.i
  %i.cf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.cf, ptr %5, align 8, !tbaa !13, !alias.scope !53
  %i.cg = load i64, ptr %i.d, align 8, !tbaa !28, !noalias !53
  store i64 %i.cg, ptr %i.cc, align 8, !tbaa !18, !alias.scope !53
  br label %._crit_edge.i.i.i55.i

._crit_edge.i.i.i55.i:                            ; preds = %.noexc10.i.i56.i, %.thread.i
  %i.ch = phi ptr [ %i.cf, %.noexc10.i.i56.i ], [ %i.cc, %.thread.i ] ; 2 uses
  switch i64 %spec.select.i.i.i54.i, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i55.i
  %i.ci = load i8, ptr %i.cd, align 1, !tbaa !18
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i

bb.s:                                             ; preds = %._crit_edge.i.i.i55.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cd, i64 %spec.select.i.i.i54.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i55.i
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !28, !noalias !53 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !21, !alias.scope !53
  %i.cl = load ptr, ptr %5, align 8, !tbaa !13, !alias.scope !53
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i8 0, ptr %i.cm, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !53
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !12  ; 6 uses
  %i.co = load ptr, ptr %i.w, align 8, !tbaa !29
  %.not.i.i58.i = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i58.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 3 uses
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !27
  %i.cq = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cc
  br i1 %i.cr, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i

bb.u:                                             ; preds = %bb.t
  %i.cs = load i64, ptr %i.ck, align 8, !tbaa !21 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.ct)
  %i.cu = add nuw nsw i64 %i.cs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cp, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.cu, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i: ; preds = %bb.t
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !13
  %i.cv = load i64, ptr %i.cc, align 8, !tbaa !18
  store i64 %i.cv, ptr %i.cp, align 8, !tbaa !18
  %.pre93.i = load i64, ptr %i.ck, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i, %bb.u
  %i.cw = phi i64 [ %.pre93.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i ], [ %i.cs, %bb.u ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !21
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr %i.cz, ptr %i.h, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.i unwind label %bb.w

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.i: ; preds = %bb.v
  %.pre94.i = load ptr, ptr %5, align 8, !tbaa !13 ; 2 uses
  %i.da = icmp eq ptr %.pre94.i, %i.cc
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.i
  %i.db = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %.pre94.i, i64 noundef %i.dc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %._crit_edge.thread.i

bb.w:                                             ; preds = %bb.v
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cc
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i: ; preds = %bb.w
  %i.dg = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

._crit_edge.thread.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, %._crit_edge.i, %bb.d
  %i.di = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.dj = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 2 uses
  %.not.i.i53 = icmp ult i64 %i.dm, 33
  br i1 %.not.i.i53, label %_ZN8pystring12_GLOBAL__N_117rsplit_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.thread.i, %.lr.ph.i.i
  %i.dn = phi i64 [ %i.dy, %.lr.ph.i.i ], [ %i.dm, %._crit_edge.thread.i ]
  %i.do = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %i.dj, %._crit_edge.thread.i ] ; 2 uses
  %.07.i.i = phi i64 [ %i.dt, %.lr.ph.i.i ], [ 0, %._crit_edge.thread.i ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %.07.i.i
  %i.dq = xor i64 %.07.i.i, -1
  %i.dr = getelementptr i8, ptr %i.do, i64 %i.dn
  %i.ds = getelementptr [32 x i8], ptr %i.dr, i64 %i.dq
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.ds) #24
  %i.dt = add nuw nsw i64 %.07.i.i, 1             ; 2 uses
  %i.du = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.dv = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 2 uses
  %i.dz = ashr exact i64 %i.dy, 5
  %i.ea = lshr i64 %i.dz, 1
  %i.eb = icmp samesign ult i64 %i.dt, %i.ea
  br i1 %i.eb, label %.lr.ph.i.i, label %_ZN8pystring12_GLOBAL__N_117rsplit_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, !llvm.loop !56

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i
  %common.resume.op = phi { ptr, i32 } [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i ], [ %i.jd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.ec = trunc i64 %i.t to i32                   ; 4 uses
  %i.ed = trunc i64 %i.q to i32                   ; 3 uses
  %.not112 = icmp slt i32 %i.ec, %i.ed
  br i1 %.not112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.ee = shl i64 %i.q, 32                        ; 2 uses
  %sext = add i64 %i.ee, -4294967296
  %i.ef = ashr exact i64 %sext, 32
  %i.eg = ashr exact i64 %i.ee, 32
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %.critedge.thread
  %.043115 = phi i32 [ %i.ec, %.lr.ph ], [ %.1, %.critedge.thread ] ; 4 uses
  %.044114 = phi i32 [ %i.ec, %.lr.ph ], [ %.145, %.critedge.thread ] ; 4 uses
  %.046113 = phi i32 [ %3, %.lr.ph ], [ %.147, %.critedge.thread ] ; 4 uses
  %i.em = add nsw i32 %.044114, -1                ; 3 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !18
  %i.er = load ptr, ptr %2, align 8, !tbaa !13
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ef
  %i.et = load i8, ptr %i.es, align 1, !tbaa !18
  %i.eu = icmp eq i8 %i.eq, %i.et
  br i1 %i.eu, label %bb.z, label %.critedge.thread

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ev = sub nsw i32 %.044114, %i.ed             ; 3 uses
  %9 = sext i32 %i.ev to i64                      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.ew = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !57 ; 3 uses
  %i.ex = icmp ult i64 %i.ew, %9
  br i1 %i.ex, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %9, i64 noundef %i.ew) #25, !noalias !57
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.z
  store ptr %i.eh, ptr %6, align 8, !tbaa !27, !alias.scope !57
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 %9 ; 2 uses
  %i.ez = sub nuw i64 %i.ew, %9
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.eg, i64 %i.ez) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !57
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !28, !noalias !57
  %i.fa = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.fa, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.fb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.fb, ptr %6, align 8, !tbaa !13, !alias.scope !57
  %i.fc = load i64, ptr %i.c, align 8, !tbaa !28, !noalias !57
  store i64 %i.fc, ptr %i.eh, align 8, !tbaa !18, !alias.scope !57
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.fd = phi ptr [ %i.fb, %.noexc10.i.i ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  %i.fe = load i8, ptr %i.ey, align 1, !tbaa !18
  store i8 %i.fe, ptr %i.fd, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fd, ptr align 1 %i.ey, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.ab, %bb.ac
  %i.ff = load i64, ptr %i.c, align 8, !tbaa !28, !noalias !57 ; 2 uses
  store i64 %i.ff, ptr %i.ei, align 8, !tbaa !21, !alias.scope !57
  %i.fg = load ptr, ptr %6, align 8, !tbaa !13, !alias.scope !57
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  store i8 0, ptr %i.fh, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !57
  %i.fi = load i64, ptr %i.ei, align 8, !tbaa !21 ; 4 uses
  %i.fj = load i64, ptr %i.p, align 8, !tbaa !21
  %i.fk = icmp eq i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %.pre = load ptr, ptr %6, align 8, !tbaa !13
  br label %bb.af

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.fl = icmp eq i64 %i.fi, 0
  %.pre140 = load ptr, ptr %6, align 8, !tbaa !13 ; 3 uses
  br i1 %i.fl, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fm = load ptr, ptr %2, align 8, !tbaa !13
  %bcmp.i = call i32 @bcmp(ptr %.pre140, ptr %i.fm, i64 %i.fi)
  %i.fn = icmp eq i32 %bcmp.i, 0
  br label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge, %bb.ae, %bb.ad
  %i.fo = phi ptr [ %.pre140, %bb.ad ], [ %.pre140, %bb.ae ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge ] ; 2 uses
  %.ph = phi i1 [ true, %bb.ad ], [ %i.fn, %bb.ae ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge ]
  %i.fp = icmp eq ptr %i.fo, %i.eh
  br i1 %i.fp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.af
  %i.fq = icmp ult i64 %i.fi, 16
  call void @llvm.assume(i1 %i.fq)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.fr = load i64, ptr %i.eh, align 8, !tbaa !18
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #22
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.ph, label %bb.ag, label %.critedge.thread

bb.ag:                                            ; preds = %.critedge
  %i.ft = add nsw i32 %.046113, -1
  %i.fu = icmp slt i32 %.046113, 1
  %.pre143.pre148 = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !38 ; 4 uses
  br i1 %i.fu, label %._crit_edge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.fv = sext i32 %.044114 to i64                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.fw = icmp ult i64 %.pre143.pre148, %i.fv
  br i1 %i.fw, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %i.fv, i64 noundef %.pre143.pre148) #25, !noalias !60
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54: ; preds = %bb.ah
  %i.fx = sub nsw i32 %.043115, %.044114
  %i.fy = sext i32 %i.fx to i64
  store ptr %i.ej, ptr %7, align 8, !tbaa !27, !alias.scope !60
  %i.fz = load ptr, ptr %0, align 8, !tbaa !13, !noalias !60
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fv ; 2 uses
  %i.gb = sub nuw i64 %.pre143.pre148, %i.fv
  %spec.select.i.i.i55 = call noundef i64 @llvm.umin.i64(i64 %i.fy, i64 %i.gb) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !60
  store i64 %spec.select.i.i.i55, ptr %i.b, align 8, !tbaa !28, !noalias !60
  %i.gc = icmp ugt i64 %spec.select.i.i.i55, 15
  br i1 %i.gc, label %.noexc10.i.i57, label %._crit_edge.i.i.i56

.noexc10.i.i57:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54
  %i.gd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.gd, ptr %7, align 8, !tbaa !13, !alias.scope !60
  %i.ge = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !60
  store i64 %i.ge, ptr %i.ej, align 8, !tbaa !18, !alias.scope !60
  br label %._crit_edge.i.i.i56

._crit_edge.i.i.i56:                              ; preds = %.noexc10.i.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54
  %i.gf = phi ptr [ %i.gd, %.noexc10.i.i57 ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54 ] ; 2 uses
  switch i64 %spec.select.i.i.i55, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i56
  %i.gg = load i8, ptr %i.ga, align 1, !tbaa !18
  store i8 %i.gg, ptr %i.gf, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58

bb.ak:                                            ; preds = %._crit_edge.i.i.i56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr align 1 %i.ga, i64 %spec.select.i.i.i55, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58: ; preds = %._crit_edge.i.i.i56, %bb.aj, %bb.ak
  %i.gh = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !60 ; 2 uses
  store i64 %i.gh, ptr %i.ek, align 8, !tbaa !21, !alias.scope !60
  %i.gi = load ptr, ptr %7, align 8, !tbaa !13, !alias.scope !60
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gh
  store i8 0, ptr %i.gj, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !60
  %i.gk = load ptr, ptr %i.h, align 8, !tbaa !12  ; 6 uses
  %i.gl = load ptr, ptr %i.el, align 8, !tbaa !29
  %.not.i.i59 = icmp eq ptr %i.gk, %i.gl
  br i1 %.not.i.i59, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 3 uses
  store ptr %i.gm, ptr %i.gk, align 8, !tbaa !27
  %i.gn = load ptr, ptr %7, align 8, !tbaa !13    ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.ej
  br i1 %i.go, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

bb.am:                                            ; preds = %bb.al
  %i.gp = load i64, ptr %i.ek, align 8, !tbaa !21 ; 3 uses
  %i.gq = icmp ult i64 %i.gp, 16
  call void @llvm.assume(i1 %i.gq)
  %i.gr = add nuw nsw i64 %i.gp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gm, ptr noundef nonnull align 8 dereferenceable(1) %i.ej, i64 %i.gr, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.al
  store ptr %i.gn, ptr %i.gk, align 8, !tbaa !13
  %i.gs = load i64, ptr %i.ej, align 8, !tbaa !18
  store i64 %i.gs, ptr %i.gm, align 8, !tbaa !18
  %.pre141 = load i64, ptr %i.ek, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  %i.gt = phi i64 [ %.pre141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60 ], [ %i.gp, %bb.am ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !21
  store ptr %i.ej, ptr %7, align 8, !tbaa !13
  store i64 0, ptr %i.ek, align 8, !tbaa !21
  %i.gv = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  store ptr %i.gw, ptr %i.h, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.gk, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ao

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.an
  %.pre142 = load ptr, ptr %7, align 8, !tbaa !13 ; 2 uses
  %i.gx = icmp eq ptr %.pre142, %i.ej
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.gy = load i64, ptr %i.ej, align 8, !tbaa !18
  %i.gz = add i64 %i.gy, 1
end_hunk_0
begin_hunk_1_@_ZN8pystring5sliceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii:bb.a
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !18, !alias.scope !124
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ah = phi ptr [ %i.af, %.noexc10.i.i ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !18
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ac, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.j, %bb.k
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !124 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !21, !alias.scope !124
  %i.al = load ptr, ptr %0, align 8, !tbaa !13, !alias.scope !124
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !124
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN8pystring5indexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = trunc i64 %i.b to i32                    ; 4 uses
  %i.d = icmp sgt i32 %3, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %3, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %3, %i.c
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi i32 [ %3, %bb.b ], [ %spec.store.select.i, %bb.c ], [ %i.c, %bb.a ]
  %i.g = icmp slt i32 %2, 0
  %i.h = add nsw i32 %2, %i.c
  %spec.store.select1.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %.020.i = select i1 %i.g, i32 %spec.store.select1.i, i32 %2
  %i.i = zext nneg i32 %.020.i to i64
  %i.j = load ptr, ptr %1, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.j, i64 noundef %i.i, i64 noundef %i.l) #24 ; 3 uses
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.k, align 8, !tbaa !21
  %i.p = add i64 %i.o, %i.m
  %i.q = sext i32 %.0.i to i64
  %i.r = icmp ugt i64 %i.p, %i.q
  %i.s = trunc i64 %i.m to i32
  %spec.select.i = select i1 %i.r, i32 -1, i32 %i.s
  br label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit

_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit: ; preds = %bb.d, %bb.e
  %.021.i = phi i32 [ -1, %bb.d ], [ %spec.select.i, %bb.e ]
  ret i32 %.021.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN8pystring6rindexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = trunc i64 %i.b to i32                    ; 4 uses
  %i.d = icmp sgt i32 %3, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %3, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %3, %i.c
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi i32 [ %3, %bb.b ], [ %spec.store.select.i, %bb.c ], [ %i.c, %bb.a ]
  %i.g = icmp slt i32 %2, 0
  %i.h = add nsw i32 %2, %i.c
  %spec.store.select1.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %.022.i = select i1 %i.g, i32 %spec.store.select1.i, i32 %2
  %i.i = sext i32 %.0.i to i64                    ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.j, i64 noundef %i.i, i64 noundef %i.l) #24 ; 4 uses
  %i.n = icmp eq i64 %i.m, -1
  %i.o = zext nneg i32 %.022.i to i64
  %i.p = icmp ult i64 %i.m, %i.o
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond.i, label %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.k, align 8, !tbaa !21
  %i.r = add i64 %i.q, %i.m
  %i.s = icmp ugt i64 %i.r, %i.i
  %i.t = trunc i64 %i.m to i32
  %spec.select.i = select i1 %i.s, i32 -1, i32 %i.t
  br label %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit

_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit: ; preds = %bb.d, %bb.e
  %.023.i = phi i32 [ -1, %bb.d ], [ %spec.select.i, %bb.e ]
  ret i32 %.023.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8pystring10expandtabsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !27
  %i.c = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !28
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !13
  %i.h = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.h, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !18
  store i8 %i.j, ptr %i.i, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !21
  %i.m = load ptr, ptr %0, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.o = load i64, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = icmp sgt i32 %2, 0
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.03067.us = phi i32 [ %.131.us, %bb.g ], [ 0, %.lr.ph ] ; 3 uses
  %.03266.us = phi i32 [ %.133.us, %bb.g ], [ 0, %.lr.ph ] ; 4 uses
  %.03465.us = phi i64 [ %i.ao, %bb.g ], [ 0, %.lr.ph ] ; 3 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.03465.us
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18    ; 2 uses
  switch i8 %i.u, label %bb.e [
    i8 9, label %bb.d
    i8 10, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.v = srem i32 %.03067.us, %2
  %i.w = sub nsw i32 %2, %i.v                     ; 3 uses
  %i.x = add nsw i32 %i.w, %.03067.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %4 = sext i32 %i.w to i64
  store ptr %i.q, ptr %3, align 8, !tbaa !27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.us unwind label %.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.us: ; preds = %bb.d
  %i.y = sext i32 %.03266.us to i64
  %i.z = add i64 %.03465.us, %i.y                 ; 4 uses
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !21  ; 3 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %.split69.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.us
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !21
  %i.ad = load ptr, ptr %3, align 8, !tbaa !13
  %i.ae = icmp ne i64 %i.aa, %i.z
  %spec.select.i.i.i.us = zext i1 %i.ae to i64
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z, i64 noundef %spec.select.i.i.i.us, ptr noundef %i.ad, i64 noundef %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us unwind label %.loopexit50.split.us ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us
  %i.ag = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.q
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !18
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ak = add i32 %.03266.us, -1
  %i.al = add i32 %i.ak, %i.w
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.am = add nsw i32 %.03067.us, 1
  %i.an = icmp eq i8 %i.u, 13
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  %.133.us = phi i32 [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us ], [ %.03266.us, %bb.e ], [ %.03266.us, %bb.f ]
  %.131.us = phi i32 [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us ], [ %i.am, %bb.e ], [ 0, %bb.f ]
  %i.ao = add nuw i64 %.03465.us, 1               ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.o
  br i1 %exitcond83.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !127

.split.us:                                        ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

.loopexit50.split.us:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us
  %lpad.loopexit52.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.03266 = phi i32 [ %.133, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %.03465 = phi i64 [ %i.bg, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.03465
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18
  %cond = icmp eq i8 %i.as, 9
  br i1 %cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph.split
  %i.at = sext i32 %.03266 to i64
  %i.au = add i64 %.03465, %i.at                  ; 4 uses
  %i.av = load i64, ptr %i.l, align 8, !tbaa !21  ; 3 uses
  %i.aw = icmp ugt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i42

.split69.us:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.us
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef %i.z, i64 noundef %i.aa) #25
          to label %.noexc unwind label %.loopexit.split-lp51

.noexc:                                           ; preds = %.split69.us
  unreachable

.loopexit.split-lp51:                             ; preds = %.split69.us
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp51, %.loopexit50.split.us
  %lpad.phi54 = phi { ptr, i32 } [ %lpad.loopexit52.us, %.loopexit50.split.us ], [ %lpad.loopexit.split-lp53, %.loopexit.split-lp51 ] ; 2 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.q
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.i
  %i.az = load i64, ptr %i.q, align 8, !tbaa !18
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %.split.us
  %.pn = phi { ptr, i32 } [ %i.ap, %.split.us ], [ %lpad.phi54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %lpad.phi54, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef %i.au, i64 noundef %i.av) #25
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i42: ; preds = %bb.h
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8pystringL12empty_stringB5cxx11E, i64 8), align 8, !tbaa !21
  %i.bc = load ptr, ptr @_ZN8pystringL12empty_stringB5cxx11E, align 8, !tbaa !13
  %i.bd = icmp ne i64 %i.av, %i.au
  %spec.select.i.i.i43 = zext i1 %i.bd to i64
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.au, i64 noundef %spec.select.i.i.i43, ptr noundef %i.bc, i64 noundef %i.bb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit46 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i42
  %i.bf = add nsw i32 %.03266, -1
  br label %bb.k

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i42
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit46
  %.133 = phi i32 [ %.03266, %.lr.ph.split ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit46 ]
  %i.bg = add nuw i64 %.03465, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !127

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bh = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.b
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.l
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !18
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  resume { ptr, i32 } %.pn.pn

._crit_edge:                                      ; preds = %bb.k, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN8pystring5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = icmp slt i32 %3, 0
  %.pre13 = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = load i64, ptr %i.a, align 8, !tbaa !21
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = icmp slt i32 %2, 0
  %i.g = add nsw i32 %2, %i.e
  %spec.store.select1.i.us25 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  %.020.i.us26 = select i1 %i.f, i32 %spec.store.select1.i.us25, i32 %2
  %i.h = zext nneg i32 %.020.i.us26 to i64
  %i.i = load ptr, ptr %1, align 8, !tbaa !13
  %i.j = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i, i64 noundef %i.h, i64 noundef %.pre13) #24 ; 3 uses
  %i.k = icmp eq i64 %i.j, -1                     ; 2 uses
  br i1 %i.c, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %i.k, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %.lr.ph

.split.us.preheader:                              ; preds = %bb.a
  br i1 %i.k, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %.lr.ph28

.lr.ph28:                                         ; preds = %.split.us.preheader, %.split.us
  %i.l = phi i64 [ %i.ae, %.split.us ], [ %i.j, %.split.us.preheader ] ; 2 uses
  %i.m = phi i32 [ %i.z, %.split.us ], [ %i.e, %.split.us.preheader ] ; 3 uses
  %.09.us27 = phi i32 [ %i.x, %.split.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %i.n = icmp sgt i32 %3, %i.m
  %i.o = add nsw i32 %3, %i.m
  %spec.store.select.i.us = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %.0.i.us = select i1 %i.n, i32 %i.m, i32 %spec.store.select.i.us
  %i.p = load i64, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.q = add i64 %i.p, %i.l
  %i.r = sext i32 %.0.i.us to i64
  %i.s = icmp ugt i64 %i.q, %i.r
  %i.t = trunc i64 %i.l to i32                    ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  %or.cond.us = or i1 %i.u, %i.s
end_hunk_1
