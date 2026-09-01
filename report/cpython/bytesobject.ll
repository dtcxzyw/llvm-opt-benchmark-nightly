Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bytesobject?download=true
inline.NumInlined: 679
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@bytes_rsplit:bb.a
bb.ce:                                            ; preds = %bb.cd
  %i.iu = call i32 @PyList_Append(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.im) #19, !inline_history !224
  %.not66.i.i = icmp eq i32 %i.iu, 0
  %i.iv = load i32, ptr %i.im, align 8, !tbaa !14 ; 3 uses
  %.not.i67.i.i = icmp sgt i32 %i.iv, -1          ; 2 uses
  br i1 %.not66.i.i, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  br i1 %.not.i67.i.i, label %bb.cg, label %Py_DECREF.exit74.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.iw = add nsw i32 %i.iv, -1                   ; 2 uses
  store i32 %i.iw, ptr %i.im, align 8, !tbaa !14
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %Py_DECREF.exit74.sink.split.i.i, label %Py_DECREF.exit74.i.i

bb.ch:                                            ; preds = %bb.ce
  br i1 %.not.i67.i.i, label %bb.ci, label %Py_DECREF.exit68.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.iy = add nsw i32 %i.iv, -1                   ; 2 uses
  store i32 %i.iy, ptr %i.im, align 8, !tbaa !14
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.cj, label %Py_DECREF.exit68.i.i

bb.cj:                                            ; preds = %bb.ci
  call void @_Py_Dealloc(ptr noundef nonnull %i.im) #19, !inline_history !224
  br label %Py_DECREF.exit68.i.i

Py_DECREF.exit68.i.i:                             ; preds = %bb.cj, %bb.ci, %bb.ch, %.thread84.i.i
  %.095216.i.i = phi i64 [ %.095215.i.i, %bb.cj ], [ %.095215.i.i, %bb.ci ], [ %.095215.i.i, %bb.ch ], [ %.095214.i.i, %.thread84.i.i ]
  %i.ja = add i64 %.095216.i.i, 1
  br label %bb.ck

bb.ck:                                            ; preds = %Py_DECREF.exit68.i.i, %Py_INCREF.exit.i23.i
  %.1.i.i = phi i64 [ 1, %Py_INCREF.exit.i23.i ], [ %i.ja, %Py_DECREF.exit68.i.i ]
  %i.jb = getelementptr i8, ptr %i.fc, i64 16
  store i64 %.1.i.i, ptr %i.jb, align 8, !tbaa !20
  %i.jc = call i32 @PyList_Reverse(ptr noundef nonnull %i.fc) #19, !inline_history !224
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %Py_DECREF.exit74.i.i, label %stringlib_rsplit.exit.i

Py_DECREF.exit74.sink.split.i.i:                  ; preds = %bb.cg, %bb.bx
  %.sink.i21.i = phi ptr [ %i.ht, %bb.bx ], [ %i.im, %bb.cg ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink.i21.i) #19, !inline_history !224
  br label %Py_DECREF.exit74.i.i

Py_DECREF.exit74.i.i:                             ; preds = %bb.bt, %Py_DECREF.exit74.sink.split.i.i, %bb.ck, %bb.cg, %bb.cf, %.thread.i.i, %fastsearch.exit.thread.thread.i.i, %bb.bx, %.split.us.i.i
  %i.je = load i32, ptr %i.fc, align 8, !tbaa !14 ; 2 uses
  %.not.i.i20.i = icmp sgt i32 %i.je, -1
  br i1 %.not.i.i20.i, label %bb.cl, label %stringlib_rsplit.exit.i

bb.cl:                                            ; preds = %Py_DECREF.exit74.i.i
  %i.jf = add nsw i32 %i.je, -1                   ; 2 uses
  store i32 %i.jf, ptr %i.fc, align 8, !tbaa !14
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.cm, label %stringlib_rsplit.exit.i

bb.cm:                                            ; preds = %bb.cl
  call void @_Py_Dealloc(ptr noundef nonnull %i.fc) #19, !inline_history !224
  br label %stringlib_rsplit.exit.i

stringlib_rsplit.exit.i:                          ; preds = %bb.cm, %bb.cl, %Py_DECREF.exit74.i.i, %bb.ck, %bb.bm, %bb.bl, %bb.bk, %Py_DECREF.exit69.i.i.i, %bb.bj, %bb.al, %bb.ak
  %.059.i.i = phi ptr [ null, %bb.ak ], [ %i.fc, %bb.ck ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.al ], [ %i.da, %bb.bj ], [ null, %Py_DECREF.exit69.i.i.i ], [ null, %bb.bk ], [ null, %Py_DECREF.exit74.i.i ], [ null, %bb.cl ], [ null, %bb.cm ]
  call void @PyBuffer_Release(ptr noundef nonnull %4) #19, !inline_history !223
  br label %bytes_rsplit_impl.exit

bytes_rsplit_impl.exit:                           ; preds = %bb.j, %.critedge79.i.i, %Py_DECREF.exit87.i.i, %bb.ag, %bb.ah, %bb.ai, %stringlib_rsplit.exit.i
  %.0.i = phi ptr [ null, %bb.ai ], [ %.059.i.i, %stringlib_rsplit.exit.i ], [ null, %bb.j ], [ %i.ab, %.critedge79.i.i ], [ null, %Py_DECREF.exit87.i.i ], [ null, %bb.ag ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.cn

bb.cn:                                            ; preds = %Py_DECREF.exit.thread, %bytes_rsplit_impl.exit, %bb.c
  %.036 = phi ptr [ %.0.i, %bytes_rsplit_impl.exit ], [ null, %bb.c ], [ null, %Py_DECREF.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_rstrip(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.129, i64 noundef %2, i64 noundef 0, i64 noundef 1) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ %i.c, %bb.d ]
  %i.d = tail call fastcc ptr @do_argstrip(ptr noundef %0, i32 noundef 1, ptr noundef %.0), !inline_history !229
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.08 = phi ptr [ %i.d, %bb.e ], [ null, %bb.b ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_split(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !20
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 3
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread53, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @bytes_split._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.cl, label %.thread53

.thread53:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.i = phi i64 [ %i.f, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %.not45 = icmp eq i64 %i.i, 0
  br i1 %.not45, label %.thread61, label %bb.d

.thread61:                                        ; preds = %.thread53
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val.i64 = load i64, ptr %i.j, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  br label %bb.j

bb.d:                                             ; preds = %.thread53
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !11   ; 3 uses
  %.not46 = icmp eq ptr %i.k, null
  br i1 %.not46, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not47 = icmp eq i64 %i.i, 1
  br i1 %.not47, label %.thread58, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.034 = phi ptr [ %i.k, %bb.e ], [ @_Py_NoneStruct, %bb.d ] ; 2 uses
  %i.l = getelementptr i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11
  %i.n = call ptr @_PyNumber_Index(ptr noundef %i.m) #19 ; 5 uses
  %.not48 = icmp eq ptr %i.n, null
  br i1 %.not48, label %Py_DECREF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.n) #19 ; 2 uses
  %i.p = load i32, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.n, align 8, !tbaa !14
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.n) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g
  %i.s = icmp eq i64 %i.o, -1
  br i1 %i.s, label %Py_DECREF.exit.thread, label %.thread58

Py_DECREF.exit.thread:                            ; preds = %bb.f, %Py_DECREF.exit
  %i.t = call ptr @PyErr_Occurred() #19
  %.not49 = icmp eq ptr %i.t, null
  br i1 %.not49, label %.thread58, label %bb.cl

.thread58:                                        ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %bb.e
  %.135 = phi ptr [ %i.k, %bb.e ], [ %.034, %Py_DECREF.exit ], [ %.034, %Py_DECREF.exit.thread ] ; 2 uses
  %.1 = phi i64 [ -1, %bb.e ], [ %i.o, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 6 uses
  %i.u = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.u, align 8, !tbaa !20 ; 8 uses
  %i.v = getelementptr i8, ptr %0, i64 32         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %.1, i64 9223372036854775807) ; 4 uses
  %i.w = icmp eq ptr %.135, @_Py_NoneStruct
  br i1 %i.w, label %bb.j, label %bb.aj

bb.j:                                             ; preds = %.thread61, %.thread58
  %spec.store.select.i69 = phi i64 [ 9223372036854775807, %.thread61 ], [ %spec.store.select.i, %.thread58 ] ; 6 uses
  %.val.i68 = phi i64 [ %.val.i64, %.thread61 ], [ %.val.i, %.thread58 ] ; 9 uses
  %.166 = phi i64 [ -1, %.thread61 ], [ %.1, %.thread58 ] ; 3 uses
  %i.x = call i64 @llvm.umin.i64(i64 %.166, i64 11)
  %i.y = add nuw nsw i64 %i.x, 1
  %i.z = call ptr @PyList_New(i64 noundef %i.y) #19, !inline_history !230 ; 10 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bytes_split_impl.exit, label %.preheader105.i.i

.preheader105.i.i:                                ; preds = %bb.j
  %.not28.i = icmp eq i64 %.166, 0
  br i1 %.not28.i, label %.loopexit.i.i, label %.preheader104.lr.ph.i.i

.preheader104.lr.ph.i.i:                          ; preds = %.preheader105.i.i
  %i.ab = getelementptr i8, ptr %0, i64 8
  %i.ac = getelementptr i8, ptr %i.z, i64 24      ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 32        ; 3 uses
  br label %.preheader104.i.i

.preheader104.i.i:                                ; preds = %Py_DECREF.exit92.i.i, %.preheader104.lr.ph.i.i
  %.0116.i.i = phi i64 [ 0, %.preheader104.lr.ph.i.i ], [ %i.bn, %Py_DECREF.exit92.i.i ] ; 6 uses
  %.071115.i.i = phi i64 [ 0, %.preheader104.lr.ph.i.i ], [ %.273.lcssa.i.i, %Py_DECREF.exit92.i.i ] ; 3 uses
  %i.ae = icmp slt i64 %.071115.i.i, %.val.i68
  br i1 %i.ae, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader104.i.i, %bb.k
  %.172112.i.i = phi i64 [ %i.al, %bb.k ], [ %.071115.i.i, %.preheader104.i.i ] ; 3 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 %.172112.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = and i32 %i.aj, 8
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.al = add i64 %.172112.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.al, %.val.i68
  br i1 %exitcond.not.i.i, label %.loopexit.thread.i.i, label %.lr.ph.i.i, !llvm.loop !231

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader104.i.i
  %.172.lcssa.i.i = phi i64 [ %.071115.i.i, %.preheader104.i.i ], [ %.172112.i.i, %.lr.ph.i.i ] ; 7 uses
  %i.am = icmp eq i64 %.172.lcssa.i.i, %.val.i68
  br i1 %i.am, label %.loopexit.thread.i.i, label %.preheader103.preheader.i.i

.preheader103.preheader.i.i:                      ; preds = %.critedge.i.i
  %i.an = add i64 %.172.lcssa.i.i, 1
  %smax.i.i = call i64 @llvm.smax.i64(i64 %.val.i68, i64 %i.an) ; 3 uses
  %i.ao = add i64 %smax.i.i, -1                   ; 2 uses
  %exitcond128.not.i.i256 = icmp eq i64 %.172.lcssa.i.i, %i.ao
  br i1 %exitcond128.not.i.i256, label %.critedge2.i.i, label %.lr.ph

.preheader103.i.i:                                ; preds = %.lr.ph
  %exitcond128.not.i.i = icmp eq i64 %.273.i.i, %i.ao
  br i1 %exitcond128.not.i.i, label %.critedge2.i.i, label %.lr.ph, !llvm.loop !232

.lr.ph:                                           ; preds = %.preheader103.preheader.i.i, %.preheader103.i.i
  %.273.in.i.i257 = phi i64 [ %.273.i.i, %.preheader103.i.i ], [ %.172.lcssa.i.i, %.preheader103.preheader.i.i ]
  %.273.i.i = add i64 %.273.in.i.i257, 1          ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %.273.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = and i32 %i.at, 8
  %.not81.i.i = icmp eq i32 %i.au, 0
  br i1 %.not81.i.i, label %.preheader103.i.i, label %..critedge2.i.i_crit_edge, !llvm.loop !232

..critedge2.i.i_crit_edge:                        ; preds = %.lr.ph
  br label %.critedge2.i.i, !llvm.loop !232

.critedge2.i.i:                                   ; preds = %.preheader103.i.i, %..critedge2.i.i_crit_edge, %.preheader103.preheader.i.i
  %.273.lcssa.i.i = phi i64 [ %smax.i.i, %.preheader103.preheader.i.i ], [ %.273.i.i, %..critedge2.i.i_crit_edge ], [ %smax.i.i, %.preheader103.i.i ] ; 4 uses
  %i.av = icmp eq i64 %.172.lcssa.i.i, 0
  %i.aw = icmp eq i64 %.273.lcssa.i.i, %.val.i68
  %or.cond.i.i = and i1 %i.av, %i.aw
  br i1 %or.cond.i.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.critedge2.i.i
  %.val.i.i = load ptr, ptr %i.ab, align 8, !tbaa !16
  %.not102.i.i = icmp eq ptr %.val.i.i, @PyBytes_Type
  br i1 %.not102.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, -1073741825
  br i1 %i.ay, label %Py_INCREF.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = add nuw i32 %i.ax, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !14
  br label %Py_INCREF.exit.i.i

Py_INCREF.exit.i.i:                               ; preds = %bb.n, %bb.m
  %.val101.i.i = load ptr, ptr %i.ac, align 8, !tbaa !79
  store ptr %0, ptr %.val101.i.i, align 8, !tbaa !11
  %i.ba = add nuw i64 %.0116.i.i, 1
  br label %.loopexit.thread.i.i

bb.o:                                             ; preds = %bb.l, %.critedge2.i.i
  %i.bb = getelementptr i8, ptr %i.ad, i64 %.172.lcssa.i.i
  %i.bc = sub i64 %.273.lcssa.i.i, %.172.lcssa.i.i
  %i.bd = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.bb, i64 noundef %i.bc), !inline_history !230 ; 8 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %Py_DECREF.exit94.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp samesign ult i64 %.0116.i.i, 12
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.val100.i.i = load ptr, ptr %i.ac, align 8, !tbaa !79
  %i.bg = getelementptr [8 x i8], ptr %.val100.i.i, i64 %.0116.i.i
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !11
  br label %Py_DECREF.exit92.i.i

bb.r:                                             ; preds = %bb.p
  %i.bh = call i32 @PyList_Append(ptr noundef nonnull %i.z, ptr noundef nonnull %i.bd) #19, !inline_history !230
  %.not83.i.i = icmp eq i32 %i.bh, 0
  %i.bi = load i32, ptr %i.bd, align 8, !tbaa !14 ; 3 uses
  %.not.i91.i.i = icmp sgt i32 %i.bi, -1          ; 2 uses
  br i1 %.not83.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i91.i.i, label %bb.t, label %Py_DECREF.exit94.i.i

bb.t:                                             ; preds = %bb.s
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.bd, align 8, !tbaa !14
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %Py_DECREF.exit94.sink.split.i.i, label %Py_DECREF.exit94.i.i

bb.u:                                             ; preds = %bb.r
  br i1 %.not.i91.i.i, label %bb.v, label %Py_DECREF.exit92.i.i

bb.v:                                             ; preds = %bb.u
  %i.bl = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.bd, align 8, !tbaa !14
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.w, label %Py_DECREF.exit92.i.i

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.bd) #19, !inline_history !230
  br label %Py_DECREF.exit92.i.i

Py_DECREF.exit92.i.i:                             ; preds = %bb.w, %bb.v, %bb.u, %bb.q
  %i.bn = add nuw nsw i64 %.0116.i.i, 1           ; 2 uses
  %exitcond129.not.i.i = icmp eq i64 %i.bn, %spec.store.select.i69
  br i1 %exitcond129.not.i.i, label %.loopexit.i.i, label %.preheader104.i.i, !llvm.loop !233

.loopexit.i.i:                                    ; preds = %Py_DECREF.exit92.i.i, %.preheader105.i.i
  %.3.i.i = phi i64 [ 0, %.preheader105.i.i ], [ %.273.lcssa.i.i, %Py_DECREF.exit92.i.i ] ; 2 uses
  %i.bo = icmp slt i64 %.3.i.i, %.val.i68
  br i1 %i.bo, label %.preheader.i.i.preheader, label %.loopexit.thread.i.i

.preheader.i.i.preheader:                         ; preds = %.loopexit.i.i
  %i.bp = getelementptr i8, ptr %0, i64 32        ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.x
  %.4121.i.i = phi i64 [ %i.bw, %bb.x ], [ %.3.i.i, %.preheader.i.i.preheader ] ; 5 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.4121.i.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !14
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = and i32 %i.bu, 8
  %.not84.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not84.i.i, label %.critedge4.i.i, label %bb.x

bb.x:                                             ; preds = %.preheader.i.i
  %i.bw = add i64 %.4121.i.i, 1                   ; 2 uses
  %exitcond130.not.i.i = icmp eq i64 %i.bw, %.val.i68
  br i1 %exitcond130.not.i.i, label %.loopexit.thread.i.i, label %.preheader.i.i, !llvm.loop !234

.critedge4.i.i:                                   ; preds = %.preheader.i.i
  %.not85.i.i = icmp eq i64 %.4121.i.i, %.val.i68
  br i1 %.not85.i.i, label %.loopexit.thread.i.i, label %bb.y

bb.y:                                             ; preds = %.critedge4.i.i
  %i.bx = getelementptr i8, ptr %i.bp, i64 %.4121.i.i
  %i.by = sub i64 %.val.i68, %.4121.i.i
  %i.bz = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull readonly %i.bx, i64 noundef %i.by), !inline_history !230 ; 8 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %Py_DECREF.exit94.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = icmp ult i64 %.166, 12
  br i1 %i.cb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cc = getelementptr i8, ptr %i.z, i64 24
  %.val99.i.i = load ptr, ptr %i.cc, align 8, !tbaa !79
  %i.cd = getelementptr [8 x i8], ptr %.val99.i.i, i64 %spec.store.select.i69
  store ptr %i.bz, ptr %i.cd, align 8, !tbaa !11
  br label %Py_DECREF.exit88.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ce = call i32 @PyList_Append(ptr noundef nonnull %i.z, ptr noundef nonnull %i.bz) #19, !inline_history !230
  %.not86.i.i = icmp eq i32 %i.ce, 0
  %i.cf = load i32, ptr %i.bz, align 8, !tbaa !14 ; 3 uses
  %.not.i87.i.i = icmp sgt i32 %i.cf, -1          ; 2 uses
  br i1 %.not86.i.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not.i87.i.i, label %bb.ad, label %Py_DECREF.exit94.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cg = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cg, ptr %i.bz, align 8, !tbaa !14
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %Py_DECREF.exit94.sink.split.i.i, label %Py_DECREF.exit94.i.i

bb.ae:                                            ; preds = %bb.ab
  br i1 %.not.i87.i.i, label %bb.af, label %Py_DECREF.exit88.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ci = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.bz, align 8, !tbaa !14
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.ag, label %Py_DECREF.exit88.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_Py_Dealloc(ptr noundef nonnull %i.bz) #19, !inline_history !230
  br label %Py_DECREF.exit88.i.i

Py_DECREF.exit88.i.i:                             ; preds = %bb.ag, %bb.af, %bb.ae, %bb.aa
  %i.ck = add nuw i64 %spec.store.select.i69, 1
  br label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %.critedge.i.i, %bb.k, %bb.x, %Py_DECREF.exit88.i.i, %.critedge4.i.i, %.loopexit.i.i, %Py_INCREF.exit.i.i
  %.2.i.i = phi i64 [ %i.ck, %Py_DECREF.exit88.i.i ], [ %spec.store.select.i69, %.critedge4.i.i ], [ %spec.store.select.i69, %.loopexit.i.i ], [ %.0116.i.i, %bb.k ], [ %i.ba, %Py_INCREF.exit.i.i ], [ %spec.store.select.i69, %bb.x ], [ %.0116.i.i, %.critedge.i.i ]
  %i.cl = getelementptr i8, ptr %i.z, i64 16
  store i64 %.2.i.i, ptr %i.cl, align 8, !tbaa !20
  br label %bytes_split_impl.exit

Py_DECREF.exit94.sink.split.i.i:                  ; preds = %bb.ad, %bb.t
  %.sink.i.i = phi ptr [ %i.bd, %bb.t ], [ %i.bz, %bb.ad ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink.i.i) #19, !inline_history !230
  br label %Py_DECREF.exit94.i.i

Py_DECREF.exit94.i.i:                             ; preds = %bb.o, %Py_DECREF.exit94.sink.split.i.i, %bb.ad, %bb.ac, %bb.y, %bb.t, %bb.s
  %i.cm = load i32, ptr %i.z, align 8, !tbaa !14  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.cm, -1
  br i1 %.not.i.i.i, label %bb.ah, label %bytes_split_impl.exit

bb.ah:                                            ; preds = %Py_DECREF.exit94.i.i
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  store i32 %i.cn, ptr %i.z, align 8, !tbaa !14
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.ai, label %bytes_split_impl.exit

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.z) #19, !inline_history !230
  br label %bytes_split_impl.exit

bb.aj:                                            ; preds = %.thread58
  %i.cp = call i32 @PyObject_GetBuffer(ptr noundef %.135, ptr noundef nonnull %4, i32 noundef 0) #19, !inline_history !235
  %.not.i50 = icmp eq i32 %i.cp, 0
  br i1 %.not.i50, label %bb.ak, label %bytes_split_impl.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cq = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !83 ; 3 uses
  switch i64 %i.cs, label %bb.bn [
    i64 0, label %bb.al
    i64 1, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ct = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.ct, ptr noundef nonnull @.str.157) #19, !inline_history !236
  br label %stringlib_split.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !14
  %i.cv = call i64 @llvm.umin.i64(i64 %.1, i64 11)
  %i.cw = add nuw nsw i64 %i.cv, 1
  %i.cx = call ptr @PyList_New(i64 noundef %i.cw) #19, !inline_history !237 ; 11 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %stringlib_split.exit.i, label %.preheader83.i.i.i

.preheader83.i.i.i:                               ; preds = %bb.am
  %i.cz = icmp sgt i64 %.val.i, 0
  br i1 %i.cz, label %.lr.ph95.i.i.i, label %.critedge.thread.i.i.i

.lr.ph95.i.i.i:                                   ; preds = %.preheader83.i.i.i
  %i.da = getelementptr i8, ptr %i.cx, i64 24
  %.not260 = icmp eq i64 %.1, 0
  br i1 %.not260, label %.critedge.i.i.i, label %.preheader.i.i.i

bb.an:                                            ; preds = %Py_DECREF.exit73.i.i.i
  %i.db = icmp sgt i64 %.in, 1
  br i1 %i.db, label %.preheader.i.i.i, label %.critedge.i.i.i, !llvm.loop !238

.preheader.i.i.i:                                 ; preds = %.lr.ph95.i.i.i, %bb.an
  %.in = phi i64 [ %i.dc, %bb.an ], [ %spec.store.select.i, %.lr.ph95.i.i.i ] ; 2 uses
  %.05393.i.i.i251 = phi i64 [ %i.dt, %bb.an ], [ 0, %.lr.ph95.i.i.i ] ; 4 uses
  %.094.i.i.i250 = phi i64 [ %i.ds, %bb.an ], [ 0, %.lr.ph95.i.i.i ] ; 4 uses
  %i.dc = add nsw i64 %.in, -1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ax
  %.15490.i.i.i = phi i64 [ %i.dv, %bb.ax ], [ %.05393.i.i.i251, %.preheader.i.i.i ] ; 4 uses
  %i.dd = getelementptr i8, ptr %i.v, i64 %.15490.i.i.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !14
  %i.df = icmp eq i8 %i.de, %i.cu
  br i1 %i.df, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %.lr.ph.i.i.i
  %i.dg = getelementptr i8, ptr %i.v, i64 %.05393.i.i.i251
  %i.dh = sub i64 %.15490.i.i.i, %.05393.i.i.i251
  %i.di = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.dg, i64 noundef %i.dh), !inline_history !237 ; 8 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %Py_DECREF.exit75.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dk = icmp slt i64 %.094.i.i.i250, 12
  br i1 %i.dk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.val82.i.i.i = load ptr, ptr %i.da, align 8, !tbaa !79
  %i.dl = getelementptr [8 x i8], ptr %.val82.i.i.i, i64 %.094.i.i.i250
  store ptr %i.di, ptr %i.dl, align 8, !tbaa !11
  br label %Py_DECREF.exit73.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.dm = call i32 @PyList_Append(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.di) #19, !inline_history !237
  %.not67.i.i.i = icmp eq i32 %i.dm, 0
  %i.dn = load i32, ptr %i.di, align 8, !tbaa !14 ; 3 uses
  %.not.i72.i.i.i = icmp sgt i32 %i.dn, -1        ; 2 uses
  br i1 %.not67.i.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %.not.i72.i.i.i, label %bb.at, label %Py_DECREF.exit75.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.do = add nsw i32 %i.dn, -1                   ; 2 uses
  store i32 %i.do, ptr %i.di, align 8, !tbaa !14
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %Py_DECREF.exit75.sink.split.i.i.i, label %Py_DECREF.exit75.i.i.i

bb.au:                                            ; preds = %bb.ar
  br i1 %.not.i72.i.i.i, label %bb.av, label %Py_DECREF.exit73.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.dq = add nsw i32 %i.dn, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.di, align 8, !tbaa !14
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.aw, label %Py_DECREF.exit73.i.i.i

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.di) #19, !inline_history !237
  br label %Py_DECREF.exit73.i.i.i

Py_DECREF.exit73.i.i.i:                           ; preds = %bb.aw, %bb.av, %bb.au, %bb.aq
  %i.ds = add i64 %.094.i.i.i250, 1               ; 3 uses
  %i.dt = add nsw i64 %.15490.i.i.i, 1            ; 4 uses
  %i.du = icmp slt i64 %i.dt, %.val.i
  br i1 %i.du, label %bb.an, label %.loopexit.i.i.i..critedge.i.i.i.loopexit220_crit_edge, !llvm.loop !238

bb.ax:                                            ; preds = %.lr.ph.i.i.i
  %i.dv = add nsw i64 %.15490.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dv, %.val.i
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !239

.loopexit.i.i.i..critedge.i.i.i.loopexit220_crit_edge: ; preds = %Py_DECREF.exit73.i.i.i
  br label %.critedge.i.i.i, !llvm.loop !238

.critedge.i.i.i:                                  ; preds = %bb.an, %bb.ax, %.lr.ph95.i.i.i, %.loopexit.i.i.i..critedge.i.i.i.loopexit220_crit_edge
  %.056.lcssa.i.i.i = phi i64 [ %.05393.i.i.i251, %bb.ax ], [ 0, %.lr.ph95.i.i.i ], [ %i.dt, %.loopexit.i.i.i..critedge.i.i.i.loopexit220_crit_edge ], [ %i.dt, %bb.an ] ; 2 uses
  %.0.lcssa.i.i.i = phi i64 [ %.094.i.i.i250, %bb.ax ], [ 0, %.lr.ph95.i.i.i ], [ %i.ds, %.loopexit.i.i.i..critedge.i.i.i.loopexit220_crit_edge ], [ %i.ds, %bb.an ] ; 2 uses
  %i.dw = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %i.dw, label %.critedge.thread.i.i.i, label %bb.ba

.critedge.thread.i.i.i:                           ; preds = %.critedge.i.i.i, %.preheader83.i.i.i
  %.056.lcssa120.i.i.i = phi i64 [ %.056.lcssa.i.i.i, %.critedge.i.i.i ], [ 0, %.preheader83.i.i.i ]
  %i.dx = getelementptr i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.dx, align 8, !tbaa !16
  %.not.i85.i.i = icmp eq ptr %.val.i.i.i, @PyBytes_Type
  br i1 %.not.i85.i.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %.critedge.thread.i.i.i
  %i.dy = load i32, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.dz = icmp ugt i32 %i.dy, -1073741825
  br i1 %i.dz, label %Py_INCREF.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ea = add nuw i32 %i.dy, 1
  store i32 %i.ea, ptr %0, align 8, !tbaa !14
  br label %Py_INCREF.exit.i.i.i

Py_INCREF.exit.i.i.i:                             ; preds = %bb.az, %bb.ay
  %i.eb = getelementptr i8, ptr %i.cx, i64 24
  %.val81.i.i.i = load ptr, ptr %i.eb, align 8, !tbaa !79
  store ptr %0, ptr %.val81.i.i.i, align 8, !tbaa !11
  br label %bb.bk

bb.ba:                                            ; preds = %.critedge.thread.i.i.i, %.critedge.i.i.i
  %.0.lcssa121.i.i.i = phi i64 [ 0, %.critedge.thread.i.i.i ], [ %.0.lcssa.i.i.i, %.critedge.i.i.i ] ; 4 uses
  %.056.lcssa119.i.i.i = phi i64 [ %.056.lcssa120.i.i.i, %.critedge.thread.i.i.i ], [ %.056.lcssa.i.i.i, %.critedge.i.i.i ] ; 3 uses
  %.not65.i.i.i = icmp sgt i64 %.056.lcssa119.i.i.i, %.val.i
  br i1 %.not65.i.i.i, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ec = getelementptr i8, ptr %i.v, i64 %.056.lcssa119.i.i.i
  %i.ed = sub i64 %.val.i, %.056.lcssa119.i.i.i
  %i.ee = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.ec, i64 noundef %i.ed), !inline_history !237 ; 8 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %Py_DECREF.exit75.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eg = icmp slt i64 %.0.lcssa121.i.i.i, 12
  br i1 %i.eg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.eh = getelementptr i8, ptr %i.cx, i64 24
  %.val80.i.i.i = load ptr, ptr %i.eh, align 8, !tbaa !79
  %i.ei = getelementptr [8 x i8], ptr %.val80.i.i.i, i64 %.0.lcssa121.i.i.i
  store ptr %i.ee, ptr %i.ei, align 8, !tbaa !11
  br label %Py_DECREF.exit69.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.ej = call i32 @PyList_Append(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.ee) #19, !inline_history !237
  %.not66.i.i.i = icmp eq i32 %i.ej, 0
  %i.ek = load i32, ptr %i.ee, align 8, !tbaa !14 ; 3 uses
  %.not.i68.i.i.i = icmp sgt i32 %i.ek, -1        ; 2 uses
  br i1 %.not66.i.i.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %.not.i68.i.i.i, label %bb.bg, label %Py_DECREF.exit75.i.i.i
end_hunk_0
