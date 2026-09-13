Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcHieGia?download=true
inline.NumInlined: 670
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Abc_NtkInsertHierarchyGia:bb.a
bb.c:                                             ; preds = %.lr.ph84, %bb.c
  %indvars.iv98 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next99, %bb.c ] ; 3 uses
  %.val7183 = phi ptr [ %.val7180, %.lr.ph84 ], [ %.val71, %bb.c ]
  %i.aa = getelementptr i8, ptr %.val7183, i64 8
  %.val68.val = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val68.val, i64 %indvars.iv98
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %.val67 = load ptr, ptr %i.v, align 8, !tbaa !65
  %i.ad = getelementptr i8, ptr %.val67, i64 8
  %.val67.val = load ptr, ptr %i.ad, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val67.val, i64 %indvars.iv98
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !18
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %.val71 = load ptr, ptr %i.s, align 8, !tbaa !65 ; 2 uses
  %i.ah = getelementptr i8, ptr %.val71, i64 4
  %.val71.val = load i32, ptr %i.ah, align 4, !tbaa !50
  %i.ai = sext i32 %.val71.val to i64
  %i.aj = icmp slt i64 %indvars.iv.next99, %i.ai
  br i1 %i.aj, label %bb.c, label %.critedge2.preheader, !llvm.loop !140

.critedge4.preheader:                             ; preds = %.critedge2, %.critedge2.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %.val6290 = load i32, ptr %i.am, align 4, !tbaa !50
  %i.an = icmp sgt i32 %.val6290, 0
  %.pre110 = load ptr, ptr %i.a, align 8          ; 3 uses
  br i1 %i.an, label %.lr.ph93, label %.critedge6

.lr.ph93:                                         ; preds = %.critedge4.preheader
  %i.ao = getelementptr i8, ptr %.pre110, i64 8
  br label %bb.d

.critedge2:                                       ; preds = %.lr.ph89, %.critedge2
  %indvars.iv101 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next102, %.critedge2 ] ; 3 uses
  %.val7288 = phi ptr [ %.val7285, %.lr.ph89 ], [ %.val72, %.critedge2 ]
  %i.ap = getelementptr i8, ptr %.val7288, i64 8
  %.val70.val = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val70.val, i64 %indvars.iv101
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !47
  %.val69 = load ptr, ptr %i.z, align 8, !tbaa !68
  %i.as = getelementptr i8, ptr %.val69, i64 8
  %.val69.val = load ptr, ptr %i.as, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val69.val, i64 %indvars.iv101
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store ptr %i.ar, ptr %i.av, align 8, !tbaa !18
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %.val72 = load ptr, ptr %i.w, align 8, !tbaa !68 ; 2 uses
  %i.aw = getelementptr i8, ptr %.val72, i64 4
  %.val72.val = load i32, ptr %i.aw, align 4, !tbaa !50
  %i.ax = sext i32 %.val72.val to i64
  %i.ay = icmp slt i64 %indvars.iv.next102, %i.ax
  br i1 %i.ay, label %.critedge2, label %.critedge4.preheader, !llvm.loop !141

bb.d:                                             ; preds = %.lr.ph93, %Abc_ObjIsBarBuf.exit.thread
  %i.az = phi ptr [ %i.al, %.lr.ph93 ], [ %i.br, %Abc_ObjIsBarBuf.exit.thread ] ; 6 uses
  %indvars.iv104 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next105, %Abc_ObjIsBarBuf.exit.thread ] ; 2 uses
  %.092 = phi i32 [ 0, %.lr.ph93 ], [ %.1, %Abc_ObjIsBarBuf.exit.thread ] ; 7 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val73.val = load ptr, ptr %i.ba, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val73.val, i64 %indvars.iv104
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47 ; 6 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %Abc_ObjIsBarBuf.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !24
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %.val6.i = load i32, ptr %i.bf, align 4, !tbaa !87
  %.not.i = icmp eq i32 %.val6.i, 4
  br i1 %.not.i, label %bb.f, label %Abc_ObjIsBarBuf.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr i8, ptr %i.bc, i64 20
  %.val.i = load i32, ptr %i.bg, align 4
  %i.bh = and i32 %.val.i, 15
  %.not7.i = icmp eq i32 %i.bh, 7
  br i1 %.not7.i, label %bb.g, label %Abc_ObjIsBarBuf.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr i8, ptr %i.bc, i64 28
  %.val5.i = load i32, ptr %i.bi, align 4, !tbaa !69
  %i.bj = icmp eq i32 %.val5.i, 1
  br i1 %i.bj, label %Abc_ObjIsBarBuf.exit, label %Abc_ObjIsBarBuf.exit.thread

Abc_ObjIsBarBuf.exit:                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !18
  %.not76 = icmp eq ptr %i.bl, null
  br i1 %.not76, label %bb.h, label %Abc_ObjIsBarBuf.exit.thread

bb.h:                                             ; preds = %Abc_ObjIsBarBuf.exit
  %i.bm = add nsw i32 %.092, 1
  %.val65 = load ptr, ptr %i.ao, align 8, !tbaa !45
  %i.bn = sext i32 %.092 to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %.val65, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  store ptr %i.bc, ptr %i.bq, align 8, !tbaa !18
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !43
  br label %Abc_ObjIsBarBuf.exit.thread

Abc_ObjIsBarBuf.exit.thread:                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %Abc_ObjIsBarBuf.exit, %bb.d
  %i.br = phi ptr [ %i.az, %bb.d ], [ %.pre, %bb.h ], [ %i.az, %Abc_ObjIsBarBuf.exit ], [ %i.az, %bb.g ], [ %i.az, %bb.f ], [ %i.az, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.092, %bb.d ], [ %i.bm, %bb.h ], [ %.092, %Abc_ObjIsBarBuf.exit ], [ %.092, %bb.g ], [ %.092, %bb.f ], [ %.092, %bb.e ]
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %.val62 = load i32, ptr %i.bs, align 4, !tbaa !50
  %i.bt = sext i32 %.val62 to i64
  %i.bu = icmp slt i64 %indvars.iv.next105, %i.bt
  br i1 %i.bu, label %bb.d, label %.critedge6, !llvm.loop !142

.critedge6:                                       ; preds = %Abc_ObjIsBarBuf.exit.thread, %.critedge4.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre110, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !45 ; 2 uses
  %.not.i74 = icmp eq ptr %i.bw, null
  br i1 %.not.i74, label %Vec_PtrFree.exit, label %bb.i

bb.i:                                             ; preds = %.critedge6
  call void @free(ptr noundef nonnull %i.bw) #21
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge6, %bb.i
  call void @free(ptr noundef nonnull %.pre110) #21
  call void @Abc_NtkCleanCopy(ptr noundef nonnull %1) #21
  call void @Gia_ManInsertOne(ptr noundef %0, ptr noundef nonnull %1)
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !76  ; 3 uses
  %.not59 = icmp eq ptr %i.bx, null
  br i1 %.not59, label %.critedge8, label %.preheader

.preheader:                                       ; preds = %Vec_PtrFree.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !79 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %.val94 = load i32, ptr %i.ca, align 4, !tbaa !50
  %i.cb = icmp sgt i32 %.val94, 0
  br i1 %i.cb, label %.lr.ph96, label %.critedge8

.lr.ph96:                                         ; preds = %.preheader, %bb.k
  %i.cc = phi ptr [ %i.ch, %bb.k ], [ %i.bx, %.preheader ]
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %bb.k ], [ 0, %.preheader ] ; 2 uses
  %i.cd = phi ptr [ %i.cj, %bb.k ], [ %i.bz, %.preheader ]
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val64 = load ptr, ptr %i.ce, align 8, !tbaa !45
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %indvars.iv107
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !47 ; 2 uses
  %.not60 = icmp eq ptr %i.cg, %0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph96
  call void @Gia_ManInsertOne(ptr noundef %i.cg, ptr noundef nonnull %1)
  %.pre111 = load ptr, ptr %i.c, align 8, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph96, %bb.j
  %i.ch = phi ptr [ %i.cc, %.lr.ph96 ], [ %.pre111, %bb.j ] ; 2 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !79 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %.val = load i32, ptr %i.ck, align 4, !tbaa !50
  %i.cl = sext i32 %.val to i64
  %i.cm = icmp slt i64 %indvars.iv.next108, %i.cl
  br i1 %i.cm, label %.lr.ph96, label %.critedge8, !llvm.loop !143

.critedge8:                                       ; preds = %bb.k, %.preheader, %Vec_PtrFree.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare void @Abc_NtkCleanCopy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Gia_WriteVerilogInt(ptr noundef %0, ptr nofree noundef readonly %1, i32 noundef %2, i32 %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %GiaHie_DumpInterfaceGates.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  %i.e = getelementptr i8, ptr %1, i64 24         ; 13 uses
  %.val126.i = load i32, ptr %i.e, align 8, !tbaa !83 ; 6 uses
  %i.f = icmp ult i32 %.val126.i, 2               ; 2 uses
  br i1 %.not, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %Abc_Base10Log.exit.i, label %.lr.ph.preheader.i.i.a

.lr.ph.preheader.i.i.a:                           ; preds = %bb.c
  %i.g = add i32 %.val126.i, -1
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %.lr.ph.i.i.a, %.lr.ph.preheader.i.i.a
  %.013.i.i = phi i32 [ %i.i, %.lr.ph.i.i.a ], [ 0, %.lr.ph.preheader.i.i.a ]
  %.0812.i.i = phi i32 [ %i.h, %.lr.ph.i.i.a ], [ %i.g, %.lr.ph.preheader.i.i.a ] ; 2 uses
  %i.h = udiv i32 %.0812.i.i, 10
  %i.i = add nuw nsw i32 %.013.i.i, 1             ; 2 uses
  %.not.i.i = icmp ult i32 %.0812.i.i, 10
  br i1 %.not.i.i, label %Abc_Base10Log.exit.i, label %.lr.ph.i.i.a, !llvm.loop !0

Abc_Base10Log.exit.i:                             ; preds = %.lr.ph.i.i.a, %bb.c
  %.09.i.i = phi i32 [ %.val126.i, %bb.c ], [ %i.i, %.lr.ph.i.i.a ] ; 8 uses
  %i.j = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %.val213.i = load i32, ptr %i.j, align 8, !tbaa !84 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 64         ; 6 uses
  %.val214.i = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.l = getelementptr i8, ptr %.val214.i, i64 4
  %.val214.val.i = load i32, ptr %i.l, align 4, !tbaa !69
  %i.m = sub nsw i32 %.val214.val.i, %.val213.i   ; 3 uses
  %i.n = icmp ult i32 %i.m, 2
  br i1 %i.n, label %Abc_Base10Log.exit245.i, label %.lr.ph.preheader.i239.i

.lr.ph.preheader.i239.i:                          ; preds = %Abc_Base10Log.exit.i
  %i.o = add i32 %i.m, -1
  br label %.lr.ph.i240.i

.lr.ph.i240.i:                                    ; preds = %.lr.ph.i240.i, %.lr.ph.preheader.i239.i
  %.013.i241.i = phi i32 [ %i.q, %.lr.ph.i240.i ], [ 0, %.lr.ph.preheader.i239.i ]
  %.0812.i242.i = phi i32 [ %i.p, %.lr.ph.i240.i ], [ %i.o, %.lr.ph.preheader.i239.i ] ; 2 uses
  %i.p = udiv i32 %.0812.i242.i, 10
  %i.q = add nuw nsw i32 %.013.i241.i, 1          ; 2 uses
  %.not.i243.i = icmp ult i32 %.0812.i242.i, 10
  br i1 %.not.i243.i, label %Abc_Base10Log.exit245.i, label %.lr.ph.i240.i, !llvm.loop !0

Abc_Base10Log.exit245.i:                          ; preds = %.lr.ph.i240.i, %Abc_Base10Log.exit.i
  %.09.i244.i = phi i32 [ %i.m, %Abc_Base10Log.exit.i ], [ %i.q, %.lr.ph.i240.i ] ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 72         ; 6 uses
  %.val218.i = load ptr, ptr %i.r, align 8, !tbaa !82
  %i.s = getelementptr i8, ptr %.val218.i, i64 4
  %.val218.val.i = load i32, ptr %i.s, align 4, !tbaa !69
  %i.t = sub nsw i32 %.val218.val.i, %.val213.i   ; 3 uses
  %i.u = icmp ult i32 %i.t, 2
  br i1 %i.u, label %Abc_Base10Log.exit252.i, label %.lr.ph.preheader.i246.i

.lr.ph.preheader.i246.i:                          ; preds = %Abc_Base10Log.exit245.i
  %i.v = add i32 %i.t, -1
  br label %.lr.ph.i247.i

.lr.ph.i247.i:                                    ; preds = %.lr.ph.i247.i, %.lr.ph.preheader.i246.i
  %.013.i248.i = phi i32 [ %i.x, %.lr.ph.i247.i ], [ 0, %.lr.ph.preheader.i246.i ]
  %.0812.i249.i = phi i32 [ %i.w, %.lr.ph.i247.i ], [ %i.v, %.lr.ph.preheader.i246.i ] ; 2 uses
  %i.w = udiv i32 %.0812.i249.i, 10
  %i.x = add nuw nsw i32 %.013.i248.i, 1          ; 2 uses
  %.not.i250.i.a = icmp ult i32 %.0812.i249.i, 10
  br i1 %.not.i250.i.a, label %Abc_Base10Log.exit252.i, label %.lr.ph.i247.i, !llvm.loop !0

Abc_Base10Log.exit252.i:                          ; preds = %.lr.ph.i247.i, %Abc_Base10Log.exit245.i
  %.09.i251.i = phi i32 [ %i.t, %Abc_Base10Log.exit245.i ], [ %i.x, %.lr.ph.i247.i ]
  %i.y = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) ; 51 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %Abc_Base10Log.exit252.i
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %0) ; 0 uses
  br label %GiaHie_DumpInterfaceGates.exit

bb.e:                                             ; preds = %Abc_Base10Log.exit252.i
  %i.ab = tail call fastcc ptr @GiaHie_GenUsed(ptr noundef nonnull readonly %1, i32 noundef 0) ; 3 uses
  %i.ac = tail call fastcc ptr @GiaHie_GenUsed(ptr noundef nonnull readonly %1, i32 noundef 1) ; 3 uses
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.11, i64 7, i64 1, ptr nonnull %i.y) ; 0 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !73
  tail call fastcc void @GiaHie_DumpModuleName(ptr noundef %i.y, ptr noundef %i.ad)
  %fwrite157.i = tail call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr nonnull %i.y) ; 0 uses
  tail call fastcc void @GiaHie_DumpIoList(ptr noundef nonnull readonly %1, ptr noundef %i.y, i32 noundef 0)
  %fwrite158.i = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr nonnull %i.y) ; 0 uses
  tail call fastcc void @GiaHie_DumpIoList(ptr noundef nonnull readonly %1, ptr noundef %i.y, i32 noundef 1)
  %fwrite159.i = tail call i64 @fwrite(ptr nonnull @.str.14, i64 5, i64 1, ptr nonnull %i.y) ; 0 uses
  tail call fastcc void @GiaHie_DumpIoRanges(ptr noundef nonnull readonly %1, ptr noundef %i.y, i32 noundef 0)
  tail call fastcc void @GiaHie_DumpIoRanges(ptr noundef nonnull readonly %1, ptr noundef %i.y, i32 noundef 1)
  %fputc.i = tail call i32 @fputc(i32 10, ptr nonnull %i.y) ; 0 uses
  %fwrite161.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 7, i64 1, ptr nonnull %i.y) ; 0 uses
  %.val211.i = load i32, ptr %i.j, align 8, !tbaa !84
  %.val212.i = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.ae = getelementptr i8, ptr %.val212.i, i64 4
  %.val212.val.i = load i32, ptr %i.ae, align 4, !tbaa !69
  %i.af = sub nsw i32 %.val212.val.i, %.val211.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !88
  tail call fastcc void @GiaHie_WriteNames(ptr noundef %i.y, i8 noundef signext 120, i32 noundef %i.af, ptr noundef %i.ah, i32 noundef 8, ptr noundef null, i32 noundef 0)
  %fwrite162.i = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr nonnull %i.y) ; 0 uses
  %fwrite163.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 7, i64 1, ptr nonnull %i.y) ; 0 uses
  %.val215.i = load i32, ptr %i.j, align 8, !tbaa !84
  %.val216.i = load ptr, ptr %i.r, align 8, !tbaa !82
  %i.ai = getelementptr i8, ptr %.val216.i, i64 4
  %.val216.val.i = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.aj = sub nsw i32 %.val216.val.i, %.val215.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !89
  tail call fastcc void @GiaHie_WriteNames(ptr noundef %i.y, i8 noundef signext 122, i32 noundef %i.aj, ptr noundef %i.al, i32 noundef 9, ptr noundef null, i32 noundef 0)
  %fwrite164.i = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr nonnull %i.y) ; 0 uses
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !88
  %.val225.i = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.an = getelementptr i8, ptr %.val225.i, i64 4
  %.val225.val.i = load i32, ptr %i.an, align 4, !tbaa !69
  %i.ao = tail call fastcc ptr @GiaHie_CollectMultiBits(ptr noundef %i.am, i32 noundef %.val225.val.i) ; 4 uses
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !89
  %.val227.i = load ptr, ptr %i.r, align 8, !tbaa !82
  %i.aq = getelementptr i8, ptr %.val227.i, i64 4
  %.val227.val.i = load i32, ptr %i.aq, align 4, !tbaa !69
  %i.ar = tail call fastcc ptr @GiaHie_CollectMultiBits(ptr noundef %i.ap, i32 noundef %.val227.val.i) ; 4 uses
  %i.as = getelementptr i8, ptr %i.ao, i64 4
  %.val234.i = load i32, ptr %i.as, align 4, !tbaa !91 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 8
  %.val235.i = load ptr, ptr %i.at, align 8, !tbaa !92 ; 7 uses
  %i.au = ashr i32 %.val234.i, 5
  %i.av = and i32 %.val234.i, 31                  ; 3 uses
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = add nsw i32 %i.au, %i.ax                ; 6 uses
  %.not.i253.i = icmp eq i32 %i.av, 0
  br i1 %.not.i253.i, label %.preheader.i.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.e
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %.lr.ph.preheader.i254.i, label %._crit_edge.i.i

.lr.ph.preheader.i254.i:                          ; preds = %.preheader1.i.i
  %i.ba = add nsw i32 %i.ay, -1
  %wide.trip.count.i.i = zext nneg i32 %i.ba to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ay, 9
  br i1 %min.iters.check, label %.lr.ph.i255.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i254.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi250 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val235.i, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <4 x i32>, ptr %i.bb, align 4, !tbaa !46
  %wide.load251 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !46
  %i.bd = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load)
  %i.be = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load251)
  %i.bf = add <4 x i32> %i.bd, %vec.phi           ; 2 uses
  %i.bg = add <4 x i32> %i.be, %vec.phi250        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bg, %i.bf
  %i.bi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i255.i.preheader

.lr.ph.i255.i.preheader:                          ; preds = %.lr.ph.preheader.i254.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i254.i ], [ %n.vec, %middle.block ]
  %.03.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i254.i ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i255.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.bj = icmp sgt i32 %i.ay, 0
  br i1 %i.bj, label %.lr.ph7.preheader.i.i, label %Vec_BitCount.exit.i

.lr.ph7.preheader.i.i:                            ; preds = %.preheader.i.i
  %wide.trip.count15.i.i = zext nneg i32 %i.ay to i64 ; 3 uses
  %min.iters.check253 = icmp ult i32 %i.ay, 8
  br i1 %min.iters.check253, label %.lr.ph7.i.i.preheader, label %vector.ph254

vector.ph254:                                     ; preds = %.lr.ph7.preheader.i.i
  %n.vec255 = and i64 %wide.trip.count15.i.i, 2147483640 ; 3 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next262, %vector.body256 ] ; 2 uses
  %vec.phi258 = phi <4 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.bo, %vector.body256 ]
  %vec.phi259 = phi <4 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.bp, %vector.body256 ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.val235.i, i64 %index257 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load260 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !46
  %wide.load261 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !46
  %i.bm = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load260)
  %i.bn = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load261)
  %i.bo = add <4 x i32> %i.bm, %vec.phi258        ; 2 uses
  %i.bp = add <4 x i32> %i.bn, %vec.phi259        ; 2 uses
  %index.next262 = add nuw i64 %index257, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.bq, label %middle.block263, label %vector.body256, !llvm.loop !145

middle.block263:                                  ; preds = %vector.body256
  %bin.rdx264 = add <4 x i32> %i.bp, %i.bo
  %i.br = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx264) ; 2 uses
  %cmp.n265 = icmp eq i64 %n.vec255, %wide.trip.count15.i.i
  br i1 %cmp.n265, label %Vec_BitCount.exit.i, label %.lr.ph7.i.i.preheader

.lr.ph7.i.i.preheader:                            ; preds = %.lr.ph7.preheader.i.i, %middle.block263
  %indvars.iv12.i.i.ph = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %n.vec255, %middle.block263 ]
  %.16.i.i.ph = phi i32 [ 0, %.lr.ph7.preheader.i.i ], [ %i.br, %middle.block263 ]
  br label %.lr.ph7.i.i

.lr.ph.i255.i:                                    ; preds = %.lr.ph.i255.i.preheader, %.lr.ph.i255.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i255.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i255.i.preheader ] ; 2 uses
  %.03.i.i = phi i32 [ %i.bv, %.lr.ph.i255.i ], [ %.03.i.i.ph, %.lr.ph.i255.i.preheader ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.val235.i, i64 %indvars.iv.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !46
  %i.bu = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bt)
  %i.bv = add nuw nsw i32 %i.bu, %.03.i.i         ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i255.i, !llvm.loop !146

._crit_edge.i.i:                                  ; preds = %.lr.ph.i255.i, %middle.block, %.preheader1.i.i
  %.020.lcssa.i.i = phi i64 [ 0, %.preheader1.i.i ], [ %wide.trip.count.i.i, %middle.block ], [ %wide.trip.count.i.i, %.lr.ph.i255.i ]
  %.0.lcssa.i.i = phi i32 [ 0, %.preheader1.i.i ], [ %i.bi, %middle.block ], [ %i.bv, %.lr.ph.i255.i ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val235.i, i64 %.020.lcssa.i.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !46
  %i.by = shl nsw i32 -1, %i.av
  %i.bz = xor i32 %i.by, -1
  %i.ca = and i32 %i.bx, %i.bz
  %i.cb = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.ca)
  %i.cc = add nuw nsw i32 %i.cb, %.0.lcssa.i.i
  br label %Vec_BitCount.exit.i

.lr.ph7.i.i:                                      ; preds = %.lr.ph7.i.i.preheader, %.lr.ph7.i.i
  %indvars.iv12.i.i = phi i64 [ %indvars.iv.next13.i.i, %.lr.ph7.i.i ], [ %indvars.iv12.i.i.ph, %.lr.ph7.i.i.preheader ] ; 2 uses
  %.16.i.i = phi i32 [ %i.cg, %.lr.ph7.i.i ], [ %.16.i.i.ph, %.lr.ph7.i.i.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.val235.i, i64 %indvars.iv12.i.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !46
  %i.cf = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ce)
  %i.cg = add nuw nsw i32 %i.cf, %.16.i.i         ; 2 uses
  %indvars.iv.next13.i.i = add nuw nsw i64 %indvars.iv12.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next13.i.i, %wide.trip.count15.i.i
  br i1 %exitcond16.not.i.i, label %Vec_BitCount.exit.i, label %.lr.ph7.i.i, !llvm.loop !147

Vec_BitCount.exit.i:                              ; preds = %.lr.ph7.i.i, %middle.block263, %._crit_edge.i.i, %.preheader.i.i
  %.2.i.i = phi i32 [ %i.cc, %._crit_edge.i.i ], [ 0, %.preheader.i.i ], [ %i.br, %middle.block263 ], [ %i.cg, %.lr.ph7.i.i ]
  %i.ch = getelementptr i8, ptr %i.ar, i64 4
  %.val232.i = load i32, ptr %i.ch, align 4, !tbaa !91 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ar, i64 8
  %.val233.i = load ptr, ptr %i.ci, align 8, !tbaa !92 ; 7 uses
  %i.cj = ashr i32 %.val232.i, 5
  %i.ck = and i32 %.val232.i, 31                  ; 3 uses
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = add nsw i32 %i.cj, %i.cm                ; 6 uses
  %.not.i256.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i256.i, label %.preheader.i270.i, label %.preheader1.i257.i

end_hunk_0
begin_hunk_1_@Gia_WriteVerilogInt:bb.a
  %i.dv = add nuw nsw i32 %i.du, %.16.i275.i      ; 2 uses
  %indvars.iv.next13.i276.i = add nuw nsw i64 %indvars.iv12.i274.i, 1 ; 2 uses
  %exitcond16.not.i277.i = icmp eq i64 %indvars.iv.next13.i276.i, %wide.trip.count15.i272.i
  br i1 %exitcond16.not.i277.i, label %Vec_BitCount.exit278.i, label %.lr.ph7.i273.i, !llvm.loop !151

Vec_BitCount.exit278.i:                           ; preds = %.lr.ph7.i273.i, %middle.block295, %._crit_edge.i258.i, %.preheader.i270.i
  %.2.i261.i = phi i32 [ %i.dr, %._crit_edge.i258.i ], [ 0, %.preheader.i270.i ], [ %i.dg, %middle.block295 ], [ %i.dv, %.lr.ph7.i273.i ]
  %.not.i = icmp eq i32 %.2.i.i, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %Vec_BitCount.exit278.i
  %fwrite165.i = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr nonnull %i.y) ; 0 uses
  %.val224.i = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.dw = getelementptr i8, ptr %.val224.i, i64 4
  %.val224.val.i = load i32, ptr %i.dw, align 4, !tbaa !69
  %i.dx = load ptr, ptr %i.ag, align 8, !tbaa !88
  tail call fastcc void @GiaHie_WriteNames(ptr noundef %i.y, i8 noundef signext 120, i32 noundef %.val224.val.i, ptr noundef %i.dx, i32 noundef 8, ptr noundef nonnull %i.ao, i32 noundef 1)
  %fwrite166.i = tail call i64 @fwrite(ptr nonnull @.str.19, i64 7, i64 1, ptr nonnull %i.y) ; 0 uses
  tail call fastcc void @GiaHie_DumpIoListMulti(ptr noundef nonnull readonly %1, ptr noundef %i.y, i32 noundef 0)
  %fwrite167.i = tail call i64 @fwrite(ptr nonnull @.str.20, i64 5, i64 1, ptr nonnull %i.y) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Vec_BitCount.exit278.i
  %.not168.i = icmp eq i32 %.2.i261.i, 0
  br i1 %.not168.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %fwrite169.i = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr nonnull %i.y) ; 0 uses
  tail call fastcc void @GiaHie_DumpIoListMulti(ptr noundef nonnull readonly %1, ptr noundef %i.y, i32 noundef 1)
  %fwrite170.i = tail call i64 @fwrite(ptr nonnull @.str.19, i64 7, i64 1, ptr nonnull %i.y) ; 0 uses
  %.val226.i = load ptr, ptr %i.r, align 8, !tbaa !82
  %i.dy = getelementptr i8, ptr %.val226.i, i64 4
  %.val226.val.i = load i32, ptr %i.dy, align 4, !tbaa !69
  %i.dz = load ptr, ptr %i.ak, align 8, !tbaa !89
  tail call fastcc void @GiaHie_WriteNames(ptr noundef %i.y, i8 noundef signext 122, i32 noundef %.val226.val.i, ptr noundef %i.dz, i32 noundef 9, ptr noundef nonnull %i.ar, i32 noundef 1)
  %fwrite171.i = tail call i64 @fwrite(ptr nonnull @.str.20, i64 5, i64 1, ptr nonnull %i.y) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not.i279.i = icmp eq ptr %.val235.i, null
  br i1 %.not.i279.i, label %Vec_BitFree.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %.val235.i) #21
  br label %Vec_BitFree.exit.i

Vec_BitFree.exit.i:                               ; preds = %bb.j, %bb.i
  tail call void @free(ptr noundef nonnull %i.ao) #21
  %.not.i280.i = icmp eq ptr %.val233.i, null
  br i1 %.not.i280.i, label %Vec_BitFree.exit281.i, label %bb.k

bb.k:                                             ; preds = %Vec_BitFree.exit.i
  tail call void @free(ptr noundef nonnull %.val233.i) #21
  br label %Vec_BitFree.exit281.i

Vec_BitFree.exit281.i:                            ; preds = %bb.k, %Vec_BitFree.exit.i
  tail call void @free(ptr noundef nonnull %i.ar) #21
  %i.ea = getelementptr i8, ptr %i.ac, i64 4
  %.val230.i = load i32, ptr %i.ea, align 4, !tbaa !91 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ac, i64 8
  %.val231.i = load ptr, ptr %i.eb, align 8, !tbaa !92 ; 9 uses
  %i.ec = ashr i32 %.val230.i, 5
  %i.ed = and i32 %.val230.i, 31                  ; 3 uses
  %i.ee = icmp ne i32 %i.ed, 0
  %i.ef = zext i1 %i.ee to i32
  %i.eg = add nsw i32 %i.ec, %i.ef                ; 6 uses
  %.not.i282.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i282.i, label %.preheader.i296.i, label %.preheader1.i283.i

.preheader1.i283.i:                               ; preds = %Vec_BitFree.exit281.i
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %.lr.ph.preheader.i288.i, label %._crit_edge.i284.i

.lr.ph.preheader.i288.i:                          ; preds = %.preheader1.i283.i
  %i.ei = add nsw i32 %i.eg, -1
  %wide.trip.count.i289.i = zext nneg i32 %i.ei to i64 ; 5 uses
  %min.iters.check301 = icmp ult i32 %i.eg, 9
  br i1 %min.iters.check301, label %.lr.ph.i290.i.preheader, label %vector.ph302

vector.ph302:                                     ; preds = %.lr.ph.preheader.i288.i
  %n.vec303 = and i64 %wide.trip.count.i289.i, 2147483640 ; 3 uses
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph302
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next310, %vector.body304 ] ; 2 uses
  %vec.phi306 = phi <4 x i32> [ zeroinitializer, %vector.ph302 ], [ %i.en, %vector.body304 ]
  %vec.phi307 = phi <4 x i32> [ zeroinitializer, %vector.ph302 ], [ %i.eo, %vector.body304 ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val231.i, i64 %index305 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load308 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !46
  %wide.load309 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !46
  %i.el = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load308)
  %i.em = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load309)
  %i.en = add <4 x i32> %i.el, %vec.phi306        ; 2 uses
  %i.eo = add <4 x i32> %i.em, %vec.phi307        ; 2 uses
  %index.next310 = add nuw i64 %index305, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next310, %n.vec303
  br i1 %i.ep, label %middle.block311, label %vector.body304, !llvm.loop !152

middle.block311:                                  ; preds = %vector.body304
  %bin.rdx312 = add <4 x i32> %i.eo, %i.en
  %i.eq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx312) ; 2 uses
  %cmp.n313 = icmp eq i64 %n.vec303, %wide.trip.count.i289.i
  br i1 %cmp.n313, label %._crit_edge.i284.i, label %.lr.ph.i290.i.preheader

.lr.ph.i290.i.preheader:                          ; preds = %.lr.ph.preheader.i288.i, %middle.block311
  %indvars.iv.i291.i.ph = phi i64 [ 0, %.lr.ph.preheader.i288.i ], [ %n.vec303, %middle.block311 ]
  %.03.i292.i.ph = phi i32 [ 0, %.lr.ph.preheader.i288.i ], [ %i.eq, %middle.block311 ]
  br label %.lr.ph.i290.i

.preheader.i296.i:                                ; preds = %Vec_BitFree.exit281.i
  %i.er = icmp sgt i32 %i.eg, 0
  br i1 %i.er, label %.lr.ph7.preheader.i297.i, label %Vec_BitCount.exit304.thread.i

.lr.ph7.preheader.i297.i:                         ; preds = %.preheader.i296.i
  %wide.trip.count15.i298.i = zext nneg i32 %i.eg to i64 ; 3 uses
  %min.iters.check317 = icmp ult i32 %i.eg, 8
  br i1 %min.iters.check317, label %.lr.ph7.i299.i.preheader, label %vector.ph318

vector.ph318:                                     ; preds = %.lr.ph7.preheader.i297.i
  %n.vec319 = and i64 %wide.trip.count15.i298.i, 2147483640 ; 3 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next326, %vector.body320 ] ; 2 uses
  %vec.phi322 = phi <4 x i32> [ zeroinitializer, %vector.ph318 ], [ %i.ew, %vector.body320 ]
  %vec.phi323 = phi <4 x i32> [ zeroinitializer, %vector.ph318 ], [ %i.ex, %vector.body320 ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.val231.i, i64 %index321 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load324 = load <4 x i32>, ptr %i.es, align 4, !tbaa !46
  %wide.load325 = load <4 x i32>, ptr %i.et, align 4, !tbaa !46
  %i.eu = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load324)
  %i.ev = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load325)
  %i.ew = add <4 x i32> %i.eu, %vec.phi322        ; 2 uses
  %i.ex = add <4 x i32> %i.ev, %vec.phi323        ; 2 uses
  %index.next326 = add nuw i64 %index321, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next326, %n.vec319
  br i1 %i.ey, label %middle.block327, label %vector.body320, !llvm.loop !153

middle.block327:                                  ; preds = %vector.body320
  %bin.rdx328 = add <4 x i32> %i.ex, %i.ew
  %i.ez = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx328) ; 2 uses
  %cmp.n329 = icmp eq i64 %n.vec319, %wide.trip.count15.i298.i
  br i1 %cmp.n329, label %Vec_BitCount.exit304.i, label %.lr.ph7.i299.i.preheader

.lr.ph7.i299.i.preheader:                         ; preds = %.lr.ph7.preheader.i297.i, %middle.block327
  %indvars.iv12.i300.i.ph = phi i64 [ 0, %.lr.ph7.preheader.i297.i ], [ %n.vec319, %middle.block327 ]
  %.16.i301.i.ph = phi i32 [ 0, %.lr.ph7.preheader.i297.i ], [ %i.ez, %middle.block327 ]
  br label %.lr.ph7.i299.i

.lr.ph.i290.i:                                    ; preds = %.lr.ph.i290.i.preheader, %.lr.ph.i290.i
  %indvars.iv.i291.i = phi i64 [ %indvars.iv.next.i293.i, %.lr.ph.i290.i ], [ %indvars.iv.i291.i.ph, %.lr.ph.i290.i.preheader ] ; 2 uses
  %.03.i292.i = phi i32 [ %i.fd, %.lr.ph.i290.i ], [ %.03.i292.i.ph, %.lr.ph.i290.i.preheader ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val231.i, i64 %indvars.iv.i291.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !46
  %i.fc = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fb)
  %i.fd = add nuw nsw i32 %i.fc, %.03.i292.i      ; 2 uses
  %indvars.iv.next.i293.i = add nuw nsw i64 %indvars.iv.i291.i, 1 ; 2 uses
  %exitcond.not.i294.i = icmp eq i64 %indvars.iv.next.i293.i, %wide.trip.count.i289.i
  br i1 %exitcond.not.i294.i, label %._crit_edge.i284.i, label %.lr.ph.i290.i, !llvm.loop !154

._crit_edge.i284.i:                               ; preds = %.lr.ph.i290.i, %middle.block311, %.preheader1.i283.i
  %.020.lcssa.i285.i = phi i64 [ 0, %.preheader1.i283.i ], [ %wide.trip.count.i289.i, %middle.block311 ], [ %wide.trip.count.i289.i, %.lr.ph.i290.i ]
  %.0.lcssa.i286.i = phi i32 [ 0, %.preheader1.i283.i ], [ %i.eq, %middle.block311 ], [ %i.fd, %.lr.ph.i290.i ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.val231.i, i64 %.020.lcssa.i285.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !46
  %i.fg = shl nsw i32 -1, %i.ed
  %i.fh = xor i32 %i.fg, -1
  %i.fi = and i32 %i.ff, %i.fh
  %i.fj = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.fi)
  %i.fk = add nuw nsw i32 %i.fj, %.0.lcssa.i286.i
  br label %Vec_BitCount.exit304.i

.lr.ph7.i299.i:                                   ; preds = %.lr.ph7.i299.i.preheader, %.lr.ph7.i299.i
  %indvars.iv12.i300.i = phi i64 [ %indvars.iv.next13.i302.i, %.lr.ph7.i299.i ], [ %indvars.iv12.i300.i.ph, %.lr.ph7.i299.i.preheader ] ; 2 uses
  %.16.i301.i = phi i32 [ %i.fo, %.lr.ph7.i299.i ], [ %.16.i301.i.ph, %.lr.ph7.i299.i.preheader ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.val231.i, i64 %indvars.iv12.i300.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !46
  %i.fn = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fm)
  %i.fo = add nuw nsw i32 %i.fn, %.16.i301.i      ; 2 uses
  %indvars.iv.next13.i302.i = add nuw nsw i64 %indvars.iv12.i300.i, 1 ; 2 uses
  %exitcond16.not.i303.i = icmp eq i64 %indvars.iv.next13.i302.i, %wide.trip.count15.i298.i
  br i1 %exitcond16.not.i303.i, label %Vec_BitCount.exit304.i, label %.lr.ph7.i299.i, !llvm.loop !155

Vec_BitCount.exit304.i:                           ; preds = %.lr.ph7.i299.i, %middle.block327, %._crit_edge.i284.i
  %.2.i287.i = phi i32 [ %i.fk, %._crit_edge.i284.i ], [ %i.ez, %middle.block327 ], [ %i.fo, %.lr.ph7.i299.i ]
  %.not172.i = icmp eq i32 %.2.i287.i, 0
  br i1 %.not172.i, label %Vec_BitCount.exit304.thread.i, label %bb.l

bb.l:                                             ; preds = %Vec_BitCount.exit304.i
  %fwrite173.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 7, i64 1, ptr nonnull %i.y) ; 0 uses
  %.val201.i = load i32, ptr %i.e, align 8, !tbaa !83 ; 5 uses
  %i.fp = icmp ult i32 %.val201.i, 2
  br i1 %i.fp, label %Abc_Base10Log.exit.i41, label %.lr.ph.preheader.i.i36

.lr.ph.preheader.i.i36:                           ; preds = %bb.l
  %i.fq = add i32 %.val201.i, -1
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37, %.lr.ph.preheader.i.i36
  %.013.i.i38 = phi i32 [ %i.fs, %.lr.ph.i.i37 ], [ 0, %.lr.ph.preheader.i.i36 ]
  %.0812.i.i39 = phi i32 [ %i.fr, %.lr.ph.i.i37 ], [ %i.fq, %.lr.ph.preheader.i.i36 ] ; 2 uses
  %i.fr = udiv i32 %.0812.i.i39, 10
  %i.fs = add nuw nsw i32 %.013.i.i38, 1          ; 2 uses
  %.not.i.i40 = icmp ult i32 %.0812.i.i39, 10
  br i1 %.not.i.i40, label %Abc_Base10Log.exit.i41, label %.lr.ph.i.i37, !llvm.loop !0

Abc_Base10Log.exit.i41:                           ; preds = %.lr.ph.i.i37, %bb.l
  %.09.i.i42 = phi i32 [ %.val201.i, %bb.l ], [ %i.fs, %.lr.ph.i.i37 ]
  %i.ft = icmp sgt i32 %.val201.i, 0
  br i1 %i.ft, label %.lr.ph.split.split.us.i46, label %GiaHie_WriteNames.exit72

.lr.ph.split.split.us.i46:                        ; preds = %Abc_Base10Log.exit.i41, %bb.p
  %.040.us41.i47 = phi i32 [ %.2.us50.i56, %bb.p ], [ 1, %Abc_Base10Log.exit.i41 ] ; 2 uses
  %.02339.us42.i48 = phi i32 [ %i.gj, %bb.p ], [ 0, %Abc_Base10Log.exit.i41 ] ; 4 uses
  %.02438.us43.i49 = phi i32 [ %.226.us49.i55, %bb.p ], [ 7, %Abc_Base10Log.exit.i41 ] ; 2 uses
  %i.fu = lshr i32 %.02339.us42.i48, 5
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val231.i, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !46
  %i.fy = and i32 %.02339.us42.i48, 31
  %i.fz = shl nuw i32 1, %i.fy
  %i.ga = and i32 %i.fx, %i.fz
  %.not31.us.i51 = icmp eq i32 %i.ga, 0
  br i1 %.not31.us.i51, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split.us.i46
  %i.gb = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef 110, i32 noundef %.09.i.i42, i32 noundef %.02339.us42.i48, i32 noundef 110) #21 ; 0 uses
  %i.gc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer) #24
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = add nsw i32 %.02438.us43.i49, 2
  %i.gf = add i32 %i.ge, %i.gd                    ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, 60
  br i1 %i.gg, label %.thread.us46.i58, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not32.us44.i52 = icmp eq i32 %.040.us41.i47, 0
  %spec.select.us45.i53 = select i1 %.not32.us44.i52, ptr @.str.13, ptr @.str.43
  br label %bb.o

.thread.us46.i58:                                 ; preds = %bb.m
  %fwrite.us47.i59 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr nonnull %i.y) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.thread.us46.i58, %bb.n
  %.12537.us48.i54 = phi i32 [ 4, %.thread.us46.i58 ], [ %i.gf, %bb.n ]
  %i.gh = phi ptr [ @.str.43, %.thread.us46.i58 ], [ %spec.select.us45.i53, %bb.n ]
  %i.gi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.gh, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.split.us.i46
  %.226.us49.i55 = phi i32 [ %.12537.us48.i54, %bb.o ], [ %.02438.us43.i49, %.lr.ph.split.split.us.i46 ]
  %.2.us50.i56 = phi i32 [ 0, %bb.o ], [ %.040.us41.i47, %.lr.ph.split.split.us.i46 ]
  %i.gj = add nuw nsw i32 %.02339.us42.i48, 1     ; 2 uses
  %exitcond53.not.i57 = icmp eq i32 %i.gj, %.val201.i
  br i1 %exitcond53.not.i57, label %GiaHie_WriteNames.exit72, label %.lr.ph.split.split.us.i46, !llvm.loop !1

GiaHie_WriteNames.exit72:                         ; preds = %bb.p, %Abc_Base10Log.exit.i41
  %fwrite174.i = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr nonnull %i.y) ; 0 uses
  br label %Vec_BitCount.exit304.thread.i

Vec_BitCount.exit304.thread.i:                    ; preds = %GiaHie_WriteNames.exit72, %Vec_BitCount.exit304.i, %.preheader.i296.i
  %i.gk = getelementptr i8, ptr %i.ab, i64 4
  %.val228.i = load i32, ptr %i.gk, align 4, !tbaa !91 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.ab, i64 8
  %.val229.i = load ptr, ptr %i.gl, align 8, !tbaa !92 ; 10 uses
  %i.gm = ashr i32 %.val228.i, 5
  %i.gn = and i32 %.val228.i, 31                  ; 3 uses
  %i.go = icmp ne i32 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = add nsw i32 %i.gm, %i.gp                ; 6 uses
  %.not.i305.i = icmp eq i32 %i.gn, 0
  br i1 %.not.i305.i, label %.preheader.i319.i, label %.preheader1.i306.i

.preheader1.i306.i:                               ; preds = %Vec_BitCount.exit304.thread.i
  %i.gr = icmp sgt i32 %i.gq, 1
  br i1 %i.gr, label %.lr.ph.preheader.i311.i, label %._crit_edge.i307.i

.lr.ph.preheader.i311.i:                          ; preds = %.preheader1.i306.i
  %i.gs = add nsw i32 %i.gq, -1
  %wide.trip.count.i312.i = zext nneg i32 %i.gs to i64 ; 5 uses
  %min.iters.check333 = icmp ult i32 %i.gq, 9
  br i1 %min.iters.check333, label %.lr.ph.i313.i.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %.lr.ph.preheader.i311.i
  %n.vec335 = and i64 %wide.trip.count.i312.i, 2147483640 ; 3 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next342, %vector.body336 ] ; 2 uses
  %vec.phi338 = phi <4 x i32> [ zeroinitializer, %vector.ph334 ], [ %i.gx, %vector.body336 ]
  %vec.phi339 = phi <4 x i32> [ zeroinitializer, %vector.ph334 ], [ %i.gy, %vector.body336 ]
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.val229.i, i64 %index337 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load340 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !46
  %wide.load341 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !46
  %i.gv = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load340)
  %i.gw = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load341)
  %i.gx = add <4 x i32> %i.gv, %vec.phi338        ; 2 uses
  %i.gy = add <4 x i32> %i.gw, %vec.phi339        ; 2 uses
  %index.next342 = add nuw i64 %index337, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next342, %n.vec335
  br i1 %i.gz, label %middle.block343, label %vector.body336, !llvm.loop !156

middle.block343:                                  ; preds = %vector.body336
  %bin.rdx344 = add <4 x i32> %i.gy, %i.gx
  %i.ha = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx344) ; 2 uses
  %cmp.n345 = icmp eq i64 %n.vec335, %wide.trip.count.i312.i
  br i1 %cmp.n345, label %._crit_edge.i307.i, label %.lr.ph.i313.i.preheader

.lr.ph.i313.i.preheader:                          ; preds = %.lr.ph.preheader.i311.i, %middle.block343
  %indvars.iv.i314.i.ph = phi i64 [ 0, %.lr.ph.preheader.i311.i ], [ %n.vec335, %middle.block343 ]
  %.03.i315.i.ph = phi i32 [ 0, %.lr.ph.preheader.i311.i ], [ %i.ha, %middle.block343 ]
  br label %.lr.ph.i313.i

.preheader.i319.i:                                ; preds = %Vec_BitCount.exit304.thread.i
  %i.hb = icmp sgt i32 %i.gq, 0
  br i1 %i.hb, label %.lr.ph7.preheader.i320.i, label %Vec_BitCount.exit327.thread.i

.lr.ph7.preheader.i320.i:                         ; preds = %.preheader.i319.i
  %wide.trip.count15.i321.i = zext nneg i32 %i.gq to i64 ; 3 uses
  %min.iters.check349 = icmp ult i32 %i.gq, 8
  br i1 %min.iters.check349, label %.lr.ph7.i322.i.preheader, label %vector.ph350

vector.ph350:                                     ; preds = %.lr.ph7.preheader.i320.i
  %n.vec351 = and i64 %wide.trip.count15.i321.i, 2147483640 ; 3 uses
  br label %vector.body352

vector.body352:                                   ; preds = %vector.body352, %vector.ph350
  %index353 = phi i64 [ 0, %vector.ph350 ], [ %index.next358, %vector.body352 ] ; 2 uses
  %vec.phi354 = phi <4 x i32> [ zeroinitializer, %vector.ph350 ], [ %i.hg, %vector.body352 ]
  %vec.phi355 = phi <4 x i32> [ zeroinitializer, %vector.ph350 ], [ %i.hh, %vector.body352 ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.val229.i, i64 %index353 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load356 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !46
  %wide.load357 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !46
  %i.he = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load356)
  %i.hf = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load357)
  %i.hg = add <4 x i32> %i.he, %vec.phi354        ; 2 uses
  %i.hh = add <4 x i32> %i.hf, %vec.phi355        ; 2 uses
  %index.next358 = add nuw i64 %index353, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next358, %n.vec351
  br i1 %i.hi, label %middle.block359, label %vector.body352, !llvm.loop !157

middle.block359:                                  ; preds = %vector.body352
  %bin.rdx360 = add <4 x i32> %i.hh, %i.hg
  %i.hj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx360) ; 2 uses
  %cmp.n361 = icmp eq i64 %n.vec351, %wide.trip.count15.i321.i
  br i1 %cmp.n361, label %Vec_BitCount.exit327.i, label %.lr.ph7.i322.i.preheader

.lr.ph7.i322.i.preheader:                         ; preds = %.lr.ph7.preheader.i320.i, %middle.block359
  %indvars.iv12.i323.i.ph = phi i64 [ 0, %.lr.ph7.preheader.i320.i ], [ %n.vec351, %middle.block359 ]
  %.16.i324.i.ph = phi i32 [ 0, %.lr.ph7.preheader.i320.i ], [ %i.hj, %middle.block359 ]
  br label %.lr.ph7.i322.i

.lr.ph.i313.i:                                    ; preds = %.lr.ph.i313.i.preheader, %.lr.ph.i313.i
  %indvars.iv.i314.i = phi i64 [ %indvars.iv.next.i316.i, %.lr.ph.i313.i ], [ %indvars.iv.i314.i.ph, %.lr.ph.i313.i.preheader ] ; 2 uses
  %.03.i315.i = phi i32 [ %i.hn, %.lr.ph.i313.i ], [ %.03.i315.i.ph, %.lr.ph.i313.i.preheader ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.val229.i, i64 %indvars.iv.i314.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !46
  %i.hm = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hl)
  %i.hn = add nuw nsw i32 %i.hm, %.03.i315.i      ; 2 uses
  %indvars.iv.next.i316.i = add nuw nsw i64 %indvars.iv.i314.i, 1 ; 2 uses
  %exitcond.not.i317.i = icmp eq i64 %indvars.iv.next.i316.i, %wide.trip.count.i312.i
  br i1 %exitcond.not.i317.i, label %._crit_edge.i307.i, label %.lr.ph.i313.i, !llvm.loop !158

._crit_edge.i307.i:                               ; preds = %.lr.ph.i313.i, %middle.block343, %.preheader1.i306.i
  %.020.lcssa.i308.i = phi i64 [ 0, %.preheader1.i306.i ], [ %wide.trip.count.i312.i, %middle.block343 ], [ %wide.trip.count.i312.i, %.lr.ph.i313.i ]
  %.0.lcssa.i309.i = phi i32 [ 0, %.preheader1.i306.i ], [ %i.ha, %middle.block343 ], [ %i.hn, %.lr.ph.i313.i ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.val229.i, i64 %.020.lcssa.i308.i
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !46
  %i.hq = shl nsw i32 -1, %i.gn
  %i.hr = xor i32 %i.hq, -1
  %i.hs = and i32 %i.hp, %i.hr
  %i.ht = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.hs)
  %i.hu = add nuw nsw i32 %i.ht, %.0.lcssa.i309.i
  br label %Vec_BitCount.exit327.i

.lr.ph7.i322.i:                                   ; preds = %.lr.ph7.i322.i.preheader, %.lr.ph7.i322.i
  %indvars.iv12.i323.i = phi i64 [ %indvars.iv.next13.i325.i, %.lr.ph7.i322.i ], [ %indvars.iv12.i323.i.ph, %.lr.ph7.i322.i.preheader ] ; 2 uses
  %.16.i324.i = phi i32 [ %i.hy, %.lr.ph7.i322.i ], [ %.16.i324.i.ph, %.lr.ph7.i322.i.preheader ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.val229.i, i64 %indvars.iv12.i323.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !46
  %i.hx = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hw)
  %i.hy = add nuw nsw i32 %i.hx, %.16.i324.i      ; 2 uses
  %indvars.iv.next13.i325.i = add nuw nsw i64 %indvars.iv12.i323.i, 1 ; 2 uses
  %exitcond16.not.i326.i = icmp eq i64 %indvars.iv.next13.i325.i, %wide.trip.count15.i321.i
  br i1 %exitcond16.not.i326.i, label %Vec_BitCount.exit327.i, label %.lr.ph7.i322.i, !llvm.loop !159

Vec_BitCount.exit327.i:                           ; preds = %.lr.ph7.i322.i, %middle.block359, %._crit_edge.i307.i
  %.2.i310.i = phi i32 [ %i.hu, %._crit_edge.i307.i ], [ %i.hj, %middle.block359 ], [ %i.hy, %.lr.ph7.i322.i ]
  %.not175.i = icmp eq i32 %.2.i310.i, 0
  br i1 %.not175.i, label %Vec_BitCount.exit327.thread.i, label %bb.q

bb.q:                                             ; preds = %Vec_BitCount.exit327.i
  %fwrite176.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 7, i64 1, ptr nonnull %i.y) ; 0 uses
  %.val200.i = load i32, ptr %i.e, align 8, !tbaa !83 ; 5 uses
  %i.hz = icmp ult i32 %.val200.i, 2
  br i1 %i.hz, label %Abc_Base10Log.exit.i33, label %.lr.ph.preheader.i.i28

.lr.ph.preheader.i.i28:                           ; preds = %bb.q
  %i.ia = add i32 %.val200.i, -1
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29, %.lr.ph.preheader.i.i28
  %.013.i.i30 = phi i32 [ %i.ic, %.lr.ph.i.i29 ], [ 0, %.lr.ph.preheader.i.i28 ]
  %.0812.i.i31 = phi i32 [ %i.ib, %.lr.ph.i.i29 ], [ %i.ia, %.lr.ph.preheader.i.i28 ] ; 2 uses
  %i.ib = udiv i32 %.0812.i.i31, 10
  %i.ic = add nuw nsw i32 %.013.i.i30, 1          ; 2 uses
  %.not.i.i32 = icmp ult i32 %.0812.i.i31, 10
  br i1 %.not.i.i32, label %Abc_Base10Log.exit.i33, label %.lr.ph.i.i29, !llvm.loop !0

Abc_Base10Log.exit.i33:                           ; preds = %.lr.ph.i.i29, %bb.q
  %.09.i.i34 = phi i32 [ %.val200.i, %bb.q ], [ %i.ic, %.lr.ph.i.i29 ]
  %i.id = icmp sgt i32 %.val200.i, 0
  br i1 %i.id, label %.lr.ph.split.split.us.i, label %GiaHie_WriteNames.exit

.lr.ph.split.split.us.i:                          ; preds = %Abc_Base10Log.exit.i33, %bb.u
  %.040.us41.i = phi i32 [ %.2.us50.i, %bb.u ], [ 1, %Abc_Base10Log.exit.i33 ] ; 2 uses
  %.02339.us42.i = phi i32 [ %i.it, %bb.u ], [ 0, %Abc_Base10Log.exit.i33 ] ; 4 uses
  %.02438.us43.i = phi i32 [ %.226.us49.i, %bb.u ], [ 7, %Abc_Base10Log.exit.i33 ] ; 2 uses
  %i.ie = lshr i32 %.02339.us42.i, 5
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.val229.i, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !46
  %i.ii = and i32 %.02339.us42.i, 31
  %i.ij = shl nuw i32 1, %i.ii
  %i.ik = and i32 %i.ih, %i.ij
  %.not31.us.i = icmp eq i32 %i.ik, 0
  br i1 %.not31.us.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.us.i
  %i.il = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef 105, i32 noundef %.09.i.i34, i32 noundef %.02339.us42.i, i32 noundef 105) #21 ; 0 uses
  %i.im = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer) #24
  %i.in = trunc i64 %i.im to i32
  %i.io = add nsw i32 %.02438.us43.i, 2
  %i.ip = add i32 %i.io, %i.in                    ; 2 uses
  %i.iq = icmp sgt i32 %i.ip, 60
  br i1 %i.iq, label %.thread.us46.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not32.us44.i = icmp eq i32 %.040.us41.i, 0
  %spec.select.us45.i = select i1 %.not32.us44.i, ptr @.str.13, ptr @.str.43
  br label %bb.t

.thread.us46.i:                                   ; preds = %bb.r
  %fwrite.us47.i = tail call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr nonnull %i.y) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %.thread.us46.i, %bb.s
  %.12537.us48.i = phi i32 [ 4, %.thread.us46.i ], [ %i.ip, %bb.s ]
  %i.ir = phi ptr [ @.str.43, %.thread.us46.i ], [ %spec.select.us45.i, %bb.s ]
  %i.is = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.ir, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.split.us.i
  %.226.us49.i = phi i32 [ %.12537.us48.i, %bb.t ], [ %.02438.us43.i, %.lr.ph.split.split.us.i ]
  %.2.us50.i = phi i32 [ 0, %bb.t ], [ %.040.us41.i, %.lr.ph.split.split.us.i ]
  %i.it = add nuw nsw i32 %.02339.us42.i, 1       ; 2 uses
  %exitcond53.not.i = icmp eq i32 %i.it, %.val200.i
  br i1 %exitcond53.not.i, label %GiaHie_WriteNames.exit, label %.lr.ph.split.split.us.i, !llvm.loop !1

GiaHie_WriteNames.exit:                           ; preds = %bb.u, %Abc_Base10Log.exit.i33
  %fwrite177.i = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr nonnull %i.y) ; 0 uses
  br label %Vec_BitCount.exit327.thread.i

Vec_BitCount.exit327.thread.i:                    ; preds = %GiaHie_WriteNames.exit, %Vec_BitCount.exit327.i, %.preheader.i319.i
  %i.iu = getelementptr i8, ptr %1, i64 32        ; 5 uses
  %i.iv = load ptr, ptr %i.k, align 8, !tbaa !81  ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 4
  %.val194349.i = load i32, ptr %i.iw, align 4, !tbaa !69
  %i.ix = icmp sgt i32 %.val194349.i, 0
  br i1 %i.ix, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %Vec_BitCount.exit327.thread.i, %bb.z
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.z ], [ 0, %Vec_BitCount.exit327.thread.i ] ; 4 uses
  %i.iy = phi ptr [ %i.kh, %bb.z ], [ %i.iv, %Vec_BitCount.exit327.thread.i ]
  %.val236.i = load ptr, ptr %i.iu, align 8, !tbaa !67 ; 3 uses
  %.not178.i = icmp eq ptr %.val236.i, null
  br i1 %.not178.i, label %.critedge.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.iz = getelementptr i8, ptr %i.iy, i64 8
  %.val237.val.i = load ptr, ptr %i.iz, align 8, !tbaa !71
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.val237.val.i, i64 %indvars.iv.i
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !46 ; 4 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [12 x i8], ptr %.val236.i, i64 %i.jc
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ashr i32 %i.jb, 5
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %.val231.i, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !46
  %i.jj = and i32 %i.jb, 31
  %i.jk = shl nuw i32 1, %i.jj
  %i.jl = and i32 %i.jk, %i.ji
  %.not192.i = icmp eq i32 %i.jl, 0
  br i1 %.not192.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jm = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef 110, i32 noundef %.09.i.i, i32 noundef %i.jb, i32 noundef 110) #21 ; 0 uses
  %i.jn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.21, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  %i.jo = load ptr, ptr %i.ag, align 8, !tbaa !88
  %i.jp = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call fastcc void @GiaHie_ObjGetDumpName(ptr noundef %i.jo, i8 noundef signext 120, i32 noundef %i.jp, i32 noundef %.09.i244.i)
  %i.jq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.22, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  %.val197.pre.i = load ptr, ptr %i.iu, align 8, !tbaa !67
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.val197.i = phi ptr [ %.val197.pre.i, %bb.w ], [ %.val236.i, %bb.v ]
  %i.jr = ptrtoint ptr %.val197.i to i64
  %i.js = sub i64 %i.je, %i.jr
  %i.jt = sdiv exact i64 %i.js, 12
  %i.ju = trunc i64 %i.jt to i32                  ; 3 uses
  %i.jv = ashr i32 %i.ju, 5
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %.val229.i, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !46
  %i.jz = and i32 %i.ju, 31
  %i.ka = shl nuw i32 1, %i.jz
  %i.kb = and i32 %i.ka, %i.jy
  %.not193.i = icmp eq i32 %i.kb, 0
  br i1 %.not193.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.kc = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef 105, i32 noundef %.09.i.i, i32 noundef %i.ju, i32 noundef 105) #21 ; 0 uses
  %i.kd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.23, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  %i.ke = load ptr, ptr %i.ag, align 8, !tbaa !88
  %i.kf = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call fastcc void @GiaHie_ObjGetDumpName(ptr noundef %i.ke, i8 noundef signext 120, i32 noundef %i.kf, i32 noundef %.09.i244.i)
  %i.kg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.22, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.kh = load ptr, ptr %i.k, align 8, !tbaa !81  ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kh, i64 4
  %.val194.i = load i32, ptr %i.ki, align 4, !tbaa !69
  %i.kj = sext i32 %.val194.i to i64
  %i.kk = icmp slt i64 %indvars.iv.next.i, %i.kj
  br i1 %i.kk, label %.lr.ph.i, label %.critedge.i, !llvm.loop !160

.critedge.i:                                      ; preds = %bb.z, %.lr.ph.i, %Vec_BitCount.exit327.thread.i
  %fputc180.i = tail call i32 @fputc(i32 10, ptr nonnull %i.y) ; 0 uses
  %i.kl = load i32, ptr %i.e, align 8, !tbaa !83
  %i.km = icmp sgt i32 %i.kl, 0
  br i1 %i.km, label %.lr.ph353.i, label %.critedge2.i

.lr.ph353.i:                                      ; preds = %.critedge.i, %bb.ad
  %indvars.iv370.i = phi i64 [ %indvars.iv.next371.i, %bb.ad ], [ 0, %.critedge.i ] ; 4 uses
  %.val195.i = load ptr, ptr %i.iu, align 8, !tbaa !67 ; 2 uses
  %i.kn = getelementptr inbounds nuw [12 x i8], ptr %.val195.i, i64 %indvars.iv370.i ; 3 uses
  %.not181.i = icmp eq ptr %.val195.i, null
  br i1 %.not181.i, label %.critedge2.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph353.i
  %.val204.i = load i64, ptr %i.kn, align 4       ; 2 uses
  %i.ko = and i64 %.val204.i, 2147483648
  %.not.i328.i = icmp ne i64 %i.ko, 0
  %i.kp = and i64 %.val204.i, 536870911
  %i.kq = icmp eq i64 %i.kp, 536870911
  %narrow.i.not.i = or i1 %.not.i328.i, %i.kq
  br i1 %narrow.i.not.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kr = trunc nuw nsw i64 %indvars.iv370.i to i32 ; 6 uses
  %i.ks = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef 110, i32 noundef %.09.i.i, i32 noundef %i.kr, i32 noundef 110) #21 ; 0 uses
  %i.kt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.24, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  %.val208.i = load i64, ptr %i.kn, align 4
  %i.ku = trunc i64 %.val208.i to i32             ; 2 uses
  %i.kv = and i32 %i.ku, 536870912
  %.not189.i = icmp eq i32 %i.kv, 0
  %i.kw = and i32 %i.ku, 536870911
  %i.kx = sub nsw i32 %i.kr, %i.kw
  %i.ky = select i1 %.not189.i, i32 110, i32 105  ; 2 uses
  %i.kz = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %i.ky, i32 noundef %.09.i.i, i32 noundef %i.kx, i32 noundef %i.ky) #21 ; 0 uses
  %i.la = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.25, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  %.val210.i = load i64, ptr %i.kn, align 4       ; 2 uses
  %i.lb = and i64 %.val210.i, 2305843009213693952
  %.not190.i = icmp eq i64 %i.lb, 0
  %i.lc = lshr i64 %.val210.i, 32
  %i.ld = trunc nuw i64 %i.lc to i32
  %i.le = and i32 %i.ld, 536870911
  %i.lf = sub nsw i32 %i.kr, %i.le
  %i.lg = select i1 %.not190.i, i32 110, i32 105  ; 2 uses
  %i.lh = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %i.lg, i32 noundef %.09.i.i, i32 noundef %i.lf, i32 noundef %i.lg) #21 ; 0 uses
  %i.li = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.22, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  %i.lj = lshr i64 %indvars.iv370.i, 5
  %i.lk = and i64 %i.lj, 134217727
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.val229.i, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !46
  %i.ln = and i32 %i.kr, 31
  %i.lo = shl nuw i32 1, %i.ln
  %i.lp = and i32 %i.lm, %i.lo
  %.not191.i = icmp eq i32 %i.lp, 0
  br i1 %.not191.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lq = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef 105, i32 noundef %.09.i.i, i32 noundef %i.kr, i32 noundef 105) #21 ; 0 uses
  %i.lr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.23, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  %i.ls = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef 110, i32 noundef %.09.i.i, i32 noundef %i.kr, i32 noundef 110) #21 ; 0 uses
  %i.lt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.22, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %indvars.iv.next371.i = add nuw nsw i64 %indvars.iv370.i, 1 ; 2 uses
  %i.lu = load i32, ptr %i.e, align 8, !tbaa !83
  %i.lv = sext i32 %i.lu to i64
  %i.lw = icmp slt i64 %indvars.iv.next371.i, %i.lv
  br i1 %i.lw, label %.lr.ph353.i, label %.critedge2.i, !llvm.loop !161

.critedge2.i:                                     ; preds = %bb.ad, %.lr.ph353.i, %.critedge.i
  %fputc183.i = tail call i32 @fputc(i32 10, ptr nonnull %i.y) ; 0 uses
  %i.lx = load ptr, ptr %i.r, align 8, !tbaa !82  ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lx, i64 4
  %.val355.i = load i32, ptr %i.ly, align 4, !tbaa !69
  %i.lz = icmp sgt i32 %.val355.i, 0
  br i1 %i.lz, label %.lr.ph357.i, label %.critedge4.i

.lr.ph357.i:                                      ; preds = %.critedge2.i, %bb.ah
  %indvars.iv373.i = phi i64 [ %indvars.iv.next374.i, %bb.ah ], [ 0, %.critedge2.i ] ; 3 uses
  %i.ma = phi ptr [ %i.nd, %bb.ah ], [ %i.lx, %.critedge2.i ]
  %.val219.i = load ptr, ptr %i.iu, align 8, !tbaa !67 ; 2 uses
  %i.mb = getelementptr i8, ptr %i.ma, i64 8
  %.val220.val.i = load ptr, ptr %i.mb, align 8, !tbaa !71
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.val220.val.i, i64 %indvars.iv373.i
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !46
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [12 x i8], ptr %.val219.i, i64 %i.me ; 3 uses
  %.not184.i = icmp eq ptr %.val219.i, null
  br i1 %.not184.i, label %.critedge4.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph357.i
  %i.mg = load ptr, ptr %i.ak, align 8, !tbaa !89
  %i.mh = trunc nuw nsw i64 %indvars.iv373.i to i32
  tail call fastcc void @GiaHie_ObjGetDumpName(ptr noundef %i.mg, i8 noundef signext 122, i32 noundef %i.mh, i32 noundef %.09.i251.i)
  %i.mi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.26, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  %i.mj = load i64, ptr %i.mf, align 4            ; 2 uses
  %i.mk = and i64 %i.mj, 536870911
  %i.ml = sub nsw i64 0, %i.mk
  %i.mm = getelementptr inbounds [12 x i8], ptr %i.mf, i64 %i.ml
  %.val238.i = load i64, ptr %i.mm, align 4
  %i.mn = and i64 %.val238.i, 2305843005455597567
  %narrow.i329.not.i = icmp eq i64 %i.mn, 2305843005455597567
  %i.mo = trunc i64 %i.mj to i32                  ; 3 uses
  br i1 %narrow.i329.not.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.mp = lshr i32 %i.mo, 29
  %i.mq = and i32 %i.mp, 1
  %i.mr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.27, i32 noundef %i.mq) #21 ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ms = and i32 %i.mo, 536870912
  %.not187.i = icmp eq i32 %i.ms, 0
  %.val209.i = load ptr, ptr %i.iu, align 8, !tbaa !67
  %i.mt = ptrtoint ptr %i.mf to i64
  %i.mu = ptrtoint ptr %.val209.i to i64
  %i.mv = sub i64 %i.mt, %i.mu
  %i.mw = sdiv exact i64 %i.mv, 12
  %i.mx = trunc i64 %i.mw to i32
  %i.my = and i32 %i.mo, 536870911
  %i.mz = sub nsw i32 %i.mx, %i.my
  %i.na = select i1 %.not187.i, i32 110, i32 105  ; 2 uses
  %i.nb = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer, ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %i.na, i32 noundef %.09.i.i, i32 noundef %i.mz, i32 noundef %i.na) #21 ; 0 uses
  %i.nc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.28, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %indvars.iv.next374.i = add nuw nsw i64 %indvars.iv373.i, 1 ; 2 uses
  %i.nd = load ptr, ptr %i.r, align 8, !tbaa !82  ; 2 uses
  %i.ne = getelementptr i8, ptr %i.nd, i64 4
  %.val.i = load i32, ptr %i.ne, align 4, !tbaa !69
  %i.nf = sext i32 %.val.i to i64
  %i.ng = icmp slt i64 %indvars.iv.next374.i, %i.nf
  br i1 %i.ng, label %.lr.ph357.i, label %.critedge4.i, !llvm.loop !162

.critedge4.i:                                     ; preds = %bb.ah, %.lr.ph357.i, %.critedge2.i
  %fwrite185.i = tail call i64 @fwrite(ptr nonnull @.str.29, i64 12, i64 1, ptr nonnull %i.y) ; 0 uses
  %i.nh = tail call i32 @fclose(ptr noundef nonnull %i.y) ; 0 uses
  %.not.i330.i = icmp eq ptr %.val229.i, null
  br i1 %.not.i330.i, label %Vec_BitFree.exit331.i, label %bb.ai

bb.ai:                                            ; preds = %.critedge4.i
  tail call void @free(ptr noundef nonnull %.val229.i) #21
  br label %Vec_BitFree.exit331.i

Vec_BitFree.exit331.i:                            ; preds = %bb.ai, %.critedge4.i
  tail call void @free(ptr noundef nonnull %i.ab) #21
  %.not.i332.i = icmp eq ptr %.val231.i, null
  br i1 %.not.i332.i, label %Vec_BitFree.exit333.i, label %bb.aj

bb.aj:                                            ; preds = %Vec_BitFree.exit331.i
  tail call void @free(ptr noundef nonnull %.val231.i) #21
  br label %Vec_BitFree.exit333.i

Vec_BitFree.exit333.i:                            ; preds = %bb.aj, %Vec_BitFree.exit331.i
  tail call void @free(ptr noundef nonnull %i.ac) #21
  br label %GiaHie_DumpInterfaceGates.exit

bb.ak:                                            ; preds = %bb.b
  br i1 %i.f, label %Abc_Base10Log.exit.i27, label %.lr.ph.preheader.i.i9

.lr.ph.preheader.i.i9:                            ; preds = %bb.ak
  %i.ni = add i32 %.val126.i, -1                  ; 2 uses
  br label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i.i10, %.lr.ph.preheader.i.i9
  %.013.i.i11 = phi i32 [ %i.nk, %.lr.ph.i.i10 ], [ 0, %.lr.ph.preheader.i.i9 ]
  %.0812.i.i12 = phi i32 [ %i.nj, %.lr.ph.i.i10 ], [ %i.ni, %.lr.ph.preheader.i.i9 ] ; 2 uses
  %i.nj = udiv i32 %.0812.i.i12, 10
  %i.nk = add nuw nsw i32 %.013.i.i11, 1          ; 2 uses
  %.not.i.i13 = icmp ult i32 %.0812.i.i12, 10
  br i1 %.not.i.i13, label %Abc_Base10Log.exit.thread.i, label %.lr.ph.i.i10, !llvm.loop !0

Abc_Base10Log.exit.i27:                           ; preds = %bb.ak
  %i.nl = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %.val134.i = load i32, ptr %i.nl, align 8, !tbaa !84 ; 2 uses
  %i.nm = icmp sgt i32 %.val134.i, 0
  br i1 %i.nm, label %Abc_Base10Log.exit.i.i, label %bb.cn

Abc_Base10Log.exit.thread.i:                      ; preds = %.lr.ph.i.i10
  %i.nn = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %.val134164.i = load i32, ptr %i.nn, align 8, !tbaa !84 ; 2 uses
  %i.no = icmp sgt i32 %.val134164.i, 0
  br i1 %i.no, label %.lr.ph.i.i.i.a, label %bb.cn

.lr.ph.i.i.i.a:                                   ; preds = %Abc_Base10Log.exit.thread.i, %.lr.ph.i.i.i.a
  %.013.i.i.i = phi i32 [ %i.nq, %.lr.ph.i.i.i.a ], [ 0, %Abc_Base10Log.exit.thread.i ]
  %.0812.i.i.i = phi i32 [ %i.np, %.lr.ph.i.i.i.a ], [ %i.ni, %Abc_Base10Log.exit.thread.i ] ; 2 uses
  %i.np = udiv i32 %.0812.i.i.i, 10
  %i.nq = add nuw nsw i32 %.013.i.i.i, 1          ; 2 uses
  %.not.i.i.i = icmp ult i32 %.0812.i.i.i, 10
  br i1 %.not.i.i.i, label %Abc_Base10Log.exit.i.i, label %.lr.ph.i.i.i.a, !llvm.loop !0

Abc_Base10Log.exit.i.i:                           ; preds = %.lr.ph.i.i.i.a, %Abc_Base10Log.exit.i27
  %i.nr = phi ptr [ %i.nl, %Abc_Base10Log.exit.i27 ], [ %i.nn, %.lr.ph.i.i.i.a ] ; 10 uses
  %.val134166169.i = phi i32 [ %.val134.i, %Abc_Base10Log.exit.i27 ], [ %.val134164.i, %.lr.ph.i.i.i.a ]
  %.09.i.i.i = phi i32 [ %.val126.i, %Abc_Base10Log.exit.i27 ], [ %i.nq, %.lr.ph.i.i.i.a ] ; 22 uses
  %.not.i143.i = icmp eq i32 %4, 0                ; 2 uses
  br i1 %.not.i143.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %Abc_Base10Log.exit.i.i
  %i.ns = getelementptr i8, ptr %1, i64 64
  %.val199.i.i = load ptr, ptr %i.ns, align 8, !tbaa !81
  %i.nt = getelementptr i8, ptr %.val199.i.i, i64 4
  %.val199.val.i.i = load i32, ptr %i.nt, align 4, !tbaa !69
  %i.nu = sub nsw i32 %.val199.val.i.i, %.val134166169.i
  %i.nv = icmp slt i32 %i.nu, 2
  br i1 %i.nv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %GiaHie_DumpInterfaceGates.exit

bb.an:                                            ; preds = %bb.al, %Abc_Base10Log.exit.i.i
  %i.nw = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) ; 87 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ny = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %0) ; 0 uses
  br label %GiaHie_DumpInterfaceGates.exit

bb.ap:                                            ; preds = %bb.an
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.11, i64 7, i64 1, ptr nonnull %i.nw) ; 0 uses
  %i.nz = load ptr, ptr %1, align 8, !tbaa !73
  tail call fastcc void @GiaHie_DumpModuleName(ptr noundef %i.nw, ptr noundef %i.nz)
  %fwrite134.i.i = tail call i64 @fwrite(ptr nonnull @.str.47, i64 3, i64 1, ptr nonnull %i.nw) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %.not.i217.i.i = icmp ne i32 %4, 0              ; 2 uses
  %i.oa = zext i1 %.not.i217.i.i to i32
  store i32 %i.oa, ptr %i.b, align 4, !tbaa !46
  br i1 %.not.i217.i.i, label %GiaHie_DumpPortDeclsSeq.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %fwrite.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.64, i64 13, i64 1, ptr nonnull %i.nw) ; 0 uses
  %fwrite9.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.65, i64 11, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %GiaHie_DumpPortDeclsSeq.exit.i.i

GiaHie_DumpPortDeclsSeq.exit.i.i:                 ; preds = %bb.aq, %bb.ap
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !88
  %.val.i.i.i = load i32, ptr %i.nr, align 8, !tbaa !84
  %i.od = getelementptr i8, ptr %1, i64 64        ; 10 uses
  %.val10.i.i.i = load ptr, ptr %i.od, align 8, !tbaa !81
  %i.oe = getelementptr i8, ptr %.val10.i.i.i, i64 4
  %.val10.val.i.i.i = load i32, ptr %i.oe, align 4, !tbaa !69
  %i.of = sub nsw i32 %.val10.val.i.i.i, %.val.i.i.i
  call fastcc void @GiaHie_DumpPortDeclsOneSome(ptr noundef %i.oc, i32 noundef %i.of, ptr noundef nonnull %i.nw, i32 noundef 0, ptr noundef %i.b)
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !89
  %.val11.i.i.i = load i32, ptr %i.nr, align 8, !tbaa !84
  %i.oi = getelementptr i8, ptr %1, i64 72        ; 11 uses
  %.val12.i.i.i = load ptr, ptr %i.oi, align 8, !tbaa !82
  %i.oj = getelementptr i8, ptr %.val12.i.i.i, i64 4
  %.val12.val.i.i.i = load i32, ptr %i.oj, align 4, !tbaa !69
  %i.ok = sub nsw i32 %.val12.val.i.i.i, %.val11.i.i.i
  call fastcc void @GiaHie_DumpPortDeclsOneSome(ptr noundef %i.oh, i32 noundef %i.ok, ptr noundef nonnull %i.nw, i32 noundef 1, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %fwrite135.i.i = tail call i64 @fwrite(ptr nonnull @.str.48, i64 5, i64 1, ptr nonnull %i.nw) ; 0 uses
  %.val196.i.i = load i32, ptr %i.nr, align 8, !tbaa !84
  %.val197.i.i = load ptr, ptr %i.od, align 8, !tbaa !81
  %i.ol = getelementptr i8, ptr %.val197.i.i, i64 4
  %.val197.val.i.i = load i32, ptr %i.ol, align 4, !tbaa !69
  %.not136.i.i = icmp eq i32 %.val197.val.i.i, %.val196.i.i
  br i1 %.not136.i.i, label %bb.bf, label %bb.ar

bb.ar:                                            ; preds = %GiaHie_DumpPortDeclsSeq.exit.i.i
  %fwrite137.i.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 7, i64 1, ptr nonnull %i.nw) ; 0 uses
  %.val194.i.i = load i32, ptr %i.nr, align 8, !tbaa !84
  %.val195.i.i = load ptr, ptr %i.od, align 8, !tbaa !81
  %i.om = getelementptr i8, ptr %.val195.i.i, i64 4
  %.val195.val.i.i = load i32, ptr %i.om, align 4, !tbaa !69
  %i.on = sub nsw i32 %.val195.val.i.i, %.val194.i.i
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef %i.nw, ptr noundef nonnull readonly %1, i32 noundef 0, i32 noundef %i.on, i32 noundef %.09.i.i.i, i32 noundef 7, i32 noundef 0, i32 noundef 1)
  %fwrite138.i.i = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr nonnull %i.nw) ; 0 uses
  %.val192.i.i = load i32, ptr %i.nr, align 8, !tbaa !84
  %.val193.i.i = load ptr, ptr %i.od, align 8, !tbaa !81
  %i.oo = getelementptr i8, ptr %.val193.i.i, i64 4
  %.val193.val.i.i = load i32, ptr %i.oo, align 4, !tbaa !69
  %i.op = sub nsw i32 %.val193.val.i.i, %.val192.i.i ; 11 uses
  %i.oq = load ptr, ptr %i.ob, align 8, !tbaa !88 ; 5 uses
  %i.or = icmp sgt i32 %i.op, 2
  br i1 %i.or, label %bb.as, label %.thread.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.os = icmp eq ptr %i.oq, null
  br i1 %i.os, label %.lr.ph.preheader.i.i.i.i.a, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ot = tail call fastcc ptr @GiaHie_CountSymbsSome(ptr noundef readonly %i.oq, i32 noundef range(i32 3, -2147483648) %i.op) ; 4 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 4
  %.val.i.i.i.i = load i32, ptr %i.ou, align 4, !tbaa !69 ; 2 uses
  %i.ov = sdiv i32 %.val.i.i.i.i, 2               ; 2 uses
  %i.ow = getelementptr i8, ptr %i.ot, i64 8
  %i.ox = sext i32 %i.ov to i64
  %smax.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ov, i32 0)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax.i.i.i.i to i64
  %i.oy = load ptr, ptr %i.ow, align 8, !tbaa !71 ; 5 uses
  %exitcond.not.i.not.not.i.i.i241 = icmp slt i32 %.val.i.i.i.i, 2
  br i1 %exitcond.not.i.not.not.i.i.i241, label %.critedge.i.i.i.i._crit_edge, label %.lr.ph244

.critedge.i.i.i.i:                                ; preds = %bb.av
  %exitcond.not.i.not.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.not.not.i.i.i, label %.critedge.i.i.i.i._crit_edge, label %.lr.ph244, !llvm.loop !2

.lr.ph244:                                        ; preds = %bb.at, %.critedge.i.i.i.i
  %indvars.iv.i.i.i.i242 = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ 0, %bb.at ] ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i.i242, 3
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.idx.i.i.i.i
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !46
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i242, 1 ; 4 uses
  %i.pb = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.ox
  br i1 %i.pb, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph244
  %.idx32.i.i.i.i = shl nuw nsw i64 %indvars.iv.next.i.i.i.i, 3
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.idx32.i.i.i.i
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !46
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph244
  %i.pe = phi i32 [ %i.pd, %bb.au ], [ %i.op, %.lr.ph244 ]
  %i.pf = sub nsw i32 %i.pe, %i.pa
  %i.pg = icmp slt i32 %i.pf, 2
  br i1 %i.pg, label %.critedge.i.i.i.i, label %.sink.split.sink.split.i.i.i.i, !llvm.loop !2

.critedge.i.i.i.i._crit_edge:                     ; preds = %.critedge.i.i.i.i, %bb.at
  %.not.i28.i.i.i.i = icmp eq ptr %i.oy, null
  br i1 %.not.i28.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.sink.split, label %.lr.ph.preheader.i.i.i.i.critedge

.sink.split.sink.split.i.i.i.i:                   ; preds = %bb.av
  tail call void @free(ptr noundef nonnull %i.oy) #21
  tail call void @free(ptr noundef nonnull %i.ot) #21
  br label %.thread111.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ar
  %i.ph = icmp eq i32 %i.op, 0
  br i1 %i.ph, label %GiaHie_DumpInputAssignsSome.exit.i.i, label %.thread111.i.i.i

.lr.ph.preheader.i.i.i.i.critedge:                ; preds = %.critedge.i.i.i.i._crit_edge
  tail call void @free(ptr noundef nonnull %i.oy) #21
  br label %.lr.ph.preheader.i.i.i.i.sink.split

.lr.ph.preheader.i.i.i.i.sink.split:              ; preds = %.critedge.i.i.i.i._crit_edge, %.lr.ph.preheader.i.i.i.i.critedge
  tail call void @free(ptr noundef nonnull %i.ot) #21
  br label %.lr.ph.preheader.i.i.i.i.a

.lr.ph.preheader.i.i.i.i.a:                       ; preds = %.lr.ph.preheader.i.i.i.i.sink.split, %bb.as
  %i.pi = add nsw i32 %i.op, -1
  br label %.lr.ph.i.i.i.i.a

.lr.ph.i.i.i.i.a:                                 ; preds = %.lr.ph.i.i.i.i.a, %.lr.ph.preheader.i.i.i.i.a
  %.013.i.i.i.i = phi i32 [ %i.pk, %.lr.ph.i.i.i.i.a ], [ 0, %.lr.ph.preheader.i.i.i.i.a ]
  %.0812.i.i.i.i = phi i32 [ %i.pj, %.lr.ph.i.i.i.i.a ], [ %i.pi, %.lr.ph.preheader.i.i.i.i.a ] ; 2 uses
  %i.pj = udiv i32 %.0812.i.i.i.i, 10
  %i.pk = add nuw nsw i32 %.013.i.i.i.i, 1        ; 2 uses
  %.not.i.i.i.i = icmp ult i32 %.0812.i.i.i.i, 10
  br i1 %.not.i.i.i.i, label %Abc_Base10Log.exit.i.i.i, label %.lr.ph.i.i.i.i.a, !llvm.loop !0

Abc_Base10Log.exit.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.a
  %spec.store.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.pk, i32 2)
  %fwrite84.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr nonnull %i.nw) ; 0 uses
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef nonnull %i.nw, ptr noundef nonnull readonly %1, i32 noundef 0, i32 noundef %i.op, i32 noundef %.09.i.i.i, i32 noundef 11, i32 noundef 1, i32 noundef 1)
  %fwrite85.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.71, i64 11, i64 1, ptr nonnull %i.nw) ; 0 uses
  tail call fastcc void @GiaHie_WritePiPoNames(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.68, i32 noundef %i.op, i32 noundef %spec.store.select.i.i.i, i32 noundef 18, i32 noundef 1)
  %fwrite86.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.72, i64 4, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %GiaHie_DumpInputAssignsSome.exit.i.i

.thread111.i.i.i:                                 ; preds = %.sink.split.sink.split.i.i.i.i, %.thread.i.i.i
  %i.pl = icmp eq ptr %i.oq, null
  br i1 %i.pl, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.thread111.i.i.i
  %i.pm = icmp eq i32 %i.op, 1
  br i1 %i.pm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %fwrite82.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.73, i64 9, i64 1, ptr nonnull %i.nw) ; 0 uses
  %.val95.i.i.i = load ptr, ptr %i.od, align 8, !tbaa !81
  %i.pn = getelementptr i8, ptr %.val95.i.i.i, i64 8
  %.val95.val.i.i.i = load ptr, ptr %i.pn, align 8, !tbaa !71
  %i.po = load i32, ptr %.val95.val.i.i.i, align 4, !tbaa !46
  %i.pp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.79, i32 noundef %.09.i.i.i, i32 noundef %i.po) #21 ; 0 uses
  %fwrite83.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.74, i64 8, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %GiaHie_DumpInputAssignsSome.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  %fwrite80.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr nonnull %i.nw) ; 0 uses
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef nonnull %i.nw, ptr noundef nonnull readonly %1, i32 noundef 0, i32 noundef %i.op, i32 noundef %.09.i.i.i, i32 noundef 11, i32 noundef 1, i32 noundef 1)
  %fwrite81.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.75, i64 14, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %GiaHie_DumpInputAssignsSome.exit.i.i

bb.az:                                            ; preds = %.thread111.i.i.i
  %i.pq = tail call fastcc ptr @GiaHie_CountSymbsSome(ptr noundef %i.oq, i32 noundef %i.op) ; 3 uses
  %i.pr = getelementptr i8, ptr %i.pq, i64 4
  %.val88.i.i.i = load i32, ptr %i.pr, align 4, !tbaa !69 ; 2 uses
  %i.ps = icmp sgt i32 %.val88.i.i.i, 1
  %i.pt = getelementptr i8, ptr %i.pq, i64 8
  %.val91.i.i.i = load ptr, ptr %i.pt, align 8, !tbaa !71 ; 4 uses
  br i1 %i.ps, label %.critedge.lr.ph.i.i.i, label %._crit_edge.i.i.i

.critedge.lr.ph.i.i.i:                            ; preds = %bb.az
  %i.pu = getelementptr i8, ptr %i.oq, i64 8
  %i.pv = zext nneg i32 %.val88.i.i.i to i64      ; 2 uses
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.be, %.critedge.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.critedge.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.be ] ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.val91.i.i.i, i64 %indvars.iv.i.i.i ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !46 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !46 ; 4 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 4 uses
  %i.qa = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.pv
  br i1 %i.qa, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.critedge.i.i.i
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %.val91.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !46
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.critedge.i.i.i
  %i.qd = phi i32 [ %i.qc, %bb.ba ], [ %i.op, %.critedge.i.i.i ] ; 2 uses
  %i.qe = sub nsw i32 %i.qd, %i.px
  %.val.i218.i.i = load ptr, ptr %i.pu, align 8, !tbaa !45
  %i.qf = sext i32 %i.px to i64                   ; 2 uses
  %i.qg = getelementptr inbounds [8 x i8], ptr %.val.i218.i.i, i64 %i.qf
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !47 ; 2 uses
  %i.qi = icmp sgt i32 %i.qe, 1
  br i1 %i.qi, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %fwrite77.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr nonnull %i.nw) ; 0 uses
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef nonnull %i.nw, ptr noundef nonnull readonly %1, i32 noundef %i.px, i32 noundef %i.qd, i32 noundef %.09.i.i.i, i32 noundef 11, i32 noundef 1, i32 noundef 1)
  %fwrite78.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.71, i64 11, i64 1, ptr nonnull %i.nw) ; 0 uses
  %i.qj = icmp sgt i32 %i.pz, 0
  br i1 %i.qj, label %.lr.ph.preheader.i96.i.i.i, label %GiaHie_PrintOneName.exit.i.i.i

.lr.ph.preheader.i96.i.i.i:                       ; preds = %bb.bc
  %wide.trip.count.i97.i.i.i = zext nneg i32 %i.pz to i64
  br label %.lr.ph.i98.i.i.i

.lr.ph.i98.i.i.i:                                 ; preds = %.lr.ph.i98.i.i.i, %.lr.ph.preheader.i96.i.i.i
  %indvars.iv.i99.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i96.i.i.i ], [ %indvars.iv.next.i100.i.i.i, %.lr.ph.i98.i.i.i ] ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 %indvars.iv.i99.i.i.i
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !18
  %i.qm = sext i8 %i.ql to i32
  %fputc.i.i.i.i = tail call i32 @fputc(i32 %i.qm, ptr nonnull %i.nw) ; 0 uses
  %indvars.iv.next.i100.i.i.i = add nuw nsw i64 %indvars.iv.i99.i.i.i, 1 ; 2 uses
  %exitcond.not.i101.i.i.i = icmp eq i64 %indvars.iv.next.i100.i.i.i, %wide.trip.count.i97.i.i.i
  br i1 %exitcond.not.i101.i.i.i, label %GiaHie_PrintOneName.exit.i.i.i, label %.lr.ph.i98.i.i.i, !llvm.loop !3

GiaHie_PrintOneName.exit.i.i.i:                   ; preds = %.lr.ph.i98.i.i.i, %bb.bc
  %fwrite79.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.72, i64 4, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %fwrite.i219.i.i = tail call i64 @fwrite(ptr nonnull @.str.73, i64 9, i64 1, ptr nonnull %i.nw) ; 0 uses
  %.val93.i.i.i = load ptr, ptr %i.od, align 8, !tbaa !81
  %i.qn = getelementptr i8, ptr %.val93.i.i.i, i64 8
  %.val93.val.i.i.i = load ptr, ptr %i.qn, align 8, !tbaa !71
  %i.qo = getelementptr inbounds [4 x i8], ptr %.val93.val.i.i.i, i64 %i.qf
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !46
  %i.qq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.79, i32 noundef %.09.i.i.i, i32 noundef %i.qp) #21 ; 0 uses
  %fwrite75.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.76, i64 3, i64 1, ptr nonnull %i.nw) ; 0 uses
  %i.qr = icmp sgt i32 %i.pz, 0
  br i1 %i.qr, label %.lr.ph.preheader.i102.i.i.i, label %GiaHie_PrintOneName.exit109.i.i.i

.lr.ph.preheader.i102.i.i.i:                      ; preds = %bb.bd
  %wide.trip.count.i103.i.i.i = zext nneg i32 %i.pz to i64
  br label %.lr.ph.i104.i.i.i

.lr.ph.i104.i.i.i:                                ; preds = %.lr.ph.i104.i.i.i, %.lr.ph.preheader.i102.i.i.i
  %indvars.iv.i105.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i102.i.i.i ], [ %indvars.iv.next.i107.i.i.i, %.lr.ph.i104.i.i.i ] ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qh, i64 %indvars.iv.i105.i.i.i
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !18
  %i.qu = sext i8 %i.qt to i32
  %fputc.i106.i.i.i = tail call i32 @fputc(i32 %i.qu, ptr nonnull %i.nw) ; 0 uses
  %indvars.iv.next.i107.i.i.i = add nuw nsw i64 %indvars.iv.i105.i.i.i, 1 ; 2 uses
  %exitcond.not.i108.i.i.i = icmp eq i64 %indvars.iv.next.i107.i.i.i, %wide.trip.count.i103.i.i.i
  br i1 %exitcond.not.i108.i.i.i, label %GiaHie_PrintOneName.exit109.i.i.i, label %.lr.ph.i104.i.i.i, !llvm.loop !3

GiaHie_PrintOneName.exit109.i.i.i:                ; preds = %.lr.ph.i104.i.i.i, %bb.bd
  %fwrite76.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %GiaHie_PrintOneName.exit109.i.i.i, %GiaHie_PrintOneName.exit.i.i.i
  %i.qv = or disjoint i64 %indvars.iv.next.i.i.i, 1
  %i.qw = icmp samesign ult i64 %i.qv, %i.pv
  br i1 %i.qw, label %.critedge.i.i.i, label %._crit_edge.thread.i.i.i, !llvm.loop !163

._crit_edge.i.i.i:                                ; preds = %bb.az
  %.not.i110.i.i.i = icmp eq ptr %.val91.i.i.i, null
  br i1 %.not.i110.i.i.i, label %Vec_IntFree.exit.i.i.i, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %bb.be, %._crit_edge.i.i.i
  tail call void @free(ptr noundef nonnull %.val91.i.i.i) #21
  br label %Vec_IntFree.exit.i.i.i

Vec_IntFree.exit.i.i.i:                           ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i
  tail call void @free(ptr noundef nonnull %i.pq) #21
  br label %GiaHie_DumpInputAssignsSome.exit.i.i

GiaHie_DumpInputAssignsSome.exit.i.i:             ; preds = %Vec_IntFree.exit.i.i.i, %bb.ay, %bb.ax, %Abc_Base10Log.exit.i.i.i, %.thread.i.i.i
  %fputc.i.i = tail call i32 @fputc(i32 10, ptr nonnull %i.nw) ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %GiaHie_DumpInputAssignsSome.exit.i.i, %GiaHie_DumpPortDeclsSeq.exit.i.i
  %.val210.i.i = load ptr, ptr %i.oi, align 8, !tbaa !82
  %i.qx = getelementptr i8, ptr %.val210.i.i, i64 4
  %.val210.val.i.i = load i32, ptr %i.qx, align 4, !tbaa !69
  %.not140.i.i = icmp eq i32 %.val210.val.i.i, 0
  br i1 %.not140.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %fwrite141.i.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 7, i64 1, ptr nonnull %i.nw) ; 0 uses
  %.val209.i.i = load ptr, ptr %i.oi, align 8, !tbaa !82
  %i.qy = getelementptr i8, ptr %.val209.i.i, i64 4
  %.val209.val.i.i = load i32, ptr %i.qy, align 4, !tbaa !69
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef %i.nw, ptr noundef nonnull readonly %1, i32 noundef 0, i32 noundef %.val209.val.i.i, i32 noundef %.09.i.i.i, i32 noundef 7, i32 noundef 0, i32 noundef 0)
  %fwrite142.i.i = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.val187.i.i = load i32, ptr %i.nr, align 8, !tbaa !84
  %.not143.i.i = icmp eq i32 %.val187.i.i, 0
  br i1 %.not143.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %fwrite144.i.i = tail call i64 @fwrite(ptr nonnull @.str.57, i64 7, i64 1, ptr nonnull %i.nw) ; 0 uses
  %.val190.i.i = load i32, ptr %i.nr, align 8, !tbaa !84
  %.val191.i.i = load ptr, ptr %i.od, align 8, !tbaa !81
  %i.qz = getelementptr i8, ptr %.val191.i.i, i64 4
  %.val191.val.i.i = load i32, ptr %i.qz, align 4, !tbaa !69 ; 2 uses
  %i.ra = sub nsw i32 %.val191.val.i.i, %.val190.i.i
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef %i.nw, ptr noundef nonnull readonly %1, i32 noundef %i.ra, i32 noundef %.val191.val.i.i, i32 noundef %.09.i.i.i, i32 noundef 7, i32 noundef 0, i32 noundef 1)
  %fwrite145.i.i = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.rb = load i32, ptr %i.e, align 8, !tbaa !83  ; 5 uses
  %i.rc = icmp sgt i32 %i.rb, 0
  br i1 %i.rc, label %.lr.ph.i222.i.i, label %.critedge.i220.i.i

.lr.ph.i222.i.i:                                  ; preds = %bb.bj
  %i.rd = getelementptr i8, ptr %1, i64 32
  %.val24.i.i.i = load ptr, ptr %i.rd, align 8, !tbaa !67 ; 2 uses
  %.not.i223.i.i = icmp eq ptr %.val24.i.i.i, null
  br i1 %.not.i223.i.i, label %.critedge.i220.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i222.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.rb to i64
  br label %.lr.ph.split.i.i.i

end_hunk_1
begin_hunk_2_@Gia_WriteVerilogInt:bb.a
bb.bq:                                            ; preds = %bb.bp
  %fwrite168.i.i = tail call i64 @fwrite(ptr nonnull @.str.50, i64 2, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bq, %bb.bp
  %i.sl = trunc nuw nsw i64 %indvars.iv.i192.i to i32 ; 3 uses
  %i.sm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.51, i32 noundef %.09.i.i.i, i32 noundef %i.sl) #21 ; 0 uses
  %.val179.i.i = load i64, ptr %i.sg, align 4
  %i.sn = trunc i64 %.val179.i.i to i32           ; 2 uses
  %i.so = and i32 %i.sn, 536870911
  %i.sp = sub nsw i32 %i.sl, %i.so
  %i.sq = and i32 %i.sn, 536870912
  %.not.i228.i.i.a = icmp eq i32 %i.sq, 0
  %i.sr = select i1 %.not.i228.i.i.a, i32 32, i32 126
  %fputc.i.i.i = tail call i32 @fputc(i32 %i.sr, ptr nonnull %i.nw) ; 0 uses
  %i.ss = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.79, i32 noundef %.09.i.i.i, i32 noundef %i.sp) #21 ; 0 uses
  %fwrite169.i.i = tail call i64 @fwrite(ptr nonnull @.str.52, i64 3, i64 1, ptr nonnull %i.nw) ; 0 uses
  %.val181.i.i = load i64, ptr %i.sg, align 4     ; 2 uses
  %i.st = lshr i64 %.val181.i.i, 32
  %i.su = trunc nuw i64 %i.st to i32
  %i.sv = and i32 %i.su, 536870911
  %i.sw = sub nsw i32 %i.sl, %i.sv
  %i.sx = and i64 %.val181.i.i, 2305843009213693952
  %.not.i229.i.i = icmp eq i64 %i.sx, 0
  %i.sy = select i1 %.not.i229.i.i, i32 32, i32 126
  %fputc.i230.i.i = tail call i32 @fputc(i32 %i.sy, ptr nonnull %i.nw) ; 0 uses
  %i.sz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.79, i32 noundef %.09.i.i.i, i32 noundef %i.sw) #21 ; 0 uses
  %fwrite170.i.i = tail call i64 @fwrite(ptr nonnull @.str.53, i64 2, i64 1, ptr nonnull %i.nw) ; 0 uses
  %i.ta = add nsw i32 %.0126310.i193.i, 1         ; 2 uses
  %i.tb = icmp eq i32 %i.ta, 4                    ; 2 uses
  %..i.i = select i1 %i.tb, i32 10, i32 32
  %.364.i.i = select i1 %i.tb, i32 0, i32 %i.ta
  %fputc172.i.i = tail call i32 @fputc(i32 %..i.i, ptr nonnull %i.nw) ; 0 uses
  %.pre218.i = load i32, ptr %i.e, align 8, !tbaa !83
  br label %bb.br

bb.br:                                            ; preds = %.sink.split.i.i, %.lr.ph194.i
  %i.tc = phi i32 [ %i.sf, %.lr.ph194.i ], [ %.pre218.i, %.sink.split.i.i ] ; 3 uses
  %.1127.i.i = phi i32 [ %.0126310.i193.i, %.lr.ph194.i ], [ %.364.i.i, %.sink.split.i.i ] ; 2 uses
  %indvars.iv.next.i.i26 = add nuw nsw i64 %indvars.iv.i192.i, 1 ; 3 uses
  %i.td = sext i32 %i.tc to i64
  %i.te = icmp slt i64 %indvars.iv.next.i.i26, %i.td
  br i1 %i.te, label %.lr.ph.i144.i, label %..critedge.i_crit_edge.i, !llvm.loop !166

..critedge.i_crit_edge.i:                         ; preds = %bb.br
  br label %.critedge.i.i, !llvm.loop !166

.critedge.i.i:                                    ; preds = %.lr.ph.i144.i, %..critedge.i_crit_edge.i
  %i.tf = icmp eq i32 %.1127.i.i, 0
  br i1 %i.tf, label %.critedge.thread.i.i, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i.i
  %fputc150.i.i = tail call i32 @fputc(i32 10, ptr nonnull %i.nw) ; 0 uses
  %.pre335.i.i = load i32, ptr %i.e, align 8, !tbaa !83
  br label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %bb.bs, %.critedge.i.i, %.lr.ph.i144.preheader.i, %GiaHie_ConstUsed.exit.thread.i.i
  %i.tg = phi i32 [ %.pre335.i.i, %bb.bs ], [ %i.tc, %.critedge.i.i ], [ %i.sb, %GiaHie_ConstUsed.exit.thread.i.i ], [ %i.sb, %.lr.ph.i144.preheader.i ]
  %i.th = load ptr, ptr %i.od, align 8, !tbaa !81
  %i.ti = getelementptr i8, ptr %i.th, i64 4
  %.val3.i.i.i = load i32, ptr %i.ti, align 4, !tbaa !69
  %i.tj = load ptr, ptr %i.oi, align 8, !tbaa !82 ; 2 uses
  %i.tk = getelementptr i8, ptr %i.tj, i64 4
  %.val.i231.i.i = load i32, ptr %i.tk, align 4, !tbaa !69 ; 2 uses
  %i.tl = add i32 %.val3.i.i.i, 1
  %.neg.i.i = add i32 %i.tl, %.val.i231.i.i
  %.not151.i.i = icmp eq i32 %i.tg, %.neg.i.i
  br i1 %.not151.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.critedge.thread.i.i
  %fputc153.i.i = tail call i32 @fputc(i32 10, ptr nonnull %i.nw) ; 0 uses
  %.pre336.i.i = load ptr, ptr %i.oi, align 8, !tbaa !82 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.pre336.i.i, i64 4
  %.val314.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !69
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.critedge.thread.i.i
  %.val314.i.i = phi i32 [ %.val314.pre.i.i, %bb.bt ], [ %.val.i231.i.i, %.critedge.thread.i.i ]
  %i.tm = phi ptr [ %.pre336.i.i, %bb.bt ], [ %i.tj, %.critedge.thread.i.i ]
  %i.tn = icmp sgt i32 %.val314.i.i, 0
  br i1 %i.tn, label %.lr.ph316.i.i, label %.critedge2.i.i

.lr.ph316.i.i:                                    ; preds = %bb.bu, %bb.bv
  %indvars.iv332.i.i = phi i64 [ %indvars.iv.next333.i.i, %bb.bv ], [ 0, %bb.bu ] ; 2 uses
  %i.to = phi ptr [ %i.ug, %bb.bv ], [ %i.tm, %bb.bu ]
  %.val206.i.i = load ptr, ptr %i.sc, align 8, !tbaa !67 ; 2 uses
  %.not154.i.i = icmp eq ptr %.val206.i.i, null
  br i1 %.not154.i.i, label %.critedge2.i.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph316.i.i
  %i.tp = getelementptr i8, ptr %i.to, i64 8
  %.val207.val.i.i = load ptr, ptr %i.tp, align 8, !tbaa !71
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %.val207.val.i.i, i64 %indvars.iv332.i.i
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !46 ; 2 uses
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds [12 x i8], ptr %.val206.i.i, i64 %i.ts ; 2 uses
  %i.tu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.55, i32 noundef %.09.i.i.i, i32 noundef %i.tr) #21 ; 0 uses
  %.val184.i.i = load ptr, ptr %i.sc, align 8, !tbaa !67
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = ptrtoint ptr %.val184.i.i to i64
  %i.tx = sub i64 %i.tv, %i.tw
  %i.ty = sdiv exact i64 %i.tx, 12
  %i.tz = trunc i64 %i.ty to i32
  %.val3.i232.i.i = load i64, ptr %i.tt, align 4
  %i.ua = trunc i64 %.val3.i232.i.i to i32        ; 2 uses
  %i.ub = and i32 %i.ua, 536870911
  %i.uc = sub nsw i32 %i.tz, %i.ub
  %i.ud = and i32 %i.ua, 536870912
  %.not.i233.i.i = icmp eq i32 %i.ud, 0
  %i.ue = select i1 %.not.i233.i.i, i32 32, i32 126
  %fputc.i234.i.i = tail call i32 @fputc(i32 %i.ue, ptr nonnull %i.nw) ; 0 uses
  %i.uf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.79, i32 noundef %.09.i.i.i, i32 noundef %i.uc) #21 ; 0 uses
  %fwrite166.i.i = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr nonnull %i.nw) ; 0 uses
  %indvars.iv.next333.i.i = add nuw nsw i64 %indvars.iv332.i.i, 1 ; 2 uses
  %i.ug = load ptr, ptr %i.oi, align 8, !tbaa !82 ; 2 uses
  %i.uh = getelementptr i8, ptr %i.ug, i64 4
  %.val.i.i = load i32, ptr %i.uh, align 4, !tbaa !69
  %i.ui = sext i32 %.val.i.i to i64
  %i.uj = icmp slt i64 %indvars.iv.next333.i.i, %i.ui
  br i1 %i.uj, label %.lr.ph316.i.i, label %.critedge2.i.i, !llvm.loop !167

.critedge2.i.i:                                   ; preds = %bb.bv, %.lr.ph316.i.i, %bb.bu
  %fputc156.i.i = tail call i32 @fputc(i32 10, ptr nonnull %i.nw) ; 0 uses
  %.val202.i.i = load i32, ptr %i.nr, align 8, !tbaa !84
  %.val203.i.i = load ptr, ptr %i.oi, align 8, !tbaa !82
  %i.uk = getelementptr i8, ptr %.val203.i.i, i64 4
  %.val203.val.i.i = load i32, ptr %i.uk, align 4, !tbaa !69
  %i.ul = sub nsw i32 %.val203.val.i.i, %.val202.i.i ; 11 uses
  %i.um = load ptr, ptr %i.og, align 8, !tbaa !89 ; 5 uses
  %i.un = icmp sgt i32 %i.ul, 2
  br i1 %i.un, label %bb.bw, label %.thread.i235.i.i

bb.bw:                                            ; preds = %.critedge2.i.i
  %i.uo = icmp eq ptr %i.um, null
  br i1 %i.uo, label %.lr.ph.preheader.i.i287.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.up = tail call fastcc ptr @GiaHie_CountSymbsSome(ptr noundef readonly %i.um, i32 noundef range(i32 3, -2147483648) %i.ul) ; 4 uses
  %i.uq = getelementptr i8, ptr %i.up, i64 4
  %.val.i.i278.i.i = load i32, ptr %i.uq, align 4, !tbaa !69 ; 2 uses
  %i.ur = sdiv i32 %.val.i.i278.i.i, 2            ; 2 uses
  %i.us = getelementptr i8, ptr %i.up, i64 8
  %i.ut = sext i32 %i.ur to i64
  %smax.i.i279.i.i = tail call i32 @llvm.smax.i32(i32 %i.ur, i32 0)
  %wide.trip.count.i.i280.i.i = zext nneg i32 %smax.i.i279.i.i to i64
  %i.uu = load ptr, ptr %i.us, align 8, !tbaa !71 ; 5 uses
  %exitcond.not.i.not.not.i283.i.i245 = icmp slt i32 %.val.i.i278.i.i, 2
  br i1 %exitcond.not.i.not.not.i283.i.i245, label %.critedge.i.i281.i.i._crit_edge, label %.lr.ph248

.critedge.i.i281.i.i:                             ; preds = %bb.bz
  %exitcond.not.i.not.not.i283.i.i = icmp eq i64 %indvars.iv.next.i.i285.i.i, %wide.trip.count.i.i280.i.i
  br i1 %exitcond.not.i.not.not.i283.i.i, label %.critedge.i.i281.i.i._crit_edge, label %.lr.ph248, !llvm.loop !2

.lr.ph248:                                        ; preds = %bb.bx, %.critedge.i.i281.i.i
  %indvars.iv.i.i282.i.i246 = phi i64 [ %indvars.iv.next.i.i285.i.i, %.critedge.i.i281.i.i ], [ 0, %bb.bx ] ; 2 uses
  %.idx.i.i284.i.i = shl nuw nsw i64 %indvars.iv.i.i282.i.i246, 3
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 %.idx.i.i284.i.i
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !46
  %indvars.iv.next.i.i285.i.i = add nuw nsw i64 %indvars.iv.i.i282.i.i246, 1 ; 4 uses
  %i.ux = icmp slt i64 %indvars.iv.next.i.i285.i.i, %i.ut
  br i1 %i.ux, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph248
  %.idx32.i.i297.i.i = shl nuw nsw i64 %indvars.iv.next.i.i285.i.i, 3
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 %.idx32.i.i297.i.i
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !46
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph248
  %i.va = phi i32 [ %i.uz, %bb.by ], [ %i.ul, %.lr.ph248 ]
  %i.vb = sub nsw i32 %i.va, %i.uw
  %i.vc = icmp slt i32 %i.vb, 2
  br i1 %i.vc, label %.critedge.i.i281.i.i, label %.sink.split.sink.split.i.i286.i.i, !llvm.loop !2

.critedge.i.i281.i.i._crit_edge:                  ; preds = %.critedge.i.i281.i.i, %bb.bx
  %.not.i28.i.i298.i.i = icmp eq ptr %i.uu, null
  br i1 %.not.i28.i.i298.i.i, label %.lr.ph.preheader.i.i287.i.i.sink.split, label %.lr.ph.preheader.i.i287.i.i.critedge

.sink.split.sink.split.i.i286.i.i:                ; preds = %bb.bz
  tail call void @free(ptr noundef nonnull %i.uu) #21
  tail call void @free(ptr noundef nonnull %i.up) #21
  br label %.thread111.i236.i.i

.thread.i235.i.i:                                 ; preds = %.critedge2.i.i
  %i.vd = icmp eq i32 %i.ul, 0
  br i1 %i.vd, label %GiaHie_DumpOutputAssignsSome.exit.i.i, label %.thread111.i236.i.i

.lr.ph.preheader.i.i287.i.i.critedge:             ; preds = %.critedge.i.i281.i.i._crit_edge
  tail call void @free(ptr noundef nonnull %i.uu) #21
  br label %.lr.ph.preheader.i.i287.i.i.sink.split

.lr.ph.preheader.i.i287.i.i.sink.split:           ; preds = %.critedge.i.i281.i.i._crit_edge, %.lr.ph.preheader.i.i287.i.i.critedge
  tail call void @free(ptr noundef nonnull %i.up) #21
  br label %.lr.ph.preheader.i.i287.i.i

.lr.ph.preheader.i.i287.i.i:                      ; preds = %.lr.ph.preheader.i.i287.i.i.sink.split, %bb.bw
  %i.ve = add nsw i32 %i.ul, -1
  br label %.lr.ph.i.i288.i.i

.lr.ph.i.i288.i.i:                                ; preds = %.lr.ph.i.i288.i.i, %.lr.ph.preheader.i.i287.i.i
  %.013.i.i289.i.i = phi i32 [ %i.vg, %.lr.ph.i.i288.i.i ], [ 0, %.lr.ph.preheader.i.i287.i.i ]
  %.0812.i.i290.i.i = phi i32 [ %i.vf, %.lr.ph.i.i288.i.i ], [ %i.ve, %.lr.ph.preheader.i.i287.i.i ] ; 2 uses
  %i.vf = udiv i32 %.0812.i.i290.i.i, 10
  %i.vg = add nuw nsw i32 %.013.i.i289.i.i, 1     ; 2 uses
  %.not.i.i291.i.i = icmp ult i32 %.0812.i.i290.i.i, 10
  br i1 %.not.i.i291.i.i, label %Abc_Base10Log.exit.i292.i.i, label %.lr.ph.i.i288.i.i, !llvm.loop !0

Abc_Base10Log.exit.i292.i.i:                      ; preds = %.lr.ph.i.i288.i.i
  %spec.store.select.i293.i.i = tail call i32 @llvm.smax.i32(i32 %i.vg, i32 2)
  %fwrite84.i294.i.i = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr nonnull %i.nw) ; 0 uses
  tail call fastcc void @GiaHie_WritePiPoNames(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.67, i32 noundef %i.ul, i32 noundef %spec.store.select.i293.i.i, i32 noundef 11, i32 noundef 1)
  %fwrite85.i295.i.i = tail call i64 @fwrite(ptr nonnull @.str.71, i64 11, i64 1, ptr nonnull %i.nw) ; 0 uses
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef nonnull %i.nw, ptr noundef nonnull readonly %1, i32 noundef 0, i32 noundef %i.ul, i32 noundef %.09.i.i.i, i32 noundef 18, i32 noundef 1, i32 noundef 0)
  %fwrite86.i296.i.i = tail call i64 @fwrite(ptr nonnull @.str.72, i64 4, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %GiaHie_DumpOutputAssignsSome.exit.i.i

.thread111.i236.i.i:                              ; preds = %.sink.split.sink.split.i.i286.i.i, %.thread.i235.i.i
  %i.vh = icmp eq ptr %i.um, null
  br i1 %i.vh, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %.thread111.i236.i.i
  %i.vi = icmp eq i32 %i.ul, 1
  br i1 %i.vi, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %fwrite82.i274.i.i = tail call i64 @fwrite(ptr nonnull @.str.77, i64 15, i64 1, ptr nonnull %i.nw) ; 0 uses
  %.val95.i275.i.i = load ptr, ptr %i.oi, align 8, !tbaa !82
  %i.vj = getelementptr i8, ptr %.val95.i275.i.i, i64 8
  %.val95.val.i276.i.i = load ptr, ptr %i.vj, align 8, !tbaa !71
  %i.vk = load i32, ptr %.val95.val.i276.i.i, align 4, !tbaa !46
  %i.vl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.79, i32 noundef %.09.i.i.i, i32 noundef %i.vk) #21 ; 0 uses
  %fwrite83.i277.i.i = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %GiaHie_DumpOutputAssignsSome.exit.i.i

bb.cc:                                            ; preds = %bb.ca
  %fwrite80.i272.i.i = tail call i64 @fwrite(ptr nonnull @.str.78, i64 21, i64 1, ptr nonnull %i.nw) ; 0 uses
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef nonnull %i.nw, ptr noundef nonnull readonly %1, i32 noundef 0, i32 noundef %i.ul, i32 noundef %.09.i.i.i, i32 noundef 18, i32 noundef 1, i32 noundef 0)
  %fwrite81.i273.i.i = tail call i64 @fwrite(ptr nonnull @.str.72, i64 4, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %GiaHie_DumpOutputAssignsSome.exit.i.i

bb.cd:                                            ; preds = %.thread111.i236.i.i
  %i.vm = tail call fastcc ptr @GiaHie_CountSymbsSome(ptr noundef %i.um, i32 noundef %i.ul) ; 3 uses
  %i.vn = getelementptr i8, ptr %i.vm, i64 4
  %.val88.i237.i.i = load i32, ptr %i.vn, align 4, !tbaa !69 ; 2 uses
  %i.vo = icmp sgt i32 %.val88.i237.i.i, 1
  %i.vp = getelementptr i8, ptr %i.vm, i64 8
  %.val91.i238.i.i = load ptr, ptr %i.vp, align 8, !tbaa !71 ; 4 uses
  br i1 %i.vo, label %.critedge.lr.ph.i243.i.i, label %._crit_edge.i239.i.i

.critedge.lr.ph.i243.i.i:                         ; preds = %bb.cd
  %i.vq = getelementptr i8, ptr %i.um, i64 8
  %i.vr = zext nneg i32 %.val88.i237.i.i to i64   ; 2 uses
  br label %.critedge.i244.i.i

.critedge.i244.i.i:                               ; preds = %bb.ci, %.critedge.lr.ph.i243.i.i
  %indvars.iv.i245.i.i = phi i64 [ 0, %.critedge.lr.ph.i243.i.i ], [ %indvars.iv.next.i246.i.i, %bb.ci ] ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %.val91.i238.i.i, i64 %indvars.iv.i245.i.i ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !46 ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !46 ; 3 uses
  %indvars.iv.next.i246.i.i = add nuw nsw i64 %indvars.iv.i245.i.i, 2 ; 4 uses
  %i.vw = icmp samesign ult i64 %indvars.iv.next.i246.i.i, %i.vr
  br i1 %i.vw, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.critedge.i244.i.i
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %.val91.i238.i.i, i64 %indvars.iv.next.i246.i.i
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !46
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.critedge.i244.i.i
  %i.vz = phi i32 [ %i.vy, %bb.ce ], [ %i.ul, %.critedge.i244.i.i ] ; 2 uses
  %i.wa = sub nsw i32 %i.vz, %i.vt
  %.val.i247.i.i = load ptr, ptr %i.vq, align 8, !tbaa !45
  %i.wb = sext i32 %i.vt to i64                   ; 2 uses
  %i.wc = getelementptr inbounds [8 x i8], ptr %.val.i247.i.i, i64 %i.wb
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !47 ; 2 uses
  %i.we = icmp sgt i32 %i.wa, 1
  %i.wf = icmp sgt i32 %i.vv, 0                   ; 2 uses
  br i1 %i.we, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %fwrite77.i261.i.i = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr nonnull %i.nw) ; 0 uses
  br i1 %i.wf, label %.lr.ph.preheader.i96.i265.i.i, label %GiaHie_PrintOneName.exit.i262.i.i

.lr.ph.preheader.i96.i265.i.i:                    ; preds = %bb.cg
  %wide.trip.count.i97.i266.i.i = zext nneg i32 %i.vv to i64
  br label %.lr.ph.i98.i267.i.i

.lr.ph.i98.i267.i.i:                              ; preds = %.lr.ph.i98.i267.i.i, %.lr.ph.preheader.i96.i265.i.i
  %indvars.iv.i99.i268.i.i = phi i64 [ 0, %.lr.ph.preheader.i96.i265.i.i ], [ %indvars.iv.next.i100.i270.i.i, %.lr.ph.i98.i267.i.i ] ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wd, i64 %indvars.iv.i99.i268.i.i
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !18
  %i.wi = sext i8 %i.wh to i32
  %fputc.i.i269.i.i = tail call i32 @fputc(i32 %i.wi, ptr nonnull %i.nw) ; 0 uses
  %indvars.iv.next.i100.i270.i.i = add nuw nsw i64 %indvars.iv.i99.i268.i.i, 1 ; 2 uses
  %exitcond.not.i101.i271.i.i = icmp eq i64 %indvars.iv.next.i100.i270.i.i, %wide.trip.count.i97.i266.i.i
  br i1 %exitcond.not.i101.i271.i.i, label %GiaHie_PrintOneName.exit.i262.i.i, label %.lr.ph.i98.i267.i.i, !llvm.loop !3

GiaHie_PrintOneName.exit.i262.i.i:                ; preds = %.lr.ph.i98.i267.i.i, %bb.cg
  %fwrite78.i263.i.i = tail call i64 @fwrite(ptr nonnull @.str.71, i64 11, i64 1, ptr nonnull %i.nw) ; 0 uses
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef nonnull %i.nw, ptr noundef nonnull readonly %1, i32 noundef %i.vt, i32 noundef %i.vz, i32 noundef %.09.i.i.i, i32 noundef 18, i32 noundef 1, i32 noundef 0)
  %fwrite79.i264.i.i = tail call i64 @fwrite(ptr nonnull @.str.72, i64 4, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %fwrite.i248.i.i = tail call i64 @fwrite(ptr nonnull @.str.73, i64 9, i64 1, ptr nonnull %i.nw) ; 0 uses
  br i1 %i.wf, label %.lr.ph.preheader.i102.i254.i.i, label %GiaHie_PrintOneName.exit109.i249.i.i

.lr.ph.preheader.i102.i254.i.i:                   ; preds = %bb.ch
  %wide.trip.count.i103.i255.i.i = zext nneg i32 %i.vv to i64
  br label %.lr.ph.i104.i256.i.i

.lr.ph.i104.i256.i.i:                             ; preds = %.lr.ph.i104.i256.i.i, %.lr.ph.preheader.i102.i254.i.i
  %indvars.iv.i105.i257.i.i = phi i64 [ 0, %.lr.ph.preheader.i102.i254.i.i ], [ %indvars.iv.next.i107.i259.i.i, %.lr.ph.i104.i256.i.i ] ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wd, i64 %indvars.iv.i105.i257.i.i
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !18
  %i.wl = sext i8 %i.wk to i32
  %fputc.i106.i258.i.i = tail call i32 @fputc(i32 %i.wl, ptr nonnull %i.nw) ; 0 uses
  %indvars.iv.next.i107.i259.i.i = add nuw nsw i64 %indvars.iv.i105.i257.i.i, 1 ; 2 uses
  %exitcond.not.i108.i260.i.i = icmp eq i64 %indvars.iv.next.i107.i259.i.i, %wide.trip.count.i103.i255.i.i
  br i1 %exitcond.not.i108.i260.i.i, label %GiaHie_PrintOneName.exit109.i249.i.i, label %.lr.ph.i104.i256.i.i, !llvm.loop !3

GiaHie_PrintOneName.exit109.i249.i.i:             ; preds = %.lr.ph.i104.i256.i.i, %bb.ch
  %fwrite75.i250.i.i = tail call i64 @fwrite(ptr nonnull @.str.76, i64 3, i64 1, ptr nonnull %i.nw) ; 0 uses
  %.val93.i251.i.i = load ptr, ptr %i.oi, align 8, !tbaa !82
  %i.wm = getelementptr i8, ptr %.val93.i251.i.i, i64 8
  %.val93.val.i252.i.i = load ptr, ptr %i.wm, align 8, !tbaa !71
  %i.wn = getelementptr inbounds [4 x i8], ptr %.val93.val.i252.i.i, i64 %i.wb
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !46
  %i.wp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.79, i32 noundef %.09.i.i.i, i32 noundef %i.wo) #21 ; 0 uses
  %fwrite76.i253.i.i = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %GiaHie_PrintOneName.exit109.i249.i.i, %GiaHie_PrintOneName.exit.i262.i.i
  %i.wq = or disjoint i64 %indvars.iv.next.i246.i.i, 1
  %i.wr = icmp samesign ult i64 %i.wq, %i.vr
  br i1 %i.wr, label %.critedge.i244.i.i, label %._crit_edge.thread.i241.i.i, !llvm.loop !168

._crit_edge.i239.i.i:                             ; preds = %bb.cd
  %.not.i110.i240.i.i = icmp eq ptr %.val91.i238.i.i, null
  br i1 %.not.i110.i240.i.i, label %Vec_IntFree.exit.i242.i.i, label %._crit_edge.thread.i241.i.i

._crit_edge.thread.i241.i.i:                      ; preds = %bb.ci, %._crit_edge.i239.i.i
  tail call void @free(ptr noundef nonnull %.val91.i238.i.i) #21
  br label %Vec_IntFree.exit.i242.i.i

Vec_IntFree.exit.i242.i.i:                        ; preds = %._crit_edge.thread.i241.i.i, %._crit_edge.i239.i.i
  tail call void @free(ptr noundef nonnull %i.vm) #21
  br label %GiaHie_DumpOutputAssignsSome.exit.i.i

GiaHie_DumpOutputAssignsSome.exit.i.i:            ; preds = %Vec_IntFree.exit.i242.i.i, %bb.cc, %bb.cb, %Abc_Base10Log.exit.i292.i.i, %.thread.i235.i.i
  %fputc158.i.i = tail call i32 @fputc(i32 10, ptr nonnull %i.nw) ; 0 uses
  %fwrite159.i.i = tail call i64 @fwrite(ptr nonnull @.str.58, i64 19, i64 1, ptr nonnull %i.nw) ; 0 uses
  br i1 %.not.i143.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %GiaHie_DumpOutputAssignsSome.exit.i.i
  %.val214.i.i = load ptr, ptr %i.od, align 8, !tbaa !81
  %i.ws = getelementptr i8, ptr %.val214.i.i, i64 8
  %.val214.val.i.i = load ptr, ptr %i.ws, align 8, !tbaa !71
  %i.wt = load i32, ptr %.val214.val.i.i, align 4, !tbaa !46
  %i.wu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.79, i32 noundef %.09.i.i.i, i32 noundef %i.wt) #21 ; 0 uses
  br label %bb.cl

bb.ck:                                            ; preds = %GiaHie_DumpOutputAssignsSome.exit.i.i
  %fwrite160.i.i = tail call i64 @fwrite(ptr nonnull @.str.59, i64 3, i64 1, ptr nonnull %i.nw) ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %fwrite161.i.i = tail call i64 @fwrite(ptr nonnull @.str.60, i64 8, i64 1, ptr nonnull %i.nw) ; 0 uses
  %.val186318.i.i = load i32, ptr %i.nr, align 8, !tbaa !84 ; 2 uses
  %i.wv = icmp sgt i32 %.val186318.i.i, 0
  br i1 %i.wv, label %.lr.ph322.i.i, label %.critedge4.i.i

.lr.ph322.i.i:                                    ; preds = %bb.cl, %bb.cm
  %.val186318.pn.i.i = phi i32 [ %.val186.i.i, %bb.cm ], [ %.val186318.i.i, %bb.cl ]
  %.2320.i.i = phi i32 [ %i.xk, %bb.cm ], [ 0, %bb.cl ] ; 2 uses
  %.val204.i.i = load ptr, ptr %i.sc, align 8, !tbaa !67
  %.not162.i.i = icmp eq ptr %.val204.i.i, null
  br i1 %.not162.i.i, label %.critedge4.i.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph322.i.i
  %.val201.i.i = load ptr, ptr %i.oi, align 8, !tbaa !82 ; 2 uses
  %i.ww = getelementptr i8, ptr %.val201.i.i, i64 8
  %.val205.val.i.i = load ptr, ptr %i.ww, align 8, !tbaa !71
  %i.wx = sub i32 %.2320.i.i, %.val186318.pn.i.i  ; 2 uses
  %i.wy = getelementptr i8, ptr %.val201.i.i, i64 4
  %.val201.val.i.i = load i32, ptr %i.wy, align 4, !tbaa !69
  %i.wz = add i32 %.val201.val.i.i, %i.wx
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %.val205.val.i.i, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !46
  %.val189.i.i = load ptr, ptr %i.od, align 8, !tbaa !81 ; 2 uses
  %i.xd = getelementptr i8, ptr %.val189.i.i, i64 8
  %.val212.val.i.i = load ptr, ptr %i.xd, align 8, !tbaa !71
  %i.xe = getelementptr i8, ptr %.val189.i.i, i64 4
  %.val189.val.i.i = load i32, ptr %i.xe, align 4, !tbaa !69
  %i.xf = add i32 %.val189.val.i.i, %i.wx
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [4 x i8], ptr %.val212.val.i.i, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !46
  %i.xj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.nw, ptr noundef nonnull @.str.61, i32 noundef %.09.i.i.i, i32 noundef %i.xi, i32 noundef %.09.i.i.i, i32 noundef %i.xc) #21 ; 0 uses
  %i.xk = add nuw nsw i32 %.2320.i.i, 1           ; 2 uses
end_hunk_2
begin_hunk_3_@Gia_WriteVerilogInt:bb.a

.lr.ph.i19:                                       ; preds = %bb.db
  %.val125.i = load ptr, ptr %i.yy, align 8, !tbaa !67 ; 2 uses
  %i.za = getelementptr inbounds nuw [12 x i8], ptr %.val125.i, i64 %indvars.iv.next.i22
  %.not107.i = icmp eq ptr %.val125.i, null
  br i1 %.not107.i, label %.critedge.i23, label %.lr.ph, !llvm.loop !170

.lr.ph:                                           ; preds = %.lr.ph.i19.preheader, %.lr.ph.i19
  %i.zb = phi i32 [ %i.zy, %.lr.ph.i19 ], [ %i.yx, %.lr.ph.i19.preheader ]
  %i.zc = phi ptr [ %i.za, %.lr.ph.i19 ], [ %.val125.i99, %.lr.ph.i19.preheader ] ; 3 uses
  %.090182.i102 = phi i32 [ %.191.i, %.lr.ph.i19 ], [ 0, %.lr.ph.i19.preheader ] ; 3 uses
  %indvars.iv.i20101 = phi i64 [ %indvars.iv.next.i22, %.lr.ph.i19 ], [ 0, %.lr.ph.i19.preheader ] ; 2 uses
  %.val128.i = load i64, ptr %i.zc, align 4       ; 2 uses
  %i.zd = and i64 %.val128.i, 2147483648
  %.not.i154.i.a = icmp ne i64 %i.zd, 0
  %i.ze = and i64 %.val128.i, 536870911
  %i.zf = icmp eq i64 %i.ze, 536870911
  %narrow.i.not.i21 = or i1 %.not.i154.i.a, %i.zf
  br i1 %narrow.i.not.i21, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph
  %i.zg = icmp eq i32 %.090182.i102, 0
  br i1 %i.zg, label %bb.da, label %.sink.split.i

bb.da:                                            ; preds = %bb.cz
  %fwrite118.i = tail call i64 @fwrite(ptr nonnull @.str.50, i64 2, i64 1, ptr nonnull %i.xn) ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.da, %bb.cz
  %i.zh = trunc nuw nsw i64 %indvars.iv.i20101 to i32 ; 3 uses
  %i.zi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.xn, ptr noundef nonnull @.str.51, i32 noundef %.09.i165.i, i32 noundef %i.zh) #21 ; 0 uses
  %.val127.i = load i64, ptr %i.zc, align 4
  %i.zj = trunc i64 %.val127.i to i32             ; 2 uses
  %i.zk = and i32 %i.zj, 536870911
  %i.zl = sub nsw i32 %i.zh, %i.zk
  %i.zm = and i32 %i.zj, 536870912
  %.not.i155.i = icmp eq i32 %i.zm, 0
  %i.zn = select i1 %.not.i155.i, i32 32, i32 126
  %fputc.i156.i = tail call i32 @fputc(i32 %i.zn, ptr nonnull %i.xn) ; 0 uses
  %i.zo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.xn, ptr noundef nonnull @.str.79, i32 noundef %.09.i165.i, i32 noundef %i.zl) #21 ; 0 uses
  %fwrite119.i = tail call i64 @fwrite(ptr nonnull @.str.52, i64 3, i64 1, ptr nonnull %i.xn) ; 0 uses
  %.val129.i = load i64, ptr %i.zc, align 4       ; 2 uses
  %i.zp = lshr i64 %.val129.i, 32
  %i.zq = trunc nuw i64 %i.zp to i32
  %i.zr = and i32 %i.zq, 536870911
  %i.zs = sub nsw i32 %i.zh, %i.zr
  %i.zt = and i64 %.val129.i, 2305843009213693952
  %.not.i157.i = icmp eq i64 %i.zt, 0
  %i.zu = select i1 %.not.i157.i, i32 32, i32 126
  %fputc.i158.i = tail call i32 @fputc(i32 %i.zu, ptr nonnull %i.xn) ; 0 uses
  %i.zv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.xn, ptr noundef nonnull @.str.79, i32 noundef %.09.i165.i, i32 noundef %i.zs) #21 ; 0 uses
  %fwrite120.i = tail call i64 @fwrite(ptr nonnull @.str.53, i64 2, i64 1, ptr nonnull %i.xn) ; 0 uses
  %i.zw = add nsw i32 %.090182.i102, 1            ; 2 uses
  %i.zx = icmp eq i32 %i.zw, 4                    ; 2 uses
  %..i = select i1 %i.zx, i32 10, i32 32
  %.257.i = select i1 %i.zx, i32 0, i32 %i.zw
  %fputc122.i = tail call i32 @fputc(i32 %..i, ptr nonnull %i.xn) ; 0 uses
  %.pre = load i32, ptr %i.e, align 8, !tbaa !83
  br label %bb.db

bb.db:                                            ; preds = %.sink.split.i, %.lr.ph
  %i.zy = phi i32 [ %i.zb, %.lr.ph ], [ %.pre, %.sink.split.i ] ; 3 uses
  %.191.i = phi i32 [ %.090182.i102, %.lr.ph ], [ %.257.i, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i20101, 1 ; 3 uses
  %i.zz = sext i32 %i.zy to i64
  %i.aaa = icmp slt i64 %indvars.iv.next.i22, %i.zz
  br i1 %i.aaa, label %.lr.ph.i19, label %..critedge.i23_crit_edge, !llvm.loop !170

..critedge.i23_crit_edge:                         ; preds = %bb.db
  br label %.critedge.i23, !llvm.loop !170

.critedge.i23:                                    ; preds = %.lr.ph.i19, %..critedge.i23_crit_edge
  %i.aab = icmp eq i32 %.191.i, 0
  br i1 %i.aab, label %.critedge.thread.i, label %bb.dc

bb.dc:                                            ; preds = %.critedge.i23
  %fputc110.i = tail call i32 @fputc(i32 10, ptr nonnull %i.xn) ; 0 uses
  %.pre215.i.a = load i32, ptr %i.e, align 8, !tbaa !83
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.lr.ph.i19.preheader, %bb.dc, %.critedge.i23, %GiaHie_ConstUsed.exit.thread.i
  %i.aac = phi i32 [ %.pre215.i.a, %bb.dc ], [ %i.zy, %.critedge.i23 ], [ %i.yx, %GiaHie_ConstUsed.exit.thread.i ], [ %i.yx, %.lr.ph.i19.preheader ]
  %i.aad = load ptr, ptr %i.xr, align 8, !tbaa !81
  %i.aae = getelementptr i8, ptr %i.aad, i64 4
  %.val3.i.i = load i32, ptr %i.aae, align 4, !tbaa !69
  %i.aaf = load ptr, ptr %i.xu, align 8, !tbaa !82 ; 2 uses
  %i.aag = getelementptr i8, ptr %i.aaf, i64 4
  %.val.i159.i = load i32, ptr %i.aag, align 4, !tbaa !69 ; 2 uses
  %i.aah = add i32 %.val3.i.i, 1
  %.neg.i = add i32 %i.aah, %.val.i159.i
  %.not111.i = icmp eq i32 %i.aac, %.neg.i
  br i1 %.not111.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.critedge.thread.i
  %fputc113.i = tail call i32 @fputc(i32 10, ptr nonnull %i.xn) ; 0 uses
  %.pre216.i = load ptr, ptr %i.xu, align 8, !tbaa !82 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre216.i, i64 4
  %.val186.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !69
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.critedge.thread.i
  %.val186.i = phi i32 [ %.val186.pre.i, %bb.dd ], [ %.val.i159.i, %.critedge.thread.i ]
  %i.aai = phi ptr [ %.pre216.i, %bb.dd ], [ %i.aaf, %.critedge.thread.i ]
  %i.aaj = icmp sgt i32 %.val186.i, 0
  br i1 %i.aaj, label %.lr.ph188.i, label %.critedge2.i17

.lr.ph188.i:                                      ; preds = %bb.de, %bb.df
  %indvars.iv212.i = phi i64 [ %indvars.iv.next213.i, %bb.df ], [ 0, %bb.de ] ; 2 uses
  %i.aak = phi ptr [ %i.abc, %bb.df ], [ %i.aai, %bb.de ]
  %.val135.i = load ptr, ptr %i.yy, align 8, !tbaa !67 ; 2 uses
  %.not114.i = icmp eq ptr %.val135.i, null
  br i1 %.not114.i, label %.critedge2.i17, label %bb.df

bb.df:                                            ; preds = %.lr.ph188.i
  %i.aal = getelementptr i8, ptr %i.aak, i64 8
  %.val136.val.i = load ptr, ptr %i.aal, align 8, !tbaa !71
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %.val136.val.i, i64 %indvars.iv212.i
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !46 ; 2 uses
  %i.aao = sext i32 %i.aan to i64
  %i.aap = getelementptr inbounds [12 x i8], ptr %.val135.i, i64 %i.aao ; 2 uses
  %i.aaq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.xn, ptr noundef nonnull @.str.55, i32 noundef %.09.i165.i, i32 noundef %i.aan) #21 ; 0 uses
  %.val132.i = load ptr, ptr %i.yy, align 8, !tbaa !67
  %i.aar = ptrtoint ptr %i.aap to i64
  %i.aas = ptrtoint ptr %.val132.i to i64
  %i.aat = sub i64 %i.aar, %i.aas
  %i.aau = sdiv exact i64 %i.aat, 12
  %i.aav = trunc i64 %i.aau to i32
  %.val3.i160.i = load i64, ptr %i.aap, align 4
  %i.aaw = trunc i64 %.val3.i160.i to i32         ; 2 uses
  %i.aax = and i32 %i.aaw, 536870911
  %i.aay = sub nsw i32 %i.aav, %i.aax
  %i.aaz = and i32 %i.aaw, 536870912
  %.not.i161.i = icmp eq i32 %i.aaz, 0
  %i.aba = select i1 %.not.i161.i, i32 32, i32 126
  %fputc.i162.i = tail call i32 @fputc(i32 %i.aba, ptr nonnull %i.xn) ; 0 uses
  %i.abb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.xn, ptr noundef nonnull @.str.79, i32 noundef %.09.i165.i, i32 noundef %i.aay) #21 ; 0 uses
  %fwrite116.i = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr nonnull %i.xn) ; 0 uses
  %indvars.iv.next213.i = add nuw nsw i64 %indvars.iv212.i, 1 ; 2 uses
  %i.abc = load ptr, ptr %i.xu, align 8, !tbaa !82 ; 2 uses
  %i.abd = getelementptr i8, ptr %i.abc, i64 4
  %.val.i18 = load i32, ptr %i.abd, align 4, !tbaa !69
  %i.abe = sext i32 %.val.i18 to i64
  %i.abf = icmp slt i64 %indvars.iv.next213.i, %i.abe
  br i1 %i.abf, label %.lr.ph188.i, label %.critedge2.i17, !llvm.loop !171

.critedge2.i17:                                   ; preds = %bb.df, %.lr.ph188.i, %bb.de
  %fwrite115.i = tail call i64 @fwrite(ptr nonnull @.str.29, i64 12, i64 1, ptr nonnull %i.xn) ; 0 uses
  %i.abg = tail call i32 @fclose(ptr noundef nonnull %i.xn) ; 0 uses
  br label %GiaHie_DumpInterfaceGates.exit

GiaHie_DumpInterfaceGates.exit:                   ; preds = %.critedge2.i17, %bb.co, %.critedge4.i.i, %bb.ao, %bb.am, %Vec_BitFree.exit333.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_WriteVerilog(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @Gia_WriteVerilogInt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 poison, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_WriteMappedVerilog(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %GiaHie_DumpMappedLuts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 264        ; 4 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !179
  %.not7 = icmp eq ptr %.val, null
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %GiaHie_DumpMappedLuts.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) ; 58 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %0) ; 0 uses
  br label %GiaHie_DumpMappedLuts.exit

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %1, i64 24         ; 6 uses
  %.val222.i = load i32, ptr %i.h, align 8, !tbaa !83 ; 3 uses
  %i.i = icmp ult i32 %.val222.i, 2
  br i1 %i.i, label %Abc_Base10Log.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.j = add i32 %.val222.i, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.013.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %.0812.i.i = phi i32 [ %i.k, %.lr.ph.i.i ], [ %i.j, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.k = udiv i32 %.0812.i.i, 10
  %i.l = add nuw nsw i32 %.013.i.i, 1             ; 2 uses
  %.not.i.i = icmp ult i32 %.0812.i.i, 10
  br i1 %.not.i.i, label %Abc_Base10Log.exit.i, label %.lr.ph.i.i, !llvm.loop !0

Abc_Base10Log.exit.i:                             ; preds = %.lr.ph.i.i, %bb.f
  %.09.i.i = phi i32 [ %.val222.i, %bb.f ], [ %i.l, %.lr.ph.i.i ]
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %.09.i.i, i32 3) ; 15 uses
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.80, i64 20, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite173.i = tail call i64 @fwrite(ptr nonnull @.str.81, i64 16, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite174.i = tail call i64 @fwrite(ptr nonnull @.str.82, i64 68, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite175.i = tail call i64 @fwrite(ptr nonnull @.str.83, i64 31, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite176.i = tail call i64 @fwrite(ptr nonnull @.str.84, i64 10, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite177.i = tail call i64 @fwrite(ptr nonnull @.str.85, i64 72, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite178.i = tail call i64 @fwrite(ptr nonnull @.str.86, i64 35, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite179.i = tail call i64 @fwrite(ptr nonnull @.str.84, i64 10, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite180.i = tail call i64 @fwrite(ptr nonnull @.str.87, i64 76, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite181.i = tail call i64 @fwrite(ptr nonnull @.str.88, i64 39, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite182.i = tail call i64 @fwrite(ptr nonnull @.str.84, i64 10, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite183.i = tail call i64 @fwrite(ptr nonnull @.str.89, i64 80, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite184.i = tail call i64 @fwrite(ptr nonnull @.str.90, i64 43, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite185.i = tail call i64 @fwrite(ptr nonnull @.str.84, i64 10, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite186.i = tail call i64 @fwrite(ptr nonnull @.str.91, i64 84, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite187.i = tail call i64 @fwrite(ptr nonnull @.str.92, i64 47, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite188.i = tail call i64 @fwrite(ptr nonnull @.str.84, i64 10, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite189.i = tail call i64 @fwrite(ptr nonnull @.str.93, i64 8, i64 1, ptr nonnull %i.e) ; 0 uses
  %fwrite190.i = tail call i64 @fwrite(ptr nonnull @.str.11, i64 7, i64 1, ptr nonnull %i.e) ; 0 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !73
  tail call fastcc void @GiaHie_DumpModuleName(ptr noundef %i.e, ptr noundef %i.m)
  %fwrite191.i = tail call i64 @fwrite(ptr nonnull @.str.47, i64 3, i64 1, ptr nonnull %i.e) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 1, ptr %i.a, align 4, !tbaa !46
  call fastcc void @GiaHie_DumpPortDeclsOne(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef %i.a)
  call fastcc void @GiaHie_DumpPortDeclsOne(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %fwrite192.i = tail call i64 @fwrite(ptr nonnull @.str.48, i64 5, i64 1, ptr nonnull %i.e) ; 0 uses
  %i.n = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %.val228.i = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.o = getelementptr i8, ptr %.val228.i, i64 4
  %.val228.val.i = load i32, ptr %i.o, align 4, !tbaa !69
  %.not193.i = icmp eq i32 %.val228.val.i, 0
  br i1 %.not193.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Abc_Base10Log.exit.i
  %fwrite194.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 7, i64 1, ptr nonnull %i.e) ; 0 uses
  %.val227.i = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.p = getelementptr i8, ptr %.val227.i, i64 4
  %.val227.val.i = load i32, ptr %i.p, align 4, !tbaa !69
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef %i.e, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %.val227.val.i, i32 noundef %spec.store.select.i, i32 noundef 7, i32 noundef 0, i32 noundef 1)
  %fwrite195.i = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr nonnull %i.e) ; 0 uses
  tail call fastcc void @GiaHie_DumpInputAssigns(ptr noundef nonnull %1, ptr noundef %i.e, i32 noundef %spec.store.select.i)
  %fputc.i = tail call i32 @fputc(i32 10, ptr nonnull %i.e) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %Abc_Base10Log.exit.i
  %i.q = getelementptr i8, ptr %1, i64 72         ; 4 uses
  %.val230.i = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.r = getelementptr i8, ptr %.val230.i, i64 4
  %.val230.val.i = load i32, ptr %i.r, align 4, !tbaa !69
  %.not197.i = icmp eq i32 %.val230.val.i, 0
  br i1 %.not197.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %fwrite198.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 7, i64 1, ptr nonnull %i.e) ; 0 uses
  %.val229.i = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.s = getelementptr i8, ptr %.val229.i, i64 4
  %.val229.val.i = load i32, ptr %i.s, align 4, !tbaa !69
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef %i.e, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %.val229.val.i, i32 noundef %spec.store.select.i, i32 noundef 7, i32 noundef 0, i32 noundef 0)
  %fwrite199.i = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr nonnull %i.e) ; 0 uses
  tail call fastcc void @GiaHie_DumpOutputAssigns(ptr noundef nonnull %1, ptr noundef %i.e, i32 noundef %spec.store.select.i)
  %fputc201.i = tail call i32 @fputc(i32 10, ptr nonnull %i.e) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val221243.i = load i32, ptr %i.h, align 8, !tbaa !83 ; 2 uses
  %i.t = icmp sgt i32 %.val221243.i, 1
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i.backedge
  %.val221.i8 = phi i32 [ %.val221.i8.be, %.lr.ph.i.backedge ], [ %.val221243.i, %bb.j ]
  %indvars.iv.i = phi i64 [ %indvars.iv.i.be, %.lr.ph.i.backedge ], [ 1, %bb.j ] ; 4 uses
  %.0163246.i = phi i32 [ %.0163246.i.be, %.lr.ph.i.backedge ], [ 1, %bb.j ] ; 2 uses
  %.0164245.i = phi i32 [ %.0164245.i.be, %.lr.ph.i.backedge ], [ 0, %bb.j ] ; 3 uses
  %.val235.i = load ptr, ptr %i.d, align 8, !tbaa !179
  %i.u = getelementptr i8, ptr %.val235.i, i64 8
  %.val235.val.i = load ptr, ptr %i.u, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val235.val.i, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !46
  %.not242.i = icmp eq i32 %i.w, 0
  br i1 %.not242.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.x = icmp eq i32 %.0164245.i, 0
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %fwrite214.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 7, i64 1, ptr nonnull %i.e) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not215.i = icmp eq i32 %.0163246.i, 0
  br i1 %.not215.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %fwrite216.i = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr nonnull %i.e) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.y = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.79, i32 noundef %spec.store.select.i, i32 noundef %i.y) #21 ; 0 uses
  %i.aa = add nsw i32 %.0164245.i, 1              ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 10
  br i1 %i.ab, label %.thread.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o
  %.val221.i.pre = load i32, ptr %i.h, align 8, !tbaa !83
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %.lr.ph.i
  %.val221.i = phi i32 [ %.val221.i8, %.lr.ph.i ], [ %.val221.i.pre, %._crit_edge ] ; 2 uses
  %.1165.i = phi i32 [ %.0164245.i, %.lr.ph.i ], [ %i.aa, %._crit_edge ] ; 2 uses
  %.1.i = phi i32 [ %.0163246.i, %.lr.ph.i ], [ 0, %._crit_edge ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = sext i32 %.val221.i to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i.backedge, label %._crit_edge.i

.thread.i:                                        ; preds = %bb.o
  %fwrite217.i = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr nonnull %i.e) ; 0 uses
  %indvars.iv.next294.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val221295.i = load i32, ptr %i.h, align 8, !tbaa !83 ; 2 uses
  %i.ae = sext i32 %.val221295.i to i64
  %i.af = icmp slt i64 %indvars.iv.next294.i, %i.ae
  br i1 %i.af, label %.lr.ph.i.backedge, label %._crit_edge.thread.i

.lr.ph.i.backedge:                                ; preds = %.thread.i, %bb.p
  %.val221.i8.be = phi i32 [ %.val221295.i, %.thread.i ], [ %.val221.i, %bb.p ]
  %indvars.iv.i.be = phi i64 [ %indvars.iv.next294.i, %.thread.i ], [ %indvars.iv.next.i, %bb.p ]
  %.0163246.i.be = phi i32 [ 1, %.thread.i ], [ %.1.i, %bb.p ]
  %.0164245.i.be = phi i32 [ 0, %.thread.i ], [ %.1165.i, %bb.p ]
  br label %.lr.ph.i, !llvm.loop !174

._crit_edge.i:                                    ; preds = %bb.p
  %i.ag = icmp sgt i32 %.1165.i, 0
  br i1 %i.ag, label %bb.q, label %._crit_edge.thread.i

bb.q:                                             ; preds = %._crit_edge.i
  %fwrite202.i = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr nonnull %i.e) ; 0 uses
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.thread.i, %bb.q, %._crit_edge.i, %bb.j
  %fputc204.i = tail call i32 @fputc(i32 10, ptr nonnull %i.e) ; 0 uses
  %i.ah = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 5 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !69
  store i32 16, ptr %i.ah, align 8, !tbaa !70
  %i.aj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 8 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !71
  tail call void @Gia_ObjComputeTruthTableStart(ptr noundef nonnull %1, i32 noundef 6) #21
  %.val220253.i = load i32, ptr %i.h, align 8, !tbaa !83 ; 2 uses
  %i.al = icmp sgt i32 %.val220253.i, 1
  br i1 %i.al, label %.lr.ph256.i, label %._crit_edge257.i

.lr.ph256.i:                                      ; preds = %._crit_edge.thread.i
  %i.am = getelementptr i8, ptr %1, i64 32
  br label %bb.r

bb.r:                                             ; preds = %bb.ak, %.lr.ph256.i
  %.val220282.i = phi i32 [ %.val220253.i, %.lr.ph256.i ], [ %.val220.i, %bb.ak ]
  %indvars.iv270.i = phi i64 [ 1, %.lr.ph256.i ], [ %indvars.iv.next271.i, %bb.ak ] ; 5 uses
  %.val234.i = load ptr, ptr %i.d, align 8, !tbaa !179 ; 2 uses
  %i.an = getelementptr i8, ptr %.val234.i, i64 8
  %.val234.val.i = load ptr, ptr %i.an, align 8, !tbaa !71 ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val234.val.i, i64 %indvars.iv270.i ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !46 ; 2 uses
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val234.val.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !46 ; 4 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !69
  %i.at = load i32, ptr %i.ao, align 4, !tbaa !46
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.val234.val.i, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !46
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph251.i, label %.critedge.i

.lr.ph251.i:                                      ; preds = %bb.s, %Vec_IntPush.exit.i
  %.val236278.i = phi ptr [ %.val236.i, %Vec_IntPush.exit.i ], [ %.val234.i, %bb.s ] ; 2 uses
  %indvars.iv263.i = phi i64 [ %indvars.iv.next264.i, %Vec_IntPush.exit.i ], [ 0, %bb.s ] ; 2 uses
  %i.ay = phi ptr [ %i.by, %Vec_IntPush.exit.i ], [ %i.av, %bb.s ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv263.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !46
  %i.bc = load i32, ptr %i.ai, align 4, !tbaa !69 ; 7 uses
  %i.bd = load i32, ptr %i.ah, align 8, !tbaa !70
end_hunk_3
begin_hunk_4_@GiaHie_DumpIoList:bb.a

bb.d:                                             ; preds = %.critedge
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %.val = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = icmp sgt i32 %i.m, 0
  br i1 %i.q, label %.lr.ph.preheader.i, label %GiaHie_PrintOneName.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.m to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !18
  %i.t = sext i8 %i.s to i32
  %fputc.i = tail call i32 @fputc(i32 %i.t, ptr nonnull %1) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %GiaHie_PrintOneName.exit, label %.lr.ph.i, !llvm.loop !3

GiaHie_PrintOneName.exit:                         ; preds = %.lr.ph.i, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.u = trunc i64 %indvars.iv.next to i32
  %i.v = or disjoint i32 %i.u, 1
  %i.w = icmp slt i32 %i.v, %.val32
  br i1 %i.w, label %.critedge, label %._crit_edge.thread, !llvm.loop !191

._crit_edge:                                      ; preds = %bb.c
  %.not.i = icmp eq ptr %.val34, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %GiaHie_PrintOneName.exit, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val34) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.e) #21
  br label %bb.f

bb.f:                                             ; preds = %Vec_IntFree.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GiaHie_DumpIoRanges(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.in = select i1 %.not, ptr %i.b, ptr %i.a
  %i.c = load ptr, ptr %.in, align 8, !tbaa !80   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = select i1 %.not, ptr @.str.37, ptr @.str.36
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val55 = load i32, ptr %i.g, align 8, !tbaa !84
  %. = select i1 %.not, i64 64, i64 72
  %.67 = select i1 %.not, i32 105, i32 111
  %i.h = getelementptr i8, ptr %0, i64 %.
  %.val56 = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.i = getelementptr i8, ptr %.val56, i64 4
  %.val56.val = load i32, ptr %i.i, align 4, !tbaa !69
  %i.j = xor i32 %.val55, -1
  %i.k = add i32 %.val56.val, %i.j
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.f, i32 noundef %i.k, i32 noundef %.67) #21 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.m = tail call fastcc ptr @GiaHie_CountSymbsAll(ptr noundef %i.c) ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val51 = load i32, ptr %i.n, align 4, !tbaa !69 ; 2 uses
  %i.o = icmp sgt i32 %.val51, 1
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %.val54 = load ptr, ptr %i.p, align 8, !tbaa !71 ; 4 uses
  br i1 %i.o, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.c, i64 4
  %i.r = getelementptr i8, ptr %i.c, i64 8
  %i.s = select i1 %.not, ptr @.str.37, ptr @.str.36
  %i.t = zext nneg i32 %.val51 to i64             ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %GiaHie_PrintOneName.exit
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %GiaHie_PrintOneName.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val54, i64 %indvars.iv ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !46   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !46   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.t
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val54, i64 %indvars.iv.next
  %.in61 = select i1 %i.y, ptr %i.z, ptr %i.q
  %i.aa = load i32, ptr %.in61, align 4, !tbaa !46
  %.val49 = load ptr, ptr %i.r, align 8, !tbaa !45 ; 2 uses
  %i.ab = sext i32 %i.v to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val49, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47 ; 2 uses
  %i.ae = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val49, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ai = sext i32 %i.x to i64                    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %GiaHie_ReadRangeNum.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.an = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.am, ptr noundef null, i32 noundef 10) #21, !inline_history !4
  %i.ao = trunc i64 %i.an to i32
  br label %GiaHie_ReadRangeNum.exit

GiaHie_ReadRangeNum.exit:                         ; preds = %.critedge, %bb.d
  %.0.i = phi i32 [ %i.ao, %bb.d ], [ -1, %.critedge ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %GiaHie_ReadRangeNum.exit60, label %bb.e

bb.e:                                             ; preds = %GiaHie_ReadRangeNum.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.at = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.as, ptr noundef null, i32 noundef 10) #21, !inline_history !4
  %i.au = trunc i64 %i.at to i32
  br label %GiaHie_ReadRangeNum.exit60

GiaHie_ReadRangeNum.exit60:                       ; preds = %GiaHie_ReadRangeNum.exit, %bb.e
  %.0.i59 = phi i32 [ %i.au, %bb.e ], [ -1, %GiaHie_ReadRangeNum.exit ]
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.s) #21 ; 0 uses
  %.not46 = icmp ne i32 %.0.i, -1
  %i.aw = icmp slt i32 %i.v, %i.ae
  %or.cond = and i1 %.not46, %i.aw
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %GiaHie_ReadRangeNum.exit60
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.39, i32 noundef %.0.i59, i32 noundef %.0.i) #21 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %GiaHie_ReadRangeNum.exit60
  %i.ay = icmp sgt i32 %i.x, 0
  br i1 %i.ay, label %.lr.ph.preheader.i, label %GiaHie_PrintOneName.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %i.x to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bb = sext i8 %i.ba to i32
  %fputc.i = tail call i32 @fputc(i32 %i.bb, ptr nonnull %1) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %GiaHie_PrintOneName.exit, label %.lr.ph.i, !llvm.loop !3

GiaHie_PrintOneName.exit:                         ; preds = %.lr.ph.i, %bb.g
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr nonnull %1) ; 0 uses
  %i.bc = or disjoint i64 %indvars.iv.next, 1
  %i.bd = icmp samesign ult i64 %i.bc, %i.t
  br i1 %i.bd, label %.critedge, label %._crit_edge.thread, !llvm.loop !192

._crit_edge:                                      ; preds = %bb.c
  %.not.i = icmp eq ptr %.val54, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %GiaHie_PrintOneName.exit, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val54) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.m) #21
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntFree.exit, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @GiaHie_WriteNames(ptr nofree noundef nonnull captures(none) %0, i8 noundef signext range(i8 105, 123) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef range(i32 7, 10) %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #14 {
bb.a:
  %i.a = icmp ult i32 %2, 2
  br i1 %i.a, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = add i32 %2, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.013.i = phi i32 [ %i.d, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0812.i = phi i32 [ %i.c, %.lr.ph.i ], [ %i.b, %.lr.ph.preheader.i ] ; 2 uses
  %i.c = udiv i32 %.0812.i, 10
  %i.d = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i, !llvm.loop !0

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i, %bb.a
  %.09.i = phi i32 [ %2, %bb.a ], [ %i.d, %.lr.ph.i ] ; 4 uses
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Abc_Base10Log.exit
  %.not = icmp eq i32 %6, 0                       ; 3 uses
  %.not30 = icmp eq ptr %5, null
  %i.f = getelementptr i8, ptr %5, i64 8          ; 2 uses
  br i1 %.not30, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.g = add nsw i32 %2, -1
  %i.h = select i1 %.not, i32 0, i32 %i.g
  tail call fastcc void @GiaHie_ObjGetDumpName(ptr noundef %3, i8 noundef signext %1, i32 noundef %i.h, i32 noundef %.09.i)
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer) #24
  %i.j = trunc i64 %i.i to i32
  %i.k = add nuw nsw i32 %4, 2
  %i.l = add i32 %i.k, %i.j                       ; 2 uses
  %i.m = icmp sgt i32 %i.l, 60
  br i1 %i.m, label %.thread.us.peel, label %bb.b

.thread.us.peel:                                  ; preds = %.lr.ph.split.us.preheader
  %fwrite.us.peel = tail call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.preheader, %.thread.us.peel
  %.12537.us.peel = phi i32 [ 4, %.thread.us.peel ], [ %i.l, %.lr.ph.split.us.preheader ]
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  %exitcond54.peel.not = icmp eq i32 %2, 1
  br i1 %exitcond54.peel.not, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %bb.b, %bb.c
  %.02339.us = phi i32 [ %i.y, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %.02438.us = phi i32 [ %.12537.us, %bb.c ], [ %.12537.us.peel, %bb.b ]
  %i.o = xor i32 %.02339.us, -1
  %i.p = add nsw i32 %2, %i.o
  %i.q = select i1 %.not, i32 %.02339.us, i32 %i.p
  tail call fastcc void @GiaHie_ObjGetDumpName(ptr noundef %3, i8 noundef signext %1, i32 noundef %i.q, i32 noundef %.09.i)
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer) #24
  %i.s = trunc i64 %i.r to i32
  %i.t = add nsw i32 %.02438.us, 2
  %i.u = add i32 %i.t, %i.s                       ; 2 uses
  %i.v = icmp sgt i32 %i.u, 60
  br i1 %i.v, label %.thread.us, label %bb.c

.thread.us:                                       ; preds = %.lr.ph.split.us
  %fwrite.us = tail call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us, %.thread.us
  %.12537.us = phi i32 [ 4, %.thread.us ], [ %i.u, %.lr.ph.split.us ]
  %i.w = phi ptr [ @.str.43, %.thread.us ], [ @.str.13, %.lr.ph.split.us ]
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.w, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  %i.y = add nuw nsw i32 %.02339.us, 1            ; 2 uses
  %exitcond54.not = icmp eq i32 %i.y, %2
  br i1 %exitcond54.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !193

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.g
  %.040.us41 = phi i32 [ %.2.us50, %bb.g ], [ 1, %.lr.ph.split ] ; 2 uses
  %.02339.us42 = phi i32 [ %i.an, %bb.g ], [ 0, %.lr.ph.split ] ; 4 uses
  %.02438.us43 = phi i32 [ %.226.us49, %bb.g ], [ %4, %.lr.ph.split ] ; 2 uses
  %.val.us = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.z = lshr i32 %.02339.us42, 5
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val.us, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !46
  %i.ad = and i32 %.02339.us42, 31
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = and i32 %i.ac, %i.ae
  %.not31.us = icmp eq i32 %i.af, 0
  br i1 %.not31.us, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split.us
  tail call fastcc void @GiaHie_ObjGetDumpName(ptr noundef %3, i8 noundef signext %1, i32 noundef %.02339.us42, i32 noundef %.09.i)
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer) #24
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = add nsw i32 %.02438.us43, 2
  %i.aj = add i32 %i.ai, %i.ah                    ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 60
  br i1 %i.ak, label %.thread.us46, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not32.us44 = icmp eq i32 %.040.us41, 0
  %spec.select.us45 = select i1 %.not32.us44, ptr @.str.13, ptr @.str.43
  br label %bb.f

.thread.us46:                                     ; preds = %bb.d
  %fwrite.us47 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread.us46, %bb.e
  %.12537.us48 = phi i32 [ 4, %.thread.us46 ], [ %i.aj, %bb.e ]
  %i.al = phi ptr [ @.str.43, %.thread.us46 ], [ %spec.select.us45, %bb.e ]
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.al, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split.us, %bb.f
  %.226.us49 = phi i32 [ %.12537.us48, %bb.f ], [ %.02438.us43, %.lr.ph.split.split.us ]
  %.2.us50 = phi i32 [ 0, %bb.f ], [ %.040.us41, %.lr.ph.split.split.us ]
  %i.an = add nuw nsw i32 %.02339.us42, 1         ; 2 uses
  %exitcond53.not = icmp eq i32 %i.an, %2
  br i1 %exitcond53.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !1

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.k
  %.040 = phi i32 [ %.2, %bb.k ], [ 1, %.lr.ph.split ] ; 2 uses
  %.02339 = phi i32 [ %i.be, %bb.k ], [ 0, %.lr.ph.split ] ; 2 uses
  %.02438 = phi i32 [ %.226, %bb.k ], [ %4, %.lr.ph.split ] ; 2 uses
  %i.ao = xor i32 %.02339, -1
  %i.ap = add nsw i32 %2, %i.ao                   ; 3 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.aq = ashr i32 %i.ap, 5
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !46
  %i.au = and i32 %i.ap, 31
  %i.av = shl nuw i32 1, %i.au
  %i.aw = and i32 %i.at, %i.av
  %.not31 = icmp eq i32 %i.aw, 0
  br i1 %.not31, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split
  tail call fastcc void @GiaHie_ObjGetDumpName(ptr noundef %3, i8 noundef signext %1, i32 noundef %i.ap, i32 noundef %.09.i)
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @GiaHie_ObjGetDumpName.pBuffer) #24
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add nsw i32 %.02438, 2
  %i.ba = add i32 %i.az, %i.ay                    ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 60
  br i1 %i.bb, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not32 = icmp eq i32 %.040, 0
  %spec.select = select i1 %.not32, ptr @.str.13, ptr @.str.43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  %.12537 = phi i32 [ 4, %.thread ], [ %i.ba, %bb.i ]
  %i.bc = phi ptr [ @.str.43, %.thread ], [ %spec.select, %bb.i ]
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.bc, ptr noundef nonnull @GiaHie_ObjGetDumpName.pBuffer) #21 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.split, %bb.j
  %.226 = phi i32 [ %.12537, %bb.j ], [ %.02438, %.lr.ph.split.split ]
  %.2 = phi i32 [ 0, %bb.j ], [ %.040, %.lr.ph.split.split ]
  %i.be = add nuw nsw i32 %.02339, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.k, %bb.g, %bb.c, %bb.b, %Abc_Base10Log.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @GiaHie_CollectMultiBits(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #15 {
bb.a:
  %i.a = ashr i32 %1, 5
  %i.b = and i32 %1, 31
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  %i.e = add nsw i32 %i.a, %i.d                   ; 3 uses
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 4 uses
  %i.g = shl nsw i32 %i.e, 5                      ; 2 uses
  store i32 %i.g, ptr %i.f, align 8, !tbaa !94
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %i.e to i64
  %i.i = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #23
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi8.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !92
  store i32 %i.g, ptr %i.l, align 4, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %Vec_BitStart.exit
  %i.o = icmp eq ptr %0, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_4
begin_hunk_5_@GiaHie_WriteObjRange:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %4, i32 noundef %i.bg) #21 ; 0 uses
  %i.bi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = add nuw nsw i32 %5, 2
  %i.bl = add i32 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 100
  br i1 %i.bm, label %.thread.peel, label %bb.f

.thread.peel:                                     ; preds = %.lr.ph.split.split.preheader
  %fwrite.peel = tail call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread.peel, %.lr.ph.split.split.preheader
  %.12535.peel = phi i32 [ 4, %.thread.peel ], [ %i.bl, %.lr.ph.split.split.preheader ]
  %i.bn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.a) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %exitcond.peel.not = icmp eq i32 %i.b, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.bo = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count53 = zext nneg i32 %i.b to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %.val29.val.us.peel, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.br = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %4, i32 noundef %i.bq) #21 ; 0 uses
  %i.bs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = add nuw nsw i32 %5, 2
  %i.bv = add i32 %i.bu, %i.bt                    ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 100
  br i1 %i.bw, label %.thread.us42.peel, label %bb.g

.thread.us42.peel:                                ; preds = %.lr.ph.split.split.us.preheader
  %fwrite.us43.peel = tail call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread.us42.peel, %.lr.ph.split.split.us.preheader
  %.12535.us44.peel = phi i32 [ 4, %.thread.us42.peel ], [ %i.bv, %.lr.ph.split.split.us.preheader ]
  %i.bx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.a) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %exitcond54.peel.not = icmp eq i32 %i.b, 1
  br i1 %exitcond54.peel.not, label %._crit_edge, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %bb.g, %bb.h
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %.02436.us41 = phi i32 [ %.12535.us44, %bb.h ], [ %.12535.us44.peel, %bb.g ]
  %.val29.us = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.by = getelementptr i8, ptr %.val29.us, i64 8
  %.val29.val.us = load ptr, ptr %i.by, align 8, !tbaa !71
  %i.bz = getelementptr [4 x i8], ptr %.val29.val.us, i64 %indvars.iv50
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %i.bo
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %4, i32 noundef %i.cb) #21 ; 0 uses
  %i.cd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = add nsw i32 %.02436.us41, 2
  %i.cg = add i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 100
  br i1 %i.ch, label %.thread.us42, label %bb.h

.thread.us42:                                     ; preds = %.lr.ph.split.split.us
  %fwrite.us43 = call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split.us, %.thread.us42
  %.12535.us44 = phi i32 [ 4, %.thread.us42 ], [ %i.cg, %.lr.ph.split.split.us ]
  %i.ci = phi ptr [ @.str.43, %.thread.us42 ], [ @.str.13, %.lr.ph.split.split.us ]
  %i.cj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.a) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !202

.lr.ph.split.split:                               ; preds = %bb.f, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.f ] ; 2 uses
  %.02436 = phi i32 [ %.12535, %bb.i ], [ %.12535.peel, %bb.f ]
  %i.ck = trunc i64 %indvars.iv to i32
  %i.cl = xor i32 %i.ck, -1
  %i.cm = add i32 %3, %i.cl
  %.val29 = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.cn = getelementptr i8, ptr %.val29, i64 8
  %.val29.val = load ptr, ptr %i.cn, align 8, !tbaa !71
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %.val29.val, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cr = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %4, i32 noundef %i.cq) #21 ; 0 uses
  %i.cs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = add nsw i32 %.02436, 2
  %i.cv = add i32 %i.cu, %i.ct                    ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 100
  br i1 %i.cw, label %.thread, label %bb.i

.thread:                                          ; preds = %.lr.ph.split.split
  %fwrite = call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split, %.thread
  %.12535 = phi i32 [ 4, %.thread ], [ %i.cv, %.lr.ph.split.split ]
  %i.cx = phi ptr [ @.str.43, %.thread ], [ @.str.13, %.lr.ph.split.split ]
  %i.cy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.a) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !203

._crit_edge:                                      ; preds = %bb.i, %bb.h, %bb.e, %bb.d, %bb.f, %bb.g, %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GiaHie_DumpInputAssigns(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val92 = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.d = getelementptr i8, ptr %.val92, i64 4
  %.val92.val = load i32, ptr %i.d, align 4, !tbaa !69 ; 7 uses
  %i.e = icmp sgt i32 %.val92.val, 2
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %i.b, null
  br i1 %i.f, label %.lr.ph.preheader.i.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 4
  %.val.i = load i32, ptr %i.g, align 4, !tbaa !50 ; 2 uses
  %i.h = icmp eq i32 %.val.i, 0
  br i1 %i.h, label %.lr.ph.preheader.i.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc ptr @GiaHie_CountSymbsAll(ptr noundef nonnull readonly %i.b) ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val26.i = load i32, ptr %i.j, align 4, !tbaa !69 ; 2 uses
  %i.k = sdiv i32 %.val26.i, 2                    ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = sext i32 %i.k to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !71   ; 5 uses
  %exitcond.not.i.not.not134 = icmp slt i32 %.val26.i, 2
  br i1 %exitcond.not.i.not.not134, label %.critedge.i._crit_edge, label %.lr.ph

.critedge.i:                                      ; preds = %bb.f
  %exitcond.not.i.not.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i.not.not, label %.critedge.i._crit_edge, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %bb.d, %.critedge.i
  %indvars.iv.i135 = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ 0, %bb.d ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i135, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i135, 1 ; 4 uses
  %i.q = icmp slt i64 %indvars.iv.next.i, %i.m
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %.idx33.i = shl nuw nsw i64 %indvars.iv.next.i, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx33.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.t = phi i32 [ %i.s, %bb.e ], [ %.val.i, %.lr.ph ]
  %i.u = sub nsw i32 %i.t, %i.p
  %i.v = icmp slt i32 %i.u, 2
  br i1 %i.v, label %.critedge.i, label %.sink.split.sink.split.i, !llvm.loop !6

.critedge.i._crit_edge:                           ; preds = %.critedge.i, %bb.d
  %.not.i29.i = icmp eq ptr %i.n, null
  br i1 %.not.i29.i, label %.lr.ph.preheader.i.sink.split, label %.lr.ph.preheader.i.critedge138

.sink.split.sink.split.i:                         ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.n) #21
  tail call void @free(ptr noundef nonnull %i.i) #21
  br label %.thread112

.thread:                                          ; preds = %bb.a
  %i.w = icmp eq i32 %.val92.val, 0
  br i1 %i.w, label %bb.n, label %.thread112

.lr.ph.preheader.i.critedge138:                   ; preds = %.critedge.i._crit_edge
  tail call void @free(ptr noundef nonnull %i.n) #21
  br label %.lr.ph.preheader.i.sink.split

.lr.ph.preheader.i.sink.split:                    ; preds = %.critedge.i._crit_edge, %.lr.ph.preheader.i.critedge138
  tail call void @free(ptr noundef nonnull %i.i) #21
  br label %.lr.ph.preheader.i.a

.lr.ph.preheader.i.a:                             ; preds = %.lr.ph.preheader.i.sink.split, %bb.b, %bb.c
  %i.x = add nsw i32 %.val92.val, -1
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.preheader.i.a
  %.013.i = phi i32 [ %i.z, %.lr.ph.i.a ], [ 0, %.lr.ph.preheader.i.a ]
  %.0812.i = phi i32 [ %i.y, %.lr.ph.i.a ], [ %i.x, %.lr.ph.preheader.i.a ] ; 2 uses
  %i.y = udiv i32 %.0812.i, 10
  %i.z = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i.a, !llvm.loop !0

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i.a
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.z, i32 2)
  %fwrite83 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr nonnull %1) ; 0 uses
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %.val92.val, i32 noundef %2, i32 noundef 11, i32 noundef 1, i32 noundef 1)
  %fwrite84 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 11, i64 1, ptr nonnull %1) ; 0 uses
  tail call fastcc void @GiaHie_WritePiPoNames(ptr noundef %1, ptr noundef nonnull @.str.68, i32 noundef %.val92.val, i32 noundef %spec.store.select, i32 noundef 18, i32 noundef 1)
  %fwrite85 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 4, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.n

.thread112:                                       ; preds = %.sink.split.sink.split.i, %.thread
  %i.aa = icmp eq ptr %i.b, null
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.thread112
  %i.ab = icmp eq i32 %.val92.val, 1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %fwrite81 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 9, i64 1, ptr nonnull %1) ; 0 uses
  %.val96 = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.ac = getelementptr i8, ptr %.val96, i64 8
  %.val96.val = load ptr, ptr %i.ac, align 8, !tbaa !71
  %i.ad = load i32, ptr %.val96.val, align 4, !tbaa !46
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.79, i32 noundef %2, i32 noundef %i.ad) #21 ; 0 uses
  %fwrite82 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 8, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %fwrite79 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr nonnull %1) ; 0 uses
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %.val92.val, i32 noundef %2, i32 noundef 11, i32 noundef 1, i32 noundef 1)
  %fwrite80 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 14, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %.thread112
  %i.af = tail call fastcc ptr @GiaHie_CountSymbsAll(ptr noundef nonnull %i.b) ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %.val88 = load i32, ptr %i.ag, align 4, !tbaa !69 ; 2 uses
  %i.ah = icmp sgt i32 %.val88, 1
  %i.ai = getelementptr i8, ptr %i.af, i64 8
  %.val91 = load ptr, ptr %i.ai, align 8, !tbaa !71 ; 4 uses
  br i1 %i.ah, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %i.b, i64 4
  %i.ak = getelementptr i8, ptr %i.b, i64 8
  %i.al = zext nneg i32 %.val88 to i64            ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val91, i64 %indvars.iv ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !46 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !46 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.aq = icmp samesign ult i64 %indvars.iv.next, %i.al
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val91, i64 %indvars.iv.next
  %.in = select i1 %i.aq, ptr %i.ar, ptr %i.aj
  %i.as = load i32, ptr %.in, align 4, !tbaa !46  ; 2 uses
  %i.at = sub nsw i32 %i.as, %i.an
  %.val86 = load ptr, ptr %i.ak, align 8, !tbaa !45
  %i.au = sext i32 %i.an to i64                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.val86, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47 ; 2 uses
  %i.ax = icmp sgt i32 %i.at, 1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge
  %fwrite76 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr nonnull %1) ; 0 uses
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef %1, ptr noundef %0, i32 noundef %i.an, i32 noundef %i.as, i32 noundef %2, i32 noundef 11, i32 noundef 1, i32 noundef 1)
  %fwrite77 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 11, i64 1, ptr nonnull %1) ; 0 uses
  %i.ay = icmp sgt i32 %i.ap, 0
  br i1 %i.ay, label %.lr.ph.preheader.i97, label %GiaHie_PrintOneName.exit

.lr.ph.preheader.i97:                             ; preds = %bb.k
  %wide.trip.count.i98 = zext nneg i32 %i.ap to i64
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99, %.lr.ph.preheader.i97
  %indvars.iv.i100 = phi i64 [ 0, %.lr.ph.preheader.i97 ], [ %indvars.iv.next.i101, %.lr.ph.i99 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.i100
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bb = sext i8 %i.ba to i32
  %fputc.i = tail call i32 @fputc(i32 %i.bb, ptr nonnull %1) ; 0 uses
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i100, 1 ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i101, %wide.trip.count.i98
  br i1 %exitcond.not.i102, label %GiaHie_PrintOneName.exit, label %.lr.ph.i99, !llvm.loop !3

GiaHie_PrintOneName.exit:                         ; preds = %.lr.ph.i99, %bb.k
  %fwrite78 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 4, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %.critedge
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.73, i64 9, i64 1, ptr nonnull %1) ; 0 uses
  %.val94 = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.bc = getelementptr i8, ptr %.val94, i64 8
  %.val94.val = load ptr, ptr %i.bc, align 8, !tbaa !71
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val94.val, i64 %i.au
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !46
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.79, i32 noundef %2, i32 noundef %i.be) #21 ; 0 uses
  %fwrite74 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 3, i64 1, ptr nonnull %1) ; 0 uses
  %i.bg = icmp sgt i32 %i.ap, 0
  br i1 %i.bg, label %.lr.ph.preheader.i103, label %GiaHie_PrintOneName.exit110

.lr.ph.preheader.i103:                            ; preds = %bb.l
  %wide.trip.count.i104 = zext nneg i32 %i.ap to i64
  br label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105, %.lr.ph.preheader.i103
  %indvars.iv.i106 = phi i64 [ 0, %.lr.ph.preheader.i103 ], [ %indvars.iv.next.i108, %.lr.ph.i105 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.i106
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18
  %i.bj = sext i8 %i.bi to i32
  %fputc.i107 = tail call i32 @fputc(i32 %i.bj, ptr nonnull %1) ; 0 uses
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i104
  br i1 %exitcond.not.i109, label %GiaHie_PrintOneName.exit110, label %.lr.ph.i105, !llvm.loop !3

GiaHie_PrintOneName.exit110:                      ; preds = %.lr.ph.i105, %bb.l
  %fwrite75 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %GiaHie_PrintOneName.exit110, %GiaHie_PrintOneName.exit
  %i.bk = or disjoint i64 %indvars.iv.next, 1
  %i.bl = icmp samesign ult i64 %i.bk, %i.al
  br i1 %i.bl, label %.critedge, label %._crit_edge.thread, !llvm.loop !204

._crit_edge:                                      ; preds = %bb.j
  %.not.i111 = icmp eq ptr %.val91, null
  br i1 %.not.i111, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val91) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.af) #21
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.h, %bb.i, %Vec_IntFree.exit, %Abc_Base10Log.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GiaHie_DumpOutputAssigns(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %.val92 = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.d = getelementptr i8, ptr %.val92, i64 4
  %.val92.val = load i32, ptr %i.d, align 4, !tbaa !69 ; 7 uses
  %i.e = icmp sgt i32 %.val92.val, 2
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %i.b, null
  br i1 %i.f, label %.lr.ph.preheader.i.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 4
  %.val.i = load i32, ptr %i.g, align 4, !tbaa !50 ; 2 uses
  %i.h = icmp eq i32 %.val.i, 0
  br i1 %i.h, label %.lr.ph.preheader.i.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc ptr @GiaHie_CountSymbsAll(ptr noundef nonnull readonly %i.b) ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val26.i = load i32, ptr %i.j, align 4, !tbaa !69 ; 2 uses
  %i.k = sdiv i32 %.val26.i, 2                    ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = sext i32 %i.k to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !71   ; 5 uses
  %exitcond.not.i.not.not134 = icmp slt i32 %.val26.i, 2
  br i1 %exitcond.not.i.not.not134, label %.critedge.i._crit_edge, label %.lr.ph

.critedge.i:                                      ; preds = %bb.f
  %exitcond.not.i.not.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i.not.not, label %.critedge.i._crit_edge, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %bb.d, %.critedge.i
  %indvars.iv.i135 = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ 0, %bb.d ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i135, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i135, 1 ; 4 uses
  %i.q = icmp slt i64 %indvars.iv.next.i, %i.m
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %.idx33.i = shl nuw nsw i64 %indvars.iv.next.i, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx33.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.t = phi i32 [ %i.s, %bb.e ], [ %.val.i, %.lr.ph ]
  %i.u = sub nsw i32 %i.t, %i.p
  %i.v = icmp slt i32 %i.u, 2
  br i1 %i.v, label %.critedge.i, label %.sink.split.sink.split.i, !llvm.loop !6

.critedge.i._crit_edge:                           ; preds = %.critedge.i, %bb.d
  %.not.i29.i = icmp eq ptr %i.n, null
  br i1 %.not.i29.i, label %.lr.ph.preheader.i.sink.split, label %.lr.ph.preheader.i.critedge138

.sink.split.sink.split.i:                         ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.n) #21
  tail call void @free(ptr noundef nonnull %i.i) #21
  br label %.thread112

.thread:                                          ; preds = %bb.a
  %i.w = icmp eq i32 %.val92.val, 0
  br i1 %i.w, label %bb.n, label %.thread112

.lr.ph.preheader.i.critedge138:                   ; preds = %.critedge.i._crit_edge
  tail call void @free(ptr noundef nonnull %i.n) #21
  br label %.lr.ph.preheader.i.sink.split

.lr.ph.preheader.i.sink.split:                    ; preds = %.critedge.i._crit_edge, %.lr.ph.preheader.i.critedge138
  tail call void @free(ptr noundef nonnull %i.i) #21
  br label %.lr.ph.preheader.i.a

.lr.ph.preheader.i.a:                             ; preds = %.lr.ph.preheader.i.sink.split, %bb.b, %bb.c
  %i.x = add nsw i32 %.val92.val, -1
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.preheader.i.a
  %.013.i = phi i32 [ %i.z, %.lr.ph.i.a ], [ 0, %.lr.ph.preheader.i.a ]
  %.0812.i = phi i32 [ %i.y, %.lr.ph.i.a ], [ %i.x, %.lr.ph.preheader.i.a ] ; 2 uses
  %i.y = udiv i32 %.0812.i, 10
  %i.z = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i.a, !llvm.loop !0

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i.a
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.z, i32 2)
  %fwrite83 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr nonnull %1) ; 0 uses
  tail call fastcc void @GiaHie_WritePiPoNames(ptr noundef %1, ptr noundef nonnull @.str.67, i32 noundef %.val92.val, i32 noundef %spec.store.select, i32 noundef 11, i32 noundef 1)
  %fwrite84 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 11, i64 1, ptr nonnull %1) ; 0 uses
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %.val92.val, i32 noundef %2, i32 noundef 18, i32 noundef 1, i32 noundef 0)
  %fwrite85 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 4, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.n

.thread112:                                       ; preds = %.sink.split.sink.split.i, %.thread
  %i.aa = icmp eq ptr %i.b, null
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.thread112
  %i.ab = icmp eq i32 %.val92.val, 1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %fwrite81 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 15, i64 1, ptr nonnull %1) ; 0 uses
  %.val96 = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.ac = getelementptr i8, ptr %.val96, i64 8
  %.val96.val = load ptr, ptr %i.ac, align 8, !tbaa !71
  %i.ad = load i32, ptr %.val96.val, align 4, !tbaa !46
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.79, i32 noundef %2, i32 noundef %i.ad) #21 ; 0 uses
  %fwrite82 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %fwrite79 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 21, i64 1, ptr nonnull %1) ; 0 uses
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %.val92.val, i32 noundef %2, i32 noundef 18, i32 noundef 1, i32 noundef 0)
  %fwrite80 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 4, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %.thread112
  %i.af = tail call fastcc ptr @GiaHie_CountSymbsAll(ptr noundef nonnull %i.b) ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %.val88 = load i32, ptr %i.ag, align 4, !tbaa !69 ; 2 uses
  %i.ah = icmp sgt i32 %.val88, 1
  %i.ai = getelementptr i8, ptr %i.af, i64 8
  %.val91 = load ptr, ptr %i.ai, align 8, !tbaa !71 ; 4 uses
  br i1 %i.ah, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %i.b, i64 4
  %i.ak = getelementptr i8, ptr %i.b, i64 8
  %i.al = zext nneg i32 %.val88 to i64            ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val91, i64 %indvars.iv ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !46 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !46 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.aq = icmp samesign ult i64 %indvars.iv.next, %i.al
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val91, i64 %indvars.iv.next
  %.in = select i1 %i.aq, ptr %i.ar, ptr %i.aj
  %i.as = load i32, ptr %.in, align 4, !tbaa !46  ; 2 uses
  %i.at = sub nsw i32 %i.as, %i.an
  %.val86 = load ptr, ptr %i.ak, align 8, !tbaa !45
  %i.au = sext i32 %i.an to i64                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.val86, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47 ; 2 uses
  %i.ax = icmp sgt i32 %i.at, 1
  %i.ay = icmp sgt i32 %i.ap, 0                   ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge
  %fwrite76 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr nonnull %1) ; 0 uses
  br i1 %i.ay, label %.lr.ph.preheader.i97, label %GiaHie_PrintOneName.exit

.lr.ph.preheader.i97:                             ; preds = %bb.k
  %wide.trip.count.i98 = zext nneg i32 %i.ap to i64
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99, %.lr.ph.preheader.i97
  %indvars.iv.i100 = phi i64 [ 0, %.lr.ph.preheader.i97 ], [ %indvars.iv.next.i101, %.lr.ph.i99 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.i100
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bb = sext i8 %i.ba to i32
  %fputc.i = tail call i32 @fputc(i32 %i.bb, ptr nonnull %1) ; 0 uses
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i100, 1 ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i101, %wide.trip.count.i98
  br i1 %exitcond.not.i102, label %GiaHie_PrintOneName.exit, label %.lr.ph.i99, !llvm.loop !3

GiaHie_PrintOneName.exit:                         ; preds = %.lr.ph.i99, %bb.k
  %fwrite77 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 11, i64 1, ptr nonnull %1) ; 0 uses
  tail call fastcc void @GiaHie_WriteObjRange(ptr noundef %1, ptr noundef %0, i32 noundef %i.an, i32 noundef %i.as, i32 noundef %2, i32 noundef 18, i32 noundef 1, i32 noundef 0)
  %fwrite78 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 4, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %.critedge
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.73, i64 9, i64 1, ptr nonnull %1) ; 0 uses
  br i1 %i.ay, label %.lr.ph.preheader.i103, label %GiaHie_PrintOneName.exit110

.lr.ph.preheader.i103:                            ; preds = %bb.l
  %wide.trip.count.i104 = zext nneg i32 %i.ap to i64
  br label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105, %.lr.ph.preheader.i103
  %indvars.iv.i106 = phi i64 [ 0, %.lr.ph.preheader.i103 ], [ %indvars.iv.next.i108, %.lr.ph.i105 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.i106
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18
  %i.be = sext i8 %i.bd to i32
  %fputc.i107 = tail call i32 @fputc(i32 %i.be, ptr nonnull %1) ; 0 uses
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i104
  br i1 %exitcond.not.i109, label %GiaHie_PrintOneName.exit110, label %.lr.ph.i105, !llvm.loop !3

GiaHie_PrintOneName.exit110:                      ; preds = %.lr.ph.i105, %bb.l
  %fwrite74 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 3, i64 1, ptr nonnull %1) ; 0 uses
  %.val94 = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.bf = getelementptr i8, ptr %.val94, i64 8
  %.val94.val = load ptr, ptr %i.bf, align 8, !tbaa !71
  %i.bg = getelementptr inbounds [4 x i8], ptr %.val94.val, i64 %i.au
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !46
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.79, i32 noundef %2, i32 noundef %i.bh) #21 ; 0 uses
  %fwrite75 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %GiaHie_PrintOneName.exit110, %GiaHie_PrintOneName.exit
  %i.bj = or disjoint i64 %indvars.iv.next, 1
  %i.bk = icmp samesign ult i64 %i.bj, %i.al
  br i1 %i.bk, label %.critedge, label %._crit_edge.thread, !llvm.loop !205

._crit_edge:                                      ; preds = %bb.j
  %.not.i111 = icmp eq ptr %.val91, null
  br i1 %.not.i111, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val91) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.af) #21
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.h, %bb.i, %Vec_IntFree.exit, %Abc_Base10Log.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GiaHie_DumpPortDeclsOneSome(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 2
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.lr.ph.preheader.i.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc ptr @GiaHie_CountSymbsSome(ptr noundef readonly %0, i32 noundef range(i32 3, -2147483648) %1) ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val.i = load i32, ptr %i.d, align 4, !tbaa !69 ; 2 uses
  %i.e = sdiv i32 %.val.i, 2                      ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = sext i32 %i.e to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !71   ; 5 uses
  %exitcond.not.i.not.not112 = icmp slt i32 %.val.i, 2
  br i1 %exitcond.not.i.not.not112, label %.critedge.i._crit_edge, label %.lr.ph

.critedge.i:                                      ; preds = %bb.e
  %exitcond.not.i.not.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i.not.not, label %.critedge.i._crit_edge, label %.lr.ph, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.c, %.critedge.i
  %indvars.iv.i113 = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ 0, %bb.c ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i113, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i113, 1 ; 4 uses
  %i.k = icmp slt i64 %indvars.iv.next.i, %i.g
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %.idx32.i = shl nuw nsw i64 %indvars.iv.next.i, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx32.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.n = phi i32 [ %i.m, %bb.d ], [ %1, %.lr.ph ]
  %i.o = sub nsw i32 %i.n, %i.j
  %i.p = icmp slt i32 %i.o, 2
  br i1 %i.p, label %.critedge.i, label %.sink.split.sink.split.i, !llvm.loop !2

.critedge.i._crit_edge:                           ; preds = %.critedge.i, %bb.c
  %.not.i28.i = icmp eq ptr %i.h, null
  br i1 %.not.i28.i, label %.lr.ph.preheader.i.sink.split, label %.lr.ph.preheader.i.critedge116

.sink.split.sink.split.i:                         ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #21
  tail call void @free(ptr noundef nonnull %i.c) #21
  br label %.thread88

.thread:                                          ; preds = %bb.a
  %i.q = icmp eq i32 %1, 0
  br i1 %i.q, label %bb.t, label %.thread88

.lr.ph.preheader.i.critedge116:                   ; preds = %.critedge.i._crit_edge
  tail call void @free(ptr noundef nonnull %i.h) #21
  br label %.lr.ph.preheader.i.sink.split

.lr.ph.preheader.i.sink.split:                    ; preds = %.critedge.i._crit_edge, %.lr.ph.preheader.i.critedge116
  tail call void @free(ptr noundef nonnull %i.c) #21
  br label %.lr.ph.preheader.i.a

.lr.ph.preheader.i.a:                             ; preds = %.lr.ph.preheader.i.sink.split, %bb.b
  %i.r = add nsw i32 %1, -1
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.preheader.i.a
  %.013.i = phi i32 [ %i.t, %.lr.ph.i.a ], [ 0, %.lr.ph.preheader.i.a ]
  %.0812.i = phi i32 [ %i.s, %.lr.ph.i.a ], [ %i.r, %.lr.ph.preheader.i.a ] ; 2 uses
  %i.s = udiv i32 %.0812.i, 10
  %i.t = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i.a, !llvm.loop !0

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i.a
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.t, i32 2)
  %i.u = load i32, ptr %4, align 4, !tbaa !46
  %.not70 = icmp eq i32 %i.u, 0
  br i1 %.not70, label %bb.f, label %bb.g

bb.f:                                             ; preds = %Abc_Base10Log.exit
  %fwrite71 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 2, i64 1, ptr nonnull %2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Abc_Base10Log.exit
  %.not72 = icmp eq i32 %3, 0                     ; 2 uses
  %i.v = select i1 %.not72, ptr @.str.37, ptr @.str.36
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.v) #21 ; 0 uses
  %i.x = select i1 %.not72, ptr @.str.68, ptr @.str.67
  tail call fastcc void @GiaHie_WritePiPoNames(ptr noundef %2, ptr noundef nonnull %i.x, i32 noundef %1, i32 noundef %spec.store.select, i32 noundef 8, i32 noundef 0)
  store i32 0, ptr %4, align 4, !tbaa !46
  br label %bb.t

.thread88:                                        ; preds = %.sink.split.sink.split.i, %.thread
  %i.y = icmp eq ptr %0, null
  br i1 %i.y, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.thread88
  %i.z = load i32, ptr %4, align 4, !tbaa !46
  %.not67 = icmp eq i32 %i.z, 0
  br i1 %.not67, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %fwrite68 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 2, i64 1, ptr nonnull %2) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not69 = icmp eq i32 %3, 0                     ; 2 uses
  %i.aa = select i1 %.not69, ptr @.str.37, ptr @.str.36
  %i.ab = add nsw i32 %1, -1
  %i.ac = select i1 %.not69, i32 105, i32 111
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.aa, i32 noundef %i.ab, i32 noundef %i.ac) #21 ; 0 uses
  store i32 0, ptr %4, align 4, !tbaa !46
  br label %bb.t

bb.k:                                             ; preds = %.thread88
  %i.ae = tail call fastcc ptr @GiaHie_CountSymbsSome(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val75 = load i32, ptr %i.af, align 4, !tbaa !69 ; 2 uses
  %i.ag = icmp sgt i32 %.val75, 1
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.val78 = load ptr, ptr %i.ah, align 8, !tbaa !71 ; 4 uses
  br i1 %i.ag, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %0, i64 8
  %.not65 = icmp eq i32 %3, 0
  %i.aj = select i1 %.not65, ptr @.str.37, ptr @.str.36
  %i.ak = zext nneg i32 %.val75 to i64            ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %GiaHie_PrintOneName.exit
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %GiaHie_PrintOneName.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %indvars.iv ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !46 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !46 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.ap = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %indvars.iv.next
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  %i.as = phi i32 [ %i.ar, %bb.l ], [ %1, %.critedge ]
  %.val73 = load ptr, ptr %i.ai, align 8, !tbaa !45 ; 2 uses
  %i.at = sext i32 %i.am to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %.val73, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47 ; 2 uses
  %i.aw = add nsw i32 %i.as, -1                   ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %.val73, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47
  %i.ba = sext i32 %i.ao to i64                   ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.av, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !18
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %GiaHie_ReadRangeNum.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bf = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.be, ptr noundef null, i32 noundef 10) #21, !inline_history !4
  %i.bg = trunc i64 %i.bf to i32
  br label %GiaHie_ReadRangeNum.exit

GiaHie_ReadRangeNum.exit:                         ; preds = %bb.m, %bb.n
  %.0.i = phi i32 [ %i.bg, %bb.n ], [ -1, %bb.m ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %GiaHie_ReadRangeNum.exit80, label %bb.o

bb.o:                                             ; preds = %GiaHie_ReadRangeNum.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bl = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.bk, ptr noundef null, i32 noundef 10) #21, !inline_history !4
  %i.bm = trunc i64 %i.bl to i32
  br label %GiaHie_ReadRangeNum.exit80

GiaHie_ReadRangeNum.exit80:                       ; preds = %GiaHie_ReadRangeNum.exit, %bb.o
  %.0.i79 = phi i32 [ %i.bm, %bb.o ], [ -1, %GiaHie_ReadRangeNum.exit ]
  %i.bn = load i32, ptr %4, align 4, !tbaa !46
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %GiaHie_ReadRangeNum.exit80
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.66, i64 2, i64 1, ptr nonnull %2) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %GiaHie_ReadRangeNum.exit80
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.aj) #21 ; 0 uses
  %.not66 = icmp ne i32 %.0.i, -1
  %i.bp = icmp slt i32 %i.am, %i.aw
  %or.cond = select i1 %.not66, i1 %i.bp, i1 false
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.39, i32 noundef %.0.i79, i32 noundef %.0.i) #21 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.br = icmp sgt i32 %i.ao, 0
  br i1 %i.br, label %.lr.ph.preheader.i81, label %GiaHie_PrintOneName.exit

.lr.ph.preheader.i81:                             ; preds = %bb.s
  %wide.trip.count.i82 = zext nneg i32 %i.ao to i64
  br label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83, %.lr.ph.preheader.i81
  %indvars.iv.i84 = phi i64 [ 0, %.lr.ph.preheader.i81 ], [ %indvars.iv.next.i85, %.lr.ph.i83 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv.i84
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !18
  %i.bu = sext i8 %i.bt to i32
  %fputc.i = tail call i32 @fputc(i32 %i.bu, ptr nonnull %2) ; 0 uses
  %indvars.iv.next.i85 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %exitcond.not.i86 = icmp eq i64 %indvars.iv.next.i85, %wide.trip.count.i82
  br i1 %exitcond.not.i86, label %GiaHie_PrintOneName.exit, label %.lr.ph.i83, !llvm.loop !3

GiaHie_PrintOneName.exit:                         ; preds = %.lr.ph.i83, %bb.s
  store i32 0, ptr %4, align 4, !tbaa !46
  %i.bv = or disjoint i64 %indvars.iv.next, 1
  %i.bw = icmp samesign ult i64 %i.bv, %i.ak
  br i1 %i.bw, label %.critedge, label %._crit_edge.thread, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.k
  %.not.i87 = icmp eq ptr %.val78, null
  br i1 %.not.i87, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %GiaHie_PrintOneName.exit, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val78) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.ae) #21
  br label %bb.t

bb.t:                                             ; preds = %.thread, %Vec_IntFree.exit, %bb.j, %bb.g
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @GiaHie_WritePiPoNames(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, i32 noundef range(i32 8, 19) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #14 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 20 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.c = add nsw i32 %2, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.70, ptr noundef %1, i32 noundef %3, i32 noundef %i.c) #21 ; 0 uses
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24
  %i.f = trunc i64 %i.e to i32
  %i.g = add nuw nsw i32 %4, 2
  %i.h = add i32 %i.g, %i.f                       ; 2 uses
  %i.i = icmp sgt i32 %i.h, 100
  br i1 %i.i, label %.thread.peel, label %bb.b

.thread.peel:                                     ; preds = %.lr.ph.split.preheader
  %fwrite.peel = tail call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread.peel, %.lr.ph.split.preheader
end_hunk_5
begin_hunk_6_@GiaHie_CountSymbsSome:bb.a
  br i1 %i.ad, label %bb.i, label %Vec_IntPush.exit51

bb.i:                                             ; preds = %GiaHie_CountSymbs.exit43
  %i.ae = icmp slt i32 %i.q, 16
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not9.i.i49 = icmp eq ptr %i.p, null
  br i1 %.not9.i.i49, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.p, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i47

bb.l:                                             ; preds = %bb.j
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i47

bb.m:                                             ; preds = %bb.i
  %i.ah = icmp samesign ult i32 %i.q, 1073741823
  %i.ai = shl nuw nsw i32 %i.q, 1
  %spec.select.i44 = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %.not.i9.i45 = icmp samesign ult i32 %i.q, %spec.select.i44
  br i1 %.not.i9.i45, label %bb.n, label %Vec_IntPush.exit51

bb.n:                                             ; preds = %bb.m
  %.not9.i10.i46 = icmp eq ptr %i.p, null
  %i.aj = zext nneg i32 %spec.select.i44 to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  br i1 %.not9.i10.i46, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.ak) #22
  br label %Vec_IntGrow.exit11.sink.split.i47

bb.p:                                             ; preds = %bb.n
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #23
  br label %Vec_IntGrow.exit11.sink.split.i47

Vec_IntGrow.exit11.sink.split.i47:                ; preds = %bb.o, %bb.p, %bb.k, %bb.l
  %storemerge = phi ptr [ %i.ag, %bb.l ], [ %i.af, %bb.k ], [ %i.al, %bb.o ], [ %i.am, %bb.p ] ; 3 uses
  %spec.select.sink.i48 = phi i32 [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i44, %bb.o ], [ %spec.select.i44, %bb.p ]
  store ptr %storemerge, ptr %i.l, align 8, !tbaa !71
  store i32 %spec.select.sink.i48, ptr %i.g, align 8, !tbaa !70
  br label %Vec_IntPush.exit51

Vec_IntPush.exit51:                               ; preds = %GiaHie_CountSymbs.exit43, %bb.m, %Vec_IntGrow.exit11.sink.split.i47
  %i.an = phi ptr [ %i.o, %GiaHie_CountSymbs.exit43 ], [ %i.o, %bb.m ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i47 ] ; 2 uses
  %i.ao = phi ptr [ %i.p, %GiaHie_CountSymbs.exit43 ], [ %i.p, %bb.m ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i47 ] ; 2 uses
  %i.ap = add nsw i32 %i.r, 1                     ; 6 uses
  store i32 %i.ap, ptr %i.h, align 4, !tbaa !69
  %i.aq = sext i32 %i.r to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aq
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !46
  %i.at = load i32, ptr %i.g, align 8, !tbaa !70  ; 2 uses
  %i.au = icmp eq i32 %i.ap, %i.at
  br i1 %i.au, label %bb.q, label %Vec_IntPush.exit59

bb.q:                                             ; preds = %Vec_IntPush.exit51
  %i.av = icmp slt i32 %i.r, 15
  br i1 %i.av, label %Vec_IntGrow.exit11.sink.split.i55, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = icmp samesign ult i32 %i.r, 1073741822
  %i.ax = shl nuw nsw i32 %i.ap, 1
  %spec.select.i52 = select i1 %i.aw, i32 %i.ax, i32 2147483647 ; 3 uses
  %.not.i9.i53 = icmp samesign ult i32 %i.ap, %spec.select.i52
  br i1 %.not.i9.i53, label %bb.s, label %Vec_IntPush.exit59

bb.s:                                             ; preds = %bb.r
  %i.ay = zext nneg i32 %spec.select.i52 to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  br label %Vec_IntGrow.exit11.sink.split.i55

Vec_IntGrow.exit11.sink.split.i55:                ; preds = %bb.q, %bb.s
  %.sink = phi i64 [ %i.az, %bb.s ], [ 64, %bb.q ]
  %spec.select.sink.i56 = phi i32 [ %spec.select.i52, %bb.s ], [ 16, %bb.q ] ; 2 uses
  %i.ba = tail call ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef %.sink) #22 ; 2 uses
  store ptr %i.ba, ptr %i.l, align 8, !tbaa !71
  store i32 %spec.select.sink.i56, ptr %i.g, align 8, !tbaa !70
  br label %Vec_IntPush.exit59

Vec_IntPush.exit59:                               ; preds = %Vec_IntPush.exit51, %bb.r, %Vec_IntGrow.exit11.sink.split.i55
  %i.bb = phi ptr [ %i.an, %Vec_IntPush.exit51 ], [ %i.an, %bb.r ], [ %i.ba, %Vec_IntGrow.exit11.sink.split.i55 ] ; 3 uses
  %i.bc = phi i32 [ %i.at, %Vec_IntPush.exit51 ], [ %i.ap, %bb.r ], [ %spec.select.sink.i56, %Vec_IntGrow.exit11.sink.split.i55 ]
  %i.bd = add nsw i32 %i.r, 2                     ; 2 uses
  store i32 %i.bd, ptr %i.h, align 4, !tbaa !69
  %i.be = sext i32 %i.ap to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.be
  store i32 %i.ac, ptr %i.bf, align 4, !tbaa !46
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %Vec_IntPush.exit59
  %i.bg = phi ptr [ %i.bb, %Vec_IntPush.exit59 ], [ %i.o, %bb.f ]
  %i.bh = phi ptr [ %i.bb, %Vec_IntPush.exit59 ], [ %i.p, %bb.f ]
  %i.bi = phi i32 [ %i.bc, %Vec_IntPush.exit59 ], [ %i.q, %bb.f ]
  %i.bj = phi i32 [ %i.bd, %Vec_IntPush.exit59 ], [ %i.r, %bb.f ]
  %.126 = phi ptr [ %i.t, %Vec_IntPush.exit59 ], [ %.02561, %bb.f ]
  %.1 = phi i32 [ %i.ac, %Vec_IntPush.exit59 ], [ %.063, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !209

._crit_edge:                                      ; preds = %bb.t, %Vec_IntPush.exit37
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GiaHie_DumpPortDeclsOne(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 7 uses
  %.in.v = select i1 %.not, i64 640, i64 648
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.a = load ptr, ptr %.in, align 8, !tbaa !80   ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val82 = load i32, ptr %i.b, align 8, !tbaa !84 ; 2 uses
  %. = select i1 %.not, i64 64, i64 72
  %i.c = getelementptr i8, ptr %0, i64 %.
  %.val83 = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.d = getelementptr i8, ptr %.val83, i64 4
  %.val83.val = load i32, ptr %i.d, align 4, !tbaa !69 ; 2 uses
  %i.e = sub nsw i32 %.val83.val, %.val82         ; 4 uses
  %i.f = icmp sgt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.a, null
  br i1 %i.g, label %.lr.ph.preheader.i.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.h, align 4, !tbaa !50 ; 2 uses
  %i.i = icmp eq i32 %.val.i, 0
  br i1 %i.i, label %.lr.ph.preheader.i.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc ptr @GiaHie_CountSymbsAll(ptr noundef nonnull readonly %i.a) ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val26.i = load i32, ptr %i.k, align 4, !tbaa !69 ; 2 uses
  %i.l = sdiv i32 %.val26.i, 2                    ; 2 uses
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = sext i32 %i.l to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !71   ; 5 uses
  %exitcond.not.i.not.not121 = icmp slt i32 %.val26.i, 2
  br i1 %exitcond.not.i.not.not121, label %.critedge.i._crit_edge, label %.lr.ph

.critedge.i:                                      ; preds = %bb.f
  %exitcond.not.i.not.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i.not.not, label %.critedge.i._crit_edge, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %bb.d, %.critedge.i
  %indvars.iv.i122 = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ 0, %bb.d ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i122, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i122, 1 ; 4 uses
  %i.r = icmp slt i64 %indvars.iv.next.i, %i.n
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %.idx33.i = shl nuw nsw i64 %indvars.iv.next.i, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx33.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.u = phi i32 [ %i.t, %bb.e ], [ %.val.i, %.lr.ph ]
  %i.v = sub nsw i32 %i.u, %i.q
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %.critedge.i, label %.sink.split.sink.split.i, !llvm.loop !6

.critedge.i._crit_edge:                           ; preds = %.critedge.i, %bb.d
  %.not.i29.i = icmp eq ptr %i.o, null
  br i1 %.not.i29.i, label %.lr.ph.preheader.i.sink.split, label %.lr.ph.preheader.i.critedge125

.sink.split.sink.split.i:                         ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.o) #21
  tail call void @free(ptr noundef nonnull %i.j) #21
  br label %.thread95

.thread:                                          ; preds = %bb.a
  %i.x = icmp eq i32 %.val83.val, %.val82
  br i1 %i.x, label %bb.s, label %.thread95

.lr.ph.preheader.i.critedge125:                   ; preds = %.critedge.i._crit_edge
  tail call void @free(ptr noundef nonnull %i.o) #21
  br label %.lr.ph.preheader.i.sink.split

.lr.ph.preheader.i.sink.split:                    ; preds = %.critedge.i._crit_edge, %.lr.ph.preheader.i.critedge125
  tail call void @free(ptr noundef nonnull %i.j) #21
  br label %.lr.ph.preheader.i.a

.lr.ph.preheader.i.a:                             ; preds = %.lr.ph.preheader.i.sink.split, %bb.b, %bb.c
  %i.y = add nsw i32 %i.e, -1
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.preheader.i.a
  %.013.i = phi i32 [ %i.aa, %.lr.ph.i.a ], [ 0, %.lr.ph.preheader.i.a ]
  %.0812.i = phi i32 [ %i.z, %.lr.ph.i.a ], [ %i.y, %.lr.ph.preheader.i.a ] ; 2 uses
  %i.z = udiv i32 %.0812.i, 10
  %i.aa = add nuw nsw i32 %.013.i, 1              ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i.a, !llvm.loop !0

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i.a
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 2)
  %i.ab = load i32, ptr %3, align 4, !tbaa !46
  %.not73 = icmp eq i32 %i.ab, 0
  br i1 %.not73, label %bb.g, label %bb.h

bb.g:                                             ; preds = %Abc_Base10Log.exit
  %fwrite74 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 2, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %Abc_Base10Log.exit
  %i.ac = select i1 %.not, ptr @.str.37, ptr @.str.36
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.ac) #21 ; 0 uses
  %i.ae = select i1 %.not, ptr @.str.68, ptr @.str.67
  tail call fastcc void @GiaHie_WritePiPoNames(ptr noundef %1, ptr noundef nonnull %i.ae, i32 noundef %i.e, i32 noundef %spec.store.select, i32 noundef 8, i32 noundef 0)
  store i32 0, ptr %3, align 4, !tbaa !46
  br label %bb.s

.thread95:                                        ; preds = %.sink.split.sink.split.i, %.thread
  %i.af = icmp eq ptr %i.a, null
  br i1 %i.af, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.thread95
  %i.ag = load i32, ptr %3, align 4, !tbaa !46
  %.not71 = icmp eq i32 %i.ag, 0
  br i1 %.not71, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %fwrite72 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 2, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = select i1 %.not, ptr @.str.37, ptr @.str.36
  %i.ai = add nsw i32 %i.e, -1
  %i.aj = select i1 %.not, i32 105, i32 111
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.ah, i32 noundef %i.ai, i32 noundef %i.aj) #21 ; 0 uses
  store i32 0, ptr %3, align 4, !tbaa !46
  br label %bb.s

bb.l:                                             ; preds = %.thread95
  %i.al = tail call fastcc ptr @GiaHie_CountSymbsAll(ptr noundef nonnull %i.a) ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %.val78 = load i32, ptr %i.am, align 4, !tbaa !69 ; 2 uses
  %i.an = icmp sgt i32 %.val78, 1
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %.val81 = load ptr, ptr %i.ao, align 8, !tbaa !71 ; 4 uses
  br i1 %i.an, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.a, i64 4
  %i.aq = getelementptr i8, ptr %i.a, i64 8
  %i.ar = select i1 %.not, ptr @.str.37, ptr @.str.36
  %i.as = zext nneg i32 %.val78 to i64            ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %GiaHie_PrintOneName.exit
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %GiaHie_PrintOneName.exit ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val81, i64 %indvars.iv ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !46 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !46 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.ax = icmp samesign ult i64 %indvars.iv.next, %i.as
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val81, i64 %indvars.iv.next
  %.in101 = select i1 %i.ax, ptr %i.ay, ptr %i.ap
  %i.az = load i32, ptr %.in101, align 4, !tbaa !46
  %.val76 = load ptr, ptr %i.aq, align 8, !tbaa !45 ; 2 uses
  %i.ba = sext i32 %i.au to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %.val76, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47 ; 2 uses
  %i.bd = add nsw i32 %i.az, -1                   ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %.val76, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bh = sext i32 %i.aw to i64                   ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %GiaHie_ReadRangeNum.exit, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bm = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.bl, ptr noundef null, i32 noundef 10) #21, !inline_history !4
  %i.bn = trunc i64 %i.bm to i32
  br label %GiaHie_ReadRangeNum.exit

GiaHie_ReadRangeNum.exit:                         ; preds = %.critedge, %bb.m
  %.0.i = phi i32 [ %i.bn, %bb.m ], [ -1, %.critedge ] ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bg, i64 %i.bh ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %GiaHie_ReadRangeNum.exit87, label %bb.n

bb.n:                                             ; preds = %GiaHie_ReadRangeNum.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bs = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.br, ptr noundef null, i32 noundef 10) #21, !inline_history !4
  %i.bt = trunc i64 %i.bs to i32
  br label %GiaHie_ReadRangeNum.exit87

GiaHie_ReadRangeNum.exit87:                       ; preds = %GiaHie_ReadRangeNum.exit, %bb.n
  %.0.i86 = phi i32 [ %i.bt, %bb.n ], [ -1, %GiaHie_ReadRangeNum.exit ]
  %i.bu = load i32, ptr %3, align 4, !tbaa !46
  %.not69 = icmp eq i32 %i.bu, 0
  br i1 %.not69, label %bb.o, label %bb.p

bb.o:                                             ; preds = %GiaHie_ReadRangeNum.exit87
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.66, i64 2, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %GiaHie_ReadRangeNum.exit87
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.ar) #21 ; 0 uses
  %.not70 = icmp ne i32 %.0.i, -1
  %i.bw = icmp slt i32 %i.au, %i.bd
  %or.cond = and i1 %.not70, %i.bw
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.39, i32 noundef %.0.i86, i32 noundef %.0.i) #21 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.by = icmp sgt i32 %i.aw, 0
  br i1 %i.by, label %.lr.ph.preheader.i88, label %GiaHie_PrintOneName.exit

.lr.ph.preheader.i88:                             ; preds = %bb.r
  %wide.trip.count.i89 = zext nneg i32 %i.aw to i64
  br label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %.lr.ph.i90, %.lr.ph.preheader.i88
  %indvars.iv.i91 = phi i64 [ 0, %.lr.ph.preheader.i88 ], [ %indvars.iv.next.i92, %.lr.ph.i90 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i91
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !18
  %i.cb = sext i8 %i.ca to i32
  %fputc.i = tail call i32 @fputc(i32 %i.cb, ptr nonnull %1) ; 0 uses
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i91, 1 ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next.i92, %wide.trip.count.i89
  br i1 %exitcond.not.i93, label %GiaHie_PrintOneName.exit, label %.lr.ph.i90, !llvm.loop !3

GiaHie_PrintOneName.exit:                         ; preds = %.lr.ph.i90, %bb.r
  store i32 0, ptr %3, align 4, !tbaa !46
  %i.cc = or disjoint i64 %indvars.iv.next, 1
  %i.cd = icmp samesign ult i64 %i.cc, %i.as
  br i1 %i.cd, label %.critedge, label %._crit_edge.thread, !llvm.loop !210

._crit_edge:                                      ; preds = %bb.l
  %.not.i94 = icmp eq ptr %.val81, null
  br i1 %.not.i94, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %GiaHie_PrintOneName.exit, %._crit_edge
  tail call void @free(ptr noundef nonnull %.val81) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.al) #21
  br label %bb.s

bb.s:                                             ; preds = %.thread, %Vec_IntFree.exit, %bb.k, %bb.h
  ret void
}

declare void @Gia_ObjComputeTruthTableStart(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Gia_ObjComputeTruthTableCut(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Gia_ObjComputeTruthTableStop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctpop.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20
end_hunk_6
