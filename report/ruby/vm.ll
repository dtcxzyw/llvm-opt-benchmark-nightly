Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3276
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@vm_call_noniseq_bmethod:bb.a
  %i.p = sext i32 %i.o to i64                     ; 3 uses
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %bb.f, label %rbimpl_size_mul_or_raise.exit17, !prof !200

bb.f:                                             ; preds = %bb.e
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.p) #42
  unreachable

rbimpl_size_mul_or_raise.exit17:                  ; preds = %bb.e
  %i.r = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  %i.s = alloca i8, i64 %i.r, align 16            ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !110  ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.g

bb.g:                                             ; preds = %rbimpl_size_mul_or_raise.exit17
  %i.v = sub nsw i64 0, %i.p
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %i.s, ptr noundef nonnull readonly align 1 %i.w, i64 noundef %i.r, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit17, %bb.g
  %i.x = xor i32 %i.o, -1
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [8 x i8], ptr %i.u, i64 %i.y
  store ptr %i.z, ptr %i.t, align 8, !tbaa !110
  br label %bb.h

bb.h:                                             ; preds = %ruby_nonempty_memcpy.exit, %RARRAY_PTR.exit
  %.0 = phi ptr [ %.0.i.i, %RARRAY_PTR.exit ], [ %i.s, %ruby_nonempty_memcpy.exit ]
  %i.aa = getelementptr i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !248
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %.val20.i = load ptr, ptr %i.ac, align 8, !tbaa !210 ; 2 uses
  %i.ad = getelementptr i8, ptr %.val20.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !119 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !64
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !114
  %i.aj = and i64 %i.ai, 256
  %.not.i18 = icmp eq i64 %i.aj, 0
  br i1 %.not.i18, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.ae, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !64
  %i.am = getelementptr i8, ptr %0, i64 64
  %.val.i = load i64, ptr %i.am, align 8, !tbaa !339
  %.not17.i = icmp eq i64 %i.al, %.val.i
  br i1 %.not17.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !50
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.an, ptr noundef nonnull @.str.159) #42, !inline_history !34
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ao = getelementptr i8, ptr %i.ah, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !404
  %i.aq = getelementptr i8, ptr %2, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !244
  %i.as = load i64, ptr %i.c, align 8, !tbaa !416 ; 2 uses
  %.not18.i = icmp eq i64 %i.as, 0
  br i1 %.not18.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !114 ; 2 uses
  %i.av = and i64 %i.au, 8192
  %.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = lshr i64 %i.au, 15
  %i.ax = and i64 %i.aw, 127
  br label %rb_array_len.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %i.at, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !64
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi i64 [ %i.ax, %bb.m ], [ %i.az, %bb.n ] ; 3 uses
  %i.ba = add i64 %.0.i.i.i, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.ba, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.o

bb.o:                                             ; preds = %rb_array_len.exit.i.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i.i) #57, !inline_history !34
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.bb = trunc nsw i64 %.0.i.i.i to i32
  br label %vm_call_bmethod_body.exit

bb.p:                                             ; preds = %bb.k
  %i.bc = getelementptr i8, ptr %2, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !245
  br label %vm_call_bmethod_body.exit

vm_call_bmethod_body.exit:                        ; preds = %RARRAY_LENINT.exit.i, %bb.p
  %i.be = phi i32 [ %i.bb, %RARRAY_LENINT.exit.i ], [ %i.bd, %bb.p ]
  %i.bf = getelementptr i8, ptr %2, i64 36
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !246, !range !147, !noundef !101
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = getelementptr i8, ptr %2, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !243
  %i.bk = call fastcc i64 @vm_invoke_bmethod(ptr noundef %0, ptr noundef %i.ap, i64 noundef %i.ar, i32 noundef %i.be, ptr noundef %.0, i32 noundef %i.bh, i64 noundef %i.bj, ptr noundef nonnull %.val20.i), !inline_history !34
  ret i64 %i.bk
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @vm_callee_setup_block_arg(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 16         ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 8574
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107  ; 5 uses
  %i.i = getelementptr i8, ptr %i.b, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !198
  tail call fastcc void @CALLER_SETUP_ARG(ptr noundef %i.h, ptr noundef %1, ptr noundef %2, i32 noundef %i.j)
  %.not = icmp eq i32 %5, 0
  %i.k = getelementptr i8, ptr %1, i64 32         ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !245  ; 4 uses
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %i.l, 1
  %.pre62 = load ptr, ptr %i.a, align 8, !tbaa !158 ; 3 uses
  br i1 %i.m, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.pre62, i64 16
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 129
  %or.cond = icmp eq i16 %i.p, 1
  br i1 %or.cond, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %.val = load i64, ptr %4, align 8, !tbaa !50
  %i.q = tail call i64 @rb_check_array_type(i64 noundef %.val) #23 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %._crit_edge60, label %bb.f

._crit_edge60:                                    ; preds = %bb.e
  %.pre = load i32, ptr %i.k, align 8, !tbaa !245
  %.pre61 = load ptr, ptr %i.a, align 8, !tbaa !158
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.s = inttoptr i64 %i.q to ptr                 ; 7 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !114  ; 2 uses
  %i.u = and i64 %i.t, 8192
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = lshr i64 %i.t, 15
  %i.w = and i64 %i.v, 127
  br label %rb_array_len.exit.i

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.s, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !64
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.h, %bb.g
  %.0.i.i = phi i64 [ %i.w, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %i.z = getelementptr i8, ptr %i.h, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !110
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !158 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !198 ; 3 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 56
  %.not.i = icmp ugt ptr %i.h, %i.ag
  br i1 %.not.i, label %.preheader.i, label %bb.i, !prof !109

.preheader.i:                                     ; preds = %rb_array_len.exit.i
  %i.ah = icmp sgt i64 %.0.i.i, 0
  %i.ai = icmp sgt i32 %i.ad, 0
  %or.cond15.i = and i1 %i.ah, %i.ai
  br i1 %or.cond15.i, label %.lr.ph.i, label %vm_callee_setup_block_arg_arg0_splat.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aj = getelementptr i8, ptr %i.s, i64 16      ; 3 uses
  %i.ak = getelementptr i8, ptr %i.s, i64 32      ; 3 uses
  %i.al = add nsw i64 %.0.i.i, -1
  %i.am = add nsw i32 %i.ad, -1
  %i.an = zext nneg i32 %i.am to i64
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.an) ; 4 uses
  %i.ao = add nuw nsw i64 %umin.i, 1              ; 2 uses
  %i.ap = icmp eq i64 %umin.i, 0
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ao, 4294967294
  br label %bb.j

bb.i:                                             ; preds = %rb_array_len.exit.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

bb.j:                                             ; preds = %RARRAY_AREF.exit.i.1, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %RARRAY_AREF.exit.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %RARRAY_AREF.exit.i.1 ]
  %i.aq = load i64, ptr %i.s, align 8, !tbaa !114
  %i.ar = and i64 %i.aq, 8192
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i, label %bb.k, label %RARRAY_AREF.exit.i

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !64
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.as, %bb.k ], [ %i.aj, %bb.j ]
  %i.at = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !50
  %i.av = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i
  store i64 %i.au, ptr %i.av, align 8, !tbaa !50
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aw = load i64, ptr %i.s, align 8, !tbaa !114
  %i.ax = and i64 %i.aw, 8192
  %.not.i.i.i.1 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.1, label %bb.l, label %RARRAY_AREF.exit.i.1

bb.l:                                             ; preds = %RARRAY_AREF.exit.i
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !64
  br label %RARRAY_AREF.exit.i.1

RARRAY_AREF.exit.i.1:                             ; preds = %bb.l, %RARRAY_AREF.exit.i
  %.0.i.i.i.1 = phi ptr [ %i.ay, %bb.l ], [ %i.aj, %RARRAY_AREF.exit.i ]
  %i.az = getelementptr [8 x i8], ptr %.0.i.i.i.1, i64 %indvars.iv.next.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !50
  %i.bb = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next.i
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !50
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.i.unr-lcssa, label %bb.j, !llvm.loop !824

.critedge.loopexit.i.unr-lcssa:                   ; preds = %RARRAY_AREF.exit.i.1
  %i.bc = and i64 %umin.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.critedge.loopexit.i

.epil.preheader:                                  ; preds = %.critedge.loopexit.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.critedge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod70 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.bd = load i64, ptr %i.s, align 8, !tbaa !114
  %i.be = and i64 %i.bd, 8192
  %.not.i.i.i.epil = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.epil, label %bb.m, label %RARRAY_AREF.exit.i.epil

bb.m:                                             ; preds = %.epil.preheader
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !64
  br label %RARRAY_AREF.exit.i.epil

RARRAY_AREF.exit.i.epil:                          ; preds = %bb.m, %.epil.preheader
  %.0.i.i.i.epil = phi ptr [ %i.bf, %bb.m ], [ %i.aj, %.epil.preheader ]
  %i.bg = getelementptr [8 x i8], ptr %.0.i.i.i.epil, i64 %indvars.iv.i.epil.init
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !50
  %i.bi = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i.epil.init
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !50
  br label %.critedge.loopexit.i

.critedge.loopexit.i:                             ; preds = %.critedge.loopexit.i.unr-lcssa, %RARRAY_AREF.exit.i.epil
  %i.bj = trunc nuw nsw i64 %umin.i to i32
  %i.bk = add nuw nsw i32 %i.bj, 1
  br label %vm_callee_setup_block_arg_arg0_splat.exit

vm_callee_setup_block_arg_arg0_splat.exit:        ; preds = %.preheader.i, %.critedge.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bk, %.critedge.loopexit.i ] ; 2 uses
  store i32 %.0.lcssa.i, ptr %i.k, align 8, !tbaa !245
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge60, %vm_callee_setup_block_arg_arg0_splat.exit, %bb.d, %bb.c
  %i.bl = phi ptr [ %.pre61, %._crit_edge60 ], [ %i.ab, %vm_callee_setup_block_arg_arg0_splat.exit ], [ %.pre62, %bb.d ], [ %.pre62, %bb.c ]
  %i.bm = phi i32 [ %.pre, %._crit_edge60 ], [ %.0.lcssa.i, %vm_callee_setup_block_arg_arg0_splat.exit ], [ 1, %bb.d ], [ %i.l, %bb.c ] ; 4 uses
  %i.bn = getelementptr i8, ptr %i.bl, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !198 ; 6 uses
  %.not54 = icmp eq i32 %i.bm, %i.bo
  br i1 %.not54, label %bb.u, label %bb.o

.thread:                                          ; preds = %bb.b
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.bq = getelementptr i8, ptr %i.bp, i64 24
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !198 ; 3 uses
  %.not5456 = icmp eq i32 %i.l, %i.br
  br i1 %.not5456, label %bb.u, label %.thread57

bb.o:                                             ; preds = %bb.n
  %i.bs = icmp slt i32 %i.bm, %i.bo
  br i1 %i.bs, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr i8, ptr %i.h, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !110
  %i.bv = sext i32 %i.bo to i64                   ; 3 uses
  %i.bw = getelementptr [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 56
  %.not55 = icmp ugt ptr %i.h, %i.bx
  br i1 %.not55, label %.lr.ph.preheader, label %bb.q, !prof !109

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.by = sext i32 %i.bm to i64                   ; 4 uses
  %i.bz = sub nsw i64 %i.bv, %i.by                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bz, 4
  br i1 %min.iters.check, label %.lr.ph.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bz, -4                      ; 3 uses
  %i.ca = add nsw i64 %n.vec, %i.by
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cb = getelementptr i8, ptr %gep, i64 16
  store <2 x i64> splat (i64 4), ptr %gep, align 8, !tbaa !50
  store <2 x i64> splat (i64 4), ptr %i.cb, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !825

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader69

.lr.ph.preheader69:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.by, %.lr.ph.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader69, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader69 ] ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  store i64 4, ptr %i.cd, align 8, !tbaa !50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !826

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  store i32 %i.bo, ptr %i.k, align 8, !tbaa !245
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.ce = icmp sgt i32 %i.bm, %i.bo
  br i1 %i.ce, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  store i32 %i.bo, ptr %i.k, align 8, !tbaa !245
  br label %bb.u

.thread57:                                        ; preds = %.thread
  tail call fastcc void @argument_arity_error(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef %i.l, i32 noundef %i.br, i32 noundef %i.br) #58
  unreachable

bb.t:                                             ; preds = %bb.a
  %i.cf = tail call fastcc i32 @setup_parameters_complex(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2, ptr noundef %4, i32 noundef %5)
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.n, %._crit_edge, %bb.s, %bb.r, %bb.t
  %.048 = phi i32 [ %i.cf, %bb.t ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %._crit_edge ], [ 0, %bb.n ], [ 0, %.thread ]
  ret i32 %.048
}

declare void @rb_gc_writebarrier_unprotect(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_opt_send(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !242
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %.not.i.i = trunc i64 %i.c to i1
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 16
  br label %vm_ci_flag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !196
  %i.h = trunc i64 %i.g to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.h, %bb.c ] ; 4 uses
end_hunk_0
