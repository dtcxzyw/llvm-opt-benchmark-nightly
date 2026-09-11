Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_jit?download=true
inline.NumInlined: 2176
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@zend_jit_config:bb.a
  %i.w = icmp eq i64 %i.v, 5
  br i1 %i.w, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.x, i64 noundef 5, ptr noundef nonnull @.str.30, i64 noundef 5) #34
  %.not59 = icmp eq i32 %i.y, 0
  br i1 %.not59, label %bb.o, label %thread-pre-split70

bb.o:                                             ; preds = %bb.g, %bb.n, %bb.l, %bb.j, %bb.h
  store i8 1, ptr @jit_globals, align 8, !tbaa !90
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 1), align 1, !tbaa !93
  br label %bb.ah

thread-pre-split70:                               ; preds = %bb.n
  %.pr71 = load i64, ptr %i.f, align 8, !tbaa !277
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split70, %bb.m
  %i.z = phi i64 [ %.pr71, %thread-pre-split70 ], [ %i.v, %bb.m ] ; 2 uses
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.ab, i64 noundef 1, ptr noundef nonnull @.str.31, i64 noundef 1) #34
  %.not60 = icmp eq i32 %i.ac, 0
  br i1 %.not60, label %bb.z, label %._crit_edge79

._crit_edge79:                                    ; preds = %bb.q
  %.pre80 = load i64, ptr %i.f, align 8, !tbaa !277
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge79, %bb.p
  %i.ad = phi i64 [ %.pre80, %._crit_edge79 ], [ %i.z, %bb.p ] ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.af, i64 noundef 2, ptr noundef nonnull @.str.1, i64 noundef 2) #34
  %.not61 = icmp eq i32 %i.ag, 0
  br i1 %.not61, label %bb.z, label %thread-pre-split72

thread-pre-split72:                               ; preds = %bb.s
  %.pr73 = load i64, ptr %i.f, align 8, !tbaa !277
  br label %bb.t

bb.t:                                             ; preds = %thread-pre-split72, %bb.r
  %i.ah = phi i64 [ %.pr73, %thread-pre-split72 ], [ %i.ad, %bb.r ] ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 3
  br i1 %i.ai, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.aj, i64 noundef 3, ptr noundef nonnull @.str.32, i64 noundef 3) #34
  %.not62 = icmp eq i32 %i.ak, 0
  br i1 %.not62, label %bb.z, label %._crit_edge81

._crit_edge81:                                    ; preds = %bb.u
  %.pre82 = load i64, ptr %i.f, align 8, !tbaa !277
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge81, %bb.t
  %i.al = phi i64 [ %.pre82, %._crit_edge81 ], [ %i.ah, %bb.t ] ; 2 uses
  %i.am = icmp eq i64 %i.al, 4
  br i1 %i.am, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.an, i64 noundef 4, ptr noundef nonnull @.str.33, i64 noundef 4) #34
  %.not63 = icmp eq i32 %i.ao, 0
  br i1 %.not63, label %bb.z, label %thread-pre-split74

thread-pre-split74:                               ; preds = %bb.w
  %.pr75 = load i64, ptr %i.f, align 8, !tbaa !277
  br label %bb.x

bb.x:                                             ; preds = %thread-pre-split74, %bb.v
  %i.ap = phi i64 [ %.pr75, %thread-pre-split74 ], [ %i.al, %bb.v ] ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 7
  br i1 %i.aq, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.ar, i64 noundef 7, ptr noundef nonnull @.str.34, i64 noundef 7) #34
  %.not64 = icmp eq i32 %i.as, 0
  br i1 %.not64, label %bb.z, label %._crit_edge83

._crit_edge83:                                    ; preds = %bb.y
  %.pre84 = load i64, ptr %i.f, align 8, !tbaa !277
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s, %bb.q
  store <4 x i8> <i8 1, i8 1, i8 5, i8 4>, ptr @jit_globals, align 8, !tbaa !72
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 4), align 4, !tbaa !96
  br label %bb.ah

bb.aa:                                            ; preds = %._crit_edge83, %bb.x
  %i.at = phi i64 [ %.pre84, %._crit_edge83 ], [ %i.ap, %bb.x ] ; 3 uses
  %i.au = load ptr, ptr @zend_known_strings, align 8, !tbaa !364
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !365 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !277
  %i.az = icmp eq i64 %i.at, %i.ay
  br i1 %i.az, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bc = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.ba, i64 noundef %i.at, ptr noundef nonnull %i.bb, i64 noundef %i.at) #34
  %.not65 = icmp eq i32 %i.bc, 0
  br i1 %.not65, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store <4 x i8> <i8 1, i8 1, i8 0, i8 5>, ptr @jit_globals, align 8, !tbaa !72
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 4), align 4, !tbaa !96
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = call i64 @__isoc23_strtoll(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.a, i32 noundef 10) #34
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !277
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg
  %.not66 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not66, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bi = call fastcc i32 @zend_jit_parse_config_num(i64 noundef %i.be)
  %.not67 = icmp eq i32 %i.bi, 0
  br i1 %.not67, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr @jit_globals, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.35) #34
  store i8 0, ptr @jit_globals, align 8, !tbaa !90
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 1), align 1, !tbaa !93
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.b, %bb.c, %bb.ag, %bb.ac, %bb.z, %bb.o, %bb.f
  %.1 = phi i32 [ 0, %bb.o ], [ 0, %bb.af ], [ -1, %bb.ag ], [ 0, %bb.ac ], [ 0, %bb.z ], [ 0, %bb.f ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.1
}

declare i32 @zend_binary_strcasecmp(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @zend_jit_parse_config_num(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = urem i64 %0, 10                          ; 2 uses
  %i.d = udiv i64 %0, 10
  %i.e = add nsw i64 %i.c, -6
  %or.cond = icmp ult i64 %i.e, -5
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = trunc nuw nsw i64 %i.c to i8
  store i8 %i.f, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 3), align 1, !tbaa !95
  %i.g = urem i64 %i.d, 10                        ; 3 uses
  %i.h = icmp samesign ugt i64 %i.g, 5
  %i.i = icmp eq i64 %i.g, 4
  %or.cond23 = or i1 %i.h, %i.i
  br i1 %or.cond23, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = trunc nuw nsw i64 %i.g to i8
  store i8 %i.j, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 2), align 2, !tbaa !94
  %i.k = udiv i64 %0, 100
  %i.l = urem i64 %i.k, 10                        ; 2 uses
  %i.m = icmp samesign ugt i64 %i.l, 2
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i64 %i.l to i32            ; 2 uses
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 4), align 4, !tbaa !96
  %i.o = udiv i64 %0, 1000
  %i.p = urem i64 %i.o, 10                        ; 2 uses
  %i.q = icmp samesign ugt i64 %i.p, 1
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i64 %i.p, 0
  %1 = select i1 %.not, i32 0, i32 4
  %i.r = or disjoint i32 %1, %i.n
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 4), align 4, !tbaa !96
  %.not22 = icmp samesign ult i64 %0, 10000
  br i1 %.not22, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.g, %bb.a
  %.sink = phi i8 [ 0, %bb.a ], [ 1, %bb.g ]
  store i8 %.sink, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 1), align 1, !tbaa !93
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @zend_jit_debug_config(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = xor i64 %1, %0
  %i.b = and i64 %i.a, 496
  %.not6 = icmp eq i64 %i.b, 0
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %2, 16
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.36) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @zend_jit_init() local_unnamed_addr #11 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(848) @jit_globals, i8 0, i64 848, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @zend_jit_check_support() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @zend_execute_ex, align 8, !tbaa !75
  %.not = icmp eq ptr %i.a, @execute_ex
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr @zend_dtrace_enabled, align 1, !tbaa !366, !range !91, !noundef !92
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.sink.split9.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @sapi_module, align 8, !tbaa !552
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(7) @.str.38) #42
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %.sink.split9, label %.sink.split9.sink.split

.preheader:                                       ; preds = %bb.a, %bb.e
  %.08 = phi i32 [ %i.h, %bb.e ], [ 0, %bb.a ]    ; 3 uses
  %.0.off = add nsw i32 %.08, -57
  %switch = icmp ult i32 %.0.off, 2
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.f = trunc i32 %.08 to i8
  %i.g = tail call ptr @zend_get_user_opcode_handler(i8 noundef zeroext %i.f) #34
  %.not6 = icmp eq ptr %i.g, null
  br i1 %.not6, label %bb.e, label %.sink.split9.sink.split

bb.e:                                             ; preds = %.preheader, %bb.d
  %i.h = add nuw nsw i32 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, 257
  br i1 %exitcond.not, label %bb.f, label %.preheader, !llvm.loop !549

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 16), align 8, !tbaa !553
  %i.j = icmp sgt i64 %i.i, 2147483648
  br i1 %i.j, label %.sink.split9.sink.split, label %bb.g

.sink.split9.sink.split:                          ; preds = %bb.d, %bb.f, %bb.b, %bb.c
  %.str.39.sink.sink = phi ptr [ @.str.41, %bb.f ], [ @.str.39, %bb.c ], [ @.str.37, %bb.b ], [ @.str.40, %bb.d ]
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull %.str.39.sink.sink) #34
  br label %.sink.split9

.sink.split9:                                     ; preds = %.sink.split9.sink.split, %bb.c
  store i8 0, ptr @jit_globals, align 8, !tbaa !90
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 1), align 1, !tbaa !93
  br label %bb.g

bb.g:                                             ; preds = %.sink.split9, %bb.f
  %.05 = phi i32 [ 0, %bb.f ], [ -1, %.sink.split9 ]
  ret i32 %.05
}

declare void @execute_ex(ptr noundef) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare ptr @zend_get_user_opcode_handler(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @zend_jit_startup(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @zend_get_halt_op() #34
  store ptr %i.a, ptr @zend_jit_halt_op, align 8, !tbaa !234
  %i.b = tail call ptr @zend_get_interrupt_op() #34
  store ptr %i.b, ptr @zend_jit_interrupt_op, align 8, !tbaa !234
  %i.c = tail call i32 @zend_get_op_array_extension_handle(ptr noundef nonnull @.str.42) #34
  store i32 %i.c, ptr @zend_jit_profile_counter_rid, align 4, !tbaa !78
  store ptr %0, ptr @dasm_buf, align 8, !tbaa !75
  store i64 %1, ptr @dasm_size, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  store ptr %i.e, ptr @dasm_end, align 8, !tbaa !75
  store ptr %i.e, ptr @dasm_ptr, align 8, !tbaa !74
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !162
  %i.g = and i64 %i.f, 288
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @mprotect(ptr noundef %0, i64 noundef %1, i32 noundef 7) #34
  %.not7 = icmp eq i32 %i.h, 0
  br i1 %.not7, label %bb.d, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 @mprotect(ptr noundef %0, i64 noundef %1, i32 noundef 5) #34
  %.not6 = icmp eq i32 %i.i, 0
  br i1 %.not6, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !174
  %i.k = tail call ptr @__errno_location() #38
  %i.l = load i32, ptr %i.k, align 4, !tbaa !78   ; 2 uses
  %i.m = tail call ptr @strerror(i32 noundef %i.l) #34
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.24, i32 noundef %i.l, ptr noundef %i.m) #39 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !162
  %i.p = and i64 %i.o, 288
  %.not.i16 = icmp eq i64 %i.p, 0                 ; 2 uses
  br i1 %2, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i16, label %bb.f, label %zend_jit_unprotect.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @dasm_buf, align 8, !tbaa !75
  %i.r = load i64, ptr @dasm_size, align 8, !tbaa !144
  %i.s = tail call i32 @mprotect(ptr noundef %i.q, i64 noundef %i.r, i32 noundef 3) #34
  %.not1.i = icmp eq i32 %i.s, 0
  br i1 %.not1.i, label %zend_jit_unprotect.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !174
  %i.u = tail call ptr @__errno_location() #38
  %i.v = load i32, ptr %i.u, align 4, !tbaa !78   ; 2 uses
  %i.w = tail call ptr @strerror(i32 noundef %i.v) #34
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.24, i32 noundef %i.v, ptr noundef %i.w) #39 ; 0 uses
  br label %zend_jit_unprotect.exit

zend_jit_unprotect.exit:                          ; preds = %bb.e, %bb.f, %bb.g
  %i.y = load ptr, ptr @dasm_buf, align 8, !tbaa !75 ; 2 uses
  %i.z = load ptr, ptr @dasm_ptr, align 8, !tbaa !74
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = add i64 %i.aa, 15
  %i.ac = and i64 %i.ab, -16
  %i.ad = inttoptr i64 %i.ac to ptr
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !75
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !162
  %i.af = and i64 %i.ae, 288
  %.not.i8 = icmp eq i64 %i.af, 0
  br i1 %.not.i8, label %bb.h, label %zend_jit_protect.exit

bb.h:                                             ; preds = %zend_jit_unprotect.exit
  %i.ag = load i64, ptr @dasm_size, align 8, !tbaa !144
  %i.ah = tail call i32 @mprotect(ptr noundef %i.y, i64 noundef %i.ag, i32 noundef 5) #34
  %.not1.i9 = icmp eq i32 %i.ah, 0
  br i1 %.not1.i9, label %zend_jit_protect.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !174
  %i.aj = tail call ptr @__errno_location() #38
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !78 ; 2 uses
  %i.al = tail call ptr @strerror(i32 noundef %i.ak) #34
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.24, i32 noundef %i.ak, ptr noundef %i.al) #39 ; 0 uses
  br label %zend_jit_protect.exit

zend_jit_protect.exit:                            ; preds = %zend_jit_unprotect.exit, %bb.h, %bb.i
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !162
  %i.ao = and i64 %i.an, 288
end_hunk_0
