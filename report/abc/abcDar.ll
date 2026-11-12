Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcDar?download=true
inline.NumInlined: 929
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_NtkToDarChoices:bb.a
  %indvars.iv109 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next110, %Abc_AigNodeIsChoice.exit.thread ] ; 2 uses
  %.val64 = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %indvars.iv109
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !22 ; 6 uses
  %.val.i = load ptr, ptr %i.am, align 8, !tbaa !23
  %i.an = getelementptr i8, ptr %i.am, i64 32
  %.val2.i = load ptr, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %i.ao = getelementptr i8, ptr %.val.i, i64 32
  %.val.val.i = load ptr, ptr %i.ao, align 8, !tbaa !38
  %.val2.val.i = load i32, ptr %.val2.i, align 4, !tbaa !39
  %i.ap = getelementptr i8, ptr %.val.val.i, i64 8
  %.val.val.val.i = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 2 uses
  %i.aq = sext i32 %.val2.val.i to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val.val.val.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.av = getelementptr i8, ptr %i.am, i64 20
  %.val3.i = load i32, ptr %i.av, align 4         ; 2 uses
  %i.aw = lshr i32 %.val3.i, 10
  %i.ax = and i32 %i.aw, 1
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr i8, ptr %.val2.i, i64 4
  %.val2.val.i78 = load i32, ptr %i.bc, align 4, !tbaa !39
  %i.bd = sext i32 %.val2.val.i78 to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val.val.val.i, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42
  %i.bi = lshr i32 %.val3.i, 11
  %i.bj = and i32 %i.bi, 1
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = xor i64 %i.bk, %i.bl
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = tail call ptr @Aig_And(ptr noundef nonnull %i.d, ptr noundef %i.bb, ptr noundef %i.bn) #23 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !42 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %Abc_AigNodeIsChoice.exit.thread, label %Abc_AigNodeIsChoice.exit

Abc_AigNodeIsChoice.exit:                         ; preds = %bb.d
  %i.bs = getelementptr i8, ptr %i.am, i64 44
  %.val.i81 = load i32, ptr %i.bs, align 4, !tbaa !75
  %i.bt = icmp slt i32 %.val.i81, 1
  br i1 %i.bt, label %Abc_AigNodeIsChoice.exit.thread, label %.lr.ph99

.lr.ph99:                                         ; preds = %Abc_AigNodeIsChoice.exit
  %.val73 = load ptr, ptr %i.ac, align 8, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph99, %bb.e
  %i.bu = phi ptr [ %i.bo, %.lr.ph99 ], [ %i.bw, %bb.e ]
  %.05898 = phi ptr [ %i.br, %.lr.ph99 ], [ %.058, %bb.e ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05898, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !42 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bu, i64 36
  %.val74 = load i32, ptr %i.bx, align 4, !tbaa !76
  %i.by = sext i32 %.val74 to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %.val73, i64 %i.by
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !77
  %.058.in = getelementptr inbounds nuw i8, ptr %.05898, i64 64
  %.058 = load ptr, ptr %.058.in, align 8, !tbaa !42 ; 2 uses
  %.not63 = icmp eq ptr %.058, null
  br i1 %.not63, label %Abc_AigNodeIsChoice.exit.thread, label %bb.e, !llvm.loop !163

Abc_AigNodeIsChoice.exit.thread:                  ; preds = %bb.e, %bb.d, %Abc_AigNodeIsChoice.exit
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %.val = load i32, ptr %i.z, align 4, !tbaa !19
  %i.ca = sext i32 %.val to i64
  %i.cb = icmp slt i64 %indvars.iv.next110, %i.ca
  br i1 %i.cb, label %bb.d, label %.critedge2, !llvm.loop !164

.critedge2:                                       ; preds = %Abc_AigNodeIsChoice.exit.thread, %.critedge.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %.not.i82 = icmp eq ptr %i.cd, null
  br i1 %.not.i82, label %Vec_PtrFree.exit, label %bb.f

bb.f:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.cd) #23
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge2, %bb.f
  tail call void @free(ptr noundef nonnull %i.a) #23
  %i.ce = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %.val69103 = load ptr, ptr %i.ce, align 8, !tbaa !66 ; 2 uses
  %i.cf = getelementptr i8, ptr %.val69103, i64 4
  %.val69.val104 = load i32, ptr %i.cf, align 4, !tbaa !19
  %i.cg = icmp sgt i32 %.val69.val104, 0
  br i1 %i.cg, label %.lr.ph107, label %.critedge4

.lr.ph107:                                        ; preds = %Vec_PtrFree.exit, %.lr.ph107
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %.lr.ph107 ], [ 0, %Vec_PtrFree.exit ] ; 2 uses
  %.val69106 = phi ptr [ %.val69, %.lr.ph107 ], [ %.val69103, %Vec_PtrFree.exit ]
  %i.ch = getelementptr i8, ptr %.val69106, i64 8
  %.val70.val = load ptr, ptr %i.ch, align 8, !tbaa !21
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val70.val, i64 %indvars.iv112
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !22 ; 3 uses
  %.val.i83 = load ptr, ptr %i.cj, align 8, !tbaa !23
  %i.ck = getelementptr i8, ptr %i.cj, i64 32
  %.val2.i84 = load ptr, ptr %i.ck, align 8, !tbaa !24
  %i.cl = getelementptr i8, ptr %.val.i83, i64 32
  %.val.val.i85 = load ptr, ptr %i.cl, align 8, !tbaa !38
  %.val2.val.i86 = load i32, ptr %.val2.i84, align 4, !tbaa !39
  %i.cm = getelementptr i8, ptr %.val.val.i85, i64 8
  %.val.val.val.i87 = load ptr, ptr %i.cm, align 8, !tbaa !21
  %i.cn = sext i32 %.val2.val.i86 to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %.val.val.val.i87, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !42
  %i.cs = getelementptr i8, ptr %i.cj, i64 20
  %.val3.i88 = load i32, ptr %i.cs, align 4
  %i.ct = lshr i32 %.val3.i88, 10
  %i.cu = and i32 %i.ct, 1
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = zext nneg i32 %i.cu to i64
  %i.cx = xor i64 %i.cw, %i.cv
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.d, ptr noundef %i.cy) #23 ; 0 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %.val69 = load ptr, ptr %i.ce, align 8, !tbaa !66 ; 2 uses
  %i.da = getelementptr i8, ptr %.val69, i64 4
  %.val69.val = load i32, ptr %i.da, align 4, !tbaa !19
  %i.db = sext i32 %.val69.val to i64
  %i.dc = icmp slt i64 %indvars.iv.next113, %i.db
  br i1 %i.dc, label %.lr.ph107, label %.critedge4, !llvm.loop !165

.critedge4:                                       ; preds = %.lr.ph107, %Vec_PtrFree.exit
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.d, i32 noundef 0) #23
  %i.dd = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.d) #23
  %.not61 = icmp eq i32 %i.dd, 0
  br i1 %.not61, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge4
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.8)
  tail call void @Aig_ManStop(ptr noundef nonnull %i.d) #23
  br label %bb.h

bb.h:                                             ; preds = %.critedge4, %bb.g
  %.060 = phi ptr [ null, %bb.g ], [ %i.d, %.critedge4 ]
  ret ptr %.060
}

declare ptr @Abc_AigDfs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_NtkFromDar(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Abc_NtkStartFrom(ptr noundef %0, i32 noundef 3, i32 noundef 3) #23 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = load i32, ptr %i.b, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 %i.c, ptr %i.d, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.f = load i32, ptr %i.e, align 4, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i32 %i.f, ptr %i.g, align 4, !tbaa !79
  %i.h = tail call ptr @Abc_AigConst1(ptr noundef %i.a) #23
  %i.i = getelementptr i8, ptr %1, i64 48
  %.val55 = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %.val55, i64 40
  store ptr %i.h, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %.val5171 = load i32, ptr %i.m, align 4, !tbaa !19
  %i.n = icmp sgt i32 %.val5171, 0
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.a, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.p = phi ptr [ %i.l, %.lr.ph ], [ %i.ac, %bb.b ]
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val54 = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val54, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22   ; 2 uses
  %.val56 = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.t = getelementptr i8, ptr %.val56, i64 8
  %.val56.val = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val56.val, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.v, ptr %i.w, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %2 = load i64, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %sh.diff = lshr i64 %2, 20
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %3 = and i32 %tr.sh.diff, -4096
  %i.aa = and i32 %i.z, 4095
  %i.ab = or disjoint i32 %3, %i.aa
  store i32 %i.ab, ptr %i.y, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !80  ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val51 = load i32, ptr %i.ad, align 4, !tbaa !19
  %i.ae = sext i32 %.val51 to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.b, label %.critedge, !llvm.loop !167

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.ag = tail call ptr @Aig_ManDfs(ptr noundef nonnull %1, i32 noundef 1) #23 ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 4      ; 2 uses
  %.val5073 = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.ai = icmp sgt i32 %.val5073, 0
  br i1 %i.ai, label %.lr.ph75, label %.critedge2

.lr.ph75:                                         ; preds = %.critedge
  %i.aj = getelementptr i8, ptr %i.ag, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph75, %Aig_ObjChild0Copy.exit
  %indvars.iv81 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next82, %Aig_ObjChild0Copy.exit ] ; 2 uses
  %.val53 = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val53, i64 %indvars.iv81
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !22 ; 5 uses
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %.val59 = load i64, ptr %i.an, align 8
  %i.ao = and i64 %.val59, 7
  %.not70 = icmp eq i64 %i.ao, 4
  br i1 %.not70, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  %.val62 = load ptr, ptr %i.ap, align 8, !tbaa !70
  %i.aq = ptrtoint ptr %.val62 to i64             ; 2 uses
  %i.ar = and i64 %i.aq, -2                       ; 2 uses
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %Aig_ObjChild0Copy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.av = and i64 %i.aq, 1
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = xor i64 %i.av, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr
  br label %Aig_ObjChild0Copy.exit

bb.f:                                             ; preds = %bb.c
  %i.az = load ptr, ptr %i.ak, align 8, !tbaa !81
  %i.ba = getelementptr i8, ptr %i.am, i64 8
  %.val61 = load ptr, ptr %i.ba, align 8, !tbaa !70
  %i.bb = ptrtoint ptr %.val61 to i64             ; 2 uses
  %i.bc = and i64 %i.bb, -2                       ; 2 uses
  %.not.i64 = icmp eq i64 %i.bc, 0
  br i1 %.not.i64, label %Aig_ObjChild0Copy.exit65, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42
  %i.bg = and i64 %i.bb, 1
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = xor i64 %i.bg, %i.bh
  %i.bj = inttoptr i64 %i.bi to ptr
  br label %Aig_ObjChild0Copy.exit65

Aig_ObjChild0Copy.exit65:                         ; preds = %bb.f, %bb.g
  %i.bk = phi ptr [ %i.bj, %bb.g ], [ null, %bb.f ]
  %i.bl = getelementptr i8, ptr %i.am, i64 16
  %.val63 = load ptr, ptr %i.bl, align 8, !tbaa !82
  %i.bm = ptrtoint ptr %.val63 to i64             ; 2 uses
  %i.bn = and i64 %i.bm, -2                       ; 2 uses
  %.not.i66 = icmp eq i64 %i.bn, 0
  br i1 %.not.i66, label %Aig_ObjChild1Copy.exit, label %bb.h

bb.h:                                             ; preds = %Aig_ObjChild0Copy.exit65
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42
  %i.br = and i64 %i.bm, 1
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = xor i64 %i.br, %i.bs
  %i.bu = inttoptr i64 %i.bt to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit65, %bb.h
  %i.bv = phi ptr [ %i.bu, %bb.h ], [ null, %Aig_ObjChild0Copy.exit65 ]
  %i.bw = tail call ptr @Abc_AigAnd(ptr noundef %i.az, ptr noundef %i.bk, ptr noundef %i.bv) #23
  br label %Aig_ObjChild0Copy.exit

Aig_ObjChild0Copy.exit:                           ; preds = %bb.e, %bb.d, %Aig_ObjChild1Copy.exit
  %.sink = phi ptr [ %i.bw, %Aig_ObjChild1Copy.exit ], [ %i.ay, %bb.e ], [ null, %bb.d ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %.sink, ptr %i.bx, align 8, !tbaa !42
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %.val50 = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.by = sext i32 %.val50 to i64
  %i.bz = icmp slt i64 %indvars.iv.next82, %i.by
  br i1 %i.bz, label %bb.c, label %.critedge2, !llvm.loop !168

.critedge2:                                       ; preds = %Aig_ObjChild0Copy.exit, %.critedge
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !21 ; 2 uses
  %.not.i67 = icmp eq ptr %i.cb, null
  br i1 %.not.i67, label %Vec_PtrFree.exit, label %bb.i

bb.i:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.cb) #23
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge2, %bb.i
  tail call void @free(ptr noundef nonnull %i.ag) #23
  %i.cc = getelementptr i8, ptr %1, i64 140
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !69 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  %.val76 = load i32, ptr %i.cf, align 4, !tbaa !19
  %i.cg = icmp sgt i32 %.val76, 0
  br i1 %i.cg, label %.lr.ph78, label %.critedge4

.lr.ph78:                                         ; preds = %Vec_PtrFree.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.ci = getelementptr i8, ptr %i.a, i64 64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph78, %Aig_ObjChild0Copy.exit69
  %indvars.iv84 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next85, %Aig_ObjChild0Copy.exit69 ] ; 4 uses
  %i.cj = phi ptr [ %i.ce, %.lr.ph78 ], [ %i.df, %Aig_ObjChild0Copy.exit69 ]
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %.val52 = load ptr, ptr %i.ck, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val52, i64 %indvars.iv84
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !22
  %i.cn = load i32, ptr %i.ch, align 4, !tbaa !170 ; 2 uses
  %.not = icmp eq i32 %i.cn, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val58 = load i32, ptr %i.cc, align 4, !tbaa !39
  %i.co = sub nsw i32 %.val58, %i.cn
  %i.cp = zext i32 %i.co to i64
  %i.cq = icmp eq i64 %indvars.iv84, %i.cp
  br i1 %i.cq, label %.critedge4, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.val57 = load ptr, ptr %i.ci, align 8, !tbaa !66
  %i.cr = getelementptr i8, ptr %.val57, i64 8
  %.val57.val = load ptr, ptr %i.cr, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val57.val, i64 %indvars.iv84
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !22
  %i.cu = getelementptr i8, ptr %i.cm, i64 8
  %.val60 = load ptr, ptr %i.cu, align 8, !tbaa !70
  %i.cv = ptrtoint ptr %.val60 to i64             ; 2 uses
  %i.cw = and i64 %i.cv, -2                       ; 2 uses
  %.not.i68 = icmp eq i64 %i.cw, 0
  br i1 %.not.i68, label %Aig_ObjChild0Copy.exit69, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42
  %i.da = and i64 %i.cv, 1
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = xor i64 %i.da, %i.db
  %i.dd = inttoptr i64 %i.dc to ptr
  br label %Aig_ObjChild0Copy.exit69

Aig_ObjChild0Copy.exit69:                         ; preds = %bb.l, %bb.m
  %i.de = phi ptr [ %i.dd, %bb.m ], [ null, %bb.l ]
  tail call void @Abc_ObjAddFanin(ptr noundef %i.ct, ptr noundef %i.de) #23
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.df = load ptr, ptr %i.cd, align 8, !tbaa !69 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %.val = load i32, ptr %i.dg, align 4, !tbaa !19
  %i.dh = sext i32 %.val to i64
  %i.di = icmp slt i64 %indvars.iv.next85, %i.dh
  br i1 %i.di, label %bb.j, label %.critedge4, !llvm.loop !169

.critedge4:                                       ; preds = %bb.k, %Aig_ObjChild0Copy.exit69, %Vec_PtrFree.exit
  %i.dj = tail call i32 @Abc_NtkCheck(ptr noundef %i.a) #23
  %.not48 = icmp eq i32 %i.dj, 0
  br i1 %.not48, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge4
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.9)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge4
  ret ptr %i.a
}

declare ptr @Abc_NtkStartFrom(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Aig_ManDfs(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Abc_AigAnd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @Abc_ObjAddFanin(ptr noundef, ptr noundef) local_unnamed_addr #5
end_hunk_0
