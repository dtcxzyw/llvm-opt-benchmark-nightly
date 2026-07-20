inline.NumInlined: 2336
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@str_duplicate_setup_heap:bb.a
bb.g:                                             ; preds = %RSTRING_PTR.exit
  %i.t = inttoptr i64 %.0 to ptr                  ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  %i.v = or i64 %i.u, 131072
  store i64 %i.v, ptr %i.t, align 8, !tbaa !11
  br label %RB_FL_SET.exit

RB_FL_SET.exit:                                   ; preds = %RSTRING_PTR.exit, %bb.g
  %i.w = getelementptr i8, ptr %i.o, i64 32
  store i64 %.0, ptr %i.w, align 8, !tbaa !27
  %i.x = icmp eq i64 %.0, 0
  %i.y = icmp ne i64 %i.r, 0
  %i.z = or i1 %i.x, %i.y
  br i1 %i.z, label %rb_obj_write.exit, label %bb.h

bb.h:                                             ; preds = %RB_FL_SET.exit
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %.0) #28
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %RB_FL_SET.exit, %bb.h
  %i.aa = or i64 %i.j, 12288                      ; 2 uses
  %i.ab = getelementptr i8, ptr %.pre-phi, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !14
  %i.ad = getelementptr i8, ptr %i.o, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !14
  %i.ae = and i64 %i.j, 532676608
  %i.af = icmp eq i64 %i.ae, 532676608
  br i1 %i.af, label %bb.i, label %.thread.i

.thread.i:                                        ; preds = %rb_obj_write.exit
  %i.ag = and i64 %i.aa, 535834624
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !11
  %i.ai = or i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %i.o, align 8, !tbaa !11
  br label %str_duplicate_setup_encoding.exit

bb.i:                                             ; preds = %rb_obj_write.exit
  %i.aj = tail call i32 @rb_enc_get_index(i64 noundef %.021) #28 ; 2 uses
  %i.ak = and i64 %i.aa, 3158016
  %i.al = load i64, ptr %i.o, align 8, !tbaa !11
  %i.am = or i64 %i.al, %i.ak
  store i64 %i.am, ptr %i.o, align 8, !tbaa !11
  %.not.i23 = icmp eq i32 %i.aj, 0
  br i1 %.not.i23, label %str_duplicate_setup_encoding.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = tail call i64 @rb_enc_associate_index(i64 noundef %2, i32 noundef %i.aj) #28 ; 0 uses
  br label %str_duplicate_setup_encoding.exit

str_duplicate_setup_encoding.exit:                ; preds = %.thread.i, %bb.i, %bb.j
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_str_with_debug_created_info(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = shl nsw i64 %i.a, 1
  %i.c = or disjoint i64 %i.b, 1
  %i.d = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %1, i64 noundef %i.c) #28
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = and i64 %i.f, 2048
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %CHILLED_STRING_P.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_obj_class(i64 noundef %0) #28
  %i.i = tail call fastcc i64 @str_duplicate(i64 noundef %i.h, i64 noundef %0) ; 2 uses
  %.pre = inttoptr i64 %i.i to ptr
  br label %CHILLED_STRING_P.exit.thread.i

CHILLED_STRING_P.exit.thread.i:                   ; preds = %bb.b, %bb.a
  %.pre-phi = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %.0 = phi i64 [ %i.i, %bb.b ], [ %0, %bb.a ]    ; 6 uses
  %i.j = tail call i64 @rb_ary_freeze(i64 noundef %i.d) #28
  %i.k = tail call i64 @rb_ivar_set(i64 noundef %.0, i64 noundef 171, i64 noundef %i.j) #28 ; 0 uses
  %i.l = load i64, ptr %.pre-phi, align 8, !tbaa !11 ; 3 uses
  %i.m = or i64 %i.l, 16384
  %i.n = icmp ne i64 %.0, 0
  %i.o = and i64 %.0, 7
  %i.p = icmp eq i64 %i.o, 0
  %.not12 = and i1 %i.n, %i.p                     ; 2 uses
  %i.q = and i64 %i.l, 31
  %i.r = icmp eq i64 %i.q, 5
  %or.cond = select i1 %.not12, i1 %i.r, i1 false
  %i.s = and i64 %i.l, -49179
  %spec.select = select i1 %or.cond, i64 %i.s, i64 %i.m ; 2 uses
  store i64 %spec.select, ptr %.pre-phi, align 8, !tbaa !11
  %i.t = and i64 %spec.select, 2048
  %.not.i = icmp eq i64 %i.t, 0
  %or.cond13 = select i1 %.not12, i1 %.not.i, i1 false
  br i1 %or.cond13, label %bb.c, label %rb_str_freeze.exit

bb.c:                                             ; preds = %CHILLED_STRING_P.exit.thread.i
  %i.u = getelementptr i8, ptr %.pre-phi, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !14
  %i.w = tail call i64 @rb_str_resize(i64 noundef %.0, i64 noundef %i.v) ; 0 uses
  %i.x = tail call i64 @rb_obj_freeze(i64 noundef %.0) #28
  br label %rb_str_freeze.exit

rb_str_freeze.exit:                               ; preds = %CHILLED_STRING_P.exit.thread.i, %bb.c
  %.0.i = phi i64 [ %i.x, %bb.c ], [ %.0, %CHILLED_STRING_P.exit.thread.i ]
  ret i64 %.0.i
}

declare i64 @rb_ary_new_from_args(i64 noundef, ...) local_unnamed_addr #3

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_ary_freeze(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_freeze(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7                            ; 2 uses
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %CHILLED_STRING_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 3 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 5
  %i.i = and i64 %i.f, 49152
  %i.j = icmp ne i64 %i.i, 0
  %or.cond = and i1 %i.h, %i.j
  br i1 %or.cond, label %bb.b, label %CHILLED_STRING_P.exit.thread

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.k = and i64 %i.f, -49179
  store i64 %i.k, ptr %i.e, align 8, !tbaa !11
  br label %CHILLED_STRING_P.exit.thread

CHILLED_STRING_P.exit.thread:                     ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.l = icmp ne i64 %0, 0
  %i.m = icmp eq i64 %i.b, 0
  %.not3.i = and i1 %i.l, %i.m
  br i1 %.not3.i, label %RB_OBJ_FROZEN.exit, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit:                               ; preds = %CHILLED_STRING_P.exit.thread
  %i.n = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = and i64 %i.o, 2048
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.c, label %RB_OBJ_FROZEN.exit.thread

bb.c:                                             ; preds = %RB_OBJ_FROZEN.exit
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14
  %i.s = tail call i64 @rb_str_resize(i64 noundef %0, i64 noundef %i.r) ; 0 uses
  %i.t = tail call i64 @rb_obj_freeze(i64 noundef %0) #28
  br label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit.thread:                        ; preds = %CHILLED_STRING_P.exit.thread, %RB_OBJ_FROZEN.exit, %bb.c
  %.0 = phi i64 [ %i.t, %bb.c ], [ %0, %RB_OBJ_FROZEN.exit ], [ %0, %CHILLED_STRING_P.exit.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_enc_strlen(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i64 @enc_strlen(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @enc_strlen(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, -2147483647) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 16
  %.val106 = load i32, ptr %i.a, align 8, !tbaa !56 ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %.val105 = load i32, ptr %i.b, align 4, !tbaa !16 ; 2 uses
  %i.c = icmp eq i32 %.val106, %.val105
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sext i32 %.val106 to i64                 ; 2 uses
  %i.h = sdiv i64 %i.f, %i.g
  %i.i = srem i64 %i.f, %i.g
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = add i64 %i.h, %i.k
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %3, 2097152
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = tail call nonnull ptr @rb_utf8_encoding() #28
  %i.o = icmp eq ptr %2, %i.n
  br i1 %i.o, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.p = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.q = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp sgt i64 %i.r, 16
  br i1 %i.s, label %bb.f, label %.loopexit130

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %i.q, 7
  %i.u = and i64 %i.t, -8                         ; 5 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 5 uses
  %i.w = and i64 %i.p, -8                         ; 3 uses
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = icmp ult ptr %0, %i.v
  br i1 %i.y, label %.lr.ph163.preheader, label %.preheader

.lr.ph163.preheader:                              ; preds = %bb.f
  %i.z = sub i64 %i.u, %i.q                       ; 4 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.z
  %min.iters.check = icmp ult i64 %i.z, 4
  br i1 %min.iters.check, label %.lr.ph163.preheader309, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph163.preheader
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.aa = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi264 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load265 = load <2 x i8>, ptr %i.ab, align 1, !tbaa !20
  %i.ac = icmp sgt <2 x i8> %wide.load, splat (i8 -65)
  %i.ad = icmp sgt <2 x i8> %wide.load265, splat (i8 -65)
  %i.ae = zext <2 x i1> %i.ac to <2 x i64>
  %i.af = zext <2 x i1> %i.ad to <2 x i64>
  %i.ag = add <2 x i64> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i64> %vec.phi264, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph163.preheader309

.lr.ph163.preheader309:                           ; preds = %.lr.ph163.preheader, %middle.block
  %.078162.ph = phi ptr [ %0, %.lr.ph163.preheader ], [ %i.aa, %middle.block ]
  %.080161.ph = phi i64 [ 0, %.lr.ph163.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph163

.preheader:                                       ; preds = %.lr.ph163, %middle.block, %bb.f
  %.080.lcssa = phi i64 [ 0, %bb.f ], [ %i.aj, %middle.block ], [ %spec.select, %.lr.ph163 ] ; 3 uses
  %i.ak = icmp ult i64 %i.u, %i.w
  br i1 %i.ak, label %.lr.ph167.preheader, label %.loopexit130

.lr.ph167.preheader:                              ; preds = %.preheader
  %i.al = add i64 %i.u, 8
  %i.am = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.al)
  %i.an = xor i64 %i.u, -1
  %i.ao = add i64 %i.am, %i.an                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check267 = icmp ult i64 %i.ao, 24
  br i1 %min.iters.check267, label %.lr.ph167.preheader304, label %vector.ph268

vector.ph268:                                     ; preds = %.lr.ph167.preheader
  %n.vec270 = and i64 %i.aq, 4611686018427387900  ; 3 uses
  %i.ar = shl i64 %n.vec270, 3
  %i.as = getelementptr i8, ptr %i.v, i64 %i.ar   ; 2 uses
  %i.at = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.080.lcssa, i64 0
  br label %vector.body271

vector.body271:                                   ; preds = %vector.body271, %vector.ph268
  %index272 = phi i64 [ 0, %vector.ph268 ], [ %index.next278, %vector.body271 ] ; 2 uses
  %vec.phi273 = phi <2 x i64> [ %i.at, %vector.ph268 ], [ %i.bu, %vector.body271 ]
  %vec.phi274 = phi <2 x i64> [ zeroinitializer, %vector.ph268 ], [ %i.bv, %vector.body271 ]
  %i.au = shl i64 %index272, 3
  %next.gep275 = getelementptr i8, ptr %i.v, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep275, i64 16
  %wide.load276 = load <2 x i64>, ptr %next.gep275, align 8, !tbaa !27 ; 2 uses
  %wide.load277 = load <2 x i64>, ptr %i.av, align 8, !tbaa !27 ; 2 uses
  %i.aw = lshr <2 x i64> %wide.load276, splat (i64 6)
  %i.ax = lshr <2 x i64> %wide.load277, splat (i64 6)
  %i.ay = xor <2 x i64> %wide.load276, splat (i64 -1)
  %i.az = xor <2 x i64> %wide.load277, splat (i64 -1)
  %i.ba = lshr <2 x i64> %i.ay, splat (i64 7)
  %i.bb = lshr <2 x i64> %i.az, splat (i64 7)
  %i.bc = or <2 x i64> %i.aw, %i.ba
  %i.bd = or <2 x i64> %i.ax, %i.bb
  %i.be = and <2 x i64> %i.bc, splat (i64 72340172838076673) ; 2 uses
  %i.bf = and <2 x i64> %i.bd, splat (i64 72340172838076673) ; 2 uses
  %i.bg = lshr <2 x i64> %i.be, splat (i64 8)
  %i.bh = lshr <2 x i64> %i.bf, splat (i64 8)
  %i.bi = add nuw nsw <2 x i64> %i.bg, %i.be      ; 2 uses
  %i.bj = add nuw nsw <2 x i64> %i.bh, %i.bf      ; 2 uses
  %i.bk = lshr <2 x i64> %i.bi, splat (i64 16)
  %i.bl = lshr <2 x i64> %i.bj, splat (i64 16)
  %i.bm = add nuw nsw <2 x i64> %i.bk, %i.bi      ; 2 uses
  %i.bn = add nuw nsw <2 x i64> %i.bl, %i.bj      ; 2 uses
  %i.bo = lshr <2 x i64> %i.bm, splat (i64 32)
  %i.bp = lshr <2 x i64> %i.bn, splat (i64 32)
  %i.bq = add nuw nsw <2 x i64> %i.bo, %i.bm
  %i.br = add nuw nsw <2 x i64> %i.bp, %i.bn
  %i.bs = and <2 x i64> %i.bq, splat (i64 15)
  %i.bt = and <2 x i64> %i.br, splat (i64 15)
  %i.bu = add <2 x i64> %i.bs, %vec.phi273        ; 2 uses
  %i.bv = add <2 x i64> %i.bt, %vec.phi274        ; 2 uses
  %index.next278 = add nuw i64 %index272, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next278, %n.vec270
  br i1 %i.bw, label %middle.block279, label %vector.body271, !llvm.loop !60

middle.block279:                                  ; preds = %vector.body271
  %bin.rdx280 = add <2 x i64> %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx280) ; 2 uses
  %cmp.n281 = icmp eq i64 %i.aq, %n.vec270
  br i1 %cmp.n281, label %.loopexit130, label %.lr.ph167.preheader304

.lr.ph167.preheader304:                           ; preds = %.lr.ph167.preheader, %middle.block279
  %.079166.ph = phi ptr [ %i.v, %.lr.ph167.preheader ], [ %i.as, %middle.block279 ]
  %.282165.ph = phi i64 [ %.080.lcssa, %.lr.ph167.preheader ], [ %i.bx, %middle.block279 ]
  br label %.lr.ph167

.lr.ph163:                                        ; preds = %.lr.ph163.preheader309, %.lr.ph163
  %.078162 = phi ptr [ %i.ca, %.lr.ph163 ], [ %.078162.ph, %.lr.ph163.preheader309 ] ; 2 uses
  %.080161 = phi i64 [ %spec.select, %.lr.ph163 ], [ %.080161.ph, %.lr.ph163.preheader309 ]
  %i.by = load i8, ptr %.078162, align 1, !tbaa !20
  %.not102 = icmp sgt i8 %i.by, -65
  %i.bz = zext i1 %.not102 to i64
  %spec.select = add i64 %.080161, %i.bz          ; 2 uses
  %i.ca = getelementptr i8, ptr %.078162, i64 1   ; 2 uses
  %exitcond.not = icmp eq ptr %i.ca, %scevgep
  br i1 %exitcond.not, label %.preheader, label %.lr.ph163, !llvm.loop !61

.lr.ph167:                                        ; preds = %.lr.ph167.preheader304, %.lr.ph167
  %.079166 = phi ptr [ %i.co, %.lr.ph167 ], [ %.079166.ph, %.lr.ph167.preheader304 ] ; 2 uses
  %.282165 = phi i64 [ %i.cn, %.lr.ph167 ], [ %.282165.ph, %.lr.ph167.preheader304 ]
  %.079.val = load i64, ptr %.079166, align 8, !tbaa !27 ; 2 uses
  %i.cb = lshr i64 %.079.val, 6
  %i.cc = xor i64 %.079.val, -1
  %i.cd = lshr i64 %i.cc, 7
  %i.ce = or i64 %i.cb, %i.cd
  %i.cf = and i64 %i.ce, 72340172838076673        ; 2 uses
  %i.cg = lshr i64 %i.cf, 8
  %i.ch = add nuw nsw i64 %i.cg, %i.cf            ; 2 uses
  %i.ci = lshr i64 %i.ch, 16
  %i.cj = add nuw nsw i64 %i.ci, %i.ch            ; 2 uses
  %i.ck = lshr i64 %i.cj, 32
  %i.cl = add nuw nsw i64 %i.ck, %i.cj
  %i.cm = and i64 %i.cl, 15
  %i.cn = add i64 %i.cm, %.282165                 ; 2 uses
  %i.co = getelementptr i8, ptr %.079166, i64 8   ; 3 uses
  %i.cp = icmp ult ptr %i.co, %i.x
  br i1 %i.cp, label %.lr.ph167, label %.loopexit130, !llvm.loop !62

.loopexit130:                                     ; preds = %.lr.ph167, %middle.block279, %.preheader, %bb.e
  %.383 = phi i64 [ 0, %bb.e ], [ %.080.lcssa, %.preheader ], [ %i.bx, %middle.block279 ], [ %i.cn, %.lr.ph167 ] ; 3 uses
  %.1 = phi ptr [ %0, %bb.e ], [ %i.v, %.preheader ], [ %i.as, %middle.block279 ], [ %i.co, %.lr.ph167 ] ; 5 uses
  %i.cq = icmp ult ptr %.1, %1
  br i1 %i.cq, label %.lr.ph172.preheader, label %.loopexit

.lr.ph172.preheader:                              ; preds = %.loopexit130
  %4 = ptrtoaddr ptr %1 to i64
  %5 = ptrtoaddr ptr %.1 to i64
  %i.cr = sub i64 %4, %5                          ; 3 uses
  %min.iters.check285 = icmp ult i64 %i.cr, 4
  br i1 %min.iters.check285, label %.lr.ph172.preheader302, label %vector.ph286

vector.ph286:                                     ; preds = %.lr.ph172.preheader
  %n.vec288 = and i64 %i.cr, -4                   ; 3 uses
  %i.cs = getelementptr i8, ptr %.1, i64 %n.vec288
  %i.ct = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.383, i64 0
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph286
  %index290 = phi i64 [ 0, %vector.ph286 ], [ %index.next296, %vector.body289 ] ; 2 uses
  %vec.phi291 = phi <2 x i64> [ %i.ct, %vector.ph286 ], [ %i.cz, %vector.body289 ]
  %vec.phi292 = phi <2 x i64> [ zeroinitializer, %vector.ph286 ], [ %i.da, %vector.body289 ]
  %next.gep293 = getelementptr i8, ptr %.1, i64 %index290 ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep293, i64 2
  %wide.load294 = load <2 x i8>, ptr %next.gep293, align 1, !tbaa !20
  %wide.load295 = load <2 x i8>, ptr %i.cu, align 1, !tbaa !20
  %i.cv = icmp sgt <2 x i8> %wide.load294, splat (i8 -65)
  %i.cw = icmp sgt <2 x i8> %wide.load295, splat (i8 -65)
  %i.cx = zext <2 x i1> %i.cv to <2 x i64>
  %i.cy = zext <2 x i1> %i.cw to <2 x i64>
  %i.cz = add <2 x i64> %vec.phi291, %i.cx        ; 2 uses
  %i.da = add <2 x i64> %vec.phi292, %i.cy        ; 2 uses
  %index.next296 = add nuw i64 %index290, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next296, %n.vec288
  br i1 %i.db, label %middle.block297, label %vector.body289, !llvm.loop !63

middle.block297:                                  ; preds = %vector.body289
  %bin.rdx298 = add <2 x i64> %i.da, %i.cz
  %i.dc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx298) ; 2 uses
  %cmp.n299 = icmp eq i64 %i.cr, %n.vec288
  br i1 %cmp.n299, label %.loopexit, label %.lr.ph172.preheader302

.lr.ph172.preheader302:                           ; preds = %.lr.ph172.preheader, %middle.block297
  %.2171.ph = phi ptr [ %.1, %.lr.ph172.preheader ], [ %i.cs, %middle.block297 ]
  %.484170.ph = phi i64 [ %.383, %.lr.ph172.preheader ], [ %i.dc, %middle.block297 ]
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader302, %.lr.ph172
  %.2171 = phi ptr [ %i.df, %.lr.ph172 ], [ %.2171.ph, %.lr.ph172.preheader302 ] ; 2 uses
  %.484170 = phi i64 [ %spec.select103, %.lr.ph172 ], [ %.484170.ph, %.lr.ph172.preheader302 ]
  %i.dd = load i8, ptr %.2171, align 1, !tbaa !20
  %.not101 = icmp sgt i8 %i.dd, -65
  %i.de = zext i1 %.not101 to i64
  %spec.select103 = add i64 %.484170, %i.de       ; 2 uses
  %i.df = getelementptr i8, ptr %.2171, i64 1     ; 2 uses
  %exitcond200.not = icmp eq ptr %i.df, %1
  br i1 %exitcond200.not, label %.loopexit, label %.lr.ph172, !llvm.loop !64

thread-pre-split:                                 ; preds = %bb.d
  %.val.i.pr = load i32, ptr %i.b, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.c
  %.val.i = phi i32 [ %.val.i.pr, %thread-pre-split ], [ %.val105, %bb.c ]
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %bb.h, label %rb_enc_asciicompat.exit.preheader

rb_enc_asciicompat.exit.preheader:                ; preds = %bb.h, %bb.g
  %i.dg = icmp ult ptr %0, %1
  br i1 %i.dg, label %rb_enc_asciicompat.exit, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.dh = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %2) #32
  %.not3.i = icmp eq i32 %i.dh, 0
  br i1 %.not3.i, label %bb.i, label %rb_enc_asciicompat.exit.preheader

bb.i:                                             ; preds = %bb.h
  %i.di = lshr i32 %3, 1
  %i.dj = xor i32 %i.di, %3
  %i.dk = and i32 %i.dj, 1048576
  %.not126 = icmp eq i32 %i.dk, 0
  %i.dl = icmp ult ptr %0, %1                     ; 2 uses
  br i1 %.not126, label %.preheader131, label %.preheader133

.preheader133:                                    ; preds = %bb.i
  br i1 %i.dl, label %.lr.ph155, label %.loopexit

.lr.ph155:                                        ; preds = %.preheader133
  %i.dm = getelementptr i8, ptr %1, i64 -7        ; 4 uses
  %i.dn = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.do = getelementptr i8, ptr %1, i64 -6        ; 2 uses
  %i.dp = getelementptr i8, ptr %1, i64 -5        ; 2 uses
  %i.dq = getelementptr i8, ptr %1, i64 -4        ; 2 uses
  %i.dr = getelementptr i8, ptr %1, i64 -3        ; 2 uses
  %i.ds = getelementptr i8, ptr %1, i64 -2        ; 2 uses
  %i.dt = getelementptr i8, ptr %1, i64 -1        ; 2 uses
  br label %bb.j

.preheader131:                                    ; preds = %bb.i
  br i1 %i.dl, label %.lr.ph159, label %.loopexit

.lr.ph159:                                        ; preds = %.preheader131
  %i.du = getelementptr i8, ptr %1, i64 -7        ; 4 uses
  %i.dv = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.dw = getelementptr i8, ptr %1, i64 -6        ; 2 uses
  %i.dx = getelementptr i8, ptr %1, i64 -5        ; 2 uses
  %i.dy = getelementptr i8, ptr %1, i64 -4        ; 2 uses
  %i.dz = getelementptr i8, ptr %1, i64 -3        ; 2 uses
  %i.ea = getelementptr i8, ptr %1, i64 -2        ; 2 uses
  %i.eb = getelementptr i8, ptr %1, i64 -1        ; 2 uses
  br label %bb.x

bb.j:                                             ; preds = %.lr.ph155, %bb.w
  %.3154 = phi ptr [ %0, %.lr.ph155 ], [ %i.fe, %bb.w ] ; 7 uses
  %.086153 = phi i64 [ 0, %.lr.ph155 ], [ %i.ff, %bb.w ] ; 3 uses
  %i.ec = load i8, ptr %.3154, align 1, !tbaa !20
  %i.ed = icmp slt i8 %i.ec, 0
  br i1 %i.ed, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ee = icmp ult ptr %.3154, %i.dm
  br i1 %i.ee, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.m
  %.02639.i = phi ptr [ %i.ek, %bb.m ], [ %.3154, %bb.k ] ; 3 uses
  %i.ef = load i64, ptr %.02639.i, align 1
  %i.eg = and i64 %i.ef, -9187201950435737472     ; 2 uses
  %.not35.i = icmp eq i64 %i.eg, 0
  br i1 %.not35.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.eh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, -9187201950435737471) %i.eg, i1 true)
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = getelementptr i8, ptr %.02639.i, i64 %i.ei
  br label %search_nonascii.exit

bb.m:                                             ; preds = %.lr.ph.i
  %i.ek = getelementptr i8, ptr %.02639.i, i64 8  ; 3 uses
  %i.el = icmp ult ptr %i.ek, %i.dm
  br i1 %i.el, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !37

._crit_edge.i:                                    ; preds = %bb.m, %bb.k
  %.026.lcssa.i = phi ptr [ %.3154, %bb.k ], [ %i.ek, %bb.m ]
  %i.em = ptrtoint ptr %.026.lcssa.i to i64
  %i.en = sub i64 %i.dn, %i.em
  switch i64 %i.en, label %bb.n [
    i64 7, label %bb.o
    i64 6, label %bb.p
    i64 5, label %bb.q
    i64 4, label %bb.r
    i64 3, label %bb.s
    i64 2, label %bb.t
    i64 1, label %bb.u
    i64 0, label %search_nonascii.exit.thread
  ]

bb.n:                                             ; preds = %._crit_edge.i
  unreachable

bb.o:                                             ; preds = %._crit_edge.i
  %i.eo = load i8, ptr %i.dm, align 1, !tbaa !20
  %.not.i107 = icmp sgt i8 %i.eo, -1
  br i1 %.not.i107, label %bb.p, label %search_nonascii.exit

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %i.ep = load i8, ptr %i.do, align 1, !tbaa !20
  %.not29.i = icmp sgt i8 %i.ep, -1
  br i1 %.not29.i, label %bb.q, label %search_nonascii.exit

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %i.eq = load i8, ptr %i.dp, align 1, !tbaa !20
  %.not30.i = icmp sgt i8 %i.eq, -1
  br i1 %.not30.i, label %bb.r, label %search_nonascii.exit

bb.r:                                             ; preds = %bb.q, %._crit_edge.i
  %i.er = load i8, ptr %i.dq, align 1, !tbaa !20
  %.not31.i = icmp sgt i8 %i.er, -1
  br i1 %.not31.i, label %bb.s, label %search_nonascii.exit

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  %i.es = load i8, ptr %i.dr, align 1, !tbaa !20
  %.not32.i = icmp sgt i8 %i.es, -1
  br i1 %.not32.i, label %bb.t, label %search_nonascii.exit

bb.t:                                             ; preds = %bb.s, %._crit_edge.i
  %i.et = load i8, ptr %i.ds, align 1, !tbaa !20
  %.not33.i = icmp sgt i8 %i.et, -1
  br i1 %.not33.i, label %bb.u, label %search_nonascii.exit

bb.u:                                             ; preds = %bb.t, %._crit_edge.i
  %i.eu = load i8, ptr %i.dt, align 1, !tbaa !20
  %.not34.i = icmp sgt i8 %i.eu, -1
  br i1 %.not34.i, label %search_nonascii.exit.thread, label %search_nonascii.exit

search_nonascii.exit:                             ; preds = %bb.l, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.2.i = phi ptr [ %i.ej, %bb.l ], [ %i.dt, %bb.u ], [ %i.dm, %bb.o ], [ %i.do, %bb.p ], [ %i.dp, %bb.q ], [ %i.dq, %bb.r ], [ %i.dr, %bb.s ], [ %i.ds, %bb.t ] ; 3 uses
  %.not100 = icmp eq ptr %.2.i, null
  br i1 %.not100, label %search_nonascii.exit.thread, label %bb.v

search_nonascii.exit.thread:                      ; preds = %bb.u, %._crit_edge.i, %search_nonascii.exit
  %i.ev = ptrtoint ptr %.3154 to i64
  %i.ew = add i64 %.086153, %i.dn
  %i.ex = sub i64 %i.ew, %i.ev
  br label %.loopexit

bb.v:                                             ; preds = %search_nonascii.exit
  %i.ey = ptrtoint ptr %.2.i to i64
  %i.ez = ptrtoint ptr %.3154 to i64
  %i.fa = sub i64 %.086153, %i.ez
end_hunk_0
begin_hunk_1_@rb_str_subpos:bb.a

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i64 [ %i.z, %bb.h ], [ %1, %bb.g ]  ; 2 uses
  %i.ac = sub i64 %i.h, %i.ab                     ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.ac)
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ab
  br label %bb.ad

bb.k:                                             ; preds = %bb.e
  br i1 %i.w, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ag = sub nsw i64 0, %1                       ; 3 uses
  %spec.select108 = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.ag) ; 5 uses
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !11
  %i.ai = and i64 %i.ah, 3145728
  %i.aj = icmp eq i64 %i.ai, 2097152
  br i1 %i.aj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %i.o, i64 16
  %.val112 = load i32, ptr %i.ak, align 8, !tbaa !56
  %i.al = sext i32 %.val112 to i64
  %i.am = mul i64 %1, %i.al
  %i.an = sub i64 0, %i.am
  %i.ao = sdiv i64 %i.h, 8
  %i.ap = icmp sgt i64 %i.ao, %i.an
  br i1 %i.ap, label %.preheader144, label %bb.o

.preheader144:                                    ; preds = %bb.m
  %i.aq = icmp slt i64 %spec.select108, %i.ag
  br i1 %i.aq, label %.lr.ph, label %.critedge

bb.n:                                             ; preds = %.lr.ph
  %i.ar = add i64 %i.at, -1                       ; 2 uses
  %i.as = icmp sgt i64 %i.ar, %spec.select108
  br i1 %i.as, label %.lr.ph, label %.critedge, !llvm.loop !80

.lr.ph:                                           ; preds = %.preheader144, %bb.n
  %.077148 = phi ptr [ %i.au, %bb.n ], [ %i.u, %.preheader144 ] ; 2 uses
  %i.at = phi i64 [ %i.ar, %bb.n ], [ %i.ag, %.preheader144 ]
  %i.au = tail call ptr @onigenc_get_prev_char_head(ptr noundef %i.o, ptr noundef %i.t, ptr noundef %.077148, ptr noundef %.077148) #28 ; 3 uses
  %.not103 = icmp eq ptr %i.au, null
  br i1 %.not103, label %.critedge.thread, label %bb.n, !llvm.loop !80

.critedge:                                        ; preds = %bb.n, %.preheader144
  %.077.lcssa = phi ptr [ %i.u, %.preheader144 ], [ %i.au, %bb.n ] ; 5 uses
  %.not104 = icmp eq ptr %.077.lcssa, null
  br i1 %.not104, label %.critedge.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.av = icmp sgt i64 %spec.select108, 0
  br i1 %i.av, label %.lr.ph151, label %.critedge2

.preheader:                                       ; preds = %.lr.ph151
  %i.aw = add nsw i64 %.3150, -1
  %i.ax = icmp sgt i64 %.3150, 1
  br i1 %i.ax, label %.lr.ph151, label %.critedge2, !llvm.loop !81

.lr.ph151:                                        ; preds = %.preheader.preheader, %.preheader
  %.3150 = phi i64 [ %i.aw, %.preheader ], [ %spec.select108, %.preheader.preheader ] ; 2 uses
  %.079149 = phi ptr [ %i.ay, %.preheader ], [ %.077.lcssa, %.preheader.preheader ]
  %i.ay = tail call ptr @onigenc_get_prev_char_head(ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull %.079149, ptr noundef nonnull %.077.lcssa) #28 ; 3 uses
  %.not105 = icmp eq ptr %i.ay, null
  br i1 %.not105, label %.critedge.thread, label %.preheader, !llvm.loop !81

.critedge2:                                       ; preds = %.preheader, %.preheader.preheader
  %.079.lcssa = phi ptr [ %.077.lcssa, %.preheader.preheader ], [ %i.ay, %.preheader ] ; 2 uses
  %i.az = ptrtoint ptr %.077.lcssa to i64
  %i.ba = ptrtoint ptr %.079.lcssa to i64
  %i.bb = sub i64 %i.az, %i.ba
  br label %bb.ad

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.bc = tail call fastcc i64 @str_strlen(i64 noundef %0, ptr noundef %i.o)
  %i.bd = add i64 %i.bc, %1                       ; 4 uses
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !27
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr i8, ptr %i.t, i64 %i.bd
  %i.bg = icmp eq i64 %spec.select, 0
  br i1 %i.bg, label %bb.ad, label %.thread

bb.q:                                             ; preds = %bb.k
  %.not101 = icmp ne i64 %1, 0
  %i.bh = icmp sgt i64 %1, %i.h
  %or.cond109 = select i1 %.not101, i1 %i.bh, i1 false
  br i1 %or.cond109, label %.critedge.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp eq i64 %spec.select, 0
  br i1 %i.bi, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bj = tail call fastcc i64 @str_strlen(i64 noundef %0, ptr noundef %i.o)
  %i.bk = icmp sgt i64 %1, %i.bj
  br i1 %i.bk, label %.critedge.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr i8, ptr %i.t, i64 %1
  br label %bb.ad

.thread:                                          ; preds = %bb.p, %bb.r
  %i.bm = phi i64 [ %1, %bb.r ], [ %i.bd, %bb.p ]
  %.4120 = phi i64 [ %i.e, %bb.r ], [ %spec.select108, %bb.p ] ; 3 uses
  %i.bn = load i64, ptr %i.f, align 8, !tbaa !11
  %i.bo = and i64 %i.bn, 3145728
  %i.bp = icmp eq i64 %i.bo, 2097152
  br i1 %i.bp, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.thread
  %i.bq = tail call nonnull ptr @rb_utf8_encoding() #28
  %i.br = icmp eq ptr %i.o, %i.bq
  br i1 %i.br, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bs = call fastcc ptr @str_utf8_nth(ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.c) ; 2 uses
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !27
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %.critedge.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = tail call fastcc i64 @str_utf8_offset(ptr noundef %i.bs, ptr noundef %i.u, i64 noundef %.4120)
  br label %bb.ad

bb.x:                                             ; preds = %bb.u, %.thread
  %i.bw = getelementptr i8, ptr %i.o, i64 16
  %.val111 = load i32, ptr %i.bw, align 8, !tbaa !56 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.o, i64 20
  %.val = load i32, ptr %i.bx, align 4, !tbaa !16
  %i.by = icmp eq i32 %.val111, %.val
  br i1 %i.by, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bz = sext i32 %.val111 to i64                ; 2 uses
  %i.ca = mul i64 %i.bm, %i.bz                    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.t, i64 %i.ca   ; 2 uses
  %.not102 = icmp ugt ptr %i.cb, %i.u
  br i1 %.not102, label %.critedge.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = mul i64 %.4120, %i.bz
  %gepdiff = sub i64 %i.h, %i.ca
  %gepdiff. = tail call i64 @llvm.smin.i64(i64 %i.cc, i64 %gepdiff)
  br label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %i.cd = call fastcc ptr @str_nth_len(ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.c, ptr noundef nonnull %i.o) ; 5 uses
  %i.ce = icmp eq ptr %i.cd, %i.u
  br i1 %i.ce, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cf = load i64, ptr %i.c, align 8, !tbaa !27
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.critedge.thread, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.4120, ptr %i.a, align 8, !tbaa !27
  %i.ch = call fastcc ptr @str_nth_len(ptr noundef %i.cd, ptr noundef %i.u, ptr noundef %i.a, ptr noundef nonnull %i.o) ; 3 uses
  %.not12.i.i = icmp eq ptr %i.ch, null
  %i.ci = icmp ugt ptr %i.ch, %i.u
  %spec.select.i.i = select i1 %i.ci, ptr %i.u, ptr %i.ch
  %.0.i.i113 = select i1 %.not12.i.i, ptr null, ptr %spec.select.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i114 = icmp eq ptr %.0.i.i113, null
  %i.cj = ptrtoint ptr %i.cd to i64
  %.0.v.v.i = select i1 %.not.i114, ptr %i.u, ptr %.0.i.i113
  %.0.v.i = ptrtoint ptr %.0.v.v.i to i64
  %.0.i = sub i64 %.0.v.i, %i.cj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ab, %bb.t, %bb.ac, %bb.w, %bb.p, %.critedge2, %bb.j
  %.281 = phi ptr [ %i.af, %bb.j ], [ %.079.lcssa, %.critedge2 ], [ %i.bf, %bb.p ], [ %i.bl, %bb.t ], [ %i.bs, %bb.w ], [ %i.cb, %bb.z ], [ %i.cd, %bb.ac ], [ %i.cd, %bb.ab ]
  %.7 = phi i64 [ %i.ae, %bb.j ], [ %i.bb, %.critedge2 ], [ 0, %bb.p ], [ 0, %bb.t ], [ %i.bv, %bb.w ], [ %gepdiff., %bb.z ], [ %.0.i, %bb.ac ], [ 0, %bb.ab ]
  store i64 %.7, ptr %2, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store ptr %i.b, ptr %i.d, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #28, !srcloc !82
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.cl = load volatile i64, ptr %i.ck, align 8, !tbaa !27 ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph, %.lr.ph151, %bb.y, %bb.ab, %bb.v, %bb.s, %bb.q, %bb.o, %.critedge, %bb.i, %bb.h, %bb.f, %bb.d, %RSTRING_PTR.exit, %bb.ad
  %.1 = phi ptr [ null, %bb.o ], [ null, %RSTRING_PTR.exit ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ %.281, %bb.ad ], [ null, %.critedge ], [ null, %bb.i ], [ null, %.lr.ph151 ], [ null, %bb.q ], [ null, %bb.s ], [ null, %bb.y ], [ null, %bb.v ], [ null, %bb.ab ], [ null, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @str_utf8_nth(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !27     ; 5 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp sgt i64 %i.d, 16
  %i.f = icmp sgt i64 %i.a, 16
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.c, 7
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = and i64 %i.b, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = icmp ult ptr %0, %i.i
  br i1 %i.l, label %.lr.ph.preheader, label %.preheader.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = sub i64 %i.h, %i.c                       ; 4 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.m
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.m, -4                       ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 %n.vec
  %i.o = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.a, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.o, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi53 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load54 = load <2 x i8>, ptr %i.p, align 1, !tbaa !20
  %i.q = icmp sgt <2 x i8> %wide.load, splat (i8 -65)
  %i.r = icmp sgt <2 x i8> %wide.load54, splat (i8 -65)
  %i.s = sext <2 x i1> %i.q to <2 x i64>
  %i.t = sext <2 x i1> %i.r to <2 x i64>
  %i.u = add <2 x i64> %vec.phi, %i.s             ; 2 uses
  %i.v = add <2 x i64> %vec.phi53, %i.t           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.v, %i.u
  %i.x = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.preheader.preheader, label %.lr.ph.preheader56

.lr.ph.preheader56:                               ; preds = %.lr.ph.preheader, %middle.block
  %.036.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.02735.ph = phi i64 [ %i.a, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader56, %.lr.ph
  %.036 = phi ptr [ %i.aa, %.lr.ph ], [ %.036.ph, %.lr.ph.preheader56 ] ; 2 uses
  %.02735 = phi i64 [ %spec.select, %.lr.ph ], [ %.02735.ph, %.lr.ph.preheader56 ]
  %i.y = load i8, ptr %.036, align 1, !tbaa !20
  %.not33 = icmp sgt i8 %i.y, -65
  %i.z = sext i1 %.not33 to i64
  %spec.select = add i64 %.02735, %i.z            ; 2 uses
  %i.aa = getelementptr i8, ptr %.036, i64 1      ; 2 uses
  %exitcond.not = icmp eq ptr %i.aa, %scevgep
  br i1 %exitcond.not, label %.preheader.preheader, label %.lr.ph, !llvm.loop !84

.preheader.preheader:                             ; preds = %.lr.ph, %middle.block, %bb.b
  %.229.ph = phi i64 [ %i.a, %bb.b ], [ %i.x, %middle.block ], [ %spec.select, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.030 = phi ptr [ %i.ao, %.preheader ], [ %i.i, %.preheader.preheader ] ; 2 uses
  %.229 = phi i64 [ %i.an, %.preheader ], [ %.229.ph, %.preheader.preheader ]
  %.030.val = load i64, ptr %.030, align 8, !tbaa !27 ; 2 uses
  %i.ab = lshr i64 %.030.val, 6
  %i.ac = xor i64 %.030.val, -1
  %i.ad = lshr i64 %i.ac, 7
  %i.ae = or i64 %i.ab, %i.ad
  %i.af = and i64 %i.ae, 72340172838076673        ; 2 uses
  %i.ag = lshr i64 %i.af, 8
  %i.ah = add nuw nsw i64 %i.ag, %i.af            ; 2 uses
  %i.ai = lshr i64 %i.ah, 16
  %i.aj = add nuw nsw i64 %i.ai, %i.ah            ; 2 uses
  %i.ak = lshr i64 %i.aj, 32
  %i.al = add nuw nsw i64 %i.ak, %i.aj
  %i.am = and i64 %i.al, 15
  %i.an = sub i64 %.229, %i.am                    ; 3 uses
  %i.ao = getelementptr i8, ptr %.030, i64 8      ; 3 uses
  %i.ap = icmp ult ptr %i.ao, %i.k
  %i.aq = icmp sgt i64 %i.an, 7
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.preheader, label %.loopexit, !llvm.loop !85

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.3 = phi i64 [ %i.a, %bb.a ], [ %i.an, %.preheader ] ; 2 uses
  %.1 = phi ptr [ %0, %bb.a ], [ %i.ao, %.preheader ] ; 5 uses
  %i.as = icmp ult ptr %.1, %1
  br i1 %i.as, label %.lr.ph39.preheader, label %._crit_edge

.lr.ph39.preheader:                               ; preds = %.loopexit
  %.146 = ptrtoaddr ptr %.1 to i64
  %i.at = sub i64 %i.b, %.146
  %scevgep47 = getelementptr i8, ptr %.1, i64 %i.at
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %bb.e
  %.238 = phi ptr [ %i.ax, %bb.e ], [ %.1, %.lr.ph39.preheader ] ; 3 uses
  %.437 = phi i64 [ %.5, %bb.e ], [ %.3, %.lr.ph39.preheader ] ; 3 uses
  %i.au = load i8, ptr %.238, align 1, !tbaa !20
  %.not = icmp slt i8 %i.au, -64
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph39
  %i.av = icmp eq i64 %.437, 0
  br i1 %i.av, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = add i64 %.437, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph39
  %.5 = phi i64 [ %i.aw, %bb.d ], [ %.437, %.lr.ph39 ] ; 2 uses
  %i.ax = getelementptr i8, ptr %.238, i64 1      ; 2 uses
  %exitcond48.not = icmp eq ptr %i.ax, %1
  br i1 %exitcond48.not, label %._crit_edge, label %.lr.ph39, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.e, %bb.c, %.loopexit
  %.4.lcssa = phi i64 [ %.3, %.loopexit ], [ 0, %bb.c ], [ %.5, %bb.e ]
  %.2.lcssa = phi ptr [ %.1, %.loopexit ], [ %.238, %bb.c ], [ %scevgep47, %bb.e ]
  store i64 %.4.lcssa, ptr %2, align 8, !tbaa !27
  ret ptr %.2.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @str_utf8_offset(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2) unnamed_addr #15 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 16
  %i.e = icmp sgt i64 %2, 16
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.b, 7
  %i.g = and i64 %i.f, -8                         ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = and i64 %i.a, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = icmp ult ptr %0, %i.h
  br i1 %i.k, label %.lr.ph.preheader.i, label %.preheader.i.preheader

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.l = sub i64 %i.g, %i.b                       ; 4 uses
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.l
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.l, -4                       ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 %n.vec
  %i.n = insertelement <2 x i64> <i64 poison, i64 0>, i64 %2, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.n, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi10 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load11 = load <2 x i8>, ptr %i.o, align 1, !tbaa !20
  %i.p = icmp sgt <2 x i8> %wide.load, splat (i8 -65)
  %i.q = icmp sgt <2 x i8> %wide.load11, splat (i8 -65)
  %i.r = sext <2 x i1> %i.p to <2 x i64>
  %i.s = sext <2 x i1> %i.q to <2 x i64>
  %i.t = add <2 x i64> %vec.phi, %i.r             ; 2 uses
  %i.u = add <2 x i64> %vec.phi10, %i.s           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.u, %i.t
  %i.w = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.preheader.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.036.i.ph = phi ptr [ %0, %.lr.ph.preheader.i ], [ %i.m, %middle.block ]
  %.02735.i.ph = phi i64 [ %2, %.lr.ph.preheader.i ], [ %i.w, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.036.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.036.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02735.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.02735.i.ph, %.lr.ph.i.preheader ]
  %i.x = load i8, ptr %.036.i, align 1, !tbaa !20
  %.not33.i = icmp sgt i8 %i.x, -65
  %i.y = sext i1 %.not33.i to i64
  %spec.select.i = add i64 %.02735.i, %i.y        ; 2 uses
  %i.z = getelementptr i8, ptr %.036.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.z, %scevgep.i
  br i1 %exitcond.not.i, label %.preheader.i.preheader, label %.lr.ph.i, !llvm.loop !88

.preheader.i.preheader:                           ; preds = %.lr.ph.i, %middle.block, %bb.b
  %.229.i.ph = phi i64 [ %2, %bb.b ], [ %i.w, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.030.i = phi ptr [ %i.an, %.preheader.i ], [ %i.h, %.preheader.i.preheader ] ; 2 uses
  %.229.i = phi i64 [ %i.am, %.preheader.i ], [ %.229.i.ph, %.preheader.i.preheader ]
  %.030.val.i = load i64, ptr %.030.i, align 8, !tbaa !27 ; 2 uses
  %i.aa = lshr i64 %.030.val.i, 6
  %i.ab = xor i64 %.030.val.i, -1
  %i.ac = lshr i64 %i.ab, 7
  %i.ad = or i64 %i.aa, %i.ac
  %i.ae = and i64 %i.ad, 72340172838076673        ; 2 uses
  %i.af = lshr i64 %i.ae, 8
  %i.ag = add nuw nsw i64 %i.af, %i.ae            ; 2 uses
  %i.ah = lshr i64 %i.ag, 16
  %i.ai = add nuw nsw i64 %i.ah, %i.ag            ; 2 uses
  %i.aj = lshr i64 %i.ai, 32
  %i.ak = add nuw nsw i64 %i.aj, %i.ai
  %i.al = and i64 %i.ak, 15
  %i.am = sub i64 %.229.i, %i.al                  ; 3 uses
  %i.an = getelementptr i8, ptr %.030.i, i64 8    ; 3 uses
  %i.ao = icmp ult ptr %i.an, %i.j
  %i.ap = icmp sgt i64 %i.am, 7
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %.preheader.i, label %.loopexit.i, !llvm.loop !85

.loopexit.i:                                      ; preds = %.preheader.i, %bb.a
  %.3.i = phi i64 [ %2, %bb.a ], [ %i.am, %.preheader.i ]
  %.1.i = phi ptr [ %0, %bb.a ], [ %i.an, %.preheader.i ] ; 5 uses
  %i.ar = icmp ult ptr %.1.i, %1
  br i1 %i.ar, label %.lr.ph39.preheader.i, label %str_utf8_nth.exit

.lr.ph39.preheader.i:                             ; preds = %.loopexit.i
  %.146.i = ptrtoaddr ptr %.1.i to i64
  %i.as = sub i64 %i.a, %.146.i
  %scevgep47.i = getelementptr i8, ptr %.1.i, i64 %i.as
  br label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %bb.e, %.lr.ph39.preheader.i
  %.238.i = phi ptr [ %i.aw, %bb.e ], [ %.1.i, %.lr.ph39.preheader.i ] ; 3 uses
  %.437.i = phi i64 [ %.5.i, %bb.e ], [ %.3.i, %.lr.ph39.preheader.i ] ; 3 uses
  %i.at = load i8, ptr %.238.i, align 1, !tbaa !20
  %.not.i = icmp slt i8 %i.at, -64
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph39.i
  %i.au = icmp eq i64 %.437.i, 0
  br i1 %i.au, label %str_utf8_nth.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = add i64 %.437.i, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph39.i
  %.5.i = phi i64 [ %i.av, %bb.d ], [ %.437.i, %.lr.ph39.i ]
  %i.aw = getelementptr i8, ptr %.238.i, i64 1    ; 2 uses
  %exitcond48.not.i = icmp eq ptr %i.aw, %1
  br i1 %exitcond48.not.i, label %str_utf8_nth.exit, label %.lr.ph39.i, !llvm.loop !86

str_utf8_nth.exit:                                ; preds = %bb.c, %bb.e, %.loopexit.i
  %.2.lcssa.i = phi ptr [ %.1.i, %.loopexit.i ], [ %scevgep47.i, %bb.e ], [ %.238.i, %bb.c ]
  %i.ax = ptrtoint ptr %.2.lcssa.i to i64
  %i.ay = sub i64 %i.ax, %i.b
  ret i64 %i.ay
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_str_substr(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !27
  %i.b = call ptr @rb_str_subpos(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %str_substr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !27
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = tail call fastcc i64 @str_subseq(i64 noundef %0, i64 noundef %i.l, i64 noundef %i.c) ; 2 uses
  tail call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.m, i64 noundef %0)
  br label %str_substr.exit

str_substr.exit:                                  ; preds = %bb.a, %RSTRING_PTR.exit.i
  %.0.i = phi i64 [ %i.m, %RSTRING_PTR.exit.i ], [ 4, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_str_substr_two_fixnums(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = trunc i64 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ashr i64 %1, 1
  br label %rb_num2long_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_num2long(i64 noundef %1) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = trunc i64 %2 to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_num2long_inline.exit
  %i.f = ashr i64 %2, 1
  br label %rb_num2long_inline.exit5

bb.e:                                             ; preds = %rb_num2long_inline.exit
  %i.g = tail call i64 @rb_num2long(i64 noundef %2) #28
  br label %rb_num2long_inline.exit5

rb_num2long_inline.exit5:                         ; preds = %bb.d, %bb.e
  %.0.i4 = phi i64 [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.0.i4, ptr %i.a, align 8, !tbaa !27
  %i.h = call ptr @rb_str_subpos(i64 noundef %0, i64 noundef %.0.i, ptr noundef nonnull %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %str_substr.exit, label %bb.f

bb.f:                                             ; preds = %rb_num2long_inline.exit5
  %i.i = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  %i.k = icmp ne i32 %3, 0
  %or.cond.i = or i1 %i.k, %i.j
  br i1 %or.cond.i, label %bb.g, label %str_substr.exit

bb.g:                                             ; preds = %bb.f
  %i.l = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = and i64 %i.m, 8192
  %.not.i.i = icmp eq i64 %i.n, 0
  %i.o = getelementptr i8, ptr %i.l, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.p, %bb.h ], [ %i.o, %bb.g ]
  %i.r = ptrtoint ptr %i.h to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = tail call fastcc i64 @str_subseq(i64 noundef %0, i64 noundef %i.t, i64 noundef %i.i) ; 2 uses
  tail call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.u, i64 noundef %0)
  br label %str_substr.exit

str_substr.exit:                                  ; preds = %rb_num2long_inline.exit5, %bb.f, %RSTRING_PTR.exit.i
  %.0.i6 = phi i64 [ %i.u, %RSTRING_PTR.exit.i ], [ 4, %rb_num2long_inline.exit5 ], [ 4, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.0.i6
}

declare i64 @rb_obj_freeze(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, -7) i64 @rb_str_locktmp(i64 noundef returned %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !53

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !25

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30, !inline_history !89
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %i.h, %.not8.i
  br i1 %or.cond.i, label %RB_FL_TEST.exit, label %bb.b, !prof !90

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #34, !inline_history !89
  %.pre = load i64, ptr %i.d, align 8, !tbaa !11
  br label %RB_FL_TEST.exit

RB_FL_TEST.exit:                                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.j = phi i64 [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %bb.b ] ; 2 uses
  %i.k = and i64 %i.j, 524288
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %RB_FL_SET.exit, label %bb.c

bb.c:                                             ; preds = %RB_FL_TEST.exit
  %i.l = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.13) #30
  unreachable

RB_FL_SET.exit:                                   ; preds = %RB_FL_TEST.exit
  %i.m = or disjoint i64 %i.j, 524288
  store i64 %i.m, ptr %i.d, align 8, !tbaa !11
  ret i64 %0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @rb_check_frozen_inline(i64 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i = and i1 %i.a, %i.c
  br i1 %.not3.i, label %RB_OBJ_FROZEN.exit, label %RB_OBJ_FROZEN.exit.thread, !prof !53

RB_OBJ_FROZEN.exit:                               ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit, label %RB_OBJ_FROZEN.exit.thread, !prof !25

RB_OBJ_FROZEN.exit.thread:                        ; preds = %bb.a, %RB_OBJ_FROZEN.exit
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RB_OBJ_FROZEN.exit
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8 = icmp eq i64 %i.i, 0
  %or.cond = or i1 %i.h, %.not8
  br i1 %or.cond, label %.critedge, label %bb.b, !prof !90

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  tail call void @rb_str_modify(i64 noundef %0)
  br label %.critedge
end_hunk_1
begin_hunk_2_@rb_str_lines:bb.a
  %i.d = tail call fastcc i64 @rb_str_enumerate_lines(i32 noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %i.c)
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_bytes(i64 noundef %0) #1 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.a, 0
  %i.b = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_ary_new_capa(i64 noundef %i.d) #28 ; 4 uses
  %i.f = getelementptr i8, ptr %i.b, i64 16       ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %rb_str_enumerate_bytes.exit

.thread:                                          ; preds = %bb.a
  %i.i = icmp sgt i64 %i.d, 0
  br i1 %i.i, label %.lr.ph.i.thread, label %rb_str_enumerate_bytes.exit.thread

.lr.ph.i.thread:                                  ; preds = %.thread
  %i.j = getelementptr i8, ptr %i.b, i64 24
  br label %.lr.ph.split.us.i.preheader

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.b, i64 24       ; 3 uses
  %.not.i12.i = icmp eq i64 %i.e, 0
  br i1 %.not.i12.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i.thread, %.lr.ph.i
  %i.l = phi ptr [ %i.j, %.lr.ph.i.thread ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %i.m = phi ptr [ %i.c, %.lr.ph.i.thread ], [ %i.f, %.lr.ph.i ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %RSTRING_PTR.exit.us.i
  %.013.us.i = phi i64 [ %i.x, %RSTRING_PTR.exit.us.i ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !11
  %i.o = and i64 %i.n, 8192
  %.not.i.us.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.us.i, label %RSTRING_PTR.exit.us.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.us.i

RSTRING_PTR.exit.us.i:                            ; preds = %bb.c, %.lr.ph.split.us.i
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.l, %.lr.ph.split.us.i ]
  %i.r = getelementptr i8, ptr %i.q, i64 %.013.us.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !20
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = tail call i64 @rb_yield(i64 noundef %i.v) #28 ; 0 uses
  %i.x = add nuw nsw i64 %.013.us.i, 1            ; 2 uses
  %i.y = load i64, ptr %i.m, align 8, !tbaa !14
  %i.z = icmp slt i64 %i.x, %i.y
  br i1 %i.z, label %.lr.ph.split.us.i, label %rb_str_enumerate_bytes.exit, !llvm.loop !190

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %RSTRING_PTR.exit.i
  %.013.i = phi i64 [ %i.ak, %RSTRING_PTR.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !11
  %i.ab = and i64 %i.aa, 8192
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.d, %.lr.ph.split.i
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ %i.k, %.lr.ph.split.i ]
  %i.ae = getelementptr i8, ptr %i.ad, i64 %.013.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = or disjoint i64 %i.ah, 1
  %i.aj = tail call i64 @rb_ary_push(i64 noundef %i.e, i64 noundef %i.ai) #28 ; 0 uses
  %i.ak = add nuw nsw i64 %.013.i, 1              ; 2 uses
  %i.al = load i64, ptr %i.f, align 8, !tbaa !14
  %i.am = icmp slt i64 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph.split.i, label %rb_str_enumerate_bytes.exit, !llvm.loop !190

rb_str_enumerate_bytes.exit:                      ; preds = %RSTRING_PTR.exit.i, %RSTRING_PTR.exit.us.i, %bb.b
  %i.an = phi i64 [ 0, %RSTRING_PTR.exit.us.i ], [ %i.e, %bb.b ], [ %i.e, %RSTRING_PTR.exit.i ]
  %.fr = freeze i64 %i.an                         ; 2 uses
  %.not.i = icmp eq i64 %.fr, 0
  br i1 %.not.i, label %rb_str_enumerate_bytes.exit.thread, label %bb.e

rb_str_enumerate_bytes.exit.thread:               ; preds = %.thread, %rb_str_enumerate_bytes.exit
  br label %bb.e

bb.e:                                             ; preds = %rb_str_enumerate_bytes.exit, %rb_str_enumerate_bytes.exit.thread
  %i.ao = phi i64 [ %0, %rb_str_enumerate_bytes.exit.thread ], [ %.fr, %rb_str_enumerate_bytes.exit ]
  ret i64 %i.ao
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_chars(i64 noundef %0) #1 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @str_strlen(i64 noundef %0, ptr noundef null)
  %i.c = tail call i64 @rb_ary_new_capa(i64 noundef %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = tail call fastcc i64 @rb_str_enumerate_chars(i64 noundef %0, i64 noundef %i.d)
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_codepoints(i64 noundef %0) #1 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @str_strlen(i64 noundef %0, ptr noundef null)
  %i.c = tail call i64 @rb_ary_new_capa(i64 noundef %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = tail call fastcc i64 @rb_str_enumerate_codepoints(i64 noundef %0, i64 noundef %i.d)
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_grapheme_clusters(i64 noundef %0) #1 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @str_strlen(i64 noundef %0, ptr noundef null)
  %i.c = tail call i64 @rb_ary_new_capa(i64 noundef %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = tail call fastcc i64 @rb_str_enumerate_grapheme_clusters(i64 noundef %0, i64 noundef %i.d)
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_reverse(i64 noundef %0) #1 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp slt i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.f = tail call fastcc i64 @str_duplicate(i64 noundef %i.e, i64 noundef %0)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !11
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 22
  %i.j = and i32 %i.i, 127                        ; 2 uses
  %i.k = icmp eq i32 %i.j, 127
  br i1 %i.k, label %bb.d, label %get_encoding.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.l, %bb.d ], [ %i.j, %bb.c ]
  %i.m = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 4 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !14
  %i.o = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.p = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.q = tail call fastcc noundef i64 @str_enc_new(i64 noundef %i.o, ptr noundef readonly null, i64 noundef %i.n, ptr noundef nonnull %i.p) ; 3 uses
  %i.r = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.s = and i64 %i.r, 8192
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.e

bb.e:                                             ; preds = %get_encoding.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %get_encoding.exit, %bb.e
  %i.v = phi ptr [ %i.u, %bb.e ], [ %i.t, %get_encoding.exit ] ; 14 uses
  %1 = ptrtoaddr ptr %i.v to i64
  %i.w = load i64, ptr %i.b, align 8, !tbaa !14   ; 11 uses
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w     ; 9 uses
  %i.y = inttoptr i64 %i.q to ptr                 ; 6 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %i.aa = and i64 %i.z, 8192
  %.not.i59 = icmp eq i64 %i.aa, 0
  %i.ab = getelementptr i8, ptr %i.y, i64 24      ; 2 uses
  br i1 %.not.i59, label %RSTRING_END.exit60, label %bb.f

bb.f:                                             ; preds = %RSTRING_END.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  br label %RSTRING_END.exit60

RSTRING_END.exit60:                               ; preds = %RSTRING_END.exit, %bb.f
  %i.ad = phi ptr [ %i.ac, %bb.f ], [ %i.ab, %RSTRING_END.exit ] ; 2 uses
  %i.ae = getelementptr i8, ptr %i.y, i64 16      ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 %i.af  ; 9 uses
  %i.ah = trunc i64 %i.r to i32
  %i.ai = and i32 %i.ah, 3145728                  ; 7 uses
  %i.aj = icmp sgt i64 %i.w, 1
  br i1 %i.aj, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %RSTRING_END.exit60
  %i.ak = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %0)
  br i1 %i.ak, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.g
  %i.al = icmp ult ptr %i.v, %i.x
  br i1 %i.al, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.w, 8
  br i1 %min.iters.check, label %.lr.ph80.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.am = sub i64 %i.af, %i.w
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.am
  %bound0 = icmp ult ptr %scevgep, %i.x
  %bound1 = icmp ult ptr %i.v, %i.ag
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph80.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check95 = icmp ult i64 %i.w, 32
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.w, 24
  %n.vec = and i64 %i.w, 9223372036854775776      ; 5 uses
  %i.an = getelementptr i8, ptr %i.v, i64 %n.vec
  %i.ao = sub nsw i64 0, %n.vec
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %index ; 2 uses
  %i.aq = sub i64 0, %index
  %next.gep96 = getelementptr i8, ptr %i.ag, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20, !alias.scope !191
  %wide.load97 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !20, !alias.scope !191
  %i.as = getelementptr i8, ptr %next.gep96, i64 -16
  %i.at = getelementptr i8, ptr %next.gep96, i64 -32
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse98 = shufflevector <16 x i8> %wide.load97, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.as, align 1, !tbaa !20, !alias.scope !194, !noalias !191
  store <16 x i8> %reverse98, ptr %i.at, align 1, !tbaa !20, !alias.scope !194, !noalias !191
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph80.preheader, label %vec.epilog.ph, !prof !197

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %i.w, 9223372036854775800   ; 4 uses
  %i.av = getelementptr i8, ptr %i.v, i64 %n.vec101
  %i.aw = sub nsw i64 0, %n.vec101
  %i.ax = getelementptr i8, ptr %i.ag, i64 %i.aw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next107, %vec.epilog.vector.body ] ; 3 uses
  %next.gep103 = getelementptr i8, ptr %i.v, i64 %index102
  %i.ay = sub i64 0, %index102
  %next.gep104 = getelementptr i8, ptr %i.ag, i64 %i.ay
  %wide.load105 = load <8 x i8>, ptr %next.gep103, align 1, !tbaa !20, !alias.scope !191
  %i.az = getelementptr i8, ptr %next.gep104, i64 -8
  %reverse106 = shufflevector <8 x i8> %wide.load105, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse106, ptr %i.az, align 1, !tbaa !20, !alias.scope !194, !noalias !191
  %index.next107 = add nuw i64 %index102, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next107, %n.vec101
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !198

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n108 = icmp eq i64 %i.w, %n.vec101
  br i1 %cmp.n108, label %.loopexit, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04979.ph = phi ptr [ %i.v, %iter.check ], [ %i.v, %vector.memcheck ], [ %i.an, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 3 uses
  %.05378.ph = phi ptr [ %i.ag, %iter.check ], [ %i.ag, %vector.memcheck ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ] ; 2 uses
  %i.bb = add i64 %i.w, %1                        ; 2 uses
  %.04979.ph113 = ptrtoaddr ptr %.04979.ph to i64 ; 2 uses
  %i.bc = sub i64 %i.bb, %.04979.ph113
  %xtraiter = and i64 %i.bc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph80.prol.loopexit, label %.lr.ph80.prol

.lr.ph80.prol:                                    ; preds = %.lr.ph80.preheader, %.lr.ph80.prol
  %.04979.prol = phi ptr [ %i.bd, %.lr.ph80.prol ], [ %.04979.ph, %.lr.ph80.preheader ] ; 2 uses
  %.05378.prol = phi ptr [ %i.bf, %.lr.ph80.prol ], [ %.05378.ph, %.lr.ph80.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph80.prol ], [ 0, %.lr.ph80.preheader ]
  %i.bd = getelementptr i8, ptr %.04979.prol, i64 1 ; 2 uses
  %i.be = load i8, ptr %.04979.prol, align 1, !tbaa !20
  %i.bf = getelementptr i8, ptr %.05378.prol, i64 -1 ; 3 uses
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !20
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph80.prol.loopexit, label %.lr.ph80.prol, !llvm.loop !199

.lr.ph80.prol.loopexit:                           ; preds = %.lr.ph80.prol, %.lr.ph80.preheader
  %.04979.unr = phi ptr [ %.04979.ph, %.lr.ph80.preheader ], [ %i.bd, %.lr.ph80.prol ]
  %.05378.unr = phi ptr [ %.05378.ph, %.lr.ph80.preheader ], [ %i.bf, %.lr.ph80.prol ]
  %i.bg = sub i64 %.04979.ph113, %i.bb
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %.loopexit, label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.prol.loopexit, %.lr.ph80
  %.04979 = phi ptr [ %i.cd, %.lr.ph80 ], [ %.04979.unr, %.lr.ph80.prol.loopexit ] ; 9 uses
  %.05378 = phi ptr [ %i.cf, %.lr.ph80 ], [ %.05378.unr, %.lr.ph80.prol.loopexit ] ; 8 uses
  %i.bi = getelementptr i8, ptr %.04979, i64 1
  %i.bj = load i8, ptr %.04979, align 1, !tbaa !20
  %i.bk = getelementptr i8, ptr %.05378, i64 -1
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !20
  %i.bl = getelementptr i8, ptr %.04979, i64 2
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !20
  %i.bn = getelementptr i8, ptr %.05378, i64 -2
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !20
  %i.bo = getelementptr i8, ptr %.04979, i64 3
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.bq = getelementptr i8, ptr %.05378, i64 -3
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !20
  %i.br = getelementptr i8, ptr %.04979, i64 4
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !20
  %i.bt = getelementptr i8, ptr %.05378, i64 -4
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !20
  %i.bu = getelementptr i8, ptr %.04979, i64 5
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !20
  %i.bw = getelementptr i8, ptr %.05378, i64 -5
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !20
  %i.bx = getelementptr i8, ptr %.04979, i64 6
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !20
  %i.bz = getelementptr i8, ptr %.05378, i64 -6
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !20
  %i.ca = getelementptr i8, ptr %.04979, i64 7
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !20
  %i.cc = getelementptr i8, ptr %.05378, i64 -7
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !20
  %i.cd = getelementptr i8, ptr %.04979, i64 8    ; 2 uses
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !20
  %i.cf = getelementptr i8, ptr %.05378, i64 -8   ; 2 uses
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !20
  %exitcond.not.7 = icmp eq ptr %i.cd, %i.x
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph80, !llvm.loop !200

bb.h:                                             ; preds = %bb.g
  %i.cg = icmp eq i32 %i.ai, 2097152
  br i1 %i.cg, label %.preheader69, label %bb.j

.preheader69:                                     ; preds = %bb.h
  %i.ch = icmp ult ptr %i.v, %i.x
  br i1 %i.ch, label %.lr.ph77, label %.loopexit

.lr.ph77:                                         ; preds = %.preheader69, %ruby_nonempty_memcpy.exit
  %.176 = phi ptr [ %i.cm, %ruby_nonempty_memcpy.exit ], [ %i.v, %.preheader69 ] ; 3 uses
  %.15475 = phi ptr [ %i.cl, %ruby_nonempty_memcpy.exit ], [ %i.ag, %.preheader69 ]
  %i.ci = tail call i32 @rb_enc_fast_mbclen(ptr noundef %.176, ptr noundef nonnull %i.x, ptr noundef %i.m) #28 ; 2 uses
  %i.cj = sext i32 %i.ci to i64                   ; 3 uses
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr i8, ptr %.15475, i64 %i.ck ; 2 uses
  %.not.i61 = icmp eq i32 %i.ci, 0
  br i1 %.not.i61, label %ruby_nonempty_memcpy.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cl, ptr noundef nonnull readonly align 1 %.176, i64 noundef range(i64 1, 0) %i.cj, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %.lr.ph77, %bb.i
  %i.cm = getelementptr i8, ptr %.176, i64 %i.cj  ; 2 uses
  %i.cn = icmp ult ptr %i.cm, %i.x
  br i1 %i.cn, label %.lr.ph77, label %.loopexit, !llvm.loop !201

bb.j:                                             ; preds = %bb.h
  %i.co = getelementptr i8, ptr %i.m, i64 20
  %.val.i = load i32, ptr %i.co, align 4, !tbaa !16
  %.not.i62 = icmp eq i32 %.val.i, 1
  br i1 %.not.i62, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.j
  %i.cp = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.m) #32
  %.fr = freeze i32 %i.cp
  %.not3.i = icmp eq i32 %.fr, 0
  %spec.select = select i1 %.not3.i, i32 1048576, i32 2097152
  br label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %rb_enc_asciicompat.exit, %bb.j
  %i.cq = phi i32 [ 2097152, %bb.j ], [ %spec.select, %rb_enc_asciicompat.exit ] ; 2 uses
  %i.cr = icmp ult ptr %i.v, %i.x
  br i1 %i.cr, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %rb_enc_asciicompat.exit.thread, %ruby_nonempty_memcpy.exit66
  %.274 = phi ptr [ %i.cy, %ruby_nonempty_memcpy.exit66 ], [ %i.v, %rb_enc_asciicompat.exit.thread ] ; 4 uses
  %.05073 = phi i32 [ %.151, %ruby_nonempty_memcpy.exit66 ], [ %i.cq, %rb_enc_asciicompat.exit.thread ]
  %.25572 = phi ptr [ %i.cx, %ruby_nonempty_memcpy.exit66 ], [ %i.ag, %rb_enc_asciicompat.exit.thread ]
  %i.cs = tail call i32 @rb_enc_mbclen(ptr noundef %.274, ptr noundef nonnull %i.x, ptr noundef %i.m) #28 ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.cu = load i8, ptr %.274, align 1, !tbaa !20
  %.not = icmp sgt i8 %i.cu, -1
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.151 = phi i32 [ 0, %bb.l ], [ %.05073, %bb.k ] ; 2 uses
  %i.cv = sext i32 %i.cs to i64                   ; 3 uses
  %i.cw = sub nsw i64 0, %i.cv
  %i.cx = getelementptr i8, ptr %.25572, i64 %i.cw ; 2 uses
  %.not.i64 = icmp eq i32 %i.cs, 0
  br i1 %.not.i64, label %ruby_nonempty_memcpy.exit66, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cx, ptr noundef nonnull readonly align 1 %.274, i64 noundef range(i64 1, 0) %i.cv, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit66

ruby_nonempty_memcpy.exit66:                      ; preds = %bb.m, %bb.n
  %i.cy = getelementptr i8, ptr %.274, i64 %i.cv  ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %i.x
  br i1 %i.cz, label %.lr.ph, label %.loopexit, !llvm.loop !202

.loopexit:                                        ; preds = %ruby_nonempty_memcpy.exit66, %ruby_nonempty_memcpy.exit, %.lr.ph80.prol.loopexit, %.lr.ph80, %middle.block, %vec.epilog.middle.block, %rb_enc_asciicompat.exit.thread, %.preheader69, %.preheader, %RSTRING_END.exit60
  %.252 = phi i32 [ %i.ai, %RSTRING_END.exit60 ], [ 2097152, %.preheader69 ], [ %i.ai, %.preheader ], [ %i.ai, %middle.block ], [ 2097152, %ruby_nonempty_memcpy.exit ], [ %i.cq, %rb_enc_asciicompat.exit.thread ], [ %i.ai, %.lr.ph80.prol.loopexit ], [ %i.ai, %vec.epilog.middle.block ], [ %i.ai, %.lr.ph80 ], [ %.151, %ruby_nonempty_memcpy.exit66 ]
  %i.da = load i64, ptr %i.b, align 8, !tbaa !14
  store i64 %i.da, ptr %i.ae, align 8, !tbaa !14
  %i.db = load i64, ptr %i.a, align 8, !tbaa !11
  %i.dc = trunc i64 %i.db to i32
  %i.dd = lshr i32 %i.dc, 22
  %i.de = and i32 %i.dd, 127                      ; 2 uses
  %i.df = icmp eq i32 %i.de, 127
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  %i.dg = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  tail call void @rb_enc_set_index(i64 noundef %i.q, i32 noundef %i.dg) #28
  %.pre = load i64, ptr %i.y, align 8, !tbaa !11
  br label %str_enc_copy_direct.exit

bb.p:                                             ; preds = %.loopexit
  %i.dh = shl nuw nsw i32 %i.de, 22
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = load i64, ptr %i.y, align 8, !tbaa !11
  %i.dk = and i64 %i.dj, -532676609
  %i.dl = or disjoint i64 %i.dk, %i.di
  br label %str_enc_copy_direct.exit

str_enc_copy_direct.exit:                         ; preds = %bb.o, %bb.p
  %i.dm = phi i64 [ %.pre, %bb.o ], [ %i.dl, %bb.p ]
  %i.dn = and i64 %i.dm, -3145729
  %i.do = zext nneg i32 %.252 to i64
  %i.dp = or i64 %i.dn, %i.do
  store i64 %i.dp, ptr %i.y, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %str_enc_copy_direct.exit, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.q, %str_enc_copy_direct.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_reverse_bang(i64 noundef returned %0) #1 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %0)
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @str_modify_keep_cr(i64 noundef %0)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@rb_str_delete_suffix_bang:bb.a
  %.not = icmp eq i64 %i.ag, 1048576
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = and i64 %i.af, -3145729
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %str_modifiable.exit
  %.0 = phi i64 [ 4, %str_modifiable.exit ], [ %0, %bb.k ], [ %0, %bb.j ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_tr(i64 noundef %0, i64 noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.b = tail call fastcc i64 @str_duplicate(i64 noundef %i.a, i64 noundef %0) ; 2 uses
  %i.c = tail call fastcc i64 @tr_trans(i64 noundef %i.b, i64 noundef %1, i64 noundef %2, i32 noundef 0) ; 0 uses
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_tr_s(i64 noundef %0, i64 noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.b = tail call fastcc i64 @str_duplicate(i64 noundef %i.a, i64 noundef %0) ; 2 uses
  %i.c = tail call fastcc i64 @tr_trans(i64 noundef %i.b, i64 noundef %1, i64 noundef %2, i32 noundef 1) ; 0 uses
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_delete(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.b = tail call fastcc i64 @str_duplicate(i64 noundef %i.a, i64 noundef %2) ; 2 uses
  %i.c = tail call i64 @rb_str_delete_bang(i32 noundef %0, ptr noundef %1, i64 noundef %i.b) ; 0 uses
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_squeeze(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.b = tail call fastcc i64 @str_duplicate(i64 noundef %i.a, i64 noundef %2) ; 2 uses
  %i.c = tail call i64 @rb_str_squeeze_bang(i32 noundef %0, ptr noundef %1, i64 noundef %i.b) ; 0 uses
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_count(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 0, ptr %i.c, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = icmp slt i32 %0, 1
  br i1 %i.g, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef -1) #30
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !27
  store i64 %i.h, ptr %i.d, align 8, !tbaa !27
  %.0..0..0. = load volatile i64, ptr %i.d, align 8, !tbaa !27 ; 5 uses
  %i.i = icmp eq i64 %.0..0..0., 0
  %i.j = and i64 %.0..0..0., 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_check_arity.exit
  %i.m = inttoptr i64 %.0..0..0. to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11
  %i.o = and i64 %i.n, 31
  %i.p = icmp eq i64 %i.o, 5
  br i1 %i.p, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rb_check_arity.exit
  %i.q = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.q, ptr %i.d, align 8, !tbaa !27
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0..0.93 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 4 uses
  %i.r = tail call ptr @rb_enc_check(i64 noundef %2, i64 noundef %.0..0.93) #28 ; 8 uses
  %i.s = icmp eq i32 %0, 1
  br i1 %i.s, label %bb.c, label %.lr.ph113.preheader

bb.c:                                             ; preds = %rb_string_value.exit
  %i.t = inttoptr i64 %.0..0.93 to ptr            ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !14
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.d, label %.thread.thread

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.r, i64 20
  %.val.i = load i32, ptr %i.x, align 4, !tbaa !16
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %rb_enc_asciicompat.exit, label %.thread.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.d
  %i.y = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.r) #32
  %.not3.i = icmp eq i32 %i.y, 0
  br i1 %.not3.i, label %bb.e, label %.thread.thread

bb.e:                                             ; preds = %rb_enc_asciicompat.exit
  %i.z = load i64, ptr %i.t, align 8, !tbaa !11
  %i.aa = and i64 %i.z, 8192
  %.not.i71 = icmp eq i64 %i.aa, 0
  %i.ab = getelementptr i8, ptr %i.t, i64 24      ; 2 uses
  br i1 %.not.i71, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.e, %bb.f
  %i.ad = phi ptr [ %i.ac, %bb.f ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ae = getelementptr i8, ptr %i.r, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !216
  %i.ag = getelementptr i8, ptr %i.ad, i64 1      ; 2 uses
  %i.ah = tail call i32 %i.af(ptr noundef %i.ad, ptr noundef %i.ag, ptr noundef nonnull %i.r) #28
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.thread.thread, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit
  %i.ai = inttoptr i64 %2 to ptr                  ; 9 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = and i32 %i.ak, 3145728                  ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %is_broken_string.exit

bb.h:                                             ; preds = %bb.g
  %i.an = lshr i32 %i.ak, 22
  %i.ao = and i32 %i.an, 127                      ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 127
  br i1 %i.ap, label %bb.i, label %get_encoding.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit.i.i

get_encoding.exit.i.i:                            ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.aq, %bb.i ], [ %i.ao, %bb.h ]
  %i.ar = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i.i) #28
  %i.as = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.at = and i64 %i.as, 8192
  %.not.i.i.i.i = icmp eq i64 %i.at, 0
  %i.au = getelementptr i8, ptr %i.ai, i64 24     ; 2 uses
  br i1 %.not.i.i.i.i, label %enc_coderange_scan.exit.i.i, label %bb.j

bb.j:                                             ; preds = %get_encoding.exit.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i.i

enc_coderange_scan.exit.i.i:                      ; preds = %bb.j, %get_encoding.exit.i.i
  %i.aw = phi ptr [ %i.av, %bb.j ], [ %i.au, %get_encoding.exit.i.i ]
  %i.ax = getelementptr i8, ptr %i.ai, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !14
  %i.az = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.aw, i64 noundef %i.ay, ptr noundef %i.ar) ; 2 uses
  %i.ba = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.bb = and i64 %i.ba, -3145729
  %i.bc = zext nneg i32 %i.az to i64
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ai, align 8, !tbaa !11
  br label %is_broken_string.exit

is_broken_string.exit:                            ; preds = %bb.g, %enc_coderange_scan.exit.i.i
  %.0.i.i = phi i32 [ %i.az, %enc_coderange_scan.exit.i.i ], [ %i.al, %bb.g ]
  %i.be = icmp eq i32 %.0.i.i, 3145728
  br i1 %i.be, label %.thread.thread, label %bb.k

bb.k:                                             ; preds = %is_broken_string.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.bf = call i32 @rb_enc_codepoint_len(ptr noundef %i.ad, ptr noundef %i.ag, ptr noundef nonnull %i.e, ptr noundef nonnull %i.r) #28
  %i.bg = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.bh = and i64 %i.bg, 8192
  %.not.i72 = icmp eq i64 %i.bh, 0                ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ai, i64 24     ; 4 uses
  br i1 %.not.i72, label %RSTRING_PTR.exit73, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !20
  br label %RSTRING_PTR.exit73

RSTRING_PTR.exit73:                               ; preds = %bb.k, %bb.l
  %i.bk = phi ptr [ %i.bj, %bb.l ], [ %i.bi, %bb.k ] ; 7 uses
  %3 = ptrtoaddr ptr %i.bk to i64
  %.not64 = icmp eq ptr %i.bk, null
  br i1 %.not64, label %bb.q, label %bb.m

bb.m:                                             ; preds = %RSTRING_PTR.exit73
  %i.bl = getelementptr i8, ptr %i.ai, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !14 ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i72, label %RSTRING_END.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.n, %bb.o
  %i.bp = phi ptr [ %i.bo, %bb.o ], [ %i.bi, %bb.n ] ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bm
  %i.br = icmp ult ptr %i.bk, %i.bq
  br i1 %i.br, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %RSTRING_END.exit
  %4 = ptrtoaddr ptr %i.bp to i64
  %i.bs = trunc i32 %i.bf to i8                   ; 2 uses
  %i.bt = add i64 %i.bm, %4
  %i.bu = sub i64 %i.bt, %3                       ; 4 uses
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.bu
  %min.iters.check = icmp ult i64 %i.bu, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.bu, -4                      ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bk, i64 %n.vec
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.bs, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi152 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.bk, i64 %index ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load153 = load <2 x i8>, ptr %i.bw, align 1, !tbaa !20
  %i.bx = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.by = icmp eq <2 x i8> %wide.load153, %broadcast.splat
  %i.bz = zext <2 x i1> %i.bx to <2 x i64>
  %i.ca = zext <2 x i1> %i.by to <2 x i64>
  %i.cb = add <2 x i64> %vec.phi, %i.bz           ; 2 uses
  %i.cc = add <2 x i64> %vec.phi152, %i.ca        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cc, %i.cb
  %i.ce = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.054111.ph = phi i64 [ 0, %.lr.ph ], [ %i.ce, %middle.block ]
  %.057110.ph = phi ptr [ %i.bk, %.lr.ph ], [ %i.bv, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.054111 = phi i64 [ %spec.select, %scalar.ph ], [ %.054111.ph, %scalar.ph.preheader ]
  %.057110 = phi ptr [ %i.cf, %scalar.ph ], [ %.057110.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cf = getelementptr i8, ptr %.057110, i64 1   ; 2 uses
  %i.cg = load i8, ptr %.057110, align 1, !tbaa !20
  %i.ch = icmp eq i8 %i.cg, %i.bs
  %i.ci = zext i1 %i.ch to i64
  %spec.select = add i64 %.054111, %i.ci          ; 2 uses
  %exitcond.not = icmp eq ptr %i.cf, %scevgep
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !218

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i64 [ %i.ce, %middle.block ], [ %spec.select, %scalar.ph ] ; 3 uses
  %i.cj = icmp ult i64 %spec.select.lcssa, 4611686018427387904
  br i1 %i.cj, label %._crit_edge.thread, label %bb.p

._crit_edge.thread:                               ; preds = %RSTRING_END.exit, %._crit_edge
  %.054.lcssa142 = phi i64 [ %spec.select.lcssa, %._crit_edge ], [ 0, %RSTRING_END.exit ]
  %i.ck = shl nuw nsw i64 %.054.lcssa142, 1
  %i.cl = or disjoint i64 %i.ck, 1
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.cm = call i64 @rb_ull2inum(i64 noundef %spec.select.lcssa) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %RSTRING_PTR.exit73, %._crit_edge.thread, %bb.p
  %.051 = phi i64 [ 1, %RSTRING_PTR.exit73 ], [ 1, %bb.m ], [ %i.cl, %._crit_edge.thread ], [ %i.cm, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %rb_ull2num_inline.exit91

.thread.thread:                                   ; preds = %bb.d, %bb.c, %rb_enc_asciicompat.exit, %RSTRING_PTR.exit, %is_broken_string.exit
  call fastcc void @tr_setup_table(i64 noundef %.0..0.93, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.r)
  br label %._crit_edge114

.lr.ph113.preheader:                              ; preds = %rb_string_value.exit
  call fastcc void @tr_setup_table(i64 noundef %.0..0.93, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.r)
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %rb_string_value.exit79
  %indvars.iv = phi i64 [ 1, %.lr.ph113.preheader ], [ %indvars.iv.next, %rb_string_value.exit79 ] ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !27
  store i64 %i.co, ptr %i.d, align 8, !tbaa !27
  %.0..0..0.92 = load volatile i64, ptr %i.d, align 8, !tbaa !27 ; 5 uses
  %i.cp = icmp eq i64 %.0..0..0.92, 0
  %i.cq = and i64 %.0..0..0.92, 7
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = or i1 %i.cp, %i.cr
  br i1 %i.cs, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i77, label %rbimpl_RB_TYPE_P_fastpath.exit.i76

rbimpl_RB_TYPE_P_fastpath.exit.i76:               ; preds = %.lr.ph113
  %i.ct = inttoptr i64 %.0..0..0.92 to ptr
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !11
  %i.cv = and i64 %i.cu, 31
  %i.cw = icmp eq i64 %i.cv, 5
  br i1 %i.cw, label %rb_string_value.exit79, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i77

rbimpl_RB_TYPE_P_fastpath.exit.thread.i77:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i76, %.lr.ph113
  %i.cx = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0.92, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.cx, ptr %i.d, align 8, !tbaa !27
  br label %rb_string_value.exit79

rb_string_value.exit79:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i76, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i77
  %.0..0.97 = phi i64 [ %.0..0..0.92, %rbimpl_RB_TYPE_P_fastpath.exit.i76 ], [ %i.cx, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i77 ] ; 2 uses
  %i.cy = tail call ptr @rb_enc_check(i64 noundef %2, i64 noundef %.0..0.97) #28 ; 2 uses
  call fastcc void @tr_setup_table(i64 noundef %.0..0.97, ptr noundef %i.a, i32 noundef 0, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.cy)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond125.not, label %._crit_edge114, label %.lr.ph113, !llvm.loop !219

._crit_edge114:                                   ; preds = %rb_string_value.exit79, %.thread.thread
  %.053.lcssa = phi ptr [ %i.r, %.thread.thread ], [ %i.cy, %rb_string_value.exit79 ] ; 4 uses
  %i.cz = inttoptr i64 %2 to ptr                  ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !11
  %i.db = and i64 %i.da, 8192
  %.not.i80 = icmp eq i64 %i.db, 0                ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cz, i64 24     ; 4 uses
  br i1 %.not.i80, label %RSTRING_PTR.exit81, label %bb.r

bb.r:                                             ; preds = %._crit_edge114
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !20
  br label %RSTRING_PTR.exit81

RSTRING_PTR.exit81:                               ; preds = %._crit_edge114, %bb.r
  %i.de = phi ptr [ %i.dd, %bb.r ], [ %i.dc, %._crit_edge114 ] ; 4 uses
  %.not65 = icmp eq ptr %i.de, null
  br i1 %.not65, label %rb_ull2num_inline.exit91, label %bb.s

bb.s:                                             ; preds = %RSTRING_PTR.exit81
  %i.df = getelementptr i8, ptr %i.cz, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !14 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %rb_ull2num_inline.exit91, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i80, label %RSTRING_END.exit83, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !20
  br label %RSTRING_END.exit83

RSTRING_END.exit83:                               ; preds = %bb.t, %bb.u
  %i.dj = phi ptr [ %i.di, %bb.u ], [ %i.dc, %bb.t ]
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.dg  ; 5 uses
  %i.dl = getelementptr i8, ptr %.053.lcssa, i64 20
  %.val.i84 = load i32, ptr %i.dl, align 4, !tbaa !16
  %.not.i85 = icmp eq i32 %.val.i84, 1
  %i.dm = icmp ult ptr %i.de, %i.dk               ; 2 uses
  br i1 %.not.i85, label %rb_enc_asciicompat.exit88, label %rb_enc_asciicompat.exit88.thread

rb_enc_asciicompat.exit88:                        ; preds = %RSTRING_END.exit83
  br i1 %i.dm, label %.lr.ph118, label %._crit_edge119.thread

rb_enc_asciicompat.exit88.thread:                 ; preds = %RSTRING_END.exit83
  br i1 %i.dm, label %.lr.ph118.split.preheader, label %._crit_edge119.thread

.lr.ph118:                                        ; preds = %rb_enc_asciicompat.exit88
  %i.dn = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %.053.lcssa) #32
  %.not3.i87 = icmp eq i32 %i.dn, 0
  br i1 %.not3.i87, label %.lr.ph118.split.us, label %.lr.ph118.split.preheader

.lr.ph118.split.preheader:                        ; preds = %rb_enc_asciicompat.exit88.thread, %.lr.ph118
  %.pre = load i64, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %.pre128 = load i64, ptr %i.c, align 8, !tbaa !27 ; 4 uses
  %.not.i89 = icmp eq i64 %.pre, 0
  %.not20.i = icmp eq i64 %.pre128, 0
  %.not19.i = icmp eq i64 %.pre128, 0
  br label %.lr.ph118.split

.lr.ph118.split.us:                               ; preds = %.lr.ph118, %bb.ae
  %.5117.us = phi i64 [ %.8.us, %bb.ae ], [ 0, %.lr.ph118 ] ; 4 uses
  %.158116.us = phi ptr [ %.259.us, %bb.ae ], [ %i.de, %.lr.ph118 ] ; 4 uses
  %i.do = load i8, ptr %.158116.us, align 1, !tbaa !20 ; 2 uses
  %i.dp = icmp sgt i8 %i.do, -1
  br i1 %i.dp, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %.lr.ph118.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.dq = call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.158116.us, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.f, ptr noundef nonnull %.053.lcssa) #28 ; 2 uses
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.ds = load i64, ptr %i.c, align 8, !tbaa !27  ; 4 uses
  %i.dt = icmp ult i32 %i.dq, 256
  %i.du = zext i32 %i.dq to i64                   ; 2 uses
  br i1 %i.dt, label %tr_find.exit.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dv = shl nuw nsw i64 %i.du, 1
  %i.dw = or disjoint i64 %i.dv, 1                ; 3 uses
  %.not.i89.us = icmp eq i64 %i.dr, 0
  br i1 %.not.i89.us, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = call i64 @rb_hash_lookup(i64 noundef %i.dr, i64 noundef %i.dw) #28
  %i.dy = icmp eq i64 %i.dx, 4
  br i1 %i.dy, label %tr_find.exit.us, label %bb.y
end_hunk_3
begin_hunk_4_@rb_str_delete_bang:bb.a
tr_find.exit.thread:                              ; preds = %bb.r, %bb.s, %tr_find.exit, %bb.w
  %.263 = phi ptr [ %i.bn, %bb.w ], [ %.06190, %tr_find.exit ], [ %.06190, %bb.s ], [ %.06190, %bb.r ]
  %.260 = phi i32 [ %.05891, %bb.w ], [ 1, %tr_find.exit ], [ 1, %bb.s ], [ 1, %bb.r ]
  %.1 = phi i32 [ %spec.store.select, %bb.w ], [ %.05493, %tr_find.exit ], [ %.05493, %bb.s ], [ %.05493, %bb.r ]
  %i.bp = load i32, ptr %i.e, align 4, !tbaa !7
  %i.bq = sext i32 %i.bp to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.k, %tr_find.exit.thread
  %.sink = phi i64 [ %i.bq, %tr_find.exit.thread ], [ 1, %bb.k ], [ 1, %bb.n ]
  %.364 = phi ptr [ %.263, %tr_find.exit.thread ], [ %.06190, %bb.k ], [ %i.at, %bb.n ] ; 2 uses
  %.3 = phi i32 [ %.260, %tr_find.exit.thread ], [ 1, %bb.k ], [ %.05891, %bb.n ] ; 2 uses
  %.2 = phi i32 [ %.1, %tr_find.exit.thread ], [ %.05493, %bb.k ], [ %.05493, %bb.n ] ; 2 uses
  %i.br = getelementptr i8, ptr %.05592, i64 %.sink ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.bs = icmp ult ptr %i.br, %i.ak
  br i1 %i.bs, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !222

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre = load i64, ptr %i.f, align 8, !tbaa !11
  %i.bt = icmp eq i32 %.3, 0
  %i.bu = select i1 %i.bt, i64 4, i64 %2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %RSTRING_END.exit
  %i.bv = phi i64 [ %i.af, %RSTRING_END.exit ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.061.lcssa = phi ptr [ %i.ai, %RSTRING_END.exit ], [ %.364, %._crit_edge.loopexit ] ; 4 uses
  %.058.lcssa = phi i64 [ 4, %RSTRING_END.exit ], [ %i.bu, %._crit_edge.loopexit ]
  %.054.lcssa = phi i32 [ %i.al, %RSTRING_END.exit ], [ %.2, %._crit_edge.loopexit ]
  %i.bw = and i64 %i.bv, 532676608
  %switch.i.i = icmp samesign ult i64 %i.bw, 12582912
  br i1 %switch.i.i, label %.thread, label %bb.y

.thread:                                          ; preds = %._crit_edge
  store i8 0, ptr %.061.lcssa, align 1, !tbaa !20
  br label %bb.ac

bb.y:                                             ; preds = %._crit_edge
  %i.bx = trunc i64 %i.bv to i32
  %i.by = lshr i32 %i.bx, 22
  %i.bz = and i32 %i.by, 127                      ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 127
  br i1 %i.ca, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cb = call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i79 = phi i32 [ %i.cb, %bb.z ], [ %i.bz, %bb.y ]
  %i.cc = call ptr @rb_enc_from_index(i32 noundef %.0.i79) #28
  %i.cd = getelementptr i8, ptr %i.cc, i64 20
  %.val = load i32, ptr %i.cd, align 4, !tbaa !16 ; 2 uses
  store i8 0, ptr %.061.lcssa, align 1, !tbaa !20
  %i.ce = icmp sgt i32 %.val, 1
  br i1 %i.ce, label %bb.ab, label %bb.ac, !prof !21

bb.ab:                                            ; preds = %bb.aa
  %i.cf = zext nneg i32 %.val to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.061.lcssa, i8 noundef 0, i64 noundef %i.cf, i1 noundef false) #28
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.ab, %bb.aa
  %i.cg = load i64, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %i.ch = and i64 %i.cg, 8192
  %.not.i80 = icmp eq i64 %i.ch, 0
  br i1 %.not.i80, label %RSTRING_PTR.exit81, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !20
  br label %RSTRING_PTR.exit81

RSTRING_PTR.exit81:                               ; preds = %bb.ac, %bb.ad
  %i.cj = phi ptr [ %i.ci, %bb.ad ], [ %i.l, %bb.ac ]
  %i.ck = ptrtoint ptr %.061.lcssa to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.g, align 8, !tbaa !14
  %i.cn = and i64 %i.cg, -3145729
  %i.co = zext i32 %.054.lcssa to i64
  %i.cp = or i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.f, align 8, !tbaa !11
  br label %bb.ae

bb.ae:                                            ; preds = %RSTRING_PTR.exit81, %bb.a, %RSTRING_PTR.exit
  %.0 = phi i64 [ 4, %bb.a ], [ %.058.lcssa, %RSTRING_PTR.exit81 ], [ 4, %RSTRING_PTR.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_squeeze_bang(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 0, ptr %i.c, align 8, !tbaa !27
  %i.f = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %2)
  %i.g = zext i1 %i.f to i32                      ; 3 uses
  %i.h = icmp eq i32 %0, 0
  br i1 %i.h, label %bb.b, label %.preheader130

.preheader130:                                    ; preds = %bb.a
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit131

.lr.ph.preheader:                                 ; preds = %.preheader130
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %2 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = trunc i64 %i.k to i32
  %i.m = lshr i32 %i.l, 22
  %i.n = and i32 %i.m, 127                        ; 2 uses
  %i.o = icmp eq i32 %i.n, 127
  br i1 %i.o, label %bb.c, label %get_encoding.exit

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.p, %bb.c ], [ %i.n, %bb.b ]
  %i.q = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28
  br label %.loopexit131

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.075133 = phi i32 [ %i.g, %.lr.ph.preheader ], [ %.176, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.r = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27
  store i64 %i.s, ptr %i.d, align 8, !tbaa !27
  %.0..0..0. = load volatile i64, ptr %i.d, align 8, !tbaa !27 ; 5 uses
  %i.t = icmp eq i64 %.0..0..0., 0
  %i.u = and i64 %.0..0..0., 7
  %i.v = icmp ne i64 %i.u, 0
  %i.w = or i1 %i.t, %i.v
  br i1 %i.w, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %.lr.ph
  %i.x = inttoptr i64 %.0..0..0. to ptr
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = and i64 %i.y, 31
  %i.aa = icmp eq i64 %i.z, 5
  br i1 %i.aa, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %.lr.ph
  %i.ab = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.ab, ptr %i.d, align 8, !tbaa !27
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0..0.113 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.ab, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 3 uses
  %i.ac = tail call ptr @rb_enc_check(i64 noundef %2, i64 noundef %.0..0.113) #28 ; 2 uses
  %.not = icmp eq i32 %.075133, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_string_value.exit
  %i.ad = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %.0..0.113)
  %spec.select = zext i1 %i.ad to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rb_string_value.exit
  %.176 = phi i32 [ %spec.select, %bb.d ], [ 0, %rb_string_value.exit ] ; 2 uses
  %i.ae = icmp eq i64 %indvars.iv, 0
  %i.af = zext i1 %i.ae to i32
  call fastcc void @tr_setup_table(i64 noundef %.0..0.113, ptr noundef %i.a, i32 noundef %i.af, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit131, label %.lr.ph, !llvm.loop !223

.loopexit131:                                     ; preds = %bb.e, %.preheader130, %get_encoding.exit
  %.277 = phi i32 [ %i.g, %get_encoding.exit ], [ %i.g, %.preheader130 ], [ %.176, %bb.e ]
  %.1 = phi ptr [ %i.q, %get_encoding.exit ], [ null, %.preheader130 ], [ %i.ac, %bb.e ] ; 5 uses
  tail call fastcc void @str_modify_keep_cr(i64 noundef %2)
  %i.ag = inttoptr i64 %2 to ptr                  ; 5 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.ai = and i64 %i.ah, 8192
  %.not.i = icmp eq i64 %i.ai, 0                  ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 24     ; 6 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit131
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %.loopexit131, %bb.f
  %i.al = phi ptr [ %i.ak, %bb.f ], [ %i.aj, %.loopexit131 ] ; 15 uses
  %3 = ptrtoaddr ptr %i.al to i64                 ; 3 uses
  %.not93 = icmp eq ptr %i.al, null
  br i1 %.not93, label %bb.av, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit
  %i.am = getelementptr i8, ptr %i.ag, i64 16     ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !14 ; 5 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.av, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.h, %bb.i
  %i.aq = phi ptr [ %i.ap, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %4 = ptrtoaddr ptr %i.aq to i64                 ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.an  ; 3 uses
  %i.as = getelementptr i8, ptr %.1, i64 20
  %.val.i = load i32, ptr %i.as, align 4, !tbaa !16
  %.not.i105 = icmp eq i32 %.val.i, 1
  br i1 %.not.i105, label %bb.j, label %rb_enc_asciicompat.exit

bb.j:                                             ; preds = %RSTRING_END.exit
  %i.at = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %.1) #32
  %.not3.i = icmp eq i32 %i.at, 0
  br label %rb_enc_asciicompat.exit

rb_enc_asciicompat.exit:                          ; preds = %RSTRING_END.exit, %bb.j
  %.0.i106 = phi i1 [ false, %RSTRING_END.exit ], [ %.not3.i, %bb.j ]
  %.not94 = icmp eq i32 %.277, 0
  %i.au = icmp ult ptr %i.al, %i.ar               ; 2 uses
  br i1 %.not94, label %.preheader, label %.preheader128

.preheader128:                                    ; preds = %rb_enc_asciicompat.exit
  br i1 %i.au, label %.lr.ph138, label %.loopexit

.lr.ph138:                                        ; preds = %.preheader128
  %i.av = icmp sgt i32 %0, 0
  %i.aw = add i64 %i.an, %4
  %i.ax = sub i64 %i.aw, %3                       ; 5 uses
  br i1 %i.av, label %.lr.ph138.split.us.preheader, label %.lr.ph138.split.preheader

.lr.ph138.split.preheader:                        ; preds = %.lr.ph138
  %i.ay = add i64 %i.an, %4
  %xtraiter = and i64 %i.ax, 3                    ; 3 uses
  %i.az = sub i64 %3, %i.ay
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %.lr.ph138.split.epil.preheader, label %.lr.ph138.split.preheader.new

.lr.ph138.split.preheader.new:                    ; preds = %.lr.ph138.split.preheader
  %unroll_iter = and i64 %i.ax, -4
  br label %.lr.ph138.split

.lr.ph138.split.us.preheader:                     ; preds = %.lr.ph138
  %i.bb = add i64 %i.an, %4
  %.neg = add i64 %3, 1
  %xtraiter176 = and i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.bb, %.neg
  br i1 %i.bc, label %.lr.ph138.split.us.epil.preheader, label %.lr.ph138.split.us.preheader.new

.lr.ph138.split.us.preheader.new:                 ; preds = %.lr.ph138.split.us.preheader
  %unroll_iter181 = and i64 %i.ax, -2
  br label %.lr.ph138.split.us

.lr.ph138.split.us:                               ; preds = %bb.o, %.lr.ph138.split.us.preheader.new
  %.070137.us = phi ptr [ %i.al, %.lr.ph138.split.us.preheader.new ], [ %i.bk, %bb.o ] ; 3 uses
  %.072136.us = phi i32 [ -1, %.lr.ph138.split.us.preheader.new ], [ %.173.us.1, %bb.o ] ; 2 uses
  %.078135.us = phi ptr [ %i.al, %.lr.ph138.split.us.preheader.new ], [ %.179.us.1, %bb.o ] ; 3 uses
  %niter182 = phi i64 [ 0, %.lr.ph138.split.us.preheader.new ], [ %niter182.next.1, %bb.o ]
  %i.bd = getelementptr i8, ptr %.070137.us, i64 1
  %i.be = load i8, ptr %.070137.us, align 1, !tbaa !20 ; 3 uses
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %.not102.us = icmp eq i32 %.072136.us, %i.bf
  br i1 %.not102.us, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph138.split.us
  %i.bg = zext i8 %i.be to i64
  %i.bh = getelementptr i8, ptr %i.a, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !20
  %.not103.us = icmp eq i8 %i.bi, 0
  br i1 %.not103.us, label %bb.l, label %.lr.ph138.split.us.1

bb.l:                                             ; preds = %bb.k, %.lr.ph138.split.us
  %i.bj = getelementptr i8, ptr %.078135.us, i64 1
  store i8 %i.be, ptr %.078135.us, align 1, !tbaa !20
  br label %.lr.ph138.split.us.1

.lr.ph138.split.us.1:                             ; preds = %bb.l, %bb.k
  %.179.us = phi ptr [ %i.bj, %bb.l ], [ %.078135.us, %bb.k ] ; 3 uses
  %.173.us = phi i32 [ %i.bf, %bb.l ], [ %.072136.us, %bb.k ] ; 2 uses
  %i.bk = getelementptr i8, ptr %.070137.us, i64 2 ; 2 uses
  %i.bl = load i8, ptr %i.bd, align 1, !tbaa !20  ; 3 uses
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %.not102.us.1 = icmp eq i32 %.173.us, %i.bm
  br i1 %.not102.us.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph138.split.us.1
  %i.bn = zext i8 %i.bl to i64
  %i.bo = getelementptr i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !20
  %.not103.us.1 = icmp eq i8 %i.bp, 0
  br i1 %.not103.us.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %.lr.ph138.split.us.1
  %i.bq = getelementptr i8, ptr %.179.us, i64 1
  store i8 %i.bl, ptr %.179.us, align 1, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.179.us.1 = phi ptr [ %i.bq, %bb.n ], [ %.179.us, %bb.m ] ; 3 uses
  %.173.us.1 = phi i32 [ %i.bm, %bb.n ], [ %.173.us, %bb.m ] ; 2 uses
  %niter182.next.1 = add i64 %niter182, 2         ; 2 uses
  %niter182.ncmp.1 = icmp eq i64 %niter182.next.1, %unroll_iter181
  br i1 %niter182.ncmp.1, label %.loopexit.loopexit172.unr-lcssa, label %.lr.ph138.split.us, !llvm.loop !224

.preheader:                                       ; preds = %rb_enc_asciicompat.exit
  br i1 %i.au, label %.lr.ph143, label %.loopexit

.lr.ph143:                                        ; preds = %.preheader
  %i.br = icmp sgt i32 %0, 0                      ; 2 uses
  %i.bs = getelementptr i8, ptr %.1, i64 48
  br label %bb.u

.lr.ph138.split:                                  ; preds = %bb.t, %.lr.ph138.split.preheader.new
  %.070137 = phi ptr [ %i.al, %.lr.ph138.split.preheader.new ], [ %i.cf, %bb.t ] ; 5 uses
  %.072136 = phi i32 [ -1, %.lr.ph138.split.preheader.new ], [ %.173.3, %bb.t ] ; 2 uses
  %.078135 = phi ptr [ %i.al, %.lr.ph138.split.preheader.new ], [ %.179.3, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph138.split.preheader.new ], [ %niter.next.3, %bb.t ]
  %i.bt = getelementptr i8, ptr %.070137, i64 1
  %i.bu = load i8, ptr %.070137, align 1, !tbaa !20 ; 2 uses
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %.not102 = icmp eq i32 %.072136, %i.bv
  br i1 %.not102, label %.lr.ph138.split.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph138.split
  %i.bw = getelementptr i8, ptr %.078135, i64 1
  store i8 %i.bu, ptr %.078135, align 1, !tbaa !20
  br label %.lr.ph138.split.1

.lr.ph138.split.1:                                ; preds = %.lr.ph138.split, %bb.p
  %.179 = phi ptr [ %i.bw, %bb.p ], [ %.078135, %.lr.ph138.split ] ; 3 uses
  %.173 = phi i32 [ %i.bv, %bb.p ], [ %.072136, %.lr.ph138.split ] ; 2 uses
  %i.bx = getelementptr i8, ptr %.070137, i64 2
  %i.by = load i8, ptr %i.bt, align 1, !tbaa !20  ; 2 uses
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %.not102.1 = icmp eq i32 %.173, %i.bz
  br i1 %.not102.1, label %.lr.ph138.split.2, label %bb.q

bb.q:                                             ; preds = %.lr.ph138.split.1
  %i.ca = getelementptr i8, ptr %.179, i64 1
  store i8 %i.by, ptr %.179, align 1, !tbaa !20
  br label %.lr.ph138.split.2

.lr.ph138.split.2:                                ; preds = %bb.q, %.lr.ph138.split.1
  %.179.1 = phi ptr [ %i.ca, %bb.q ], [ %.179, %.lr.ph138.split.1 ] ; 3 uses
  %.173.1 = phi i32 [ %i.bz, %bb.q ], [ %.173, %.lr.ph138.split.1 ] ; 2 uses
  %i.cb = getelementptr i8, ptr %.070137, i64 3
  %i.cc = load i8, ptr %i.bx, align 1, !tbaa !20  ; 2 uses
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %.not102.2 = icmp eq i32 %.173.1, %i.cd
  br i1 %.not102.2, label %.lr.ph138.split.3, label %bb.r

bb.r:                                             ; preds = %.lr.ph138.split.2
  %i.ce = getelementptr i8, ptr %.179.1, i64 1
  store i8 %i.cc, ptr %.179.1, align 1, !tbaa !20
  br label %.lr.ph138.split.3

.lr.ph138.split.3:                                ; preds = %bb.r, %.lr.ph138.split.2
  %.179.2 = phi ptr [ %i.ce, %bb.r ], [ %.179.1, %.lr.ph138.split.2 ] ; 3 uses
  %.173.2 = phi i32 [ %i.cd, %bb.r ], [ %.173.1, %.lr.ph138.split.2 ] ; 2 uses
  %i.cf = getelementptr i8, ptr %.070137, i64 4   ; 2 uses
  %i.cg = load i8, ptr %i.cb, align 1, !tbaa !20  ; 2 uses
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %.not102.3 = icmp eq i32 %.173.2, %i.ch
  br i1 %.not102.3, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph138.split.3
  %i.ci = getelementptr i8, ptr %.179.2, i64 1
  store i8 %i.cg, ptr %.179.2, align 1, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph138.split.3
  %.179.3 = phi ptr [ %i.ci, %bb.s ], [ %.179.2, %.lr.ph138.split.3 ] ; 3 uses
  %.173.3 = phi i32 [ %i.ch, %bb.s ], [ %.173.2, %.lr.ph138.split.3 ] ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit173.unr-lcssa, label %.lr.ph138.split, !llvm.loop !224

bb.u:                                             ; preds = %.lr.ph143, %bb.al
  %.171142 = phi ptr [ %i.al, %.lr.ph143 ], [ %i.dm, %bb.al ] ; 4 uses
  %.274141 = phi i32 [ -1, %.lr.ph143 ], [ %.5, %bb.al ] ; 10 uses
  %.280140 = phi ptr [ %i.al, %.lr.ph143 ], [ %.583, %bb.al ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  br i1 %.0.i106, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.cj = load i8, ptr %.171142, align 1, !tbaa !20 ; 4 uses
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = icmp sgt i8 %i.cj, -1
  br i1 %i.cl, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %.not98 = icmp eq i32 %.274141, %i.ck
  br i1 %.not98, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %i.br, label %bb.y, label %bb.al

bb.y:                                             ; preds = %bb.x
  %i.cm = zext nneg i8 %i.cj to i64
  %i.cn = getelementptr i8, ptr %i.a, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !20
  %.not99 = icmp eq i8 %i.co, 0
  br i1 %.not99, label %bb.z, label %bb.al

bb.z:                                             ; preds = %bb.y, %bb.w
end_hunk_4
begin_hunk_5_@rstrip_offset_table:bb.a
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = and i32 %i.f, 3145728                    ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %rb_enc_str_coderange.exit

bb.c:                                             ; preds = %rb_str_check_dummy_enc.exit
  %i.i = lshr i32 %i.f, 22
  %i.j = and i32 %i.i, 127                        ; 2 uses
  %i.k = icmp eq i32 %i.j, 127
  br i1 %i.k, label %bb.d, label %get_encoding.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit.i

get_encoding.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi i32 [ %i.l, %bb.d ], [ %i.j, %bb.c ]
  %i.m = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i) #28
  %i.n = load i64, ptr %i.d, align 8, !tbaa !11
  %i.o = and i64 %i.n, 8192
  %.not.i.i.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %enc_coderange_scan.exit.i, label %bb.e

bb.e:                                             ; preds = %get_encoding.exit.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i

enc_coderange_scan.exit.i:                        ; preds = %bb.e, %get_encoding.exit.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ %i.p, %get_encoding.exit.i ]
  %i.s = getelementptr i8, ptr %i.d, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.r, i64 noundef %i.t, ptr noundef %i.m) ; 2 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !11
  %i.w = and i64 %i.v, -3145729
  %i.x = zext nneg i32 %i.u to i64
  %i.y = or i64 %i.w, %i.x
  store i64 %i.y, ptr %i.d, align 8, !tbaa !11
  br label %rb_enc_str_coderange.exit

rb_enc_str_coderange.exit:                        ; preds = %rb_str_check_dummy_enc.exit, %enc_coderange_scan.exit.i
  %.0.i = phi i32 [ %i.u, %enc_coderange_scan.exit.i ], [ %i.g, %rb_str_check_dummy_enc.exit ]
  %i.z = icmp eq i32 %.0.i, 3145728
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_enc_str_coderange.exit
  %i.aa = load i64, ptr @rb_eEncCompatError, align 8, !tbaa !27
  %i.ab = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !42
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.204, ptr noundef %.val) #30
  unreachable

bb.g:                                             ; preds = %rb_enc_str_coderange.exit
  %.not = icmp ne ptr %1, null
  %.not27 = icmp ult ptr %1, %2
  %or.cond = and i1 %.not, %.not27
  br i1 %or.cond, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.g
  %i.ac = tail call ptr @onigenc_get_prev_char_head(ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %2) #28 ; 6 uses
  %.not2834 = icmp eq ptr %i.ac, null
  br i1 %.not2834, label %tr_find.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not.i30 = icmp eq i64 %5, 0
  %.not19.i = icmp eq i64 %6, 0                   ; 2 uses
  br i1 %.not.i30, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not19.i, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.ad = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %i.ac, ptr noundef nonnull %2, ptr noundef null, ptr noundef %3) #28
  %narrow81 = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 256)
  %spec.select82 = zext nneg i32 %narrow81 to i64
  %i.ae = getelementptr i8, ptr %4, i64 %spec.select82
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20
  %.not21.i.not.us.us83 = icmp eq i8 %i.af, 0
  br i1 %.not21.i.not.us.us83, label %tr_find.exit.thread, label %.backedge.us.us

.lr.ph.split.us.split.us:                         ; preds = %.backedge.us.us
  %i.ag = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %i.ak, ptr noundef nonnull %2, ptr noundef null, ptr noundef %3) #28
  %narrow = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 256)
  %spec.select = zext nneg i32 %narrow to i64
  %i.ah = getelementptr i8, ptr %4, i64 %spec.select
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20
  %.not21.i.not.us.us = icmp eq i8 %i.ai, 0
  br i1 %.not21.i.not.us.us, label %tr_find.exit.thread, label %.backedge.us.us

.backedge.us.us:                                  ; preds = %.lr.ph.split.us.split.us.preheader, %.lr.ph.split.us.split.us
  %i.aj = phi ptr [ %i.ak, %.lr.ph.split.us.split.us ], [ %i.ac, %.lr.ph.split.us.split.us.preheader ] ; 3 uses
  %i.ak = tail call ptr @onigenc_get_prev_char_head(ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull %i.aj, ptr noundef nonnull %2) #28 ; 3 uses
  %.not28.us.us = icmp eq ptr %i.ak, null
  br i1 %.not28.us.us, label %tr_find.exit.thread, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.backedge.us
  %i.al = phi ptr [ %i.av, %.backedge.us ], [ %i.ac, %.lr.ph.split.us ] ; 4 uses
  %.02335.us = phi ptr [ %i.al, %.backedge.us ], [ %2, %.lr.ph.split.us ] ; 2 uses
  %i.am = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %i.al, ptr noundef nonnull %2, ptr noundef null, ptr noundef %3) #28 ; 2 uses
  %i.an = icmp ult i32 %i.am, 256
  %i.ao = zext i32 %i.am to i64                   ; 2 uses
  br i1 %i.an, label %.sink.split.i.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.split
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = or disjoint i64 %i.ap, 1
  %i.ar = tail call i64 @rb_hash_lookup(i64 noundef %6, i64 noundef %i.aq) #28
  %i.as = icmp eq i64 %i.ar, 4
  br i1 %i.as, label %.sink.split.i.us, label %tr_find.exit.thread

.sink.split.i.us:                                 ; preds = %bb.h, %.lr.ph.split.us.split
  %.sink.i.us = phi i64 [ %i.ao, %.lr.ph.split.us.split ], [ 256, %bb.h ]
  %i.at = getelementptr i8, ptr %4, i64 %.sink.i.us
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20
  %.not21.i.not.us = icmp eq i8 %i.au, 0
  br i1 %.not21.i.not.us, label %tr_find.exit.thread, label %.backedge.us

.backedge.us:                                     ; preds = %.sink.split.i.us
  %i.av = tail call ptr @onigenc_get_prev_char_head(ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull %i.al, ptr noundef nonnull %2) #28 ; 2 uses
  %.not28.us = icmp eq ptr %i.av, null
  br i1 %.not28.us, label %tr_find.exit.thread, label %.lr.ph.split.us.split

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not19.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.backedge.us45
  %i.aw = phi ptr [ %i.bg, %.backedge.us45 ], [ %i.ac, %.lr.ph.split ] ; 4 uses
  %.02335.us41 = phi ptr [ %i.aw, %.backedge.us45 ], [ %2, %.lr.ph.split ]
  %i.ax = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %i.aw, ptr noundef nonnull %2, ptr noundef null, ptr noundef %3) #28 ; 2 uses
  %i.ay = icmp ult i32 %i.ax, 256
  %i.az = zext i32 %i.ax to i64                   ; 2 uses
  br i1 %i.ay, label %.sink.split.i.us42, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split.us
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = or disjoint i64 %i.ba, 1
  %i.bc = tail call i64 @rb_hash_lookup(i64 noundef %5, i64 noundef %i.bb) #28
  %i.bd = icmp eq i64 %i.bc, 4
  br i1 %i.bd, label %.sink.split.i.us42, label %.backedge.us45

.sink.split.i.us42:                               ; preds = %bb.i, %.lr.ph.split.split.us
  %.sink.i.us43 = phi i64 [ %i.az, %.lr.ph.split.split.us ], [ 256, %bb.i ]
  %i.be = getelementptr i8, ptr %4, i64 %.sink.i.us43
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20
  %.not21.i.not.us44 = icmp eq i8 %i.bf, 0
  br i1 %.not21.i.not.us44, label %tr_find.exit.thread, label %.backedge.us45

.backedge.us45:                                   ; preds = %bb.i, %.sink.split.i.us42
  %i.bg = tail call ptr @onigenc_get_prev_char_head(ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull %i.aw, ptr noundef nonnull %2) #28 ; 2 uses
  %.not28.us46 = icmp eq ptr %i.bg, null
  br i1 %.not28.us46, label %tr_find.exit.thread, label %.lr.ph.split.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.backedge
  %i.bh = phi ptr [ %i.bt, %.backedge ], [ %i.ac, %.lr.ph.split ] ; 4 uses
  %.02335 = phi ptr [ %i.bh, %.backedge ], [ %2, %.lr.ph.split ]
  %i.bi = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %i.bh, ptr noundef nonnull %2, ptr noundef null, ptr noundef %3) #28 ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 256
  %i.bk = zext i32 %i.bi to i64                   ; 2 uses
  br i1 %i.bj, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.split
  %i.bl = shl nuw nsw i64 %i.bk, 1
  %i.bm = or disjoint i64 %i.bl, 1                ; 2 uses
  %i.bn = tail call i64 @rb_hash_lookup(i64 noundef %5, i64 noundef %i.bm) #28
  %i.bo = icmp eq i64 %i.bn, 4
  br i1 %i.bo, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = tail call i64 @rb_hash_lookup(i64 noundef %6, i64 noundef %i.bm) #28
  %i.bq = icmp eq i64 %i.bp, 4
  br i1 %i.bq, label %.backedge, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.j, %.lr.ph.split.split
  %.sink.i = phi i64 [ %i.bk, %.lr.ph.split.split ], [ 256, %bb.j ], [ 256, %bb.k ]
  %i.br = getelementptr i8, ptr %4, i64 %.sink.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !20
  %.not21.i.not = icmp eq i8 %i.bs, 0
  br i1 %.not21.i.not, label %tr_find.exit.thread, label %.backedge

.backedge:                                        ; preds = %bb.k, %.sink.split.i
  %i.bt = tail call ptr @onigenc_get_prev_char_head(ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull %i.bh, ptr noundef nonnull %2) #28 ; 2 uses
  %.not28 = icmp eq ptr %i.bt, null
  br i1 %.not28, label %tr_find.exit.thread, label %.lr.ph.split.split

tr_find.exit.thread:                              ; preds = %.backedge, %.sink.split.i, %.backedge.us45, %.sink.split.i.us42, %.backedge.us, %.sink.split.i.us, %bb.h, %.lr.ph.split.us.split.us, %.backedge.us.us, %.lr.ph.split.us.split.us.preheader, %.preheader
  %.023.lcssa = phi ptr [ %2, %.preheader ], [ %i.aw, %.backedge.us45 ], [ %i.aj, %.lr.ph.split.us.split.us ], [ %2, %.lr.ph.split.us.split.us.preheader ], [ %.02335.us, %bb.h ], [ %i.aj, %.backedge.us.us ], [ %.02335.us, %.sink.split.i.us ], [ %i.al, %.backedge.us ], [ %.02335.us41, %.sink.split.i.us42 ], [ %.02335, %.sink.split.i ], [ %i.bh, %.backedge ]
  %i.bu = ptrtoint ptr %2 to i64
  %i.bv = ptrtoint ptr %.023.lcssa to i64
  %i.bw = sub i64 %i.bu, %i.bv
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %tr_find.exit.thread
  %.0 = phi i64 [ %i.bw, %tr_find.exit.thread ], [ 0, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rstrip_offset(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %4 = ptrtoaddr ptr %1 to i64
  %i.b = tail call i32 @rb_enc_dummy_p(ptr noundef readonly %3) #32
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %rb_str_check_dummy_enc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eEncCompatError, align 8, !tbaa !27
  %i.d = getelementptr i8, ptr %3, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !42
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.246, ptr noundef %.val.i) #30
  unreachable

rb_str_check_dummy_enc.exit:                      ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = and i32 %i.g, 3145728                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %rb_enc_str_coderange.exit

bb.c:                                             ; preds = %rb_str_check_dummy_enc.exit
  %i.j = lshr i32 %i.g, 22
  %i.k = and i32 %i.j, 127                        ; 2 uses
  %i.l = icmp eq i32 %i.k, 127
  br i1 %i.l, label %bb.d, label %get_encoding.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit.i

get_encoding.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi i32 [ %i.m, %bb.d ], [ %i.k, %bb.c ]
  %i.n = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i) #28
  %i.o = load i64, ptr %i.e, align 8, !tbaa !11
  %i.p = and i64 %i.o, 8192
  %.not.i.i.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %enc_coderange_scan.exit.i, label %bb.e

bb.e:                                             ; preds = %get_encoding.exit.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i

enc_coderange_scan.exit.i:                        ; preds = %bb.e, %get_encoding.exit.i
  %i.s = phi ptr [ %i.r, %bb.e ], [ %i.q, %get_encoding.exit.i ]
  %i.t = getelementptr i8, ptr %i.e, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %i.v = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.s, i64 noundef %i.u, ptr noundef %i.n) ; 2 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !11
  %i.x = and i64 %i.w, -3145729
  %i.y = zext nneg i32 %i.v to i64
  %i.z = or i64 %i.x, %i.y
  store i64 %i.z, ptr %i.e, align 8, !tbaa !11
  br label %rb_enc_str_coderange.exit

rb_enc_str_coderange.exit:                        ; preds = %rb_str_check_dummy_enc.exit, %enc_coderange_scan.exit.i
  %.0.i = phi i32 [ %i.v, %enc_coderange_scan.exit.i ], [ %i.h, %rb_str_check_dummy_enc.exit ]
  %i.aa = icmp eq i32 %.0.i, 3145728
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_enc_str_coderange.exit
  %i.ab = load i64, ptr @rb_eEncCompatError, align 8, !tbaa !27
  %i.ac = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !42
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.204, ptr noundef %.val) #30
  unreachable

bb.g:                                             ; preds = %rb_enc_str_coderange.exit
  %.not = icmp ne ptr %1, null
  %.not34 = icmp ult ptr %1, %2
  %or.cond = and i1 %.not, %.not34
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %0)
  br i1 %i.ad, label %.lr.ph50.preheader, label %.preheader43

.preheader43:                                     ; preds = %bb.h
  %i.ae = tail call ptr @onigenc_get_prev_char_head(ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %2) #28 ; 2 uses
  %.not3545 = icmp eq ptr %i.ae, null
  br i1 %.not3545, label %.critedge, label %.lr.ph

.lr.ph50.preheader:                               ; preds = %bb.h
  %i.af = sub i64 %4, %i.a
  %scevgep = getelementptr i8, ptr %2, i64 %i.af
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %.critedge2
  %.02849 = phi ptr [ %i.ag, %.critedge2 ], [ %2, %.lr.ph50.preheader ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.02849, i64 -1   ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %.lr.ph50
  %i.aj = zext i8 %i.ah to i64
  %i.ak = getelementptr i8, ptr @isspacetable, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !20
  %.not38 = icmp eq i8 %i.al, 0
  br i1 %.not38, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph50, %bb.i
  %i.am = icmp ult ptr %1, %i.ag
  br i1 %i.am, label %.lr.ph50, label %.critedge, !llvm.loop !264

.lr.ph:                                           ; preds = %.preheader43, %bb.j
  %i.an = phi ptr [ %i.ap, %bb.j ], [ %i.ae, %.preheader43 ] ; 4 uses
  %.146 = phi ptr [ %i.an, %bb.j ], [ %2, %.preheader43 ]
  %i.ao = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %i.an, ptr noundef nonnull %2, ptr noundef null, ptr noundef %3) #28
  switch i32 %i.ao, label %.critedge [
    i32 0, label %bb.j
    i32 32, label %bb.j
    i32 13, label %bb.j
    i32 12, label %bb.j
    i32 11, label %bb.j
    i32 10, label %bb.j
    i32 9, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.ap = tail call ptr @onigenc_get_prev_char_head(ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull %i.an, ptr noundef nonnull %2) #28 ; 2 uses
  %.not35 = icmp eq ptr %i.ap, null
  br i1 %.not35, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.j, %.lr.ph, %.critedge2, %bb.i, %.preheader43
  %.4 = phi ptr [ %2, %.preheader43 ], [ %.02849, %bb.i ], [ %scevgep, %.critedge2 ], [ %i.an, %bb.j ], [ %.146, %.lr.ph ]
  %i.aq = ptrtoint ptr %.4 to i64
  %i.ar = sub i64 %i.a, %i.aq
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %.critedge
  %.0 = phi i64 [ %i.ar, %.critedge ], [ 0, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tr_setup_table(i64 noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 20 uses
  %6 = alloca %struct.tr, align 8                 ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = and i64 %i.d, 8192
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !265
  %i.j = getelementptr i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = getelementptr i8, ptr %i.h, i64 %i.k     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !267
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.n, align 8, !tbaa !268
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !269
  store i32 0, ptr %6, align 8, !tbaa !270
  %i.p = icmp sgt i64 %i.k, 1
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.q = call i32 @rb_enc_ascget(ptr noundef %i.h, ptr noundef %i.l, ptr noundef nonnull %i.b, ptr noundef %5) #28
  %i.r = icmp eq i32 %i.q, 94
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.b, align 4, !tbaa !7
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.h, i64 %i.t
  store ptr %i.u, ptr %i.i, align 8, !tbaa !265
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %RSTRING_PTR.exit
  %i.v = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %RSTRING_PTR.exit ] ; 3 uses
  %.not69 = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %RSTRING_PTR.exit ] ; 2 uses
  %.055 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %RSTRING_PTR.exit ] ; 3 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.f, label %.preheader85.preheader

.preheader85.preheader:                           ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %1, i8 1, i64 256, i1 false), !tbaa !20
  %i.w = trunc nuw nsw i32 %.055 to i8
  %i.x = getelementptr i8, ptr %1, i64 256
  store i8 %i.w, ptr %i.x, align 1, !tbaa !20
  br label %.preheader84

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %1, i64 256        ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20
end_hunk_5
