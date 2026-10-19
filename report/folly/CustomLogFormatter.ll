Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/CustomLogFormatter?download=true
inline.NumInlined: 948
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5folly18CustomLogFormatter13formatMessageB5cxx11ERKNS_10LogMessageEPKNS_11LogCategoryE:bb.a
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread, label %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i

_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i: ; preds = %bb.ao
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hq, %i.hp                    ; 2 uses
  %i.hs = icmp eq i64 %i.hr, -1
  %i.ht = add i64 %i.hr, %.038                    ; 2 uses
  %i.hu = icmp eq i64 %i.ht, -1
  %or.cond = or i1 %i.hs, %i.hu
  br i1 %or.cond, label %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread, label %bb.ap

_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread:     ; preds = %bb.ao, %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i, %bb.an
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i, %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread
  %.0 = phi i64 [ %i.hi, %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread ], [ %i.ht, %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i ] ; 3 uses
  %i.hv = icmp ugt i64 %.038, %i.hi
  br i1 %i.hv, label %bb.aq, label %bb.ar, !prof !49

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.60) #7
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.hw = sub i64 %.0, %.038
  %i.hx = getelementptr inbounds nuw i8, ptr %.fr16.i, i64 %.038 ; 3 uses
  %i.hy = sub nuw i64 %i.hi, %.038
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.hy, i64 %i.hw) ; 6 uses
  %i.hz = load ptr, ptr %12, align 8, !tbaa !27   ; 3 uses
  %i.ia = load i64, ptr %i.hl, align 8, !tbaa !36 ; 6 uses
  %i.ib = load i64, ptr %i.fi, align 8, !tbaa !36 ; 5 uses
  %i.ic = sub i64 9223372036854775807, %i.ib
  %i.id = icmp ult i64 %i.ic, %i.ia
  br i1 %i.id, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ar
  %i.ie = add i64 %i.ib, %i.ia                    ; 3 uses
  %i.if = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.fh
  br i1 %i.ig, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ih = icmp ult i64 %i.ib, 16
  call void @llvm.assume(i1 %i.ih)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ii = load i64, ptr %i.fh, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ij = phi i64 [ %i.ii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.ie, %i.ij
  br i1 %.not.i.i.i.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.ia, 0
  br i1 %.not8.i.i.i.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ib ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.ia, 1
  br i1 %cond.i.i.i.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.il = load i8, ptr %i.hz, align 1, !tbaa !28
  store i8 %i.il, ptr %i.ik, align 1, !tbaa !28
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ik, ptr align 1 %i.hz, i64 %i.ia, i1 false)
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ib, i64 noundef 0, ptr noundef %i.hz, i64 noundef %i.ia)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.as, %bb.aw
  store i64 %i.ie, ptr %i.fi, align 8, !tbaa !36
  %i.im = load ptr, ptr %0, align 8, !tbaa !27
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ie
  store i8 0, ptr %i.in, align 1, !tbaa !28
  %i.io = load i64, ptr %i.fi, align 8, !tbaa !36 ; 5 uses
  %i.ip = sub i64 9223372036854775807, %i.io
  %i.iq = icmp ult i64 %i.ip, %.sroa.speculated.i
  br i1 %i.iq, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

.invoke:                                          ; preds = %bb.ax, %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.ax
  %i.ir = add i64 %i.io, %.sroa.speculated.i      ; 3 uses
  %i.is = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.fh
  br i1 %i.it, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.iu = icmp ult i64 %i.io, 16
  call void @llvm.assume(i1 %i.iu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.iv = load i64, ptr %i.fh, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.iw = phi i64 [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.ir, %i.iw
  br i1 %.not.i.i, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %.not8.i.i, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.io ; 2 uses
  %cond.i.i = icmp eq i64 %.sroa.speculated.i, 1
  br i1 %cond.i.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.iy = load i8, ptr %i.hx, align 1, !tbaa !28
  store i8 %i.iy, ptr %i.ix, align 1, !tbaa !28
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ix, ptr align 1 %i.hx, i64 %.sroa.speculated.i, i1 false)
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.io, i64 noundef 0, ptr noundef %i.hx, i64 noundef %.sroa.speculated.i)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bb, %bb.ba, %bb.ay, %bb.bc
  store i64 %i.ir, ptr %i.fi, align 8, !tbaa !36
  %i.iz = load ptr, ptr %0, align 8, !tbaa !27
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ir
  store i8 0, ptr %i.ja, align 1, !tbaa !28
  %i.jb = load i64, ptr %i.fi, align 8, !tbaa !36 ; 4 uses
  %i.jc = add i64 %i.jb, 1                        ; 3 uses
  %i.jd = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.fh
  br i1 %i.je, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i129: ; preds = %bb.bd
  %i.jf = icmp ult i64 %i.jb, 16
  call void @llvm.assume(i1 %i.jf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.bd
  %i.jg = load i64, ptr %i.fh, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i129
  %i.jh = phi i64 [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i129 ]
  %i.ji = icmp ugt i64 %i.jc, %i.jh
  br i1 %i.ji, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.jb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc130:                                        ; preds = %bb.be
  %.pre.i128 = load ptr, ptr %0, align 8, !tbaa !27
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.jj = phi ptr [ %.pre.i128, %.noexc130 ], [ %i.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jb
  store i8 10, ptr %i.jk, align 1, !tbaa !28
  store i64 %i.jc, ptr %i.fi, align 8, !tbaa !36
  %i.jl = load ptr, ptr %0, align 8, !tbaa !27
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jc
  store i8 0, ptr %i.jm, align 1, !tbaa !28
  %i.jn = icmp eq i64 %.0, %i.hi
  %i.jo = add i64 %.0, 1
  br i1 %i.jn, label %bb.bg, label %bb.an

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.be, %bb.bc, %bb.aw, %.invoke, %bb.am, %bb.aq
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %i.jp = load i8, ptr %i.fj, align 8, !tbaa !46, !range !47, !noundef !48
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.bh, label %bb.bw

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.jr = load i32, ptr %i.co, align 8, !tbaa !176
  %i.js = add i32 %i.jr, -3000
  %or.cond.i131 = icmp ult i32 %i.js, -1000       ; 3 uses
  %.str.58..str.28.i133 = select i1 %or.cond.i131, ptr @.str.58, ptr @.str.28 ; 2 uses
  %i.jt = select i1 %or.cond.i131, i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @.str.58, i64 4) to i64), i64 ptrtoint (ptr @.str.28 to i64)
  %i.ju = ptrtoint ptr %.str.58..str.28.i133 to i64
  %i.jv = sub i64 %i.jt, %i.ju                    ; 8 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.jw, ptr %15, align 8, !tbaa !45, !alias.scope !194
  %i.jx = icmp ugt i64 %i.jv, 15
  br i1 %i.jx, label %bb.bi, label %._crit_edge.i.i.i.i137

bb.bi:                                            ; preds = %bb.bh
  %i.jy = icmp slt i64 %i.jv, 0
  br i1 %i.jy, label %.noexc.i.i.i140, label %bb.bj

.noexc.i.i.i140:                                  ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc143 unwind label %bb.bu

.noexc143:                                        ; preds = %.noexc.i.i.i140
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %i.jz = add nuw i64 %i.jv, 1                    ; 2 uses
  %i.ka = icmp slt i64 %i.jz, 0
  br i1 %i.ka, label %.noexc9.i.i.i139, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i138, !prof !49

.noexc9.i.i.i139:                                 ; preds = %bb.bj
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %.noexc144 unwind label %bb.bu

.noexc144:                                        ; preds = %.noexc9.i.i.i139
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i138: ; preds = %bb.bj
  %i.kb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jz) #23
          to label %.noexc145 unwind label %bb.bu ; 2 uses

.noexc145:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i138
  store ptr %i.kb, ptr %15, align 8, !tbaa !27, !alias.scope !194
  store i64 %i.jv, ptr %i.jw, align 8, !tbaa !28, !alias.scope !194
  br label %._crit_edge.i.i.i.i137

._crit_edge.i.i.i.i137:                           ; preds = %.noexc145, %bb.bh
  %i.kc = phi ptr [ %i.kb, %.noexc145 ], [ %i.jw, %bb.bh ] ; 3 uses
  switch i64 %i.jv, label %bb.bl [
    i64 1, label %bb.bk
    i64 0, label %bb.bm
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i137
  %16 = select i1 %or.cond.i131, i8 27, i8 0
  store i8 %16, ptr %i.kc, align 1, !tbaa !28
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i.i.i137
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kc, ptr nonnull align 1 %.str.58..str.28.i133, i64 %i.jv, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %._crit_edge.i.i.i.i137
  %i.kd = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.jv, ptr %i.kd, align 8, !tbaa !36, !alias.scope !194
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.jv
  store i8 0, ptr %i.ke, align 1, !tbaa !28
  %i.kf = load ptr, ptr %15, align 8, !tbaa !27   ; 3 uses
  %i.kg = load i64, ptr %i.kd, align 8, !tbaa !36 ; 6 uses
  %i.kh = load i64, ptr %i.fi, align 8, !tbaa !36 ; 5 uses
  %i.ki = sub i64 9223372036854775807, %i.kh
  %i.kj = icmp ult i64 %i.ki, %i.kg
  br i1 %i.kj, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i147

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
          to label %.noexc154 unwind label %bb.bv

.noexc154:                                        ; preds = %bb.bn
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i147: ; preds = %bb.bm
  %i.kk = add i64 %i.kh, %i.kg                    ; 3 uses
  %i.kl = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.fh
  br i1 %i.km, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i153: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i147
  %i.kn = icmp ult i64 %i.kh, 16
  call void @llvm.assume(i1 %i.kn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i148: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i147
  %i.ko = load i64, ptr %i.fh, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i149: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i153
  %i.kp = phi i64 [ %i.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i148 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i153 ]
  %.not.i.i.i150 = icmp ugt i64 %i.kk, %i.kp
  br i1 %.not.i.i.i150, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i149
  %.not8.i.i.i151 = icmp eq i64 %i.kg, 0
  br i1 %.not8.i.i.i151, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kh ; 2 uses
  %cond.i.i.i152 = icmp eq i64 %i.kg, 1
  br i1 %cond.i.i.i152, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.kr = load i8, ptr %i.kf, align 1, !tbaa !28
  store i8 %i.kr, ptr %i.kq, align 1, !tbaa !28
  br label %bb.bt

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kq, ptr align 1 %i.kf, i64 %i.kg, i1 false)
  br label %bb.bt

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i149
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.kh, i64 noundef 0, ptr noundef %i.kf, i64 noundef %i.kg)
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.br, %bb.bq, %bb.bo, %bb.bs
  store i64 %i.kk, ptr %i.fi, align 8, !tbaa !36
  %i.ks = load ptr, ptr %0, align 8, !tbaa !27
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kk
  store i8 0, ptr %i.kt, align 1, !tbaa !28
  %i.ku = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.jw
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.bt
  %i.kw = load i64, ptr %i.jw, align 8, !tbaa !28
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bw

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i138, %.noexc9.i.i.i139, %.noexc.i.i.i140
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.bv:                                            ; preds = %bb.bs, %bb.bn
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.jw
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.bv
  %i.lc = load i64, ptr %i.jw, align 8, !tbaa !28
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %bb.bu
  %.pn53 = phi { ptr, i32 } [ %i.ky, %bb.bu ], [ %i.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.kz, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %.loopexit.split-lp

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %bb.bg
  %i.le = load ptr, ptr %12, align 8, !tbaa !27   ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.bw
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !28
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.bx

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %.pn53.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.lj = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.fh
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %.loopexit.split-lp
  %i.ll = load i64, ptr %i.fh, align 8, !tbaa !28
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  %i.ln = load ptr, ptr %12, align 8, !tbaa !27   ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.lq = load i64, ptr %i.lo, align 8, !tbaa !28
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn53.pn.pn.pn

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZN12_GLOBAL__N_116getColorSequenceEN5folly8LogLevelE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18CustomLogFormatterC2ENS_5RangeIPKcEEb(ptr noundef nonnull align 8 dereferenceable(105) initializes((0, 8)) %0, ptr %1, ptr %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %3 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly18CustomLogFormatterE, i64 16), ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !36
  store i8 0, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.g, align 8, !tbaa !36
  store i8 0, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store i8 %i.a, ptr %i.i, align 8, !tbaa !46
  invoke void @_ZN5folly18CustomLogFormatter17parseFormatStringENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr %1, ptr %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.f
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_0
