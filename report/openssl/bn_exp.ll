Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_exp?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0_@BN_exp:bb.a
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call ptr @BN_copy(ptr noundef nonnull %i.g, ptr noundef %1) #7
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 @BN_num_bits(ptr noundef %2) #7 ; 2 uses
  %i.m = tail call i32 @BN_is_odd(ptr noundef %2) #7
  %.not44 = icmp eq i32 %i.m, 0
  br i1 %.not44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call ptr @BN_copy(ptr noundef nonnull %i.f, ptr noundef %1) #7
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.p = tail call i32 @BN_set_word(ptr noundef nonnull %i.f, i64 noundef 1) #7
  %.not45 = icmp eq i32 %i.p, 0
  br i1 %.not45, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = icmp sgt i32 %i.l, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %bb.n
  %.03851 = phi i32 [ %i.u, %bb.n ], [ 1, %bb.k ] ; 2 uses
  %i.r = tail call i32 @BN_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef %3) #7
  %.not47 = icmp eq i32 %i.r, 0
  br i1 %.not47, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.s = tail call i32 @BN_is_bit_set(ptr noundef %2, i32 noundef %.03851) #7
  %.not48 = icmp eq i32 %i.s, 0
  br i1 %.not48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = tail call i32 @BN_mul(ptr noundef %i.f, ptr noundef %i.f, ptr noundef nonnull %i.g, ptr noundef %3) #7
  %.not49 = icmp eq i32 %i.t, 0
  br i1 %.not49, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.u = add nuw nsw i32 %.03851, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.n, %bb.k
  %.not46 = icmp eq ptr %0, %i.f
  br i1 %.not46, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.v = tail call ptr @BN_copy(ptr noundef %0, ptr noundef %i.f) #7
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.lr.ph, %bb.o, %bb.j, %bb.i, %bb.g, %bb.f, %bb.p
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.i ], [ 1, %bb.p ], [ 0, %bb.j ], [ 0, %bb.o ], [ 0, %.lr.ph ], [ 0, %bb.m ]
  tail call void @BN_CTX_end(ptr noundef %3) #7
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %bb.c
  %.039 = phi i32 [ 0, %bb.c ], [ %.0, %.loopexit ]
  ret i32 %.039
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @BN_get_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BN_CTX_start(ptr noundef) local_unnamed_addr #2

declare ptr @BN_CTX_get(ptr noundef) local_unnamed_addr #2

declare ptr @BN_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #2

declare i32 @BN_is_odd(ptr noundef) local_unnamed_addr #2

declare i32 @BN_set_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_sqr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_is_bit_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_mul(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BN_CTX_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @BN_mod_exp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_is_odd(ptr noundef %3) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @BN_get_flags(ptr noundef %2, i32 noundef 4) #7
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @BN_get_flags(ptr noundef nonnull %1, i32 noundef 4) #7
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @BN_get_flags(ptr noundef %3, i32 noundef 4) #7
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %1, align 8, !tbaa !15
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  %i.o = tail call i32 @BN_mod_exp_mont_word(ptr noundef %0, i64 noundef %i.n, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null)
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.p = tail call i32 @BN_mod_exp_mont(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.q = tail call i32 @BN_mod_exp_recp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.0 = phi i32 [ %i.p, %bb.h ], [ %i.o, %bb.g ], [ %i.q, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @BN_mod_exp_mont_word(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_get_flags(ptr noundef %2, i32 noundef 4) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @BN_get_flags(ptr noundef %3, i32 noundef 4) #7
  %.not137 = icmp eq i32 %i.b, 0
  br i1 %.not137, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1187, ptr noundef nonnull @__func__.BN_mod_exp_mont_word) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786689, ptr noundef null) #7
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i32 @BN_is_odd(ptr noundef %3) #7
  %.not138 = icmp eq i32 %i.c, 0
  br i1 %.not138, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1195, ptr noundef nonnull @__func__.BN_mod_exp_mont_word) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 102, ptr noundef null) #7
  br label %bb.an

bb.f:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %3, align 8, !tbaa !15
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  %i.i = urem i64 %1, %i.h
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0131 = phi i64 [ %i.i, %bb.g ], [ %1, %bb.f ] ; 7 uses
  %i.j = tail call i32 @BN_num_bits(ptr noundef %2) #7 ; 3 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @BN_abs_is_word(ptr noundef nonnull %3, i64 noundef 1) #7
  %.not167 = icmp eq i32 %i.l, 0
  br i1 %.not167, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @BN_zero_ex(ptr noundef %0) #7
  br label %bb.an

bb.k:                                             ; preds = %bb.i
  %i.m = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  br label %bb.an

bb.l:                                             ; preds = %bb.h
  %i.n = icmp eq i64 %.0131, 0
  br i1 %i.n, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @BN_zero_ex(ptr noundef %0) #7
  br label %bb.an

bb.n:                                             ; preds = %bb.l
  tail call void @BN_CTX_start(ptr noundef %4) #7
  %i.o = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 2 uses
  %i.p = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not139 = icmp eq ptr %5, null
  br i1 %.not139, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.r = tail call ptr @BN_MONT_CTX_new() #7      ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread190, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.t = tail call i32 @BN_MONT_CTX_set(ptr noundef nonnull %i.r, ptr noundef nonnull %3, ptr noundef %4) #7
  %.not140 = icmp eq i32 %i.t, 0
  br i1 %.not140, label %.thread190, label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q
  %.0128 = phi ptr [ %i.r, %bb.q ], [ %5, %bb.o ] ; 21 uses
  %i.u = icmp sgt i32 %i.j, 1
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.v = add nsw i32 %i.j, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.af
  %.0204 = phi ptr [ %.5, %bb.af ], [ %i.p, %.lr.ph.preheader ] ; 5 uses
  %.0108203 = phi ptr [ %.5113, %bb.af ], [ %i.o, %.lr.ph.preheader ] ; 9 uses
  %.0116202 = phi i64 [ %.1117, %bb.af ], [ %.0131, %.lr.ph.preheader ] ; 4 uses
  %.0118201 = phi i32 [ %.5123, %bb.af ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0127200 = phi i32 [ %i.ag, %bb.af ], [ %i.v, %.lr.ph.preheader ] ; 3 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.0116202, i64 %.0116202) ; 2 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.s, label %bb.x

bb.s:                                             ; preds = %.lr.ph
  %.not151 = icmp eq i32 %.0118201, 0
  br i1 %.not151, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.w = tail call i32 @BN_set_word(ptr noundef %.0108203, i64 noundef %.0116202) #7
  %.not154 = icmp eq i32 %i.w, 0
  br i1 %.not154, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.x = tail call i32 @BN_to_montgomery(ptr noundef %.0108203, ptr noundef %.0108203, ptr noundef nonnull %.0128, ptr noundef %4) #7
  %.not155 = icmp eq i32 %i.x, 0
  br i1 %.not155, label %.loopexit, label %.thread

bb.v:                                             ; preds = %bb.s
  %i.y = tail call i32 @BN_mul_word(ptr noundef %.0108203, i64 noundef %.0116202) #7
  %.not152 = icmp eq i32 %i.y, 0
  br i1 %.not152, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.z = tail call i32 @BN_div(ptr noundef null, ptr noundef %.0204, ptr noundef %.0108203, ptr noundef %3, ptr noundef %4) #7
  %.not153 = icmp eq i32 %i.z, 0
  br i1 %.not153, label %.loopexit, label %.thread

bb.x:                                             ; preds = %.lr.ph
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 2 uses
  %.not156 = icmp eq i32 %.0118201, 0
  br i1 %.not156, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.u, %bb.w, %bb.x
  %.2180 = phi ptr [ %.0204, %bb.x ], [ %.0108203, %bb.w ], [ %.0204, %bb.u ]
  %.2110178 = phi ptr [ %.0108203, %bb.x ], [ %.0204, %bb.w ], [ %.0108203, %bb.u ] ; 4 uses
  %.0114176 = phi i64 [ %mul.val, %bb.x ], [ 1, %bb.w ], [ 1, %bb.u ]
  %i.aa = tail call i32 @BN_mod_mul_montgomery(ptr noundef %.2110178, ptr noundef %.2110178, ptr noundef %.2110178, ptr noundef nonnull %.0128, ptr noundef %4) #7
  %.not157 = icmp eq i32 %i.aa, 0
  br i1 %.not157, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.thread, %bb.x
  %.not156181 = phi i1 [ true, %.thread ], [ false, %bb.x ]
  %.2179 = phi ptr [ %.2180, %.thread ], [ %.0204, %bb.x ] ; 5 uses
  %.2110177 = phi ptr [ %.2110178, %.thread ], [ %.0108203, %bb.x ] ; 9 uses
  %.0114175 = phi i64 [ %.0114176, %.thread ], [ %mul.val, %bb.x ] ; 4 uses
  %.2120173 = phi i32 [ 0, %.thread ], [ 1, %bb.x ] ; 2 uses
  %i.ab = tail call i32 @BN_is_bit_set(ptr noundef %2, i32 noundef %.0127200) #7
  %.not158 = icmp eq i32 %i.ab, 0
  br i1 %.not158, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %mul160 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.0131, i64 %.0114175) ; 2 uses
  %mul.val161 = extractvalue { i64, i1 } %mul160, 0
  %mul.ov162 = extractvalue { i64, i1 } %mul160, 1
  br i1 %mul.ov162, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  br i1 %.not156181, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ac = tail call i32 @BN_set_word(ptr noundef %.2110177, i64 noundef %.0114175) #7
  %.not165 = icmp eq i32 %i.ac, 0
  br i1 %.not165, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ad = tail call i32 @BN_to_montgomery(ptr noundef %.2110177, ptr noundef %.2110177, ptr noundef nonnull %.0128, ptr noundef %4) #7
  %.not166 = icmp eq i32 %i.ad, 0
  br i1 %.not166, label %.loopexit, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  %i.ae = tail call i32 @BN_mul_word(ptr noundef %.2110177, i64 noundef %.0114175) #7
  %.not163 = icmp eq i32 %i.ae, 0
  br i1 %.not163, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.af = tail call i32 @BN_div(ptr noundef null, ptr noundef %.2179, ptr noundef %.2110177, ptr noundef %3, ptr noundef %4) #7
  %.not164 = icmp eq i32 %i.af, 0
  br i1 %.not164, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.z, %bb.ae, %bb.ac, %bb.y
  %.5123 = phi i32 [ %.2120173, %bb.y ], [ %.2120173, %bb.z ], [ 0, %bb.ae ], [ 0, %bb.ac ] ; 2 uses
  %.1117 = phi i64 [ %.0114175, %bb.y ], [ %mul.val161, %bb.z ], [ %.0131, %bb.ae ], [ %.0131, %bb.ac ] ; 4 uses
  %.5113 = phi ptr [ %.2110177, %bb.y ], [ %.2110177, %bb.z ], [ %.2179, %bb.ae ], [ %.2110177, %bb.ac ] ; 5 uses
  %.5 = phi ptr [ %.2179, %bb.y ], [ %.2179, %bb.z ], [ %.2110177, %bb.ae ], [ %.2179, %bb.ac ] ; 3 uses
  %i.ag = add nsw i32 %.0127200, -1
  %i.ah = icmp sgt i32 %.0127200, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.af
  %i.ai = icmp eq i32 %.5123, 0                   ; 2 uses
  %.not141 = icmp eq i64 %.1117, 1
  br i1 %.not141, label %bb.ak, label %bb.ag

._crit_edge.thread:                               ; preds = %bb.r
  %.not141215 = icmp eq i64 %.0131, 1
  br i1 %.not141215, label %.thread229, label %.thread222

bb.ag:                                            ; preds = %._crit_edge
  br i1 %i.ai, label %bb.ai, label %.thread222

.thread222:                                       ; preds = %._crit_edge.thread, %bb.ag
  %.0116.lcssa218228 = phi i64 [ %.1117, %bb.ag ], [ %.0131, %._crit_edge.thread ]
  %.0108.lcssa220227 = phi ptr [ %.5113, %bb.ag ], [ %i.o, %._crit_edge.thread ] ; 4 uses
  %i.aj = tail call i32 @BN_set_word(ptr noundef %.0108.lcssa220227, i64 noundef %.0116.lcssa218228) #7
  %.not145 = icmp eq i32 %i.aj, 0
  br i1 %.not145, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.thread222
  %i.ak = tail call i32 @BN_to_montgomery(ptr noundef %.0108.lcssa220227, ptr noundef %.0108.lcssa220227, ptr noundef nonnull %.0128, ptr noundef %4) #7
  %.not146 = icmp eq i32 %i.ak, 0
  br i1 %.not146, label %.loopexit, label %.thread184

bb.ai:                                            ; preds = %bb.ag
  %i.al = tail call i32 @BN_mul_word(ptr noundef %.5113, i64 noundef %.1117) #7
  %.not143 = icmp eq i32 %i.al, 0
  br i1 %.not143, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.am = tail call i32 @BN_div(ptr noundef null, ptr noundef %.5, ptr noundef %.5113, ptr noundef %3, ptr noundef %4) #7
  %.not144 = icmp eq i32 %i.am, 0
  br i1 %.not144, label %.loopexit, label %.thread184

bb.ak:                                            ; preds = %._crit_edge
  br i1 %i.ai, label %.thread184, label %.thread229

.thread229:                                       ; preds = %._crit_edge.thread, %bb.ak
  %i.an = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  %.not149 = icmp eq i32 %i.an, 0
  br i1 %.not149, label %.loopexit, label %bb.al

.thread184:                                       ; preds = %bb.aj, %bb.ah, %bb.ak
  %.6188 = phi ptr [ %.5113, %bb.ak ], [ %.5, %bb.aj ], [ %.0108.lcssa220227, %bb.ah ]
  %i.ao = tail call i32 @BN_from_montgomery(ptr noundef %0, ptr noundef %.6188, ptr noundef nonnull %.0128, ptr noundef %4) #7
  %.not148 = icmp eq i32 %i.ao, 0
  br i1 %.not148, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %.thread184, %.thread229
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %bb.ae, %bb.ab, %bb.ac, %.thread, %bb.v, %bb.w, %bb.t, %bb.u, %.thread184, %.thread229, %bb.ai, %bb.aj, %.thread222, %bb.ah, %bb.n, %bb.al
  %.1129 = phi ptr [ null, %bb.n ], [ %.0128, %bb.aj ], [ %.0128, %bb.ai ], [ %.0128, %bb.al ], [ %.0128, %.thread229 ], [ %.0128, %.thread184 ], [ %.0128, %bb.ah ], [ %.0128, %.thread222 ], [ %.0128, %bb.u ], [ %.0128, %bb.t ], [ %.0128, %bb.w ], [ %.0128, %bb.v ], [ %.0128, %.thread ], [ %.0128, %bb.ac ], [ %.0128, %bb.ab ], [ %.0128, %bb.ae ], [ %.0128, %bb.ad ]
  %.1126 = phi i32 [ 0, %bb.n ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 1, %bb.al ], [ 0, %.thread229 ], [ 0, %.thread184 ], [ 0, %bb.ah ], [ 0, %.thread222 ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %.thread ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.ap = icmp eq ptr %5, null
  br i1 %i.ap, label %.thread190, label %bb.am

.thread190:                                       ; preds = %bb.p, %bb.q, %.loopexit
  %.1126195 = phi i32 [ %.1126, %.loopexit ], [ 0, %bb.q ], [ 0, %bb.p ]
  %.1129193 = phi ptr [ %.1129, %.loopexit ], [ %i.r, %bb.q ], [ null, %bb.p ]
  tail call void @BN_MONT_CTX_free(ptr noundef %.1129193) #7
  br label %bb.am

bb.am:                                            ; preds = %.thread190, %.loopexit
  %.1126194 = phi i32 [ %.1126195, %.thread190 ], [ %.1126, %.loopexit ]
  tail call void @BN_CTX_end(ptr noundef %4) #7
  br label %bb.an

bb.an:                                            ; preds = %bb.j, %bb.k, %bb.am, %bb.m, %bb.e, %bb.c
  %.0130 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.m ], [ %.1126194, %bb.am ], [ 1, %bb.j ], [ %i.m, %bb.k ]
  ret i32 %.0130
}

; Function Attrs: nounwind uwtable
define i32 @BN_mod_exp_mont(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call i32 @BN_is_odd(ptr noundef %3) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @__func__.BN_mod_exp_mont) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 102, ptr noundef null) #7
  br label %BN_mod_exp_mont_consttime.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10
  %i.e = icmp slt i32 %i.d, 1048576
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @BN_get_flags(ptr noundef %2, i32 noundef 4) #7
  %.not151 = icmp eq i32 %i.f, 0
  br i1 %.not151, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @BN_get_flags(ptr noundef %1, i32 noundef 4) #7
  %.not152 = icmp eq i32 %i.g, 0
  br i1 %.not152, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @BN_get_flags(ptr noundef nonnull %3, i32 noundef 4) #7
  %.not153 = icmp eq i32 %i.h, 0
  br i1 %.not153, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.i = tail call i32 @bn_mod_exp_mont_fixed_top(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5), !inline_history !19
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %BN_mod_exp_mont_consttime.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @bn_correct_top(ptr noundef %0) #7, !inline_history !19
  br label %BN_mod_exp_mont_consttime.exit

bb.i:                                             ; preds = %bb.f, %bb.c
  %i.j = tail call i32 @BN_num_bits(ptr noundef %2) #7 ; 6 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.l = tail call i32 @BN_abs_is_word(ptr noundef nonnull %3, i64 noundef 1) #7
  %.not171 = icmp eq i32 %i.l, 0
  br i1 %.not171, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @BN_zero_ex(ptr noundef %0) #7
  br label %BN_mod_exp_mont_consttime.exit

bb.l:                                             ; preds = %bb.j
  %i.m = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  br label %BN_mod_exp_mont_consttime.exit

bb.m:                                             ; preds = %bb.i
  tail call void @BN_CTX_start(ptr noundef %4) #7
  %i.n = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 2 uses
  %i.o = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 13 uses
  %i.p = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 7 uses
  store ptr %i.p, ptr %i.a, align 16, !tbaa !20
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread177, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not154 = icmp eq ptr %5, null
  br i1 %.not154, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.r = tail call ptr @BN_MONT_CTX_new() #7      ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread187, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = tail call i32 @BN_MONT_CTX_set(ptr noundef nonnull %i.r, ptr noundef nonnull %3, ptr noundef %4) #7
  %.not155 = icmp eq i32 %i.t, 0
  br i1 %.not155, label %.thread187, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  %.0127 = phi ptr [ %i.r, %bb.p ], [ %5, %bb.n ] ; 19 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !14
  %.not156 = icmp eq i32 %i.v, 0
  br i1 %.not156, label %bb.r, label %bb.s
end_hunk_0
