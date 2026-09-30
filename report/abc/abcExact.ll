Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcExact?download=true
inline.NumInlined: 443
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Ses_StoreAddEntry:bb.a
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !42 ; 2 uses
  %.not74 = icmp eq ptr %i.dx, null
  br i1 %.not74, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @Ses_StoreWrite(ptr noundef nonnull %0, ptr noundef %i.dx)
  br label %bb.k

bb.k:                                             ; preds = %.split155, %.split154, %.split, %bb.j, %bb.i, %bb.h
  %.064108152 = phi i32 [ %.064109, %.split ], [ %.064108153, %bb.j ], [ %.064108153, %bb.i ], [ %.064109, %bb.h ], [ %.064112, %.split154 ], [ %.064112, %.split155 ]
  ret i32 %.064108152
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Abc_ExactNormalizeArrivalTimesForNetwork(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !43    ; 3 uses
  %i.c = sext i8 %i.b to i32                      ; 2 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  store i32 %0, ptr %i.e, align 4, !tbaa !46
  store i32 %0, ptr %i.d, align 8, !tbaa !47
  %i.f = sext i32 %0 to i64                       ; 3 uses
  %i.g = shl nsw i64 %i.f, 2                      ; 6 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #28 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr readonly align 4 %1, i64 %i.g, i1 false)
  %i.j = icmp sgt i8 %i.b, 0                      ; 2 uses
  br i1 %i.j, label %.lr.ph, label %.preheader104

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

..preheader104_crit_edge:                         ; preds = %Vec_IntPush.exit
  %i.k = trunc nsw i64 %indvars.iv.next to i32    ; 2 uses
  store ptr %storemerge102107, ptr %i.i, align 8
  store i32 %i.k, ptr %i.e, align 4, !tbaa !46
  store i32 %spec.select.sink.i110, ptr %i.d, align 8
  br label %.preheader104

.preheader104:                                    ; preds = %..preheader104_crit_edge, %bb.a
  %.promoted118 = phi i32 [ %i.k, %..preheader104_crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.promoted114 = phi ptr [ %storemerge102107, %..preheader104_crit_edge ], [ %i.h, %bb.a ] ; 2 uses
  %i.l = add i32 %0, -1
  %i.m = add i32 %i.l, %i.c                       ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph113, label %.preheader

.lr.ph113:                                        ; preds = %.preheader104
  %i.o = zext nneg i32 %i.m to i64                ; 2 uses
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv132 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next133, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %spec.select.sink.i111 = phi i32 [ %0, %.lr.ph ], [ %spec.select.sink.i110, %Vec_IntPush.exit ] ; 3 uses
  %storemerge102106 = phi ptr [ %i.h, %.lr.ph ], [ %storemerge102107, %Vec_IntPush.exit ] ; 5 uses
  %i.p = shl nuw nsw i64 %indvars.iv132, 2
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.u = load i8, ptr %i.t, align 1, !tbaa !43
  %i.v = sext i8 %i.s to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %storemerge102106, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !15
  %i.y = sext i8 %i.u to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %storemerge102106, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %i.x, i32 %i.aa)
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = trunc nsw i64 %indvars.iv to i32
  %i.ae = icmp eq i32 %spec.select.sink.i111, %i.ad
  br i1 %i.ae, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.af = icmp slt i64 %indvars.iv, 16
  br i1 %i.af, label %Vec_IntPush.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.ah = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ag, i32 %i.ah, i32 2147483647 ; 3 uses
  %i.ai = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ai
  br i1 %.not.i9.i, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  br label %Vec_IntPush.exit.sink.split

Vec_IntPush.exit.sink.split:                      ; preds = %bb.c, %bb.e
  %.sink = phi i64 [ %i.ak, %bb.e ], [ 64, %bb.c ]
  %spec.select.sink.i110.ph = phi i32 [ %spec.select.i, %bb.e ], [ 16, %bb.c ]
  %i.al = tail call ptr @realloc(ptr noundef nonnull %storemerge102106, i64 noundef %.sink) #29
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntPush.exit.sink.split, %bb.b, %bb.d
  %spec.select.sink.i110 = phi i32 [ %spec.select.sink.i111, %bb.b ], [ %spec.select.sink.i111, %bb.d ], [ %spec.select.sink.i110.ph, %Vec_IntPush.exit.sink.split ] ; 2 uses
  %storemerge102107 = phi ptr [ %storemerge102106, %bb.b ], [ %storemerge102106, %bb.d ], [ %i.al, %Vec_IntPush.exit.sink.split ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %storemerge102107, i64 %indvars.iv
  store i32 %i.ac, ptr %i.am, align 4, !tbaa !15
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count
  br i1 %exitcond.not, label %..preheader104_crit_edge, label %bb.b, !llvm.loop !159

..preheader_crit_edge:                            ; preds = %Vec_IntSetEntry.exit
  store ptr %storemerge101116, ptr %i.i, align 8
  store i32 %i.bk, ptr %i.e, align 4
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader104
  %.promoted128 = phi i32 [ %i.bk, %..preheader_crit_edge ], [ %.promoted118, %.preheader104 ]
  %.promoted122 = phi ptr [ %storemerge101116, %..preheader_crit_edge ], [ %.promoted114, %.preheader104 ] ; 2 uses
  br i1 %i.j, label %.lr.ph121, label %bb.o

.lr.ph121:                                        ; preds = %.preheader
  %i.an = zext nneg i8 %i.b to i64
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph113, %Vec_IntSetEntry.exit
  %indvars.iv137 = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next138, %Vec_IntSetEntry.exit ] ; 6 uses
  %i.ao = phi i32 [ %.promoted118, %.lr.ph113 ], [ %i.bk, %Vec_IntSetEntry.exit ] ; 3 uses
  %storemerge101115 = phi ptr [ %.promoted114, %.lr.ph113 ], [ %storemerge101116, %Vec_IntSetEntry.exit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %storemerge101115, i64 %i.o
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 5 uses
  %i.ar = sext i32 %i.ao to i64                   ; 2 uses
  %.not.i.not.i = icmp slt i64 %indvars.iv137, %i.ar
  br i1 %.not.i.not.i, label %Vec_IntSetEntry.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i32, ptr %i.d, align 8, !tbaa !47  ; 4 uses
  %i.at = shl nsw i32 %i.as, 1                    ; 2 uses
  %i.au = sext i32 %i.at to i64
  %.not.i = icmp slt i64 %indvars.iv137, %i.au
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = shl nuw nsw i64 %indvars.iv.next138, 2
  %i.aw = tail call ptr @realloc(ptr noundef nonnull %storemerge101115, i64 noundef %i.av) #29
  %i.ax = trunc nuw nsw i64 %indvars.iv.next138 to i32
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.i:                                             ; preds = %bb.g
  %i.ay = sext i32 %i.as to i64
  %.not.i.i.not.i = icmp slt i64 %indvars.iv137, %i.ay
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = icmp slt i32 %i.as, 1073741823
  %spec.select.i.i = select i1 %i.az, i32 %i.at, i32 2147483647 ; 3 uses
  %.not.i22.i.i = icmp slt i32 %i.as, %spec.select.i.i
  br i1 %.not.i22.i.i, label %bb.k, label %Vec_IntGrow.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ba = sext i32 %spec.select.i.i to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = tail call ptr @realloc(ptr noundef nonnull %storemerge101115, i64 noundef %i.bb) #29
  br label %Vec_IntGrow.exit.sink.split.i.i

Vec_IntGrow.exit.sink.split.i.i:                  ; preds = %bb.k, %bb.h
  %storemerge101 = phi ptr [ %i.aw, %bb.h ], [ %i.bc, %bb.k ]
  %spec.select.sink.i.i = phi i32 [ %i.ax, %bb.h ], [ %spec.select.i.i, %bb.k ]
  store i32 %spec.select.sink.i.i, ptr %i.d, align 8, !tbaa !47
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %Vec_IntGrow.exit.sink.split.i.i, %bb.j, %bb.i
  %storemerge101117 = phi ptr [ %storemerge101, %Vec_IntGrow.exit.sink.split.i.i ], [ %storemerge101115, %bb.j ], [ %storemerge101115, %bb.i ] ; 2 uses
  %i.bd = shl nsw i64 %i.ar, 2
  %scevgep.i.i = getelementptr i8, ptr %storemerge101117, i64 %i.bd
  %i.be = trunc nuw nsw i64 %indvars.iv137 to i32
  %i.bf = sub i32 %i.be, %i.ao
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.bi, i1 false), !tbaa !15
  %i.bj = trunc nuw nsw i64 %indvars.iv.next138 to i32
  br label %Vec_IntSetEntry.exit

Vec_IntSetEntry.exit:                             ; preds = %bb.f, %Vec_IntGrow.exit.i.i
  %i.bk = phi i32 [ %i.ao, %bb.f ], [ %i.bj, %Vec_IntGrow.exit.i.i ] ; 3 uses
  %storemerge101116 = phi ptr [ %storemerge101115, %bb.f ], [ %storemerge101117, %Vec_IntGrow.exit.i.i ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %storemerge101116, i64 %indvars.iv137
  store i32 %i.aq, ptr %i.bl, align 4, !tbaa !15
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %i.o
  br i1 %exitcond141.not, label %..preheader_crit_edge, label %bb.f, !llvm.loop !160

bb.l:                                             ; preds = %.lr.ph121, %Vec_IntSetEntry.exit93
  %indvars.iv142 = phi i64 [ %i.an, %.lr.ph121 ], [ %indvars.iv.next143, %Vec_IntSetEntry.exit93 ] ; 2 uses
  %i.bm = phi i32 [ %.promoted128, %.lr.ph121 ], [ %i.di, %Vec_IntSetEntry.exit93 ] ; 4 uses
  %storemerge100124 = phi ptr [ %.promoted122, %.lr.ph121 ], [ %storemerge100125, %Vec_IntSetEntry.exit93 ] ; 6 uses
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, -1 ; 3 uses
  %i.bn = shl nuw nsw i64 %indvars.iv.next143, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 5
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !43  ; 2 uses
  %i.br = sext i8 %i.bq to i32                    ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !43  ; 2 uses
  %i.bu = sext i8 %i.bt to i32                    ; 5 uses
  %i.bv = sext i8 %i.bq to i64                    ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %storemerge100124, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !15
  %i.by = add nsw i64 %indvars.iv.next143, %i.f   ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %storemerge100124, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !15
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = tail call noundef i32 @llvm.smin.i32(i32 %i.bx, i32 %i.cb)
  %i.cd = add nsw i32 %i.br, 1                    ; 2 uses
  %.not.i.not.i60 = icmp sgt i32 %i.bm, %i.br
  br i1 %.not.i.not.i60, label %Vec_IntSetEntry.exit76, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !47  ; 3 uses
  %3 = shl nsw i32 %i.ce, 1                       ; 3 uses
  %.not.i61 = icmp sgt i32 %3, %i.br
  %.not.i.i.not.i62 = icmp sle i32 %i.ce, %i.br   ; 2 uses
  br i1 %.not.i61, label %5, label %4

4:                                                ; preds = %bb.m
  br i1 %.not.i.i.not.i62, label %Vec_IntGrow.exit.sink.split.i.i64, label %Vec_IntGrow.exit.i.i67

5:                                                ; preds = %bb.m
  %.not.i22.i.i74 = icmp slt i32 %i.ce, %3
  %or.cond = and i1 %.not.i.i.not.i62, %.not.i22.i.i74
  br i1 %or.cond, label %Vec_IntGrow.exit.sink.split.i.i64, label %Vec_IntGrow.exit.i.i67

Vec_IntGrow.exit.sink.split.i.i64:                ; preds = %5, %4
  %.sink163 = phi i32 [ %i.cd, %4 ], [ %3, %5 ]   ; 2 uses
  %i.cf = sext i32 %.sink163 to i64
  %i.cg = shl nsw i64 %i.cf, 2
  %i.ch = tail call ptr @realloc(ptr noundef nonnull %storemerge100124, i64 noundef %i.cg) #29
  store i32 %.sink163, ptr %i.d, align 8, !tbaa !47
  br label %Vec_IntGrow.exit.i.i67

Vec_IntGrow.exit.i.i67:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i64, %5, %4
  %storemerge100127 = phi ptr [ %i.ch, %Vec_IntGrow.exit.sink.split.i.i64 ], [ %storemerge100124, %5 ], [ %storemerge100124, %4 ] ; 2 uses
  %i.ci = sext i32 %i.bm to i64
  %i.cj = shl nsw i64 %i.ci, 2
  %scevgep.i.i70 = getelementptr i8, ptr %storemerge100127, i64 %i.cj
  %i.ck = sub i32 %i.br, %i.bm
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i70, i8 0, i64 %i.cn, i1 false), !tbaa !15
  br label %Vec_IntSetEntry.exit76

Vec_IntSetEntry.exit76:                           ; preds = %bb.l, %Vec_IntGrow.exit.i.i67
  %i.co = phi i32 [ %i.bm, %bb.l ], [ %i.cd, %Vec_IntGrow.exit.i.i67 ] ; 4 uses
  %storemerge100126 = phi ptr [ %storemerge100124, %bb.l ], [ %storemerge100127, %Vec_IntGrow.exit.i.i67 ] ; 7 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %storemerge100126, i64 %i.bv
  store i32 %i.cc, ptr %i.cp, align 4, !tbaa !15
  %i.cq = sext i8 %i.bt to i64                    ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %storemerge100126, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !15
  %i.ct = getelementptr inbounds [4 x i8], ptr %storemerge100126, i64 %i.by
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !15
  %i.cv = add nsw i32 %i.cu, -1
  %i.cw = tail call noundef i32 @llvm.smin.i32(i32 %i.cs, i32 %i.cv)
  %i.cx = add nsw i32 %i.bu, 1                    ; 2 uses
  %.not.i.not.i77 = icmp sgt i32 %i.co, %i.bu
  br i1 %.not.i.not.i77, label %Vec_IntSetEntry.exit93, label %bb.n

bb.n:                                             ; preds = %Vec_IntSetEntry.exit76
  %i.cy = load i32, ptr %i.d, align 8, !tbaa !47  ; 3 uses
  %6 = shl nsw i32 %i.cy, 1                       ; 3 uses
  %.not.i78 = icmp sgt i32 %6, %i.bu
  %.not.i.i.not.i79 = icmp sle i32 %i.cy, %i.bu   ; 2 uses
  br i1 %.not.i78, label %8, label %7

7:                                                ; preds = %bb.n
  br i1 %.not.i.i.not.i79, label %Vec_IntGrow.exit.sink.split.i.i81, label %Vec_IntGrow.exit.i.i84

8:                                                ; preds = %bb.n
  %.not.i22.i.i91 = icmp slt i32 %i.cy, %6
  %or.cond103 = and i1 %.not.i.i.not.i79, %.not.i22.i.i91
  br i1 %or.cond103, label %Vec_IntGrow.exit.sink.split.i.i81, label %Vec_IntGrow.exit.i.i84

Vec_IntGrow.exit.sink.split.i.i81:                ; preds = %8, %7
  %.sink166 = phi i32 [ %i.cx, %7 ], [ %6, %8 ]   ; 2 uses
  %i.cz = sext i32 %.sink166 to i64
  %i.da = shl nsw i64 %i.cz, 2
  %i.db = tail call ptr @realloc(ptr noundef nonnull %storemerge100126, i64 noundef %i.da) #29
  store i32 %.sink166, ptr %i.d, align 8, !tbaa !47
  br label %Vec_IntGrow.exit.i.i84

Vec_IntGrow.exit.i.i84:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i81, %8, %7
  %storemerge100123 = phi ptr [ %i.db, %Vec_IntGrow.exit.sink.split.i.i81 ], [ %storemerge100126, %8 ], [ %storemerge100126, %7 ] ; 2 uses
  %i.dc = sext i32 %i.co to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %scevgep.i.i87 = getelementptr i8, ptr %storemerge100123, i64 %i.dd
  %i.de = sub nsw i32 %i.bu, %i.co
  %i.df = zext i32 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i87, i8 0, i64 %i.dh, i1 false), !tbaa !15
  br label %Vec_IntSetEntry.exit93

Vec_IntSetEntry.exit93:                           ; preds = %Vec_IntSetEntry.exit76, %Vec_IntGrow.exit.i.i84
  %i.di = phi i32 [ %i.co, %Vec_IntSetEntry.exit76 ], [ %i.cx, %Vec_IntGrow.exit.i.i84 ] ; 2 uses
  %storemerge100125 = phi ptr [ %storemerge100126, %Vec_IntSetEntry.exit76 ], [ %storemerge100123, %Vec_IntGrow.exit.i.i84 ] ; 4 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %storemerge100125, i64 %i.cq
  store i32 %i.cw, ptr %i.dj, align 4, !tbaa !15
  %i.dk = icmp samesign ugt i64 %indvars.iv142, 1
  br i1 %i.dk, label %bb.l, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %Vec_IntSetEntry.exit93
  store ptr %storemerge100125, ptr %i.i, align 8
  store i32 %i.di, ptr %i.e, align 4
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %.preheader
  %.val59 = phi ptr [ %storemerge100125, %._crit_edge ], [ %.promoted122, %.preheader ] ; 10 uses
  %i.dl = getelementptr inbounds i8, ptr %.val59, i64 %i.g ; 2 uses
  %i.dm = load i32, ptr %.val59, align 4, !tbaa !15 ; 3 uses
  %i.dn = icmp sgt i32 %0, 1
  br i1 %i.dn, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %.val59, i64 4 ; 3 uses
  %i.dp = ptrtoaddr ptr %.val59 to i64            ; 3 uses
  %i.dq = add i64 %i.g, %i.dp
  %i.dr = add i64 %i.dp, 8
  %i.ds = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.dr)
  %i.dt = add i64 %i.ds, -5
  %i.du = sub i64 %i.dt, %i.dp                    ; 2 uses
  %i.dv = lshr i64 %i.du, 2
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.du, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.dw, 9223372036854775800     ; 3 uses
  %i.dx = shl i64 %n.vec, 2
  %i.dy = getelementptr i8, ptr %i.do, i64 %i.dx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.eb, %vector.body ]
  %vec.phi168 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ec, %vector.body ]
  %i.dz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.do, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !15
  %wide.load169 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !15
  %i.eb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.ec = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load169, <4 x i32> %vec.phi168) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.eb, <4 x i32> %i.ec)
  %i.ee = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %.lr.ph30.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.ph = phi ptr [ %i.do, %.lr.ph.preheader.i ], [ %i.dy, %middle.block ]
  %.027.i.ph = phi i32 [ %i.dm, %.lr.ph.preheader.i ], [ %i.ee, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ef = phi ptr [ %i.eh, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.027.i = phi i32 [ %spec.select.i94, %.lr.ph.i ], [ %.027.i.ph, %.lr.ph.i.preheader ]
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !15
  %spec.select.i94 = tail call i32 @llvm.smin.i32(i32 %i.eg, i32 %.027.i) ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.ei = icmp ult ptr %i.eh, %i.dl
  br i1 %i.ei, label %.lr.ph.i, label %.lr.ph30.preheader.i, !llvm.loop !163

._crit_edge.i:                                    ; preds = %bb.o
  %i.ej = icmp eq i32 %0, 1
  br i1 %i.ej, label %.lr.ph30.preheader.i, label %Vec_IntFree.exit

.lr.ph30.preheader.i:                             ; preds = %.lr.ph.i, %middle.block, %._crit_edge.i
  %.0.lcssa36.i = phi i32 [ %i.dm, %._crit_edge.i ], [ %i.ee, %middle.block ], [ %spec.select.i94, %.lr.ph.i ] ; 2 uses
  %i.ek = ptrtoaddr ptr %.val59 to i64            ; 3 uses
  %i.el = add i64 %i.g, %i.ek
  %i.em = add i64 %i.ek, 4
  %i.en = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.em)
  %i.eo = xor i64 %i.ek, -1
  %i.ep = add i64 %i.en, %i.eo                    ; 2 uses
  %i.eq = lshr i64 %i.ep, 2
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check171 = icmp ult i64 %i.ep, 28
  br i1 %min.iters.check171, label %.lr.ph30.i.preheader, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph30.preheader.i
  %n.vec173 = and i64 %i.er, 9223372036854775800  ; 3 uses
  %i.es = shl i64 %n.vec173, 2
  %i.et = getelementptr i8, ptr %.val59, i64 %i.es
  %broadcast.splatinsert174 = insertelement <4 x i32> poison, i32 %.0.lcssa36.i, i64 0
  %broadcast.splat175 = shufflevector <4 x i32> %broadcast.splatinsert174, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph172
  %index177 = phi i64 [ 0, %vector.ph172 ], [ %index.next181, %vector.body176 ] ; 2 uses
  %i.eu = shl i64 %index177, 2
  %next.gep178 = getelementptr i8, ptr %.val59, i64 %i.eu ; 3 uses
  %i.ev = getelementptr i8, ptr %next.gep178, i64 16 ; 2 uses
  %wide.load179 = load <4 x i32>, ptr %next.gep178, align 4, !tbaa !15
  %wide.load180 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !15
  %i.ew = sub nsw <4 x i32> %wide.load179, %broadcast.splat175
  %i.ex = sub nsw <4 x i32> %wide.load180, %broadcast.splat175
  store <4 x i32> %i.ew, ptr %next.gep178, align 4, !tbaa !15
  store <4 x i32> %i.ex, ptr %i.ev, align 4, !tbaa !15
  %index.next181 = add nuw i64 %index177, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next181, %n.vec173
  br i1 %i.ey, label %middle.block182, label %vector.body176, !llvm.loop !164

middle.block182:                                  ; preds = %vector.body176
  %cmp.n183 = icmp eq i64 %i.er, %n.vec173
  br i1 %cmp.n183, label %Vec_IntFree.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %.lr.ph30.preheader.i, %middle.block182
  %.12228.i.ph = phi ptr [ %.val59, %.lr.ph30.preheader.i ], [ %i.et, %middle.block182 ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.12228.i = phi ptr [ %i.fb, %.lr.ph30.i ], [ %.12228.i.ph, %.lr.ph30.i.preheader ] ; 3 uses
  %i.ez = load i32, ptr %.12228.i, align 4, !tbaa !15
  %i.fa = sub nsw i32 %i.ez, %.0.lcssa36.i
  store i32 %i.fa, ptr %.12228.i, align 4, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %.12228.i, i64 4 ; 2 uses
  %i.fc = icmp ult ptr %i.fb, %i.dl
  br i1 %i.fc, label %.lr.ph30.i, label %Vec_IntFree.exit, !llvm.loop !165

Vec_IntFree.exit:                                 ; preds = %.lr.ph30.i, %middle.block182, %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr nonnull align 4 %.val59, i64 %i.g, i1 false)
  tail call void @free(ptr noundef nonnull %.val59) #30
  tail call void @free(ptr noundef nonnull %i.d) #30
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @Ses_StoreWrite(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.46) ; 11 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull %1) ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8560
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39
  store i64 %i.f, ptr %i.a, align 8, !tbaa !14
  %i.g = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %i.b) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %._crit_edge
  %.05579 = phi ptr [ %i.ah, %._crit_edge ], [ %i.j, %bb.d ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05579, i64 48
  %.076 = load ptr, ptr %i.k, align 8, !tbaa !26  ; 2 uses
  %.not6177 = icmp eq ptr %.076, null
  br i1 %.not6177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %.05579, i64 32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.backedge
  %.078 = phi ptr [ %.076, %.lr.ph ], [ %.0, %.backedge ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.078, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %.not62 = icmp eq ptr %i.n, null
  br i1 %.not62, label %.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.078, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !30
  %.not63 = icmp eq i32 %i.p, 0
  br i1 %.not63, label %bb.g, label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.h, %bb.i, %bb.f
  %.0.in.be = getelementptr inbounds nuw i8, ptr %.078, i64 40
  %.0 = load ptr, ptr %.0.in.be, align 8, !tbaa !26 ; 2 uses
  %.not61 = icmp eq ptr %.0, null
  br i1 %.not61, label %._crit_edge, label %bb.e, !llvm.loop !166

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i64 @fwrite(ptr noundef nonnull %.05579, i64 noundef 8, i64 noundef 4, ptr noundef nonnull %i.b) ; 0 uses
end_hunk_0
