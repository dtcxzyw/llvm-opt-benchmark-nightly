Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/util?download=true
inline.NumInlined: 87
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mult:bb.a
  br i1 %.not.i, label %Balloc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %i.l, align 8, !tbaa !7
  %i.m = getelementptr i8, ptr %i.k, i64 24
  store i32 0, ptr %i.m, align 8, !tbaa !7
  br label %Balloc.exit.thread

._crit_edge98:                                    ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !49
  %i.p = icmp slt i32 %i.o, %i.i                  ; 2 uses
  %spec.select = select i1 %i.p, ptr %1, ptr %0   ; 4 uses
  %spec.select82 = select i1 %i.p, ptr %0, ptr %1 ; 2 uses
  %i.q = getelementptr i8, ptr %spec.select, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !44
  %i.s = getelementptr i8, ptr %spec.select, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !49   ; 2 uses
  %i.u = getelementptr i8, ptr %spec.select82, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !49   ; 2 uses
  %i.w = add i32 %i.v, %i.t                       ; 5 uses
  %i.x = getelementptr i8, ptr %spec.select, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47
  %i.z = icmp sgt i32 %i.w, %i.y
  %i.aa = zext i1 %i.z to i32
  %.069 = add i32 %i.r, %i.aa                     ; 2 uses
  %i.ab = shl nuw i32 1, %.069                    ; 2 uses
  %i.ac = add i32 %i.ab, -1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 32
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #26 ; 8 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64              ; 3 uses
  %.not.i83 = icmp eq ptr %i.ag, null
  br i1 %.not.i83, label %Balloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge98
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  store i32 %.069, ptr %i.ai, align 8, !tbaa !44
  %i.aj = getelementptr i8, ptr %i.ag, i64 12
  store i32 %i.ab, ptr %i.aj, align 4, !tbaa !47
  %i.ak = getelementptr i8, ptr %i.ag, i64 20     ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !49
  %i.al = getelementptr i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.al, align 8, !tbaa !48
  %i.am = getelementptr i8, ptr %i.ag, i64 24     ; 4 uses
  %i.an = sext i32 %i.w to i64                    ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.aq = shl nsw i64 %i.an, 2
  %i.ar = add i64 %i.aq, %i.ah
  %i.as = add i64 %i.ar, 24
  %i.at = add i64 %i.ah, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %i.at)
  %i.au = add i64 %umax, -25
  %i.av = sub i64 %i.au, %i.ah
  %i.aw = and i64 %i.av, -4
  %i.ax = add i64 %i.aw, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.ax, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  %i.ay = getelementptr i8, ptr %spec.select, i64 24 ; 2 uses
  %i.az = sext i32 %i.t to i64
  %i.ba = getelementptr [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = getelementptr i8, ptr %spec.select82, i64 24 ; 3 uses
  %i.bc = sext i32 %i.v to i64
  %i.bd = getelementptr [4 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  %i.be = icmp ult ptr %i.bb, %i.bd
  br i1 %i.be, label %.lr.ph91, label %.preheader

.preheader:                                       ; preds = %bb.i, %._crit_edge
  %i.bf = icmp sgt i32 %i.w, 0
  br i1 %i.bf, label %.lr.ph94, label %.critedge

.lr.ph91:                                         ; preds = %._crit_edge, %bb.i
  %.06389 = phi ptr [ %i.bw, %bb.i ], [ %i.am, %._crit_edge ] ; 2 uses
  %.06588 = phi ptr [ %i.bg, %bb.i ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.bg = getelementptr i8, ptr %.06588, i64 4    ; 2 uses
  %i.bh = load i32, ptr %.06588, align 4, !tbaa !7 ; 2 uses
  %.not81 = icmp eq i32 %i.bh, 0
  br i1 %.not81, label %bb.i, label %.preheader85

.preheader85:                                     ; preds = %.lr.ph91
  %i.bi = zext i32 %i.bh to i64
  br label %bb.g

bb.g:                                             ; preds = %.preheader85, %bb.g
  %.167 = phi ptr [ %i.bj, %bb.g ], [ %i.ay, %.preheader85 ] ; 2 uses
  %.064 = phi ptr [ %i.bt, %bb.g ], [ %.06389, %.preheader85 ] ; 3 uses
  %.0 = phi i64 [ %i.br, %bb.g ], [ 0, %.preheader85 ]
  %i.bj = getelementptr i8, ptr %.167, i64 4      ; 2 uses
  %i.bk = load i32, ptr %.167, align 4, !tbaa !7
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.bi
  %i.bn = load i32, ptr %.064, align 4, !tbaa !7
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %.0, %i.bo
  %i.bq = add nuw i64 %i.bp, %i.bm                ; 2 uses
  %i.br = lshr i64 %i.bq, 32                      ; 2 uses
  %i.bs = trunc i64 %i.bq to i32
  %i.bt = getelementptr i8, ptr %.064, i64 4      ; 2 uses
  store i32 %i.bs, ptr %.064, align 4, !tbaa !7
  %i.bu = icmp ult ptr %i.bj, %i.ba
  br i1 %i.bu, label %bb.g, label %bb.h, !llvm.loop !56

bb.h:                                             ; preds = %bb.g
  %i.bv = trunc nuw i64 %i.br to i32
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph91, %bb.h
  %i.bw = getelementptr i8, ptr %.06389, i64 4
  %i.bx = icmp ult ptr %i.bg, %i.bd
  br i1 %i.bx, label %.lr.ph91, label %.preheader, !llvm.loop !57

.lr.ph94:                                         ; preds = %.preheader, %bb.j
  %.193 = phi ptr [ %i.by, %bb.j ], [ %i.ao, %.preheader ]
  %.06892 = phi i32 [ %i.ca, %bb.j ], [ %i.w, %.preheader ] ; 3 uses
  %i.by = getelementptr i8, ptr %.193, i64 -4     ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7
  %.not80 = icmp eq i32 %i.bz, 0
  br i1 %.not80, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph94
  %i.ca = add nsw i32 %.06892, -1
  %i.cb = icmp sgt i32 %.06892, 1
  br i1 %i.cb, label %.lr.ph94, label %.critedge, !llvm.loop !58

.critedge:                                        ; preds = %.lr.ph94, %bb.j, %.preheader
  %.068.lcssa = phi i32 [ %i.w, %.preheader ], [ 0, %bb.j ], [ %.06892, %.lr.ph94 ]
  store i32 %.068.lcssa, ptr %i.ak, align 4, !tbaa !49
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %._crit_edge98, %bb.d, %.critedge, %bb.e
  %.072 = phi ptr [ %i.ag, %.critedge ], [ null, %bb.d ], [ %i.k, %bb.e ], [ null, %._crit_edge98 ]
  ret ptr %.072
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @lshift(ptr noundef captures(address, ret: address, provenance) %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %i.f = icmp slt i32 %i.e, 2
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %Bclear.exit, label %._crit_edge70

._crit_edge70:                                    ; preds = %bb.a
  %i.g = lshr i32 %1, 5                           ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = add i32 %i.e, %i.g                       ; 3 uses
  %i.l = add i32 %i.k, 1                          ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47   ; 2 uses
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge70, %.lr.ph
  %.03959 = phi i32 [ %i.p, %.lr.ph ], [ %i.i, %._crit_edge70 ]
  %.04058 = phi i32 [ %i.q, %.lr.ph ], [ %i.n, %._crit_edge70 ]
  %i.p = add i32 %.03959, 1                       ; 2 uses
  %i.q = shl i32 %.04058, 1                       ; 2 uses
  %i.r = icmp sgt i32 %i.l, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge70
  %.039.lcssa = phi i32 [ %i.i, %._crit_edge70 ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.s = shl nuw i32 1, %.039.lcssa               ; 2 uses
  %i.t = add i32 %i.s, -1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 32
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #26 ; 8 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %Bclear.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store i32 %.039.lcssa, ptr %i.y, align 8, !tbaa !44
  %i.z = getelementptr i8, ptr %i.x, i64 12
  store i32 %i.s, ptr %i.z, align 4, !tbaa !47
  %i.aa = getelementptr i8, ptr %i.x, i64 20
  %i.ab = getelementptr i8, ptr %i.x, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !48
  %i.ac = getelementptr i8, ptr %i.x, i64 24      ; 2 uses
  %.not66 = icmp eq i32 %i.g, 0
  br i1 %.not66, label %._crit_edge64, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %bb.b
  %2 = add nsw i32 %i.g, -1
  %i.ad = zext nneg i32 %2 to i64
  %3 = shl nuw nsw i64 %i.ad, 2                   ; 2 uses
  %4 = add nuw nsw i64 %3, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i8 0, i64 %4, i1 false), !tbaa !7
  %i.ae = getelementptr i8, ptr %i.x, i64 %3
  %scevgep = getelementptr i8, ptr %i.ae, i64 28
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63.preheader, %bb.b
  %.035.lcssa = phi ptr [ %i.ac, %bb.b ], [ %scevgep, %.lr.ph63.preheader ] ; 2 uses
  %i.af = load i32, ptr %i.j, align 4, !tbaa !49
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.b, i64 %i.ag
  %i.ai = and i32 %1, 31                          ; 3 uses
  %.not48 = icmp eq i32 %i.ai, 0
  br i1 %.not48, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %._crit_edge64
  %i.aj = shl nsw i64 %i.ag, 2
  %i.ak = add i64 %i.aj, %i.a
  %i.al = add i64 %i.ak, 24
  %i.am = add i64 %i.a, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.an = add i64 %umax, -25
  %i.ao = sub i64 %i.an, %i.a
  %i.ap = and i64 %i.ao, -4
  %i.aq = add i64 %i.ap, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.035.lcssa, ptr nonnull align 8 %i.b, i64 %i.aq, i1 false), !tbaa !7
  br label %Bclear.exit52

bb.c:                                             ; preds = %._crit_edge64
  %i.ar = sub nuw nsw i32 32, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.036 = phi ptr [ %i.b, %bb.c ], [ %i.aw, %bb.d ] ; 2 uses
  %.1 = phi ptr [ %.035.lcssa, %bb.c ], [ %i.av, %bb.d ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.c ], [ %i.ax, %bb.d ]
  %i.as = load i32, ptr %.036, align 4, !tbaa !7  ; 2 uses
  %i.at = shl i32 %i.as, %i.ai
  %i.au = or i32 %i.at, %.0
  %i.av = getelementptr i8, ptr %.1, i64 4        ; 2 uses
  store i32 %i.au, ptr %.1, align 4, !tbaa !7
  %i.aw = getelementptr i8, ptr %.036, i64 4      ; 2 uses
  %i.ax = lshr i32 %i.as, %i.ar                   ; 3 uses
  %i.ay = icmp ult ptr %i.aw, %i.ah
  br i1 %i.ay, label %bb.d, label %bb.e, !llvm.loop !60

bb.e:                                             ; preds = %bb.d
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !7
  %.not49 = icmp eq i32 %i.ax, 0
  %spec.select = select i1 %.not49, i32 %i.k, i32 %i.l
  br label %Bclear.exit52

Bclear.exit52:                                    ; preds = %.preheader.preheader, %bb.e
  %.038 = phi i32 [ %spec.select, %bb.e ], [ %i.k, %.preheader.preheader ]
  store i32 %.038, ptr %i.aa, align 4, !tbaa !49
  br label %Bclear.exit.sink.split

Bclear.exit.sink.split:                           ; preds = %._crit_edge, %Bclear.exit52
  %.042.ph = phi ptr [ %i.x, %Bclear.exit52 ], [ null, %._crit_edge ]
  tail call void @free(ptr noundef nonnull %0) #24
  br label %Bclear.exit

Bclear.exit:                                      ; preds = %Bclear.exit.sink.split, %bb.a
  %.042 = phi ptr [ %0, %bb.a ], [ %.042.ph, %Bclear.exit.sink.split ]
  ret ptr %.042
}

; Function Attrs: nofree nounwind sspstrong memory(readwrite, argmem: read, target_mem: none) uwtable
define internal fastcc noundef ptr @diff(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %i.c = getelementptr i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49   ; 2 uses
  %i.e = sub i32 %i.b, %i.d                       ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = sext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 24
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.017.i = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.e ]
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.m, %bb.e ]
  %i.k = getelementptr i8, ptr %.017.i, i64 -4    ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 2 uses
  %i.m = getelementptr i8, ptr %.0.i, i64 -4      ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7    ; 2 uses
  %.not23.i = icmp eq i32 %i.l, %i.n
  br i1 %.not23.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %i.l, %i.n
  %i.p = select i1 %i.o, i32 -1, i32 1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not24.i = icmp ugt ptr %i.k, %i.f
  br i1 %.not24.i, label %bb.c, label %cmp.exit

cmp.exit:                                         ; preds = %bb.e
  %i.q = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #26 ; 4 uses
  %.not.i62 = icmp eq ptr %i.q, null
  br i1 %.not.i62, label %Balloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %cmp.exit
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %i.r, align 8, !tbaa !7
  %i.s = getelementptr i8, ptr %i.q, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !7
  br label %Balloc.exit.thread

bb.g:                                             ; preds = %bb.a, %bb.d
  %.018.i.ph = phi i32 [ %i.p, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %i.t = icmp slt i32 %.018.i.ph, 0               ; 2 uses
  %. = select i1 %i.t, ptr %1, ptr %0             ; 3 uses
  %i.u = getelementptr i8, ptr %., i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %i.w = shl nuw i32 1, %i.v                      ; 2 uses
  %i.x = add i32 %i.w, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 32
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #26 ; 7 uses
  %.not.i63 = icmp eq ptr %i.ab, null
  br i1 %.not.i63, label %Balloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.018.i.ph.lobit = lshr i32 %.018.i.ph, 31
  %.60 = select i1 %i.t, ptr %0, ptr %1           ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store i32 %i.v, ptr %i.ac, align 8, !tbaa !44
  %i.ad = getelementptr i8, ptr %i.ab, i64 12
  store i32 %i.w, ptr %i.ad, align 4, !tbaa !47
  %i.ae = getelementptr i8, ptr %i.ab, i64 20     ; 2 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !49
  %i.af = getelementptr i8, ptr %i.ab, i64 16
  store i32 %.018.i.ph.lobit, ptr %i.af, align 8, !tbaa !48
  %i.ag = getelementptr i8, ptr %., i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !49 ; 2 uses
  %i.ai = getelementptr i8, ptr %., i64 24        ; 2 uses
  %i.aj = getelementptr i8, ptr %.60, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !49
  %i.al = getelementptr i8, ptr %.60, i64 24      ; 2 uses
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ab, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.047 = phi ptr [ %i.ai, %bb.h ], [ %i.ap, %bb.i ] ; 2 uses
  %.046 = phi ptr [ %i.al, %bb.h ], [ %i.as, %bb.i ] ; 2 uses
  %.044 = phi ptr [ %i.ao, %bb.h ], [ %i.ba, %bb.i ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.h ], [ %i.ay, %bb.i ]
  %i.ap = getelementptr i8, ptr %.047, i64 4      ; 3 uses
  %i.aq = load i32, ptr %.047, align 4, !tbaa !7
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %.046, i64 4      ; 2 uses
  %i.at = load i32, ptr %.046, align 4, !tbaa !7
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %.0, %i.au
  %i.aw = sub nsw i64 %i.ar, %i.av                ; 2 uses
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = and i64 %i.ax, 1                        ; 2 uses
  %i.az = trunc i64 %i.aw to i32
  %i.ba = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  store i32 %i.az, ptr %.044, align 4, !tbaa !7
  %i.bb = icmp ult ptr %i.as, %i.an
  br i1 %i.bb, label %bb.i, label %.preheader69, !llvm.loop !61

.preheader69:                                     ; preds = %bb.i
  %i.bc = sext i32 %i.ah to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ai, i64 %i.bc ; 2 uses
  %i.be = icmp ult ptr %i.ap, %i.bd
  br i1 %i.be, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %.preheader69, %.lr.ph
  %.178 = phi i64 [ %i.bk, %.lr.ph ], [ %i.ay, %.preheader69 ]
  %.14577 = phi ptr [ %i.bm, %.lr.ph ], [ %i.ba, %.preheader69 ] ; 2 uses
  %.14876 = phi ptr [ %i.bf, %.lr.ph ], [ %i.ap, %.preheader69 ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.14876, i64 4    ; 2 uses
  %i.bg = load i32, ptr %.14876, align 4, !tbaa !7
  %i.bh = zext i32 %i.bg to i64
  %i.bi = sub nsw i64 %i.bh, %.178                ; 2 uses
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = and i64 %i.bj, 1
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = getelementptr i8, ptr %.14577, i64 4    ; 2 uses
  store i32 %i.bl, ptr %.14577, align 4, !tbaa !7
  %i.bn = icmp ult ptr %i.bf, %i.bd
  br i1 %i.bn, label %.lr.ph, label %.preheader.preheader, !llvm.loop !62

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader69
  %.2.ph = phi ptr [ %i.ba, %.preheader69 ], [ %i.bm, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.049 = phi i32 [ %i.bq, %.preheader ], [ %i.ah, %.preheader.preheader ] ; 2 uses
end_hunk_0
