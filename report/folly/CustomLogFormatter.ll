Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/CustomLogFormatter?download=true
inline.NumInlined: 948
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5folly18CustomLogFormatter13formatMessageB5cxx11ERKNS_10LogMessageEPKNS_11LogCategoryE:bb.a
  %or.cond = or i1 %i.hs, %i.hu
  br i1 %or.cond, label %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread, label %bb.aq

_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread:     ; preds = %bb.ao, %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i, %bb.an
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.aq:                                            ; preds = %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i, %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread
  %.0 = phi i64 [ %i.hi, %_ZNK5folly5RangeIPKcE4findERS1_m.exit.thread ], [ %i.ht, %_ZN5folly5qfindIPKcEEmRKNS_5RangeIT_EERKNS5_10value_typeE.exit.i ] ; 3 uses
  %i.hw = icmp ugt i64 %.038, %i.hi
  br i1 %i.hw, label %bb.ar, label %bb.as, !prof !49

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.60) #7
          to label %.noexc122 unwind label %.loopexit.split-lp

.noexc122:                                        ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.hx = sub i64 %.0, %.038
  %i.hy = getelementptr inbounds nuw i8, ptr %.fr16.i, i64 %.038 ; 3 uses
  %i.hz = sub nuw i64 %i.hi, %.038
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.hz, i64 %i.hx) ; 6 uses
  %i.ia = load ptr, ptr %12, align 8, !tbaa !27   ; 3 uses
  %i.ib = load i64, ptr %i.hl, align 8, !tbaa !36 ; 6 uses
  %i.ic = load i64, ptr %i.fi, align 8, !tbaa !36 ; 5 uses
  %i.id = sub i64 9223372036854775807, %i.ic
  %i.ie = icmp ult i64 %i.id, %i.ib
  br i1 %i.ie, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.ay, %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.as
  %i.if = add i64 %i.ic, %i.ib                    ; 3 uses
  %i.ig = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.fh
  br i1 %i.ih, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ii = icmp ult i64 %i.ic, 16
  call void @llvm.assume(i1 %i.ii)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ij = load i64, ptr %i.fh, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ik = phi i64 [ %i.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.if, %i.ik
  br i1 %.not.i.i.i.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.ib, 0
  br i1 %.not8.i.i.i.i, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ic ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.ib, 1
  br i1 %cond.i.i.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.im = load i8, ptr %i.ia, align 1, !tbaa !28
  store i8 %i.im, ptr %i.il, align 1, !tbaa !28
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.il, ptr align 1 %i.ia, i64 %i.ib, i1 false)
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ic, i64 noundef 0, ptr noundef %i.ia, i64 noundef %i.ib)
          to label %bb.ay unwind label %.loopexit

bb.ay:                                            ; preds = %bb.aw, %bb.av, %bb.at, %bb.ax
  store i64 %i.if, ptr %i.fi, align 8, !tbaa !36
  %i.in = load ptr, ptr %0, align 8, !tbaa !27
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.if
  store i8 0, ptr %i.io, align 1, !tbaa !28
  %i.ip = load i64, ptr %i.fi, align 8, !tbaa !36 ; 5 uses
  %i.iq = sub i64 9223372036854775807, %i.ip
  %i.ir = icmp ult i64 %i.iq, %.sroa.speculated.i
  br i1 %i.ir, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.ay
  %i.is = add i64 %i.ip, %.sroa.speculated.i      ; 3 uses
  %i.it = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.fh
  br i1 %i.iu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.iv = icmp ult i64 %i.ip, 16
  call void @llvm.assume(i1 %i.iv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.iw = load i64, ptr %i.fh, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ix = phi i64 [ %i.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.is, %i.ix
  br i1 %.not.i.i, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %.not8.i.i, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ip ; 2 uses
  %cond.i.i = icmp eq i64 %.sroa.speculated.i, 1
  br i1 %cond.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.iz = load i8, ptr %i.hy, align 1, !tbaa !28
  store i8 %i.iz, ptr %i.iy, align 1, !tbaa !28
  br label %bb.be

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iy, ptr align 1 %i.hy, i64 %.sroa.speculated.i, i1 false)
  br label %bb.be

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ip, i64 noundef 0, ptr noundef %i.hy, i64 noundef %.sroa.speculated.i)
          to label %bb.be unwind label %.loopexit

bb.be:                                            ; preds = %bb.bc, %bb.bb, %bb.az, %bb.bd
  store i64 %i.is, ptr %i.fi, align 8, !tbaa !36
  %i.ja = load ptr, ptr %0, align 8, !tbaa !27
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.is
  store i8 0, ptr %i.jb, align 1, !tbaa !28
  %i.jc = load i64, ptr %i.fi, align 8, !tbaa !36 ; 4 uses
  %i.jd = add i64 %i.jc, 1                        ; 3 uses
  %i.je = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.fh
  br i1 %i.jf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i129: ; preds = %bb.be
  %i.jg = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.be
  %i.jh = load i64, ptr %i.fh, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i129
  %i.ji = phi i64 [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i129 ]
  %i.jj = icmp ugt i64 %i.jd, %i.ji
  br i1 %i.jj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.jc, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc130 unwind label %.loopexit

.noexc130:                                        ; preds = %bb.bf
  %.pre.i128 = load ptr, ptr %0, align 8, !tbaa !27
  br label %bb.bg

bb.bg:                                            ; preds = %.noexc130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.jk = phi ptr [ %.pre.i128, %.noexc130 ], [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jc
  store i8 10, ptr %i.jl, align 1, !tbaa !28
  store i64 %i.jd, ptr %i.fi, align 8, !tbaa !36
  %i.jm = load ptr, ptr %0, align 8, !tbaa !27
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jd
  store i8 0, ptr %i.jn, align 1, !tbaa !28
  %i.jo = icmp eq i64 %.0, %i.hi
  %i.jp = add i64 %.0, 1
  br i1 %i.jo, label %bb.bh, label %bb.an

.loopexit:                                        ; preds = %bb.ax, %bb.bd, %bb.bf
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp:                               ; preds = %.invoke, %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bh:                                            ; preds = %bb.bg
  %i.jq = load i8, ptr %i.fj, align 8, !tbaa !46, !range !47, !noundef !48
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.bi, label %bb.bx

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.js = load i32, ptr %i.co, align 8, !tbaa !176
  %i.jt = add i32 %i.js, -3000
  %or.cond.i131 = icmp ult i32 %i.jt, -1000       ; 2 uses
  %.str.58..str.28.i133 = select i1 %or.cond.i131, ptr @.str.58, ptr @.str.28 ; 3 uses
  %i.ju = select i1 %or.cond.i131, i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @.str.58, i64 4) to i64), i64 ptrtoint (ptr @.str.28 to i64)
  %i.jv = ptrtoint ptr %.str.58..str.28.i133 to i64
  %i.jw = sub i64 %i.ju, %i.jv                    ; 8 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.jx, ptr %15, align 8, !tbaa !45, !alias.scope !194
  %i.jy = icmp ugt i64 %i.jw, 15
  br i1 %i.jy, label %bb.bj, label %._crit_edge.i.i.i.i137

bb.bj:                                            ; preds = %bb.bi
  %i.jz = icmp slt i64 %i.jw, 0
  br i1 %i.jz, label %.noexc.i.i.i140, label %bb.bk

.noexc.i.i.i140:                                  ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc143 unwind label %bb.bv

.noexc143:                                        ; preds = %.noexc.i.i.i140
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.ka = add nuw i64 %i.jw, 1                    ; 2 uses
  %i.kb = icmp slt i64 %i.ka, 0
  br i1 %i.kb, label %.noexc9.i.i.i139, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i138, !prof !49

.noexc9.i.i.i139:                                 ; preds = %bb.bk
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %.noexc144 unwind label %bb.bv

.noexc144:                                        ; preds = %.noexc9.i.i.i139
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i138: ; preds = %bb.bk
  %i.kc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ka) #23
          to label %.noexc145 unwind label %bb.bv ; 2 uses

.noexc145:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i138
  store ptr %i.kc, ptr %15, align 8, !tbaa !27, !alias.scope !194
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !28, !alias.scope !194
  br label %._crit_edge.i.i.i.i137

._crit_edge.i.i.i.i137:                           ; preds = %.noexc145, %bb.bi
  %i.kd = phi ptr [ %i.kc, %.noexc145 ], [ %i.jx, %bb.bi ] ; 3 uses
  switch i64 %i.jw, label %bb.bm [
    i64 1, label %bb.bl
    i64 0, label %bb.bn
  ]

bb.bl:                                            ; preds = %._crit_edge.i.i.i.i137
  %16 = load i8, ptr %.str.58..str.28.i133, align 1, !tbaa !28
  store i8 %16, ptr %i.kd, align 1, !tbaa !28
  br label %bb.bn

bb.bm:                                            ; preds = %._crit_edge.i.i.i.i137
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kd, ptr nonnull align 1 %.str.58..str.28.i133, i64 %i.jw, i1 false)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %._crit_edge.i.i.i.i137
  %i.ke = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.jw, ptr %i.ke, align 8, !tbaa !36, !alias.scope !194
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jw
  store i8 0, ptr %i.kf, align 1, !tbaa !28
  %i.kg = load ptr, ptr %15, align 8, !tbaa !27   ; 3 uses
  %i.kh = load i64, ptr %i.ke, align 8, !tbaa !36 ; 6 uses
  %i.ki = load i64, ptr %i.fi, align 8, !tbaa !36 ; 5 uses
  %i.kj = sub i64 9223372036854775807, %i.ki
  %i.kk = icmp ult i64 %i.kj, %i.kh
  br i1 %i.kk, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i147

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
          to label %.noexc154 unwind label %bb.bw

.noexc154:                                        ; preds = %bb.bo
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i147: ; preds = %bb.bn
  %i.kl = add i64 %i.ki, %i.kh                    ; 3 uses
  %i.km = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.fh
  br i1 %i.kn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i153: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i147
  %i.ko = icmp ult i64 %i.ki, 16
  call void @llvm.assume(i1 %i.ko)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i148: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i147
  %i.kp = load i64, ptr %i.fh, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i149: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i153
  %i.kq = phi i64 [ %i.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i148 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i153 ]
  %.not.i.i.i150 = icmp ugt i64 %i.kl, %i.kq
  br i1 %.not.i.i.i150, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i149
  %.not8.i.i.i151 = icmp eq i64 %i.kh, 0
  br i1 %.not8.i.i.i151, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ki ; 2 uses
  %cond.i.i.i152 = icmp eq i64 %i.kh, 1
  br i1 %cond.i.i.i152, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ks = load i8, ptr %i.kg, align 1, !tbaa !28
  store i8 %i.ks, ptr %i.kr, align 1, !tbaa !28
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr align 1 %i.kg, i64 %i.kh, i1 false)
  br label %bb.bu

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i149
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ki, i64 noundef 0, ptr noundef %i.kg, i64 noundef %i.kh)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bs, %bb.br, %bb.bp, %bb.bt
  store i64 %i.kl, ptr %i.fi, align 8, !tbaa !36
  %i.kt = load ptr, ptr %0, align 8, !tbaa !27
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kl
  store i8 0, ptr %i.ku, align 1, !tbaa !28
  %i.kv = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.jx
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.bu
  %i.kx = load i64, ptr %i.jx, align 8, !tbaa !28
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bx

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i138, %.noexc9.i.i.i139, %.noexc.i.i.i140
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.bw:                                            ; preds = %bb.bt, %bb.bo
  %i.la = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lb = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.jx
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.bw
  %i.ld = load i64, ptr %i.jx, align 8, !tbaa !28
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %bb.bv
  %.pn53 = phi { ptr, i32 } [ %i.kz, %bb.bv ], [ %i.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.la, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.by

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %bb.bh
  %i.lf = load ptr, ptr %12, align 8, !tbaa !27   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.bx
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !28
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.bz

bb.by:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %.pn53.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %i.hv, %bb.ap ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.lk = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.fh
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.by
  %i.lm = load i64, ptr %i.fh, align 8, !tbaa !28
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  %i.lo = load ptr, ptr %12, align 8, !tbaa !27   ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.lr = load i64, ptr %i.lp, align 8, !tbaa !28
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.ls) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn53.pn.pn.pn

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZN12_GLOBAL__N_116getColorSequenceEN5folly8LogLevelE.exit
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
