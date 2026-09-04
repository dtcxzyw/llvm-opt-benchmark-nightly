Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/vset?download=true
inline.NumInlined: 130
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@VRANGE_RedisCommand:bb.a
.thread80:                                        ; preds = %bb.k, %thread-pre-split.i51, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.an = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !24
  %i.ao = call i32 %i.an(ptr noundef %0, ptr noundef nonnull @.str.91) #22
  br label %bb.y

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.1156.0 = phi ptr [ %i.al, %bb.n ], [ null, %bb.m ] ; 2 uses
  %.sroa.14.0 = phi i64 [ %i.am, %bb.n ], [ 0, %bb.m ] ; 4 uses
  %.sroa.0.0 = phi i1 [ %i.ak, %bb.n ], [ true, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.ac, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread88, %bb.o
  %i.ap = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !24
  %i.aq = call i32 %i.ap(ptr noundef %0, ptr noundef nonnull @.str.92) #22
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.ar = load ptr, ptr @RedisModule_OpenKey, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !80
  %i.au = call ptr %i.ar(ptr noundef %0, ptr noundef %i.at, i32 noundef 1) #22 ; 3 uses
  %i.av = load ptr, ptr @RedisModule_KeyType, align 8, !tbaa !24
  %i.aw = call i32 %i.av(ptr noundef %i.au) #22
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr @RedisModule_ReplyWithEmptyArray, align 8, !tbaa !24
  %i.az = call i32 %i.ay(ptr noundef %0) #22
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.ba = load ptr, ptr @RedisModule_ModuleTypeGetType, align 8, !tbaa !24
  %i.bb = call ptr %i.ba(ptr noundef %i.au) #22
  %i.bc = load ptr, ptr @VectorSetType, align 8, !tbaa !86
  %.not44 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !24
  %i.be = call i32 %i.bd(ptr noundef %0, ptr noundef nonnull @.str.50) #22
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr @RedisModule_ModuleTypeGetValue, align 8, !tbaa !24
  %i.bg = call ptr %i.bf(ptr noundef %i.au) #22
  %i.bh = load ptr, ptr @RedisModule_DictIteratorStartC, align 8, !tbaa !24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !66 ; 2 uses
  br i1 %.not45, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = call ptr %i.bh(ptr noundef %i.bj, ptr noundef nonnull @.str.93, ptr noundef null, i64 noundef 0) #22
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bl = call ptr %i.bh(ptr noundef %i.bj, ptr noundef nonnull %.sroa.057.0, ptr noundef %.sroa.1161.0, i64 noundef %.sroa.1462.0) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.038 = phi ptr [ %i.bk, %bb.v ], [ %i.bl, %bb.w ] ; 5 uses
  %i.bm = load ptr, ptr @RedisModule_ReplyWithArray, align 8, !tbaa !24
  %i.bn = call i32 %i.bm(ptr noundef %0, i64 noundef -1) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.bo = load ptr, ptr @RedisModule_DictNextC, align 8, !tbaa !24
  %i.bp = call ptr %i.bo(ptr noundef %.038, ptr noundef nonnull %i.d, ptr noundef null) #22 ; 4 uses
  %.not4799 = icmp eq ptr %i.bp, null
  br i1 %.not4799, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  br i1 %.not98, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %vsetIsElementInRange.exit.thread.us
  %i.bq = phi ptr [ %i.by, %vsetIsElementInRange.exit.thread.us ], [ %i.bp, %.lr.ph ]
  %.0100.us = phi i64 [ %i.bw, %vsetIsElementInRange.exit.thread.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.br = load i64, ptr %i.c, align 8, !tbaa !82  ; 2 uses
  %i.bs = icmp slt i64 %i.br, 0
  %.not48.us = icmp slt i64 %.0100.us, %i.br
  %or.cond50.us = select i1 %i.bs, i1 true, i1 %.not48.us
  br i1 %or.cond50.us, label %vsetIsElementInRange.exit.thread.us, label %._crit_edge

vsetIsElementInRange.exit.thread.us:              ; preds = %.lr.ph.split.us
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !59
  %i.bu = load ptr, ptr @RedisModule_ReplyWithStringBuffer, align 8, !tbaa !24
  %i.bv = call i32 %i.bu(ptr noundef %0, ptr noundef nonnull %i.bq, i64 noundef %i.bt) #22 ; 0 uses
  %i.bw = add nuw nsw i64 %.0100.us, 1            ; 2 uses
  %i.bx = load ptr, ptr @RedisModule_DictNextC, align 8, !tbaa !24
  %i.by = call ptr %i.bx(ptr noundef %.038, ptr noundef nonnull %i.d, ptr noundef null) #22 ; 2 uses
  %.not47.us = icmp eq ptr %i.by, null
  br i1 %.not47.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !154

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.sroa.0.0, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %vsetIsElementInRange.exit.thread.us108
  %i.bz = phi ptr [ %i.ci, %vsetIsElementInRange.exit.thread.us108 ], [ %i.bp, %.lr.ph.split ] ; 2 uses
  %.0100.us105 = phi i64 [ %i.cg, %vsetIsElementInRange.exit.thread.us108 ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !82  ; 2 uses
  %i.cb = icmp slt i64 %i.ca, 0
  %.not48.us106 = icmp slt i64 %.0100.us105, %i.ca
  %or.cond50.us107 = select i1 %i.cb, i1 true, i1 %.not48.us106
  br i1 %or.cond50.us107, label %vsetIsElementInRange.exit.us, label %._crit_edge

vsetIsElementInRange.exit.us:                     ; preds = %.lr.ph.split.split.us
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !59  ; 3 uses
  %..i.us = call i64 @llvm.umin.i64(i64 %i.cc, i64 %.sroa.14.0)
  %i.cd = call i32 @memcmp(ptr noundef nonnull readonly %i.bz, ptr noundef %.sroa.1156.0, i64 noundef %..i.us) #25 ; 2 uses
  %.not25.i.us = icmp eq i32 %i.cd, 0
  %.not49.us115 = icmp uge i64 %i.cc, %.sroa.14.0
  %.not49.us116 = icmp sgt i32 %i.cd, -1
  %.not49.us = select i1 %.not25.i.us, i1 %.not49.us115, i1 %.not49.us116
  br i1 %.not49.us, label %._crit_edge, label %vsetIsElementInRange.exit.thread.us108

vsetIsElementInRange.exit.thread.us108:           ; preds = %vsetIsElementInRange.exit.us
  %i.ce = load ptr, ptr @RedisModule_ReplyWithStringBuffer, align 8, !tbaa !24
  %i.cf = call i32 %i.ce(ptr noundef %0, ptr noundef nonnull %i.bz, i64 noundef %i.cc) #22 ; 0 uses
  %i.cg = add nuw nsw i64 %.0100.us105, 1         ; 2 uses
  %i.ch = load ptr, ptr @RedisModule_DictNextC, align 8, !tbaa !24
  %i.ci = call ptr %i.ch(ptr noundef %.038, ptr noundef nonnull %i.d, ptr noundef null) #22 ; 2 uses
  %.not47.us109 = icmp eq ptr %i.ci, null
  br i1 %.not47.us109, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !154

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %vsetIsElementInRange.exit.thread
  %i.cj = phi ptr [ %i.cv, %vsetIsElementInRange.exit.thread ], [ %i.bp, %.lr.ph.split ] ; 2 uses
  %.0100 = phi i64 [ %i.ct, %vsetIsElementInRange.exit.thread ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !82  ; 2 uses
  %i.cl = icmp slt i64 %i.ck, 0
  %.not48 = icmp slt i64 %.0100, %i.ck
  %or.cond50 = select i1 %i.cl, i1 true, i1 %.not48
  br i1 %or.cond50, label %vsetIsElementInRange.exit, label %._crit_edge

vsetIsElementInRange.exit:                        ; preds = %.lr.ph.split.split
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !59  ; 3 uses
  %..i = call i64 @llvm.umin.i64(i64 %i.cm, i64 %.sroa.14.0)
  %i.cn = call i32 @memcmp(ptr noundef nonnull readonly %i.cj, ptr noundef %.sroa.1156.0, i64 noundef %..i) #25 ; 2 uses
  %.not25.i = icmp eq i32 %i.cn, 0
  %i.co = icmp ugt i64 %i.cm, %.sroa.14.0
  %i.cp = icmp sgt i32 %i.cn, 0
  %i.cq = select i1 %.not25.i, i1 %i.co, i1 %i.cp
  br i1 %i.cq, label %._crit_edge, label %vsetIsElementInRange.exit.thread

vsetIsElementInRange.exit.thread:                 ; preds = %vsetIsElementInRange.exit
  %i.cr = load ptr, ptr @RedisModule_ReplyWithStringBuffer, align 8, !tbaa !24
  %i.cs = call i32 %i.cr(ptr noundef %0, ptr noundef nonnull %i.cj, i64 noundef %i.cm) #22 ; 0 uses
  %i.ct = add nuw nsw i64 %.0100, 1               ; 2 uses
  %i.cu = load ptr, ptr @RedisModule_DictNextC, align 8, !tbaa !24
  %i.cv = call ptr %i.cu(ptr noundef %.038, ptr noundef nonnull %i.d, ptr noundef null) #22 ; 2 uses
  %.not47 = icmp eq ptr %i.cv, null
  br i1 %.not47, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !154

._crit_edge:                                      ; preds = %vsetIsElementInRange.exit.thread, %vsetIsElementInRange.exit, %.lr.ph.split.split, %vsetIsElementInRange.exit.thread.us108, %vsetIsElementInRange.exit.us, %.lr.ph.split.split.us, %vsetIsElementInRange.exit.thread.us, %.lr.ph.split.us, %bb.x
  %.0.lcssa = phi i64 [ 0, %bb.x ], [ %i.cg, %vsetIsElementInRange.exit.thread.us108 ], [ %.0100.us, %.lr.ph.split.us ], [ %i.bw, %vsetIsElementInRange.exit.thread.us ], [ %.0100.us105, %.lr.ph.split.split.us ], [ %.0100.us105, %vsetIsElementInRange.exit.us ], [ %i.ct, %vsetIsElementInRange.exit.thread ], [ %.0100, %.lr.ph.split.split ], [ %.0100, %vsetIsElementInRange.exit ]
  %i.cw = load ptr, ptr @RedisModule_ReplySetArrayLength, align 8, !tbaa !24
  call void %i.cw(ptr noundef %0, i64 noundef %.0.lcssa) #22
  %i.cx = load ptr, ptr @RedisModule_DictIteratorStop, align 8, !tbaa !24
  call void %i.cx(ptr noundef %.038) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.y

bb.y:                                             ; preds = %.thread67, %.thread80, %bb.p, %._crit_edge, %bb.t, %bb.r, %bb.e
  %.2 = phi i32 [ %i.o, %bb.e ], [ %i.aq, %bb.p ], [ %i.ab, %.thread67 ], [ %i.ao, %.thread80 ], [ %i.az, %bb.r ], [ %i.be, %bb.t ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.b
  %.3 = phi i32 [ %i.h, %bb.b ], [ %.2, %bb.y ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local void @VectorSetRdbSave(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_SaveUnsigned, align 8, !tbaa !24
  %i.b = load ptr, ptr %1, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !89
  %i.e = zext i32 %i.d to i64
  tail call void %i.a(ptr noundef %0, i64 noundef %i.e) #22
  %i.f = load ptr, ptr @RedisModule_SaveUnsigned, align 8, !tbaa !24
  %i.g = load ptr, ptr %1, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !90
  tail call void %i.f(ptr noundef %0, i64 noundef %i.i) #22
  %i.j = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1656
  %i.l = load i32, ptr %i.k, align 8, !tbaa !78
  %i.m = and i32 %i.l, 255
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !88
  %i.p = shl i32 %i.o, 8
  %i.q = and i32 %i.p, 16776960
  %i.r = or disjoint i32 %i.q, %i.m
  %i.s = load ptr, ptr @RedisModule_SaveUnsigned, align 8, !tbaa !24
  %i.t = zext nneg i32 %i.r to i64
  tail call void %i.s(ptr noundef %0, i64 noundef %i.t) #22
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  %.not = icmp ne ptr %i.v, null
  %spec.select = zext i1 %.not to i32             ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !69
  %.not52 = icmp eq i64 %i.x, 0
  %2 = or disjoint i32 %spec.select, 2
  %.1 = select i1 %.not52, i32 %spec.select, i32 %2
  %i.y = load ptr, ptr @RedisModule_SaveUnsigned, align 8, !tbaa !24
  %3 = zext nneg i32 %.1 to i64
  tail call void %i.y(ptr noundef %0, i64 noundef %3) #22
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !67
  %.not53 = icmp eq ptr %i.z, null
  br i1 %.not53, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !68
  %i.ac = load ptr, ptr %1, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !89
  %i.af = load ptr, ptr @RedisModule_SaveUnsigned, align 8, !tbaa !24
  %i.ag = zext i32 %i.ab to i64                   ; 2 uses
  tail call void %i.af(ptr noundef %0, i64 noundef %i.ag) #22
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = zext i32 %i.ae to i64
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = load ptr, ptr @RedisModule_SaveStringBuffer, align 8, !tbaa !24
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !67
  tail call void %i.ak(ptr noundef %0, ptr noundef %i.al, i64 noundef %i.aj) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.am = load ptr, ptr %1, align 8, !tbaa !65
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 296
  %.04958 = load ptr, ptr %i.an, align 8, !tbaa !91 ; 2 uses
  %.not5459 = icmp eq ptr %.04958, null
  br i1 %.not5459, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.c, %._crit_edge
  %.04960 = phi ptr [ %.049, %._crit_edge ], [ %.04958, %bb.c ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04960, i64 288
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !24 ; 2 uses
  %i.aq = load ptr, ptr @RedisModule_SaveString, align 8, !tbaa !24
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !73
  tail call void %i.aq(ptr noundef %0, ptr noundef %i.ar) #22
  %i.as = load i64, ptr %i.w, align 8, !tbaa !69
  %.not55 = icmp eq i64 %i.as, 0
  br i1 %.not55, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph62
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !74 ; 2 uses
  %.not56 = icmp eq ptr %i.au, null
  br i1 %.not56, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = load ptr, ptr @RedisModule_SaveString, align 8, !tbaa !24
  tail call void %i.av(ptr noundef %0, ptr noundef nonnull %i.au) #22
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr @RedisModule_SaveStringBuffer, align 8, !tbaa !24
  tail call void %i.aw(ptr noundef %0, ptr noundef nonnull @.str.94, i64 noundef 0) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.lr.ph62
  %i.ax = load ptr, ptr %1, align 8, !tbaa !65
  %i.ay = tail call ptr @hnsw_serialize_node(ptr noundef %i.ax, ptr noundef nonnull %.04960) #22 ; 5 uses
  %i.az = load ptr, ptr @RedisModule_SaveStringBuffer, align 8, !tbaa !24
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !160
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !161
  %i.bd = zext i32 %i.bc to i64
  tail call void %i.az(ptr noundef %0, ptr noundef %i.ba, i64 noundef %i.bd) #22
  %i.be = load ptr, ptr @RedisModule_SaveUnsigned, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !162
  %i.bh = zext i32 %i.bg to i64
  tail call void %i.be(ptr noundef %0, i64 noundef %i.bh) #22
  %i.bi = load i32, ptr %i.bf, align 8, !tbaa !162
  %.not64 = icmp eq i32 %i.bi, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.g
  tail call void @hnsw_free_serialized_node(ptr noundef nonnull %i.ay) #22
  %i.bk = getelementptr inbounds nuw i8, ptr %.04960, i64 304
  %.049 = load ptr, ptr %i.bk, align 8, !tbaa !91 ; 2 uses
  %.not54 = icmp eq ptr %.049, null
  br i1 %.not54, label %._crit_edge63, label %.lr.ph62, !llvm.loop !156

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.bl = load ptr, ptr @RedisModule_SaveUnsigned, align 8, !tbaa !24
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !163
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !59
  tail call void %i.bl(ptr noundef %0, i64 noundef %i.bo) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = load i32, ptr %i.bf, align 8, !tbaa !162
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge, !llvm.loop !157

._crit_edge63:                                    ; preds = %._crit_edge, %bb.c
  ret void
}

declare ptr @hnsw_serialize_node(ptr noundef, ptr noundef) local_unnamed_addr #16

declare void @hnsw_free_serialized_node(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local ptr @VectorSetRdbLoad(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 3 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @RedisModule_LoadUnsigned, align 8, !tbaa !24
  %i.e = tail call i64 %i.d(ptr noundef %0) #22   ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = load ptr, ptr @RedisModule_LoadUnsigned, align 8, !tbaa !24
  %i.h = tail call i64 %i.g(ptr noundef %0) #22   ; 2 uses
  %i.i = load ptr, ptr @RedisModule_LoadUnsigned, align 8, !tbaa !24
  %i.j = tail call i64 %i.i(ptr noundef %0) #22
  %i.k = load ptr, ptr @RedisModule_IsIOError, align 8, !tbaa !24
  %i.l = tail call i32 %i.k(ptr noundef %0) #22
  %.not116 = icmp eq i32 %i.l, 0
  br i1 %.not116, label %bb.c, label %bb.at

bb.c:                                             ; preds = %bb.b
  %i.m = trunc i64 %i.j to i32                    ; 2 uses
  %i.n = and i32 %i.m, 255                        ; 2 uses
  %or.cond3 = icmp samesign ugt i32 %i.n, 2
  br i1 %or.cond3, label %bb.at, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i32 %i.m, 8
  %i.p = and i32 %i.o, 65535                      ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  %spec.store.select = select i1 %i.q, i32 16, i32 %i.p
  %i.r = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !24
  %i.s = tail call ptr %i.r(i64 noundef 112) #22, !inline_history !87 ; 15 uses
  %i.t = load i64, ptr @VectorSetTypeNextId, align 8, !tbaa !59 ; 2 uses
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr @VectorSetTypeNextId, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  store i64 %i.t, ptr %i.v, align 8, !tbaa !64
  %i.w = tail call ptr @hnsw_new(i32 noundef %i.f, i32 noundef %i.n, i32 noundef %spec.store.select) #22 ; 2 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !65
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr @RedisModule_CreateDict, align 8, !tbaa !24
  %i.y = tail call ptr %i.x(ptr noundef null) #22, !inline_history !87
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !68
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  store atomic i32 0, ptr %i.ad seq_cst, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.af = tail call i32 @pthread_rwlock_init(ptr noundef nonnull %i.ae, ptr noundef null) #22
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %createVectorSetObject.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !24
  tail call void %i.ah(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 250) #22, !inline_history !87
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr @RedisModule_Free, align 8, !tbaa !24
  tail call void %i.ai(ptr noundef nonnull %i.s) #22, !inline_history !87
  %i.aj = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !24
  tail call void %i.aj(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.27, i32 noundef 1973) #22
  tail call void @exit(i32 noundef 1) #23
  unreachable

createVectorSetObject.exit:                       ; preds = %bb.e
  %i.ak = load ptr, ptr @RedisModule_LoadUnsigned, align 8, !tbaa !24
  %i.al = tail call i64 %i.ak(ptr noundef %0) #22
  %i.am = load ptr, ptr @RedisModule_IsIOError, align 8, !tbaa !24
  %i.an = tail call i32 %i.am(ptr noundef %0) #22
  %.not118 = icmp eq i32 %i.an, 0
  br i1 %.not118, label %bb.h, label %.thread

bb.h:                                             ; preds = %createVectorSetObject.exit
  %i.ao = trunc i64 %i.al to i32                  ; 2 uses
  %i.ap = and i32 %i.ao, 1
  %i.aq = and i32 %i.ao, 2
  %.not119 = icmp eq i32 %i.ap, 0
  br i1 %.not119, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr @RedisModule_LoadUnsigned, align 8, !tbaa !24
  %i.as = tail call i64 %i.ar(ptr noundef %0) #22 ; 2 uses
end_hunk_0
