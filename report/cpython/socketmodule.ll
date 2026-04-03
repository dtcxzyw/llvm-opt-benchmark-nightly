begin_hunk_0
define internal range(i32 -1, 1) i32 @sock_initobj(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %union.sock_addr, align 8           ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
end_hunk_0
begin_hunk_1
bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.y
  %i.bg = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.bh = call ptr @PyErr_SetFromErrno(ptr noundef %i.bg) #12 ; 0 uses
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z, %bb.x, %bb.w
  %.050.i = phi i32 [ %i.bd, %bb.x ], [ %.143, %bb.w ], [ %.143, %bb.z ]
end_hunk_1
begin_hunk_2
  %i.bn = call ptr @PyErr_SetFromErrno(ptr noundef %i.bm) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ag

bb.ae:                                            ; preds = %.thread76.i, %bb.ab
  %.157.i = phi i32 [ %i.bl, %.thread76.i ], [ %.141, %bb.ab ]
  %i.bo = icmp eq i32 %.1, -1
  br i1 %i.bo, label %bb.af, label %.sink.split100.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
end_hunk_2
begin_hunk_3
  store i32 4, ptr %i.f, align 4, !tbaa !6
  %i.bp = call i32 @getsockopt(i32 noundef %i.au, i32 noundef 1, i32 noundef 38, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #12
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.thread78.i.a, label %bb.ah

.thread78.i.a:                                    ; preds = %bb.af
  %i.br = load i32, ptr %i.e, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %.sink.split100.i

bb.ag:                                            ; preds = %bb.ad, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %sock_initobj_impl.exit

bb.ah:                                            ; preds = %bb.af
  %4 = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %5 = call ptr @PyErr_SetFromErrno(ptr noundef %4) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %sock_initobj_impl.exit

bb.ai:                                            ; preds = %bb.r
  %i.bs = icmp eq i32 %.143, -1
end_hunk_3
begin_hunk_4
  %i.cl = call i32 @close(i32 noundef %.06482.i) #12 ; 0 uses
  br label %sock_initobj_impl.exit

.sink.split100.i:                                 ; preds = %.thread78.i.a, %bb.ae
  %.363.ph.i = phi i32 [ %i.br, %.thread78.i.a ], [ %.1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split100.i, %bb.ap
  %.165.i = phi i32 [ %.06482.i, %bb.ap ], [ %i.au, %.sink.split100.i ] ; 2 uses
  %.363.i = phi i32 [ %spec.store.select4.i, %bb.ap ], [ %.363.ph.i, %.sink.split100.i ]
  %.359.i = phi i32 [ %spec.store.select5.i, %bb.ap ], [ %.157.i, %.sink.split100.i ] ; 2 uses
  %.252.i = phi i32 [ %spec.store.select.i, %bb.ap ], [ %.050.i, %.sink.split100.i ]
  %i.cm = getelementptr i8, ptr %0, i64 16        ; 2 uses
  store atomic i32 %.165.i, ptr %i.cm monotonic, align 4
  %i.cn = getelementptr i8, ptr %0, i64 20
end_hunk_4
begin_hunk_5
  %i.de = call i32 @close(i32 noundef %.165.i) #12 ; 0 uses
  br label %sock_initobj_impl.exit

sock_initobj_impl.exit:                           ; preds = %bb.av, %init_sockobject.exit.i, %bb.aq, %bb.ao, %bb.ah, %bb.ag, %.thread.i, %bb.t, %bb.q, %bb.n, %bb.j, %bb.f, %bb.c
  %.046 = phi i32 [ -1, %bb.f ], [ -1, %bb.j ], [ -1, %bb.n ], [ -1, %bb.c ], [ -1, %bb.aq ], [ -1, %bb.q ], [ -1, %.thread.i ], [ -1, %bb.av ], [ -1, %bb.t ], [ -1, %bb.ah ], [ -1, %bb.ao ], [ 0, %init_sockobject.exit.i ], [ -1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  ret i32 %.046
}
end_hunk_5
begin_hunk_6
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.z = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %i.y, ptr noundef nonnull @.str.627, ptr noundef nonnull %i.f) #12
  %.not28.not = icmp eq i32 %i.z, 0
  br i1 %.not28.not, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 16
end_hunk_6
begin_hunk_7
  %i.bl = call ptr %i.bk() #12
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.t, %bb.q, %bb.l, %bb.a, %bb.u, %bb.s, %bb.e, %bb.c
  %.119 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ %i.bl, %bb.u ], [ null, %bb.q ], [ null, %.thread ], [ null, %bb.a ], [ null, %bb.l ], [ null, %bb.s ], [ @_Py_NoneStruct, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
end_hunk_7
