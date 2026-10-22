Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/keyval?download=true
inline.NumInlined: 28
inline.NumDeleted: 9
begin_hunk_0_@keyval_do_merge:bb.a
  %.not57.i = icmp ugt ptr %i.u, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  %i.w = icmp ule ptr %i.m, %i.v
  %or.cond.i.not = select i1 %.not57.i, i1 %i.w, i1 false
  br i1 %or.cond.i.not, label %bb.l, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.t, ptr noundef nonnull align 1 %i.m, i64 noundef %i.o, i1 noundef false) #9
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.t, ptr noundef nonnull align 1 %i.m, i64 noundef %i.o, i1 noundef false) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = load i64, ptr %i.a, align 8
  %i.y = add i64 %i.x, %i.o                       ; 2 uses
  store i64 %i.y, ptr %i.a, align 8
  %i.z = load ptr, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.ab = tail call ptr @g_string_insert_len(ptr noundef nonnull %2, i64 noundef -1, ptr noundef nonnull %i.m, i64 noundef -1) #9 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.m, %bb.n
  %i.ac = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  %i.ae = load i64, ptr %i.d, align 8
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.p, label %.critedge.i

.critedge.i:                                      ; preds = %bb.o
  %i.ag = tail call ptr @g_string_insert_c(ptr noundef %2, i64 noundef -1, i8 noundef signext 46) #9 ; 0 uses
  br label %g_string_append_c_inline.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %2, align 8
  store i64 %i.ad, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac
  store i8 46, ptr %i.ai, align 1
  %i.aj = load ptr, ptr %2, align 8
  %i.ak = load i64, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.al, align 1
  br label %g_string_append_c_inline.exit

g_string_append_c_inline.exit:                    ; preds = %bb.p, %.critedge.i
  %.val.i = load i32, ptr %i.f, align 8           ; 2 uses
  %i.am = add i32 %.val.i, -1
  %or.cond.i.i = icmp ult i32 %i.am, 6
  br i1 %or.cond.i.i, label %qobject_type.exit.i, label %bb.q

bb.q:                                             ; preds = %g_string_append_c_inline.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #10
  unreachable

qobject_type.exit.i:                              ; preds = %g_string_append_c_inline.exit
  %i.an = icmp eq i32 %.val.i, 4
  %spec.select = select i1 %i.an, ptr %i.f, ptr null
  %i.ao = load ptr, ptr %i.h, align 8             ; 3 uses
  %.not.i72 = icmp eq ptr %i.ao, null
  br i1 %.not.i72, label %bb.t, label %bb.r

bb.r:                                             ; preds = %qobject_type.exit.i
  %.val.i73 = load i32, ptr %i.ao, align 8        ; 2 uses
  %i.ap = add i32 %.val.i73, -1
  %or.cond.i.i74 = icmp ult i32 %i.ap, 6
  br i1 %or.cond.i.i74, label %qobject_type.exit.i75, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #10
  unreachable

qobject_type.exit.i75:                            ; preds = %bb.r
  %i.aq = icmp eq i32 %.val.i73, 4
  br i1 %i.aq, label %qobject_check_type.exit77, label %bb.t

bb.t:                                             ; preds = %qobject_type.exit.i75, %qobject_type.exit.i
  br label %qobject_check_type.exit77

qobject_check_type.exit77:                        ; preds = %qobject_type.exit.i75, %bb.t
  %.0.i76 = phi ptr [ null, %bb.t ], [ %i.ao, %qobject_type.exit.i75 ]
  tail call fastcc void @keyval_do_merge(ptr noundef %spec.select, ptr noundef %.0.i76, ptr noundef %2, ptr noundef %3)
  %i.ar = load i64, ptr %i.a, align 8
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.ar) ; 2 uses
  store i64 %..i, ptr %i.a, align 8
  %i.as = load ptr, ptr %2, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %..i
  store i8 0, ptr %i.at, align 1
  br label %.loopexit

qobject_type.exit.i83:                            ; preds = %qobject_type.exit69
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.050106 = load ptr, ptr %i.au, align 8         ; 2 uses
  %.not57107 = icmp eq ptr %.050106, null
  br i1 %.not57107, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %qobject_type.exit.i83, %qobject_ref_impl.exit
  %.050108 = phi ptr [ %.050, %qobject_ref_impl.exit ], [ %.050106, %qobject_type.exit.i83 ] ; 3 uses
  %i.av = load ptr, ptr %.050108, align 8         ; 2 uses
  %.not58 = icmp eq ptr %i.av, null
  br i1 %.not58, label %qobject_ref_impl.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = atomicrmw add ptr %i.aw, i64 1 seq_cst, align 8 ; 0 uses
  %.pre = load ptr, ptr %.050108, align 8
  br label %qobject_ref_impl.exit

qobject_ref_impl.exit:                            ; preds = %.lr.ph, %bb.u
  %i.ay = phi ptr [ null, %.lr.ph ], [ %.pre, %bb.u ]
  tail call void @qlist_append_obj(ptr noundef nonnull %i.f, ptr noundef %i.ay) #9
  %i.az = getelementptr inbounds nuw i8, ptr %.050108, i64 8
  %.050 = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not57 = icmp eq ptr %.050, null
  br i1 %.not57, label %.loopexit, label %.lr.ph, !llvm.loop !9

bb.v:                                             ; preds = %qobject_type.exit69
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 355, ptr noundef nonnull @__PRETTY_FUNCTION__.keyval_do_merge) #10
  unreachable

bb.w:                                             ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0110, i64 8
  %.pre118 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.not56 = icmp eq ptr %.pre118, null
  br i1 %.not56, label %qobject_ref_impl.exit96, label %.thread

.thread:                                          ; preds = %qobject_type.exit69, %bb.w
  %i.ba = phi ptr [ %.pre118, %bb.w ], [ %i.i, %qobject_type.exit69 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0110, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = atomicrmw add ptr %i.bc, i64 1 seq_cst, align 8 ; 0 uses
  %.pre119 = load ptr, ptr %i.bb, align 8
  br label %qobject_ref_impl.exit96

qobject_ref_impl.exit96:                          ; preds = %bb.w, %.thread
  %i.be = phi ptr [ null, %bb.w ], [ %.pre119, %.thread ]
  %i.bf = load ptr, ptr %.0110, align 8
  tail call void @qdict_put_obj(ptr noundef %0, ptr noundef %i.bf, ptr noundef %i.be) #9
  br label %.loopexit

.loopexit:                                        ; preds = %qobject_ref_impl.exit, %qobject_type.exit.i83, %qobject_ref_impl.exit96, %qobject_check_type.exit77
  %i.bg = tail call ptr @qdict_next(ptr noundef %1, ptr noundef nonnull %.0110) #9 ; 2 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %.loopexit99, label %bb.b, !llvm.loop !10

.loopexit99:                                      ; preds = %.loopexit, %bb.a, %bb.f
  ret void
}

declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @keyval_parse_into(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [128 x i8], align 16              ; 11 uses
  %i.d = load i8, ptr %1, align 1
  %.not144 = icmp eq i8 %i.d, 0
  br i1 %.not144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %keyval_parse_one.exit
  %.022147 = phi ptr [ null, %keyval_parse_one.exit ], [ %2, %bb.a ] ; 6 uses
  %.023146 = phi ptr [ %.0105.i, %keyval_parse_one.exit ], [ %1, %bb.a ] ; 10 uses
  %.033145 = phi i8 [ %.1, %keyval_parse_one.exit ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.e = call i64 @strcspn(ptr noundef nonnull %.023146, ptr noundef nonnull @.str.8) #11 ; 5 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.023146, i64 %i.e ; 3 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %.not115.i = icmp eq i8 %i.g, 61
  br i1 %.not115.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %.023146, align 1
  %i.i = icmp eq i8 %i.h, 63
  br i1 %i.i, label %starts_with_help_option.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.023146) #11
  %i.k = icmp ugt i64 %i.j, 3
  br i1 %i.k, label %bb.e, label %starts_with_help_option.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %.023146, align 1
  %i.m = icmp ne i32 %i.l, 1886152040
  %i.n = zext i1 %i.m to i32
  %bcmp.fr.i.i = freeze i32 %i.n
  %.not.i131.i = icmp eq i32 %bcmp.fr.i.i, 0
  %spec.select.i.i = select i1 %.not.i131.i, i64 4, i64 0
  br label %starts_with_help_option.exit.i

starts_with_help_option.exit.i:                   ; preds = %bb.e, %bb.c
  %.0.i.i = phi i64 [ 1, %bb.c ], [ %spec.select.i.i, %bb.e ]
  %i.o = icmp eq i64 %i.e, %.0.i.i
  br i1 %i.o, label %bb.f, label %starts_with_help_option.exit.thread.i

bb.f:                                             ; preds = %starts_with_help_option.exit.i
  %i.p = icmp eq i8 %i.g, 44
  %spec.select.idx.i = zext i1 %i.p to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select.idx.i
  br label %keyval_parse_one.exit

starts_with_help_option.exit.thread.i:            ; preds = %starts_with_help_option.exit.i, %bb.d
  %.not116.i = icmp eq ptr %.022147, null
  br i1 %.not116.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %starts_with_help_option.exit.thread.i
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.022147) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %starts_with_help_option.exit.thread.i, %bb.b, %.lr.ph
  %.0104.i = phi ptr [ %.022147, %bb.g ], [ %.023146, %starts_with_help_option.exit.thread.i ], [ %.023146, %bb.b ], [ %.023146, %.lr.ph ] ; 12 uses
  %.0103.i = phi ptr [ %i.f, %bb.g ], [ null, %starts_with_help_option.exit.thread.i ], [ null, %bb.b ], [ null, %.lr.ph ] ; 3 uses
  %.099.i = phi i64 [ %i.q, %bb.g ], [ %i.e, %starts_with_help_option.exit.thread.i ], [ %i.e, %bb.b ], [ 0, %.lr.ph ] ; 3 uses
  store ptr null, ptr %i.b, align 8, !annotation !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, i8 0, i64 128, i1 false), !annotation !8
  %i.r = getelementptr inbounds nuw i8, ptr %.0104.i, i64 %.099.i ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.ae, %bb.h
  %.1102.i = phi ptr [ %.0104.i, %bb.h ], [ %i.ba, %bb.ae ] ; 9 uses
  %.098.i = phi ptr [ %0, %bb.h ], [ %.1.i, %bb.ae ] ; 3 uses
  %i.s = icmp ne ptr %.1102.i, %.0104.i           ; 3 uses
  br i1 %i.s, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.t = load i8, ptr %.1102.i, align 1
  %i.u = add i8 %i.t, -58
  %or.cond.i.i = icmp ult i8 %i.u, -10
  br i1 %or.cond.i.i, label %key_to_index.exit.thread149.i, label %bb.k

key_to_index.exit.thread149.i:                    ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.a, align 8, !annotation !8
  %i.v = call i32 @qemu_strtoul(ptr noundef nonnull %.1102.i, ptr noundef nonnull %i.b, i32 noundef 10, ptr noundef nonnull %i.a) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  switch i32 %i.v, label %key_to_index.exit.i [
    i32 0, label %key_to_index.exit.thread.i
    i32 -34, label %key_to_index.exit.thread.i
  ]

key_to_index.exit.i:                              ; preds = %bb.k
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %key_to_index.exit.thread.i, label %bb.l

key_to_index.exit.thread.i:                       ; preds = %key_to_index.exit.i, %bb.k, %bb.k
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %.1102.i to i64
  %i.aa = sub i64 %i.y, %i.z
  br label %bb.m

bb.l:                                             ; preds = %key_to_index.exit.i, %key_to_index.exit.thread149.i, %bb.i
  %i.ab = call i32 @parse_qapi_name(ptr noundef nonnull %.1102.i, i1 noundef zeroext false) #9
  %i.ac = call i32 @llvm.smax.i32(i32 %i.ab, i32 0)
  %i.ad = zext nneg i32 %i.ac to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %key_to_index.exit.thread.i
  %.1100.i = phi i64 [ %i.aa, %key_to_index.exit.thread.i ], [ %i.ad, %bb.l ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1102.i, i64 %.1100.i ; 9 uses
  %.not117.i = icmp ugt ptr %i.ae, %i.r
  br i1 %.not117.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 231, ptr noundef nonnull @__PRETTY_FUNCTION__.keyval_parse_one) #10
  unreachable

bb.o:                                             ; preds = %bb.m
  %.not118.i = icmp eq i64 %.1100.i, 0
  br i1 %.not118.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = icmp ult ptr %i.ae, %i.r
  br i1 %i.af, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ag = load i8, ptr %i.ae, align 1
  %.not119.i = icmp eq i8 %i.ag, 46
  br i1 %.not119.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.not129.i = icmp eq ptr %.0104.i, %.022147
  br i1 %.not129.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 233, ptr noundef nonnull @__PRETTY_FUNCTION__.keyval_parse_one) #10
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ah = trunc i64 %.099.i to i32
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 235, ptr noundef nonnull @__func__.keyval_parse_one, ptr noundef nonnull @.str.11, i32 noundef %i.ah, ptr noundef nonnull %.0104.i) #9
  br label %keyval_parse_one.exit.thread

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.ai = icmp ugt i64 %.1100.i, 127
  br i1 %i.ai, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.not128.i = icmp eq ptr %.0104.i, %.022147
  br i1 %.not128.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 239, ptr noundef nonnull @__PRETTY_FUNCTION__.keyval_parse_one) #10
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.aj = icmp ne ptr %i.ae, %i.r
  %i.ak = select i1 %i.s, i1 true, i1 %i.aj
  %i.al = select i1 %i.ak, ptr @.str.13, ptr @.str
  %i.am = trunc i64 %.1100.i to i32
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 242, ptr noundef nonnull @__func__.keyval_parse_one, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.al, i32 noundef %i.am, ptr noundef nonnull %.1102.i) #9
  br label %keyval_parse_one.exit.thread

bb.y:                                             ; preds = %bb.u
  br i1 %i.s, label %bb.z, label %qobject_check_type.exit.i

bb.z:                                             ; preds = %bb.y
  %i.an = call ptr @qdict_get(ptr noundef %.098.i, ptr noundef nonnull %i.c) #9 ; 3 uses
  %.not.i134.i = icmp eq ptr %i.an, null
  br i1 %.not.i134.i, label %keyval_parse_put.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val.i.i = load i32, ptr %i.an, align 8        ; 2 uses
  %i.ao = add i32 %.val.i.i, -1
  %or.cond.i.i.i = icmp ult i32 %i.ao, 6
  br i1 %or.cond.i.i.i, label %qobject_type.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #10
  unreachable

qobject_type.exit.i.i:                            ; preds = %bb.aa
  %.not47.i.i = icmp eq i32 %.val.i.i, 4
  br i1 %.not47.i.i, label %qobject_check_type.exit.i, label %keyval_parse_put.exit.thread.i

keyval_parse_put.exit.thread.i:                   ; preds = %qobject_type.exit.i.i
  %i.ap = getelementptr inbounds i8, ptr %.1102.i, i64 -1
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.0104.i to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 156, ptr noundef nonnull @__func__.keyval_parse_put, ptr noundef nonnull @.str.18, i32 noundef %i.at, ptr noundef nonnull %.0104.i) #9
  br label %keyval_parse_one.exit.thread

keyval_parse_put.exit.i:                          ; preds = %bb.z
  %i.au = call ptr @qdict_new() #9                ; 4 uses
  call void @qdict_put_obj(ptr noundef %.098.i, ptr noundef nonnull %i.c, ptr noundef %i.au) #9
  %.not120.i = icmp eq ptr %i.au, null
  br i1 %.not120.i, label %keyval_parse_one.exit.thread, label %keyval_parse_put.exit.thread153.i

keyval_parse_put.exit.thread153.i:                ; preds = %keyval_parse_put.exit.i
  %.val.i137.pr.i = load i32, ptr %i.au, align 8  ; 2 uses
  %i.av = add i32 %.val.i137.pr.i, -1
  %or.cond.i.i138.i = icmp ult i32 %i.av, 6
  br i1 %or.cond.i.i138.i, label %qobject_type.exit.i139.i, label %bb.ac

bb.ac:                                            ; preds = %keyval_parse_put.exit.thread153.i
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #10
  unreachable

qobject_type.exit.i139.i:                         ; preds = %keyval_parse_put.exit.thread153.i
  %i.aw = icmp eq i32 %.val.i137.pr.i, 4
  br i1 %i.aw, label %qobject_check_type.exit.i, label %bb.ad

bb.ad:                                            ; preds = %qobject_type.exit.i139.i
  call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 253, ptr noundef nonnull @__PRETTY_FUNCTION__.keyval_parse_one) #10
  unreachable

qobject_check_type.exit.i:                        ; preds = %qobject_type.exit.i139.i, %qobject_type.exit.i.i, %bb.y
  %.1.i = phi ptr [ %.098.i, %bb.y ], [ %i.au, %qobject_type.exit.i139.i ], [ %i.an, %qobject_type.exit.i.i ] ; 4 uses
  %i.ax = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull %.1102.i, i64 noundef %.1100.i, i64 noundef 128) #9, !alias.scope !17 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1100.i
  store i8 0, ptr %i.ay, align 1
  %i.az = load i8, ptr %i.ae, align 1             ; 3 uses
  %.not122.i = icmp eq i8 %i.az, 46
  br i1 %.not122.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %qobject_check_type.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  br label %bb.i

bb.af:                                            ; preds = %qobject_check_type.exit.i
  %i.bb = icmp eq ptr %.0104.i, %.022147
  br i1 %i.bb, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.not126.i = icmp eq i8 %i.az, 0
  br i1 %.not126.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 267, ptr noundef nonnull @__PRETTY_FUNCTION__.keyval_parse_one) #10
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.bc = ptrtoint ptr %.0103.i to i64
  %i.bd = ptrtoint ptr %.023146 to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = call ptr @g_string_new_len(ptr noundef nonnull %.023146, i64 noundef %i.be) #9
end_hunk_0
