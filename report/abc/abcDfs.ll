Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcDfs?download=true
inline.NumInlined: 561
inline.NumDeleted: 93
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Abc_NodeIsTravIdPrevious:bb.a
  %.not.i22.i.i.i = icmp slt i32 %i.f, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 232 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.q, null
  %i.r = sext i32 %spec.select.i.i.i to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #24
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = phi ptr [ %i.t, %bb.k ], [ %i.u, %bb.l ]
  store ptr %i.v, ptr %i.p, align 8, !tbaa !44
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.m ], [ %i.c, %bb.g ]
  store i32 %spec.select.sink.i.i.i, ptr %i.b, align 8, !tbaa !43
  %.pre.i.i = load i32, ptr %i.d, align 4, !tbaa !42
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.i, %bb.h, %bb.c
  %i.w = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.e, %bb.i ], [ %i.e, %bb.h ], [ %i.e, %bb.c ] ; 3 uses
  %.not3.i.i = icmp sgt i32 %i.w, %.val3
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val2, i64 232
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44
  %i.z = sext i32 %i.w to i64
  %i.aa = shl nsw i64 %i.z, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.y, i64 %i.aa
  %i.ab = sub i32 %.val3, %i.w
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.ae, i1 false), !tbaa !37
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.c, ptr %i.d, align 4, !tbaa !42
  %.val.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %Abc_NodeTravId.exit

Abc_NodeTravId.exit:                              ; preds = %bb.a, %._crit_edge.i.i.i
  %.val = phi ptr [ %.val2, %bb.a ], [ %.val.pre, %._crit_edge.i.i.i ]
  %i.af = getelementptr i8, ptr %.val2, i64 232
  %.val.i.i = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ag = sext i32 %.val3 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !45
  %i.al = add nsw i32 %i.ak, -1
  %i.am = icmp eq i32 %i.ai, %i.al
  %i.an = zext i1 %i.am to i32
  ret i32 %i.an
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Abc_NodeSetTravIdPrevious(ptr nofree captures(none) %.0.val, i32 %.16.val) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 224 ; 2 uses
  %i.d = add nsw i32 %.16.val, 1                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 228 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !42   ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %.16.val, %i.f
  br i1 %.not.i.not.i.i, label %Abc_NodeSetTravId.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.c, align 8, !tbaa !43   ; 4 uses
  %i.h = shl nsw i32 %i.g, 1                      ; 2 uses
  %.not.i.i = icmp slt i32 %.16.val, %i.h
  %.not.i.i.not.i.i = icmp sgt i32 %i.g, %.16.val ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 232 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.j, null
  %i.k = sext i32 %i.d to i64
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @realloc(ptr noundef nonnull %i.j, i64 noundef %i.l) #24
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %i.m, %bb.e ], [ %i.n, %bb.f ]
  store ptr %i.o, ptr %i.i, align 8, !tbaa !44
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.h:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = icmp slt i32 %i.g, 1073741823
  %spec.select.i.i.i = select i1 %i.p, i32 %i.h, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.g, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 232 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.r, null
  %i.s = sext i32 %spec.select.i.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.t) #24
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = phi ptr [ %i.u, %bb.k ], [ %i.v, %bb.l ]
  store ptr %i.w, ptr %i.q, align 8, !tbaa !44
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.m ], [ %i.d, %bb.g ]
  store i32 %spec.select.sink.i.i.i, ptr %i.c, align 8, !tbaa !43
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !42
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.i, %bb.h, %bb.c
  %i.x = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.f, %bb.i ], [ %i.f, %bb.h ], [ %i.f, %bb.c ] ; 3 uses
  %.not4.i.i = icmp sgt i32 %i.x, %.16.val
  br i1 %.not4.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 232
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.aa = sext i32 %i.x to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.z, i64 %i.ab
  %i.ac = sub i32 %.16.val, %i.x
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.af, i1 false), !tbaa !37
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.d, ptr %i.e, align 4, !tbaa !42
  br label %Abc_NodeSetTravId.exit

Abc_NodeSetTravId.exit:                           ; preds = %bb.a, %._crit_edge.i.i.i
  %i.ag = add nsw i32 %i.b, -1
  %i.ah = getelementptr i8, ptr %.0.val, i64 232
  %.val.i.i = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.ai = sext i32 %.16.val to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.ai
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !37
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Abc_NtkIsAcyclic(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %Abc_NtkIncrementTravId.exit.thread

Abc_NtkIncrementTravId.exit.thread:               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !45
  br label %Abc_NtkIncrementTravId.exit27

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.h, align 4, !tbaa !40 ; 3 uses
  %i.i = add nsw i32 %.val.val.i, 500             ; 7 uses
  %i.j = load i32, ptr %i.f, align 8, !tbaa !43
  %.not.i.i.i = icmp slt i32 %i.j, %i.i
  br i1 %.not.i.i.i, label %Vec_IntGrow.exit.i.i, label %Vec_IntGrow.exit.i.i.thread

Vec_IntGrow.exit.i.i:                             ; preds = %bb.b
  %i.k = sext i32 %i.i to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #25 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !44
  store i32 %i.i, ptr %i.f, align 8, !tbaa !43
  %i.n = icmp sgt i32 %.val.val.i, -500
  br i1 %i.n, label %Abc_NtkIncrementTravId.exit, label %Abc_NtkIncrementTravId.exit.thread39

Vec_IntGrow.exit.i.i.thread:                      ; preds = %bb.b
  %i.o = icmp sgt i32 %.val.val.i, -500
  br i1 %i.o, label %Abc_NtkIncrementTravId.exit, label %Abc_NtkIncrementTravId.exit.thread39.thread

Abc_NtkIncrementTravId.exit.thread39.thread:      ; preds = %Vec_IntGrow.exit.i.i.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !45
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !45
  br label %Vec_IntFill.exit.i25

Abc_NtkIncrementTravId.exit:                      ; preds = %Vec_IntGrow.exit.i.i.thread, %Vec_IntGrow.exit.i.i
  %.pr42 = phi ptr [ null, %Vec_IntGrow.exit.i.i.thread ], [ %i.m, %Vec_IntGrow.exit.i.i ] ; 2 uses
  %i.t = zext nneg i32 %i.i to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %.pr42, i8 0, i64 %i.u, i1 false), !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %i.i, ptr %i.v, align 4, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !45
  %i.y = add nsw i32 %i.x, 1                      ; 2 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !45
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pr42) ]
  br label %Abc_NtkIncrementTravId.exit27

Abc_NtkIncrementTravId.exit.thread39:             ; preds = %Vec_IntGrow.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  store i32 %i.i, ptr %i.z, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !45
  %i.ac = add nsw i32 %i.ab, 1                    ; 3 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !45
  %.not.i2040 = icmp eq ptr %i.m, null
  br i1 %.not.i2040, label %Vec_IntFill.exit.i25, label %Abc_NtkIncrementTravId.exit27

Vec_IntFill.exit.i25:                             ; preds = %Abc_NtkIncrementTravId.exit.thread39, %Abc_NtkIncrementTravId.exit.thread39.thread
  %1 = phi ptr [ %i.z, %Abc_NtkIncrementTravId.exit.thread39 ], [ %i.p, %Abc_NtkIncrementTravId.exit.thread39.thread ]
  %2 = phi ptr [ %i.aa, %Abc_NtkIncrementTravId.exit.thread39 ], [ %i.q, %Abc_NtkIncrementTravId.exit.thread39.thread ]
  %3 = phi i32 [ %i.ac, %Abc_NtkIncrementTravId.exit.thread39 ], [ %i.s, %Abc_NtkIncrementTravId.exit.thread39.thread ]
  store i32 %i.i, ptr %1, align 4, !tbaa !42
  br label %Abc_NtkIncrementTravId.exit27

Abc_NtkIncrementTravId.exit27:                    ; preds = %Abc_NtkIncrementTravId.exit, %Abc_NtkIncrementTravId.exit.thread39, %Abc_NtkIncrementTravId.exit.thread, %Vec_IntFill.exit.i25
  %i.ad = phi i32 [ %i.e, %Abc_NtkIncrementTravId.exit.thread ], [ %i.y, %Abc_NtkIncrementTravId.exit ], [ %3, %Vec_IntFill.exit.i25 ], [ %i.ac, %Abc_NtkIncrementTravId.exit.thread39 ]
  %i.ae = phi ptr [ %i.c, %Abc_NtkIncrementTravId.exit.thread ], [ %i.w, %Abc_NtkIncrementTravId.exit ], [ %2, %Vec_IntFill.exit.i25 ], [ %i.aa, %Abc_NtkIncrementTravId.exit.thread39 ]
  %i.af = add nsw i32 %i.ad, 1
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !45
  %i.ag = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %.val1631 = load ptr, ptr %i.ag, align 8, !tbaa !49 ; 2 uses
  %i.ah = getelementptr i8, ptr %.val1631, i64 4
  %.val16.val32 = load i32, ptr %i.ah, align 4, !tbaa !40
  %i.ai = icmp sgt i32 %.val16.val32, 0
  br i1 %i.ai, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_NtkIncrementTravId.exit27, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %Abc_NtkIncrementTravId.exit27 ] ; 2 uses
  %.val1634 = phi ptr [ %.val16, %bb.f ], [ %.val1631, %Abc_NtkIncrementTravId.exit27 ]
  %i.aj = getelementptr i8, ptr %.val1634, i64 8
  %.val17.val = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val17.val, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %.val = load ptr, ptr %i.al, align 8, !tbaa !15
  %i.am = getelementptr i8, ptr %i.al, i64 32
  %.val15 = load ptr, ptr %i.am, align 8, !tbaa !32
  %i.an = getelementptr i8, ptr %.val, i64 32
  %.val.val = load ptr, ptr %i.an, align 8, !tbaa !33
  %.val15.val = load i32, ptr %.val15, align 4, !tbaa !37
  %i.ao = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.ao, align 8, !tbaa !36
  %i.ap = sext i32 %.val15.val to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %.val.val.val, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15 ; 2 uses
  %.val.i28 = load i32, ptr %i.as, align 8, !tbaa !30
  %.not.i29 = icmp eq i32 %.val.i28, 1
  br i1 %.not.i29, label %bb.c, label %Abc_ObjFanin0Ntk.exit

bb.c:                                             ; preds = %.lr.ph
  %i.at = getelementptr i8, ptr %i.ar, i64 32
  %.val4.i = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.au = getelementptr i8, ptr %i.as, i64 32
  %.val3.val.i = load ptr, ptr %i.au, align 8, !tbaa !33
  %.val4.val.i = load i32, ptr %.val4.i, align 4, !tbaa !37
  %i.av = getelementptr i8, ptr %.val3.val.i, i64 8
  %.val3.val.val.i = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.aw = sext i32 %.val4.val.i to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %.val3.val.val.i, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !38
  br label %Abc_ObjFanin0Ntk.exit

Abc_ObjFanin0Ntk.exit:                            ; preds = %.lr.ph, %bb.c
  %i.az = phi ptr [ %i.ay, %bb.c ], [ %i.ar, %.lr.ph ] ; 4 uses
  %i.ba = tail call fastcc i32 @Abc_NodeIsTravIdPrevious(ptr noundef %i.az)
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %Abc_ObjFanin0Ntk.exit
  %i.bb = tail call i32 @Abc_NtkIsAcyclic_rec(ptr noundef %i.az)
  %.not14 = icmp eq i32 %i.bb, 0
  br i1 %.not14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !77
  %.val18 = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.bd = getelementptr i8, ptr %i.az, i64 48
  %.val19 = load ptr, ptr %i.bd, align 8, !tbaa !51
  %i.be = getelementptr i8, ptr %.val18, i64 32
  %.val18.val = load ptr, ptr %i.be, align 8, !tbaa !33
  %.val19.val = load i32, ptr %.val19, align 4, !tbaa !37
  %i.bf = getelementptr i8, ptr %.val18.val, i64 8
  %.val18.val.val = load ptr, ptr %i.bf, align 8, !tbaa !36
  %i.bg = sext i32 %.val19.val to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %.val18.val.val, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !38
  %i.bj = tail call ptr @Abc_ObjName(ptr noundef %i.bi) #26
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.16, ptr noundef %i.bj) #26 ; 0 uses
  br label %.critedge

bb.f:                                             ; preds = %bb.d, %Abc_ObjFanin0Ntk.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val16 = load ptr, ptr %i.ag, align 8, !tbaa !49 ; 2 uses
  %i.bl = getelementptr i8, ptr %.val16, i64 4
  %.val16.val = load i32, ptr %i.bl, align 4, !tbaa !40
  %i.bm = sext i32 %.val16.val to i64
  %i.bn = icmp slt i64 %indvars.iv.next, %i.bm
  br i1 %i.bn, label %.lr.ph, label %.critedge, !llvm.loop !180

.critedge:                                        ; preds = %bb.f, %Abc_NtkIncrementTravId.exit27, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ 1, %Abc_NtkIncrementTravId.exit27 ], [ 1, %bb.f ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Abc_NtkIsAcyclicWithBoxes_rec(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %.val56 = load i32, ptr %i.b, align 4
  %i.c = and i32 %.val56, 15
  switch i32 %i.c, label %bb.b [
    i32 2, label %bb.s
    i32 8, label %bb.s
    i32 10, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @Abc_NodeIsTravIdCurrent(ptr noundef nonnull %0)
  %.not33 = icmp eq i32 %i.d, 0
  br i1 %.not33, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !77
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %.val60 = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.11, ptr noundef %.val60) #26 ; 0 uses
  %.val59 = load i32, ptr %i.b, align 4           ; 2 uses
  %i.h = and i32 %.val59, 15
  %i.i = and i32 %.val59, 14
  %switch.i = icmp ne i32 %i.i, 8
  %i.j = icmp ne i32 %i.h, 10
  %narrow.i.not = and i1 %switch.i, %i.j
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !77 ; 2 uses
  br i1 %narrow.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @Abc_ObjName(ptr noundef nonnull %0) #26
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.17, ptr noundef %i.l) #26 ; 0 uses
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %.val52 = load ptr, ptr %0, align 8, !tbaa !15
  %i.n = getelementptr i8, ptr %0, i64 48
  %.val53 = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.o = getelementptr i8, ptr %.val52, i64 32
  %.val52.val = load ptr, ptr %i.o, align 8, !tbaa !33
  %.val53.val = load i32, ptr %.val53, align 4, !tbaa !37
  %i.p = getelementptr i8, ptr %.val52.val, i64 8
  %.val52.val.val = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.q = sext i32 %.val53.val to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val52.val.val, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.t = tail call ptr @Abc_ObjName(ptr noundef %i.s) #26
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.12, ptr noundef %i.t) #26 ; 0 uses
  br label %bb.s

bb.f:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !15
  %i.v = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val43 = load i32, ptr %i.v, align 8, !tbaa !16
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr %.val, i32 %.val43)
  %i.w = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %.val4481 = load i32, ptr %i.w, align 4, !tbaa !31
  %i.x = icmp sgt i32 %.val4481, 0
  br i1 %i.x, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.y = getelementptr i8, ptr %0, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %.val45 = load ptr, ptr %0, align 8, !tbaa !15
  %.val46 = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.z = getelementptr i8, ptr %.val45, i64 32
  %.val45.val = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.aa = getelementptr i8, ptr %.val45.val, i64 8
  %.val45.val.val = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val46, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %.val45.val.val, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 3 uses
  %.val58 = load i32, ptr %i.b, align 4           ; 2 uses
  %i.ag = and i32 %.val58, 15
  %i.ah = and i32 %.val58, 14
  %switch.i67 = icmp ne i32 %i.ah, 8
  %i.ai = icmp ne i32 %i.ag, 10
  %narrow.i68.not = and i1 %switch.i67, %i.ai
  br i1 %narrow.i68.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val49 = load ptr, ptr %i.af, align 8, !tbaa !15
  %i.aj = getelementptr i8, ptr %i.af, i64 32
  %.val50 = load ptr, ptr %i.aj, align 8, !tbaa !32
  %i.ak = getelementptr i8, ptr %.val49, i64 32
  %.val49.val = load ptr, ptr %i.ak, align 8, !tbaa !33
  %.val50.val = load i32, ptr %.val50, align 4, !tbaa !37
  %i.al = getelementptr i8, ptr %.val49.val, i64 8
  %.val49.val.val = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.am = sext i32 %.val50.val to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.val49.val.val, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.029 = phi ptr [ %i.ao, %bb.h ], [ %i.af, %bb.g ] ; 3 uses
  %i.ap = load ptr, ptr %.029, align 8, !tbaa !15 ; 2 uses
  %.val.i = load i32, ptr %i.ap, align 8, !tbaa !30
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %bb.j, label %Abc_ObjFanin0Ntk.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %.029, i64 32
  %.val4.i = load ptr, ptr %i.aq, align 8, !tbaa !32
  %i.ar = getelementptr i8, ptr %i.ap, i64 32
end_hunk_0
