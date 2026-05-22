begin_hunk_0_@hypre_SMG3BuildRAPSym:bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bi = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 12 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bj = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 12 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bk = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bl = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 12 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bm = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.bn = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 8 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.bo = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 12 uses
  br i1 %i.aa, label %bb.d, label %.thread2376

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.bp = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.bq = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 3 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.br = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 3 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.bs = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.bt = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.bu = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 3 uses
  br i1 %i.ab, label %bb.e, label %.thread2376

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bv = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bw = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 2 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bx = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.by = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 2 uses
  br i1 %i.ac, label %bb.f, label %.thread2376

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.bz = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.ca = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.cb = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.cc = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.cd = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.ce = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5
  br label %.thread2376

.thread2376:                                      ; preds = %bb.c, %bb.d, %bb.f, %bb.e
  %.121412396 = phi ptr [ %i.bv, %bb.f ], [ %i.bv, %bb.e ], [ %.021402769, %bb.d ], [ %.021402769, %bb.c ] ; 7 uses
  %.121432395 = phi ptr [ %i.bw, %bb.f ], [ %i.bw, %bb.e ], [ %.021422768, %bb.d ], [ %.021422768, %bb.c ] ; 7 uses
  %.121452394 = phi ptr [ %i.bx, %bb.f ], [ %i.bx, %bb.e ], [ %.021442767, %bb.d ], [ %.021442767, %bb.c ] ; 3 uses
  %.121472393 = phi ptr [ %i.by, %bb.f ], [ %i.by, %bb.e ], [ %.021462766, %bb.d ], [ %.021462766, %bb.c ] ; 3 uses
  %.1213923702392 = phi ptr [ %i.bu, %bb.f ], [ %i.bu, %bb.e ], [ %i.bu, %bb.d ], [ %.021382770, %bb.c ] ; 7 uses
  %.1213723712391 = phi ptr [ %i.bt, %bb.f ], [ %i.bt, %bb.e ], [ %i.bt, %bb.d ], [ %.021362771, %bb.c ] ; 10 uses
  %.1213523722390 = phi ptr [ %i.bs, %bb.f ], [ %i.bs, %bb.e ], [ %i.bs, %bb.d ], [ %.021342772, %bb.c ] ; 7 uses
  %.1213323732389 = phi ptr [ %i.br, %bb.f ], [ %i.br, %bb.e ], [ %i.br, %bb.d ], [ %.021322773, %bb.c ] ; 10 uses
  %.1213123742388 = phi ptr [ %i.bq, %bb.f ], [ %i.bq, %bb.e ], [ %i.bq, %bb.d ], [ %.021302774, %bb.c ] ; 7 uses
  %.1212923752387 = phi ptr [ %i.bp, %bb.f ], [ %i.bp, %bb.e ], [ %i.bp, %bb.d ], [ %.021282775, %bb.c ] ; 7 uses
  %i.cf = phi i1 [ true, %bb.f ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.12171 = phi ptr [ %i.ce, %bb.f ], [ %.021702760, %bb.e ], [ %.021702760, %bb.d ], [ %.021702760, %bb.c ] ; 3 uses
  %.12169 = phi ptr [ %i.cd, %bb.f ], [ %.021682761, %bb.e ], [ %.021682761, %bb.d ], [ %.021682761, %bb.c ] ; 3 uses
  %.12155 = phi ptr [ %i.cc, %bb.f ], [ %.021542762, %bb.e ], [ %.021542762, %bb.d ], [ %.021542762, %bb.c ] ; 4 uses
  %.12153 = phi ptr [ %i.cb, %bb.f ], [ %.021522763, %bb.e ], [ %.021522763, %bb.d ], [ %.021522763, %bb.c ] ; 4 uses
  %.12151 = phi ptr [ %i.ca, %bb.f ], [ %.021502764, %bb.e ], [ %.021502764, %bb.d ], [ %.021502764, %bb.c ] ; 3 uses
  %.12149 = phi ptr [ %i.bz, %bb.f ], [ %.021482765, %bb.e ], [ %.021482765, %bb.d ], [ %.021482765, %bb.c ] ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.cg = trunc nuw nsw i64 %indvars.iv2917 to i32 ; 14 uses
  %i.ch = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.ci = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.cj = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.ck = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.cl = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.cm = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.cn = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.co = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5 ; 4 uses
  br i1 %i.cf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread2376
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.cp = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.cq = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.cr = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.cs = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.ct = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.cu = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cg, ptr noundef nonnull %i.a) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread2376
  %.12186 = phi ptr [ %i.cu, %bb.g ], [ %.021852754, %.thread2376 ] ; 3 uses
  %.12184 = phi ptr [ %i.ct, %bb.g ], [ %.021832755, %.thread2376 ] ; 3 uses
  %.12182 = phi ptr [ %i.cs, %bb.g ], [ %.021812756, %.thread2376 ] ; 3 uses
  %.12180 = phi ptr [ %i.cr, %bb.g ], [ %.021792757, %.thread2376 ] ; 3 uses
  %.12178 = phi ptr [ %i.cq, %bb.g ], [ %.021772758, %.thread2376 ] ; 3 uses
  %.12173 = phi ptr [ %i.cp, %bb.g ], [ %.021722759, %.thread2376 ] ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 5 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 5 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = sub nsw i32 %i.cx, %i.cz
  %i.db = call i32 @llvm.smax.i32(i32 %i.da, i32 -1)
  %spec.select = add nsw i32 %i.db, 1
  %i.dc = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.dd = load i32, ptr %i.au, align 4, !tbaa !4
  %i.de = sub nsw i32 %i.dc, %i.dd                ; 2 uses
  %i.df = add nuw nsw i32 %i.de, 1
  %i.dg = mul nsw i32 %i.df, %spec.select
  %.inv = icmp slt i32 %i.de, 0
  %i.dh = select i1 %.inv, i32 0, i32 %i.dg       ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = sub nsw i32 %i.dk, %i.dm
  %i.do = call i32 @llvm.smax.i32(i32 %i.dn, i32 -1)
  %i.dp = add nsw i32 %i.do, 1
  %i.dq = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dr = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.ds = sub nsw i32 %i.dq, %i.dr                ; 2 uses
  %i.dt = add nuw nsw i32 %i.ds, 1
  %i.du = mul nsw i32 %i.dt, %i.dp
  %.inv2402 = icmp slt i32 %i.ds, 0
  %i.dv = select i1 %.inv2402, i32 0, i32 %i.du   ; 4 uses
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.dw = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dx = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.dy = sub nsw i32 %i.dw, %i.dx
  %i.dz = call i32 @llvm.smax.i32(i32 %i.dy, i32 -1)
  %i.ea = add nsw i32 %i.dz, 1                    ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.eb = call i32 @hypre_BoxGetSize(ptr noundef %i.aq, ptr noundef nonnull %i.c) #5 ; 0 uses
  %i.ec = load i32, ptr %i.aq, align 4, !tbaa !4  ; 9 uses
  %i.ed = load i32, ptr %i.ax, align 4, !tbaa !4  ; 5 uses
  %i.ee = sub i32 %i.ec, %i.ed                    ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4  ; 9 uses
  %i.eh = load i32, ptr %i.dl, align 4, !tbaa !4  ; 2 uses
  %i.ei = sub i32 %i.eg, %i.eh                    ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 12 uses
  %i.ek = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.el = sub nsw i32 %i.ek, %i.eh                ; 9 uses
  %i.em = icmp sgt i32 %i.el, -1                  ; 8 uses
  switch i32 %i.g, label %bb.as [
    i32 7, label %bb.i
    i32 15, label %bb.u
    i32 19, label %bb.ag
  ]

bb.i:                                             ; preds = %bb.h
  br i1 %i.em, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.en = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !4
  %i.eq = sub nsw i32 %i.en, %i.ep
  %i.er = add nuw nsw i32 %i.el, 1
  %i.es = mul nsw i32 %i.eq, %i.er
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.et = phi i32 [ %i.es, %bb.j ], [ 0, %bb.i ]
  %i.eu = load i32, ptr %i.di, align 4, !tbaa !4
  %i.ev = sub i32 %i.eu, %i.ed                    ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, -1                  ; 2 uses
  %i.ex = add nsw i32 %i.ei, %i.et
  %i.ey = add i32 %i.ev, 1                        ; 2 uses
  %i.ez = mul nsw i32 %i.ey, %i.ex
  %i.fa = select i1 %i.ew, i32 %i.ez, i32 0
  %i.fb = add nsw i32 %i.ee, %i.fa
  %i.fc = load i32, ptr %i.ba, align 4, !tbaa !4  ; 2 uses
  %i.fd = sub i32 %i.ec, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !4  ; 2 uses
  %i.fg = sub i32 %i.eg, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4
  %i.fk = sub nsw i32 %i.fj, %i.ff                ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, -1                  ; 2 uses
  br i1 %i.fl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fm = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.fp = sub nsw i32 %i.fm, %i.fo
  %i.fq = add nuw nsw i32 %i.fk, 1
  %i.fr = mul nsw i32 %i.fp, %i.fq
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.fs = phi i32 [ %i.fr, %bb.l ], [ 0, %bb.k ]
  %i.ft = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fu = sub i32 %i.ft, %i.fc                    ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, -1                  ; 2 uses
  %i.fw = add nsw i32 %i.fg, %i.fs
  %i.fx = add i32 %i.fu, 1                        ; 2 uses
  %i.fy = mul nsw i32 %i.fx, %i.fw
  %i.fz = select i1 %i.fv, i32 %i.fy, i32 0
  %i.ga = add nsw i32 %i.fd, %i.fz
  %i.gb = load i32, ptr %i.b, align 4, !tbaa !4
  %i.gc = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.gd = sub i32 %i.gb, %i.gc
  %i.ge = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.gf = load i32, ptr %i.cy, align 4, !tbaa !4  ; 2 uses
  %i.gg = sub i32 %i.ge, %i.gf
  %i.gh = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.gi = sub nsw i32 %i.gh, %i.gf                ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, -1                  ; 2 uses
  br i1 %i.gj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gk = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !4
  %i.gn = sub nsw i32 %i.gk, %i.gm
  %i.go = add nuw nsw i32 %i.gi, 1
  %i.gp = mul nsw i32 %i.gn, %i.go
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.gq = phi i32 [ %i.gp, %bb.n ], [ 0, %bb.m ]
  %i.gr = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.gs = sub nsw i32 %i.gr, %i.gc                ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, -1                  ; 2 uses
  %i.gu = add nsw i32 %i.gg, %i.gq
  %i.gv = add nuw nsw i32 %i.gs, 1                ; 3 uses
  %i.gw = mul nsw i32 %i.gv, %i.gu
  %i.gx = select i1 %i.gt, i32 %i.gw, i32 0
  %i.gy = add nsw i32 %i.gd, %i.gx
  %i.gz = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.ha = sub i32 %i.ec, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4  ; 2 uses
  %i.hd = sub i32 %i.eg, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !4
  %i.hh = sub nsw i32 %i.hg, %i.hc                ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, -1                  ; 2 uses
  br i1 %i.hi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hj = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !4
  %i.hm = sub nsw i32 %i.hj, %i.hl
  %i.hn = add nuw nsw i32 %i.hh, 1
  %i.ho = mul nsw i32 %i.hm, %i.hn
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.hp = phi i32 [ %i.ho, %bb.p ], [ 0, %bb.o ]
  %i.hq = load i32, ptr %i.he, align 4, !tbaa !4
  %i.hr = sub i32 %i.hq, %i.gz                    ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, -1                  ; 2 uses
  %i.ht = add nsw i32 %i.hd, %i.hp
  %i.hu = add i32 %i.hr, 1                        ; 2 uses
  %i.hv = mul nsw i32 %i.hu, %i.ht
  %i.hw = select i1 %i.hs, i32 %i.hv, i32 0
  %i.hx = add nsw i32 %i.ha, %i.hw
  %i.hy = select i1 %i.ew, i32 %i.ey, i32 0       ; 3 uses
  %i.hz = add nuw nsw i32 %i.el, 1
  %i.ia = mul nsw i32 %i.hy, %i.hz
  %i.ib = select i1 %i.em, i32 %i.ia, i32 0
  %i.ic = select i1 %i.fv, i32 %i.fx, i32 0       ; 3 uses
  %i.id = add nuw nsw i32 %i.fk, 1
  %i.ie = mul nsw i32 %i.ic, %i.id
  %i.if = select i1 %i.fl, i32 %i.ie, i32 0
  %i.ig = load i32, ptr %5, align 4, !tbaa !4     ; 2 uses
  br i1 %i.gt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ih = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ii = mul nsw i32 %i.ih, %i.gv
  %i.ij = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ik = mul nsw i32 %i.ij, %i.gv
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.il = phi i32 [ %i.ii, %bb.r ], [ 0, %bb.q ]  ; 2 uses
  %i.im = phi i32 [ %i.ik, %bb.r ], [ 0, %bb.q ]
  %i.in = load i32, ptr %i.c, align 4, !tbaa !4   ; 7 uses
  %i.io = load i32, ptr %i.ah, align 4, !tbaa !4  ; 7 uses
  %i.ip = load i32, ptr %i.ai, align 4, !tbaa !4  ; 3 uses
  %.02248 = call i32 @llvm.smax.i32(i32 %i.io, i32 %i.in)
  %.12249 = call i32 @llvm.smax.i32(i32 %i.ip, i32 %.02248)
  %i.iq = icmp sgt i32 %.12249, 0
  br i1 %i.iq, label %.preheader2467.lr.ph, label %.loopexit2473

.preheader2467.lr.ph:                             ; preds = %bb.s
  %i.ir = select i1 %i.hs, i32 %i.hu, i32 0       ; 3 uses
  %factor.op.mul2665 = mul i32 %i.io, %i.ir
  %factor.op.mul2664 = mul i32 %i.io, %i.il
  %factor.op.mul2663 = mul i32 %i.io, %i.ic
  %factor.op.mul2662 = mul i32 %i.io, %i.hy
  %i.is = add nuw nsw i32 %i.hh, 1
  %i.it = mul nsw i32 %i.ir, %i.is
  %i.iu = select i1 %i.hi, i32 %i.it, i32 0
  %i.iv = add nuw nsw i32 %i.gi, 1
  %i.iw = mul nsw i32 %i.im, %i.iv
  %i.ix = select i1 %i.gj, i32 %i.iw, i32 0
  %i.iy = mul i32 %i.in, %i.ig
  %i.iz = icmp slt i32 %i.ip, 1
  %i.ja = icmp slt i32 %i.in, 1
  %i.jb = sub i32 %i.hy, %i.in
  %i.jc = sub i32 %i.ic, %i.in
  %i.jd = sub i32 %i.il, %i.iy
  %i.je = sub i32 %i.ir, %i.in
  %i.jf = sub i32 %i.ib, %factor.op.mul2662
  %i.jg = sub i32 %i.if, %factor.op.mul2663
  %i.jh = sub i32 %i.ix, %factor.op.mul2664
  %i.ji = sub i32 %i.iu, %factor.op.mul2665
  %i.jj = icmp slt i32 %i.io, 1
  %or.cond.not2997 = or i1 %i.iz, %i.jj
  %brmerge = or i1 %or.cond.not2997, %i.ja
  br i1 %brmerge, label %.loopexit2473, label %.preheader2463.us.us.us.us.us.preheader

.preheader2463.us.us.us.us.us.preheader:          ; preds = %.preheader2467.lr.ph
  %i.jk = sext i32 %i.ig to i64
  %i.jl = sext i32 %i.dh to i64                   ; 2 uses
  %i.jm = sext i32 %i.dv to i64
  %6 = zext nneg i32 %i.ea to i64                 ; 3 uses
  %invariant.gep2975 = getelementptr [8 x i8], ptr %i.be, i64 %6
  br label %.preheader2463.us.us.us.us.us

.preheader2463.us.us.us.us.us:                    ; preds = %.preheader2463.us.us.us.us.us.preheader, %._crit_edge2628.split.us.us.us.us.us.us
  %.121212648.us.us.us.us.us = phi i32 [ %i.on, %._crit_edge2628.split.us.us.us.us.us.us ], [ 0, %.preheader2463.us.us.us.us.us.preheader ]
  %.021872647.us.us.us.us.us = phi i32 [ %i.ol, %._crit_edge2628.split.us.us.us.us.us.us ], [ %i.gy, %.preheader2463.us.us.us.us.us.preheader ]
  %.021952646.us.us.us.us.us = phi i32 [ %i.om, %._crit_edge2628.split.us.us.us.us.us.us ], [ %i.hx, %.preheader2463.us.us.us.us.us.preheader ]
  %.022072645.us.us.us.us.us = phi i32 [ %i.oj, %._crit_edge2628.split.us.us.us.us.us.us ], [ %i.fb, %.preheader2463.us.us.us.us.us.preheader ]
  %.022192644.us.us.us.us.us = phi i32 [ %i.ok, %._crit_edge2628.split.us.us.us.us.us.us ], [ %i.ga, %.preheader2463.us.us.us.us.us.preheader ]
  br label %.preheader2459.us.us.us.us.us.us

.preheader2459.us.us.us.us.us.us:                 ; preds = %._crit_edge.us.us.us.us.us.us2682, %.preheader2463.us.us.us.us.us
  %.121132627.us.us.us.us.us.us = phi i32 [ 0, %.preheader2463.us.us.us.us.us ], [ %i.oi, %._crit_edge.us.us.us.us.us.us2682 ]
  %.121882626.us.us.us.us.us.us = phi i32 [ %.021872647.us.us.us.us.us, %.preheader2463.us.us.us.us.us ], [ %i.og, %._crit_edge.us.us.us.us.us.us2682 ]
  %.121962625.us.us.us.us.us.us = phi i32 [ %.021952646.us.us.us.us.us, %.preheader2463.us.us.us.us.us ], [ %i.oh, %._crit_edge.us.us.us.us.us.us2682 ]
  %.122082624.us.us.us.us.us.us = phi i32 [ %.022072645.us.us.us.us.us, %.preheader2463.us.us.us.us.us ], [ %i.oe, %._crit_edge.us.us.us.us.us.us2682 ]
  %.122202623.us.us.us.us.us.us = phi i32 [ %.022192644.us.us.us.us.us, %.preheader2463.us.us.us.us.us ], [ %i.of, %._crit_edge.us.us.us.us.us.us2682 ]
  %i.jn = sext i32 %.121882626.us.us.us.us.us.us to i64
  %i.jo = sext i32 %.121962625.us.us.us.us.us.us to i64
  %i.jp = sext i32 %.122082624.us.us.us.us.us.us to i64
  %i.jq = sext i32 %.122202623.us.us.us.us.us.us to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader2459.us.us.us.us.us.us
  %indvars.iv2885 = phi i64 [ %indvars.iv.next2886, %bb.t ], [ %i.jq, %.preheader2459.us.us.us.us.us.us ] ; 3 uses
  %indvars.iv2883 = phi i64 [ %indvars.iv.next2884, %bb.t ], [ %i.jp, %.preheader2459.us.us.us.us.us.us ] ; 6 uses
  %indvars.iv2881 = phi i64 [ %indvars.iv.next2882, %bb.t ], [ %i.jo, %.preheader2459.us.us.us.us.us.us ] ; 9 uses
  %indvars.iv2879 = phi i64 [ %indvars.iv.next2880, %bb.t ], [ %i.jn, %.preheader2459.us.us.us.us.us.us ] ; 8 uses
  %.121072618.us.us.us.us.us.us = phi i32 [ %i.nz, %bb.t ], [ 0, %.preheader2459.us.us.us.us.us.us ]
  %i.jr = sub nsw i64 %indvars.iv2879, %i.jl      ; 7 uses
  %i.js = add nsw i64 %indvars.iv2879, %i.jl      ; 4 uses
  %i.jt = sub nsw i64 %indvars.iv2883, %i.jm      ; 3 uses
  %i.ju = sub nsw i64 %i.jt, %6
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv2885 ; 8 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !35
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.jr ; 2 uses
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !35
  %i.jz = fmul double %i.jw, %i.jy
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ju
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !35
  %i.kc = fmul double %i.jz, %i.kb
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv2881
  store double %i.kc, ptr %i.kd, align 8, !tbaa !35
  %i.ke = load double, ptr %i.jv, align 8, !tbaa !35
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.jr ; 2 uses
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !35
  %i.kh = fmul double %i.ke, %i.kg
  %i.ki = getelementptr [8 x i8], ptr %i.be, i64 %i.jt ; 3 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 -8
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !35
  %i.kl = fmul double %i.kh, %i.kk
  %i.km = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv2881
  store double %i.kl, ptr %i.km, align 8, !tbaa !35
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv2879 ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !35
  %i.kp = load double, ptr %i.ki, align 8, !tbaa !35 ; 2 uses
  %i.kq = load double, ptr %i.jv, align 8, !tbaa !35 ; 2 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.jr ; 2 uses
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !35
  %i.kt = fmul double %i.kq, %i.ks
  %i.ku = fmul double %i.kp, %i.kt
  %i.kv = call double @llvm.fmuladd.f64(double %i.ko, double %i.kp, double %i.ku)
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.jr
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !35
  %i.ky = call double @llvm.fmuladd.f64(double %i.kq, double %i.kx, double %i.kv)
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2881
  store double %i.ky, ptr %i.kz, align 8, !tbaa !35
  %i.la = load double, ptr %i.jv, align 8, !tbaa !35
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.jr
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !35
  %i.ld = fmul double %i.la, %i.lc
  %i.le = getelementptr i8, ptr %i.ki, i64 8
  %i.lf = load double, ptr %i.le, align 8, !tbaa !35
  %i.lg = fmul double %i.ld, %i.lf
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv2881
  store double %i.lg, ptr %i.lh, align 8, !tbaa !35
  %i.li = load double, ptr %i.jv, align 8, !tbaa !35
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.jr
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !35
  %i.ll = fmul double %i.li, %i.lk
  %gep2976 = getelementptr [8 x i8], ptr %invariant.gep2975, i64 %i.jt
  %i.lm = load double, ptr %gep2976, align 8, !tbaa !35
  %i.ln = fmul double %i.ll, %i.lm
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.co, i64 %indvars.iv2881
  store double %i.ln, ptr %i.lo, align 8, !tbaa !35
  %i.lp = sub nsw i64 %indvars.iv2883, %6         ; 2 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %indvars.iv2879
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !35
  %i.ls = load double, ptr %i.jv, align 8, !tbaa !35
  %i.lt = load double, ptr %i.jx, align 8, !tbaa !35
  %i.lu = fmul double %i.ls, %i.lt
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.lp
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !35
  %i.lx = call double @llvm.fmuladd.f64(double %i.lu, double %i.lw, double %i.lr)
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2885 ; 3 uses
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !35
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.js
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !35
  %i.mc = fmul double %i.lz, %i.mb
  %i.md = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.lp
  %i.me = load double, ptr %i.md, align 8, !tbaa !35
  %i.mf = call double @llvm.fmuladd.f64(double %i.mc, double %i.me, double %i.lx)
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv2881
  store double %i.mf, ptr %i.mg, align 8, !tbaa !35
  %i.mh = add nsw i64 %indvars.iv2883, -1         ; 2 uses
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv2879
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !35
  %i.mk = load double, ptr %i.jv, align 8, !tbaa !35
  %i.ml = load double, ptr %i.kf, align 8, !tbaa !35
  %i.mm = fmul double %i.mk, %i.ml
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.mh
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !35
  %i.mp = call double @llvm.fmuladd.f64(double %i.mm, double %i.mo, double %i.mj)
  %i.mq = load double, ptr %i.ly, align 8, !tbaa !35
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.js
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !35
  %i.mt = fmul double %i.mq, %i.ms
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.mh
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !35
  %i.mw = call double @llvm.fmuladd.f64(double %i.mt, double %i.mv, double %i.mp)
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv2881
  store double %i.mw, ptr %i.mx, align 8, !tbaa !35
  %i.my = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv2879
  %i.mz = load double, ptr %i.my, align 8, !tbaa !35
  %i.na = load double, ptr %i.jv, align 8, !tbaa !35 ; 2 uses
  %i.nb = load double, ptr %i.kr, align 8, !tbaa !35
  %i.nc = fmul double %i.na, %i.nb
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv2883
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !35 ; 2 uses
  %i.nf = call double @llvm.fmuladd.f64(double %i.nc, double %i.ne, double %i.mz)
  %i.ng = load double, ptr %i.ly, align 8, !tbaa !35 ; 2 uses
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.js
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !35
  %i.nj = fmul double %i.ng, %i.ni
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv2883
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !35 ; 2 uses
  %i.nm = call double @llvm.fmuladd.f64(double %i.nj, double %i.nl, double %i.nf)
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.jr
  %i.no = load double, ptr %i.nn, align 8, !tbaa !35
  %i.np = call double @llvm.fmuladd.f64(double %i.na, double %i.no, double %i.nm)
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.js
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !35
  %i.ns = call double @llvm.fmuladd.f64(double %i.ng, double %i.nr, double %i.np)
  %i.nt = load double, ptr %i.kn, align 8, !tbaa !35
  %i.nu = call double @llvm.fmuladd.f64(double %i.nt, double %i.ne, double %i.ns)
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv2879
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !35
  %i.nx = call double @llvm.fmuladd.f64(double %i.nw, double %i.nl, double %i.nu)
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2881
  store double %i.nx, ptr %i.ny, align 8, !tbaa !35
  %indvars.iv.next2884 = add nsw i64 %indvars.iv2883, 1 ; 2 uses
  %indvars.iv.next2886 = add nsw i64 %indvars.iv2885, 1 ; 2 uses
  %indvars.iv.next2880 = add nsw i64 %indvars.iv2879, %i.jk ; 2 uses
  %indvars.iv.next2882 = add nsw i64 %indvars.iv2881, 1 ; 2 uses
  %i.nz = add nuw nsw i32 %.121072618.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2894.not = icmp eq i32 %i.nz, %i.in
  br i1 %exitcond2894.not, label %._crit_edge.us.us.us.us.us.us2682, label %bb.t, !llvm.loop !37

._crit_edge.us.us.us.us.us.us2682:                ; preds = %bb.t
  %i.oa = trunc nsw i64 %indvars.iv.next2886 to i32
  %i.ob = trunc nsw i64 %indvars.iv.next2884 to i32
  %i.oc = trunc nsw i64 %indvars.iv.next2882 to i32
  %i.od = trunc nsw i64 %indvars.iv.next2880 to i32
  %i.oe = add nsw i32 %i.jb, %i.ob                ; 2 uses
  %i.of = add nsw i32 %i.jc, %i.oa                ; 2 uses
  %i.og = add nsw i32 %i.jd, %i.od                ; 2 uses
  %i.oh = add nsw i32 %i.je, %i.oc                ; 2 uses
  %i.oi = add nuw nsw i32 %.121132627.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2895.not = icmp eq i32 %i.oi, %i.io
  br i1 %exitcond2895.not, label %._crit_edge2628.split.us.us.us.us.us.us, label %.preheader2459.us.us.us.us.us.us, !llvm.loop !38

._crit_edge2628.split.us.us.us.us.us.us:          ; preds = %._crit_edge.us.us.us.us.us.us2682
  %i.oj = add nsw i32 %i.jf, %i.oe
  %i.ok = add nsw i32 %i.jg, %i.of
  %i.ol = add nsw i32 %i.jh, %i.og
  %i.om = add nsw i32 %i.ji, %i.oh
  %i.on = add nuw nsw i32 %.121212648.us.us.us.us.us, 1 ; 2 uses
  %exitcond2896.not = icmp eq i32 %i.on, %i.ip
  br i1 %exitcond2896.not, label %.loopexit2473, label %.preheader2463.us.us.us.us.us, !llvm.loop !39

bb.u:                                             ; preds = %bb.h
  br i1 %i.em, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.oo = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.op = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !4
  %i.or = sub nsw i32 %i.oo, %i.oq
  %i.os = add nuw nsw i32 %i.el, 1
  %i.ot = mul nsw i32 %i.or, %i.os
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ou = phi i32 [ %i.ot, %bb.v ], [ 0, %bb.u ]
  %i.ov = load i32, ptr %i.di, align 4, !tbaa !4
  %i.ow = sub i32 %i.ov, %i.ed                    ; 2 uses
  %i.ox = icmp sgt i32 %i.ow, -1                  ; 2 uses
  %i.oy = add nsw i32 %i.ei, %i.ou
  %i.oz = add i32 %i.ow, 1                        ; 2 uses
  %i.pa = mul nsw i32 %i.oz, %i.oy
  %i.pb = select i1 %i.ox, i32 %i.pa, i32 0
  %i.pc = add nsw i32 %i.ee, %i.pb
  %i.pd = load i32, ptr %i.ba, align 4, !tbaa !4  ; 2 uses
  %i.pe = sub i32 %i.ec, %i.pd
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !4  ; 2 uses
  %i.ph = sub i32 %i.eg, %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !4
  %i.pl = sub nsw i32 %i.pk, %i.pg                ; 3 uses
  %i.pm = icmp sgt i32 %i.pl, -1                  ; 2 uses
  br i1 %i.pm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.pn = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.po = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !4
  %i.pq = sub nsw i32 %i.pn, %i.pp
  %i.pr = add nuw nsw i32 %i.pl, 1
  %i.ps = mul nsw i32 %i.pq, %i.pr
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.pt = phi i32 [ %i.ps, %bb.x ], [ 0, %bb.w ]
  %i.pu = load i32, ptr %i.pi, align 4, !tbaa !4
  %i.pv = sub i32 %i.pu, %i.pd                    ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, -1                  ; 2 uses
  %i.px = add nsw i32 %i.ph, %i.pt
  %i.py = add i32 %i.pv, 1                        ; 2 uses
  %i.pz = mul nsw i32 %i.py, %i.px
  %i.qa = select i1 %i.pw, i32 %i.pz, i32 0
  %i.qb = add nsw i32 %i.pe, %i.qa
  %i.qc = load i32, ptr %i.b, align 4, !tbaa !4
  %i.qd = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.qe = sub i32 %i.qc, %i.qd
  %i.qf = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.qg = load i32, ptr %i.cy, align 4, !tbaa !4  ; 2 uses
  %i.qh = sub i32 %i.qf, %i.qg
  %i.qi = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.qj = sub nsw i32 %i.qi, %i.qg                ; 3 uses
  %i.qk = icmp sgt i32 %i.qj, -1                  ; 2 uses
  br i1 %i.qk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ql = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !4
  %i.qo = sub nsw i32 %i.ql, %i.qn
  %i.qp = add nuw nsw i32 %i.qj, 1
  %i.qq = mul nsw i32 %i.qo, %i.qp
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.qr = phi i32 [ %i.qq, %bb.z ], [ 0, %bb.y ]
  %i.qs = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.qt = sub nsw i32 %i.qs, %i.qd                ; 2 uses
  %i.qu = icmp sgt i32 %i.qt, -1                  ; 2 uses
  %i.qv = add nsw i32 %i.qh, %i.qr
  %i.qw = add nuw nsw i32 %i.qt, 1                ; 3 uses
  %i.qx = mul nsw i32 %i.qw, %i.qv
  %i.qy = select i1 %i.qu, i32 %i.qx, i32 0
  %i.qz = add nsw i32 %i.qe, %i.qy
  %i.ra = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.rb = sub i32 %i.ec, %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !4  ; 2 uses
  %i.re = sub i32 %i.eg, %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.rg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !4
  %i.ri = sub nsw i32 %i.rh, %i.rd                ; 3 uses
  %i.rj = icmp sgt i32 %i.ri, -1                  ; 2 uses
  br i1 %i.rj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.rk = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.rl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !4
  %i.rn = sub nsw i32 %i.rk, %i.rm
  %i.ro = add nuw nsw i32 %i.ri, 1
  %i.rp = mul nsw i32 %i.rn, %i.ro
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.rq = phi i32 [ %i.rp, %bb.ab ], [ 0, %bb.aa ]
  %i.rr = load i32, ptr %i.rf, align 4, !tbaa !4
  %i.rs = sub i32 %i.rr, %i.ra                    ; 2 uses
  %i.rt = icmp sgt i32 %i.rs, -1                  ; 2 uses
  %i.ru = add nsw i32 %i.re, %i.rq
  %i.rv = add i32 %i.rs, 1                        ; 2 uses
  %i.rw = mul nsw i32 %i.rv, %i.ru
  %i.rx = select i1 %i.rt, i32 %i.rw, i32 0
  %i.ry = add nsw i32 %i.rb, %i.rx
  %i.rz = select i1 %i.ox, i32 %i.oz, i32 0       ; 3 uses
  %i.sa = add nuw nsw i32 %i.el, 1
  %i.sb = mul nsw i32 %i.rz, %i.sa
  %i.sc = select i1 %i.em, i32 %i.sb, i32 0
  %i.sd = select i1 %i.pw, i32 %i.py, i32 0       ; 3 uses
  %i.se = add nuw nsw i32 %i.pl, 1
  %i.sf = mul nsw i32 %i.sd, %i.se
  %i.sg = select i1 %i.pm, i32 %i.sf, i32 0
  %i.sh = load i32, ptr %5, align 4, !tbaa !4     ; 2 uses
  br i1 %i.qu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.si = load i32, ptr %i.af, align 4, !tbaa !4
  %i.sj = mul nsw i32 %i.si, %i.qw
  %i.sk = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.sl = mul nsw i32 %i.sk, %i.qw
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.sm = phi i32 [ %i.sj, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.sn = phi i32 [ %i.sl, %bb.ad ], [ 0, %bb.ac ]
  %i.so = load i32, ptr %i.c, align 4, !tbaa !4   ; 7 uses
  %i.sp = load i32, ptr %i.ah, align 4, !tbaa !4  ; 7 uses
  %i.sq = load i32, ptr %i.ai, align 4, !tbaa !4  ; 3 uses
  %.02244 = call i32 @llvm.smax.i32(i32 %i.sp, i32 %i.so)
  %.12245 = call i32 @llvm.smax.i32(i32 %i.sq, i32 %.02244)
  %i.sr = icmp sgt i32 %.12245, 0
  br i1 %i.sr, label %.preheader2469.lr.ph, label %.loopexit2473

.preheader2469.lr.ph:                             ; preds = %bb.ae
  %i.ss = select i1 %i.rt, i32 %i.rv, i32 0       ; 3 uses
  %factor.op.mul2595 = mul i32 %i.sp, %i.ss
  %factor.op.mul2594 = mul i32 %i.sp, %i.sm
  %factor.op.mul2593 = mul i32 %i.sp, %i.sd
  %factor.op.mul2592 = mul i32 %i.sp, %i.rz
  %i.st = add nuw nsw i32 %i.ri, 1
  %i.su = mul nsw i32 %i.ss, %i.st
  %i.sv = select i1 %i.rj, i32 %i.su, i32 0
  %i.sw = add nuw nsw i32 %i.qj, 1
  %i.sx = mul nsw i32 %i.sn, %i.sw
  %i.sy = select i1 %i.qk, i32 %i.sx, i32 0
  %i.sz = mul i32 %i.so, %i.sh
  %i.ta = icmp slt i32 %i.sq, 1
  %i.tb = icmp slt i32 %i.so, 1
  %i.tc = sub i32 %i.rz, %i.so
  %i.td = sub i32 %i.sd, %i.so
  %i.te = sub i32 %i.sm, %i.sz
  %i.tf = sub i32 %i.ss, %i.so
  %i.tg = sub i32 %i.sc, %factor.op.mul2592
  %i.th = sub i32 %i.sg, %factor.op.mul2593
  %i.ti = sub i32 %i.sy, %factor.op.mul2594
  %i.tj = sub i32 %i.sv, %factor.op.mul2595
  %i.tk = icmp slt i32 %i.sp, 1
  %or.cond2980.not2994 = or i1 %i.ta, %i.tk
  %brmerge2982 = or i1 %or.cond2980.not2994, %i.tb
  br i1 %brmerge2982, label %.loopexit2473, label %.preheader2464.us.us.us.us.us.preheader

.preheader2464.us.us.us.us.us.preheader:          ; preds = %.preheader2469.lr.ph
  %i.tl = sext i32 %i.sh to i64
  %i.tm = sext i32 %i.dh to i64                   ; 2 uses
  %i.tn = sext i32 %i.dv to i64
  %7 = zext nneg i32 %i.ea to i64                 ; 3 uses
  %invariant.gep2973 = getelementptr [8 x i8], ptr %i.be, i64 %7
  br label %.preheader2464.us.us.us.us.us

.preheader2464.us.us.us.us.us:                    ; preds = %.preheader2464.us.us.us.us.us.preheader, %._crit_edge2558.split.us.us.us.us.us.us
  %.321232578.us.us.us.us.us = phi i32 [ %i.aai, %._crit_edge2558.split.us.us.us.us.us.us ], [ 0, %.preheader2464.us.us.us.us.us.preheader ]
  %.321902577.us.us.us.us.us = phi i32 [ %i.aag, %._crit_edge2558.split.us.us.us.us.us.us ], [ %i.qz, %.preheader2464.us.us.us.us.us.preheader ]
  %.321982576.us.us.us.us.us = phi i32 [ %i.aah, %._crit_edge2558.split.us.us.us.us.us.us ], [ %i.ry, %.preheader2464.us.us.us.us.us.preheader ]
  %.322102575.us.us.us.us.us = phi i32 [ %i.aae, %._crit_edge2558.split.us.us.us.us.us.us ], [ %i.pc, %.preheader2464.us.us.us.us.us.preheader ]
  %.322222574.us.us.us.us.us = phi i32 [ %i.aaf, %._crit_edge2558.split.us.us.us.us.us.us ], [ %i.qb, %.preheader2464.us.us.us.us.us.preheader ]
  br label %.preheader2460.us.us.us.us.us.us

.preheader2460.us.us.us.us.us.us:                 ; preds = %._crit_edge.us.us.us.us.us.us2612, %.preheader2464.us.us.us.us.us
  %.321152557.us.us.us.us.us.us = phi i32 [ 0, %.preheader2464.us.us.us.us.us ], [ %i.aad, %._crit_edge.us.us.us.us.us.us2612 ]
  %.421912556.us.us.us.us.us.us = phi i32 [ %.321902577.us.us.us.us.us, %.preheader2464.us.us.us.us.us ], [ %i.aab, %._crit_edge.us.us.us.us.us.us2612 ]
  %.421992555.us.us.us.us.us.us = phi i32 [ %.321982576.us.us.us.us.us, %.preheader2464.us.us.us.us.us ], [ %i.aac, %._crit_edge.us.us.us.us.us.us2612 ]
  %.422112554.us.us.us.us.us.us = phi i32 [ %.322102575.us.us.us.us.us, %.preheader2464.us.us.us.us.us ], [ %i.zz, %._crit_edge.us.us.us.us.us.us2612 ]
  %.422232553.us.us.us.us.us.us = phi i32 [ %.322222574.us.us.us.us.us, %.preheader2464.us.us.us.us.us ], [ %i.aaa, %._crit_edge.us.us.us.us.us.us2612 ]
  %i.to = sext i32 %.421912556.us.us.us.us.us.us to i64
  %i.tp = sext i32 %.421992555.us.us.us.us.us.us to i64
  %i.tq = sext i32 %.422112554.us.us.us.us.us.us to i64
  %i.tr = sext i32 %.422232553.us.us.us.us.us.us to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.preheader2460.us.us.us.us.us.us
  %indvars.iv2865 = phi i64 [ %indvars.iv.next2866, %bb.af ], [ %i.tr, %.preheader2460.us.us.us.us.us.us ] ; 3 uses
  %indvars.iv2863 = phi i64 [ %indvars.iv.next2864, %bb.af ], [ %i.tq, %.preheader2460.us.us.us.us.us.us ] ; 6 uses
  %indvars.iv2861 = phi i64 [ %indvars.iv.next2862, %bb.af ], [ %i.tp, %.preheader2460.us.us.us.us.us.us ] ; 9 uses
  %indvars.iv2859 = phi i64 [ %indvars.iv.next2860, %bb.af ], [ %i.to, %.preheader2460.us.us.us.us.us.us ] ; 14 uses
  %.32548.us.us.us.us.us.us = phi i32 [ %i.zu, %bb.af ], [ 0, %.preheader2460.us.us.us.us.us.us ]
  %i.ts = sub nsw i64 %indvars.iv2859, %i.tm      ; 13 uses
  %i.tt = add nsw i64 %indvars.iv2859, %i.tm      ; 6 uses
  %i.tu = sub nsw i64 %indvars.iv2863, %i.tn      ; 3 uses
  %i.tv = sub nsw i64 %i.tu, %7
  %i.tw = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv2865 ; 8 uses
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !35 ; 2 uses
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ts ; 2 uses
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !35
  %i.ua = fmul double %i.tx, %i.tz
  %i.ub = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.tv
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !35 ; 2 uses
  %i.ud = getelementptr inbounds [8 x i8], ptr %.1213723712391, i64 %i.ts
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !35
  %i.uf = fmul double %i.tx, %i.ue
  %i.ug = call double @llvm.fmuladd.f64(double %i.ua, double %i.uc, double %i.uf)
  %i.uh = getelementptr inbounds [8 x i8], ptr %.1213723712391, i64 %indvars.iv2859 ; 2 uses
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !35
  %i.uj = call double @llvm.fmuladd.f64(double %i.ui, double %i.uc, double %i.ug)
  %i.uk = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv2861
  store double %i.uj, ptr %i.uk, align 8, !tbaa !35
  %i.ul = load double, ptr %i.tw, align 8, !tbaa !35 ; 2 uses
  %i.um = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ts ; 2 uses
  %i.un = load double, ptr %i.um, align 8, !tbaa !35
  %i.uo = fmul double %i.ul, %i.un
  %i.up = getelementptr [8 x i8], ptr %i.be, i64 %i.tu ; 3 uses
  %i.uq = getelementptr i8, ptr %i.up, i64 -8
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !35 ; 2 uses
  %i.us = getelementptr inbounds [8 x i8], ptr %.1213323732389, i64 %i.ts
  %i.ut = load double, ptr %i.us, align 8, !tbaa !35
  %i.uu = fmul double %i.ul, %i.ut
  %i.uv = call double @llvm.fmuladd.f64(double %i.uo, double %i.ur, double %i.uu)
  %i.uw = getelementptr inbounds [8 x i8], ptr %.1213323732389, i64 %indvars.iv2859 ; 2 uses
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !35
  %i.uy = call double @llvm.fmuladd.f64(double %i.ux, double %i.ur, double %i.uv)
  %i.uz = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv2861
  store double %i.uy, ptr %i.uz, align 8, !tbaa !35
  %i.va = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv2859 ; 2 uses
  %i.vb = load double, ptr %i.va, align 8, !tbaa !35
  %i.vc = load double, ptr %i.up, align 8, !tbaa !35 ; 2 uses
  %i.vd = load double, ptr %i.tw, align 8, !tbaa !35 ; 2 uses
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.ts ; 2 uses
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !35
  %i.vg = fmul double %i.vd, %i.vf
  %i.vh = fmul double %i.vc, %i.vg
  %i.vi = call double @llvm.fmuladd.f64(double %i.vb, double %i.vc, double %i.vh)
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.ts
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !35
  %i.vl = call double @llvm.fmuladd.f64(double %i.vd, double %i.vk, double %i.vi)
  %i.vm = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2861
  store double %i.vl, ptr %i.vm, align 8, !tbaa !35
  %i.vn = load double, ptr %i.tw, align 8, !tbaa !35 ; 2 uses
  %i.vo = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.ts
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !35
  %i.vq = fmul double %i.vn, %i.vp
  %i.vr = getelementptr i8, ptr %i.up, i64 8
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !35 ; 2 uses
  %i.vt = getelementptr inbounds [8 x i8], ptr %.1213523722390, i64 %i.ts
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !35
  %i.vv = fmul double %i.vn, %i.vu
  %i.vw = call double @llvm.fmuladd.f64(double %i.vq, double %i.vs, double %i.vv)
  %i.vx = getelementptr inbounds [8 x i8], ptr %.1213523722390, i64 %indvars.iv2859
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !35
  %i.vz = call double @llvm.fmuladd.f64(double %i.vy, double %i.vs, double %i.vw)
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv2861
  store double %i.vz, ptr %i.wa, align 8, !tbaa !35
  %i.wb = load double, ptr %i.tw, align 8, !tbaa !35 ; 2 uses
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ts
  %i.wd = load double, ptr %i.wc, align 8, !tbaa !35
  %i.we = fmul double %i.wb, %i.wd
  %gep2974 = getelementptr [8 x i8], ptr %invariant.gep2973, i64 %i.tu
  %i.wf = load double, ptr %gep2974, align 8, !tbaa !35 ; 2 uses
  %i.wg = getelementptr inbounds [8 x i8], ptr %.1213923702392, i64 %i.ts
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !35
  %i.wi = fmul double %i.wb, %i.wh
  %i.wj = call double @llvm.fmuladd.f64(double %i.we, double %i.wf, double %i.wi)
  %i.wk = getelementptr inbounds [8 x i8], ptr %.1213923702392, i64 %indvars.iv2859
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !35
  %i.wm = call double @llvm.fmuladd.f64(double %i.wl, double %i.wf, double %i.wj)
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.co, i64 %indvars.iv2861
  store double %i.wm, ptr %i.wn, align 8, !tbaa !35
  %i.wo = sub nsw i64 %indvars.iv2863, %7         ; 2 uses
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %indvars.iv2859
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !35
  %i.wr = load double, ptr %i.tw, align 8, !tbaa !35 ; 2 uses
  %i.ws = load double, ptr %i.ty, align 8, !tbaa !35
  %i.wt = fmul double %i.wr, %i.ws
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.wo
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !35 ; 2 uses
  %i.ww = call double @llvm.fmuladd.f64(double %i.wt, double %i.wv, double %i.wq)
  %i.wx = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2865 ; 3 uses
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !35 ; 2 uses
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.tt
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !35
  %i.xb = fmul double %i.wy, %i.xa
  %i.xc = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.wo
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !35 ; 2 uses
  %i.xe = call double @llvm.fmuladd.f64(double %i.xb, double %i.xd, double %i.ww)
  %i.xf = load double, ptr %i.uh, align 8, !tbaa !35
  %i.xg = call double @llvm.fmuladd.f64(double %i.xf, double %i.wv, double %i.xe)
  %i.xh = getelementptr inbounds [8 x i8], ptr %.1213123742388, i64 %indvars.iv2859
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !35
  %i.xj = call double @llvm.fmuladd.f64(double %i.xi, double %i.xd, double %i.xg)
  %i.xk = getelementptr inbounds [8 x i8], ptr %.1213123742388, i64 %i.ts
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !35
  %i.xm = call double @llvm.fmuladd.f64(double %i.wr, double %i.xl, double %i.xj)
  %i.xn = getelementptr inbounds [8 x i8], ptr %.1213723712391, i64 %i.tt
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !35
  %i.xp = call double @llvm.fmuladd.f64(double %i.wy, double %i.xo, double %i.xm)
  %i.xq = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv2861
  store double %i.xp, ptr %i.xq, align 8, !tbaa !35
  %i.xr = add nsw i64 %indvars.iv2863, -1         ; 2 uses
  %i.xs = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv2859
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !35
  %i.xu = load double, ptr %i.tw, align 8, !tbaa !35 ; 2 uses
  %i.xv = load double, ptr %i.um, align 8, !tbaa !35
  %i.xw = fmul double %i.xu, %i.xv
  %i.xx = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.xr
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !35 ; 2 uses
  %i.xz = call double @llvm.fmuladd.f64(double %i.xw, double %i.xy, double %i.xt)
  %i.ya = load double, ptr %i.wx, align 8, !tbaa !35 ; 2 uses
  %i.yb = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.tt
  %i.yc = load double, ptr %i.yb, align 8, !tbaa !35
  %i.yd = fmul double %i.ya, %i.yc
  %i.ye = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.xr
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !35 ; 2 uses
  %i.yg = call double @llvm.fmuladd.f64(double %i.yd, double %i.yf, double %i.xz)
  %i.yh = load double, ptr %i.uw, align 8, !tbaa !35
  %i.yi = call double @llvm.fmuladd.f64(double %i.yh, double %i.xy, double %i.yg)
  %i.yj = getelementptr inbounds [8 x i8], ptr %.1212923752387, i64 %indvars.iv2859
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !35
  %i.yl = call double @llvm.fmuladd.f64(double %i.yk, double %i.yf, double %i.yi)
  %i.ym = getelementptr inbounds [8 x i8], ptr %.1212923752387, i64 %i.ts
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !35
  %i.yo = call double @llvm.fmuladd.f64(double %i.xu, double %i.yn, double %i.yl)
  %i.yp = getelementptr inbounds [8 x i8], ptr %.1213323732389, i64 %i.tt
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !35
  %i.yr = call double @llvm.fmuladd.f64(double %i.ya, double %i.yq, double %i.yo)
  %i.ys = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv2861
  store double %i.yr, ptr %i.ys, align 8, !tbaa !35
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv2859
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !35
  %i.yv = load double, ptr %i.tw, align 8, !tbaa !35 ; 2 uses
  %i.yw = load double, ptr %i.ve, align 8, !tbaa !35
  %i.yx = fmul double %i.yv, %i.yw
  %i.yy = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv2863
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !35 ; 2 uses
  %i.za = call double @llvm.fmuladd.f64(double %i.yx, double %i.yz, double %i.yu)
  %i.zb = load double, ptr %i.wx, align 8, !tbaa !35 ; 2 uses
  %i.zc = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.tt
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !35
  %i.ze = fmul double %i.zb, %i.zd
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv2863
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !35 ; 2 uses
  %i.zh = call double @llvm.fmuladd.f64(double %i.ze, double %i.zg, double %i.za)
  %i.zi = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.ts
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !35
  %i.zk = call double @llvm.fmuladd.f64(double %i.yv, double %i.zj, double %i.zh)
  %i.zl = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.tt
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !35
  %i.zn = call double @llvm.fmuladd.f64(double %i.zb, double %i.zm, double %i.zk)
  %i.zo = load double, ptr %i.va, align 8, !tbaa !35
  %i.zp = call double @llvm.fmuladd.f64(double %i.zo, double %i.yz, double %i.zn)
  %i.zq = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv2859
  %i.zr = load double, ptr %i.zq, align 8, !tbaa !35
  %i.zs = call double @llvm.fmuladd.f64(double %i.zr, double %i.zg, double %i.zp)
  %i.zt = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2861
  store double %i.zs, ptr %i.zt, align 8, !tbaa !35
  %indvars.iv.next2864 = add nsw i64 %indvars.iv2863, 1 ; 2 uses
  %indvars.iv.next2866 = add nsw i64 %indvars.iv2865, 1 ; 2 uses
  %indvars.iv.next2860 = add nsw i64 %indvars.iv2859, %i.tl ; 2 uses
  %indvars.iv.next2862 = add nsw i64 %indvars.iv2861, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@hypre_SMG3BuildRAPSym:bb.a
  %exitcond2874.not = icmp eq i32 %i.zu, %i.so
  br i1 %exitcond2874.not, label %._crit_edge.us.us.us.us.us.us2612, label %bb.af, !llvm.loop !40

._crit_edge.us.us.us.us.us.us2612:                ; preds = %bb.af
  %i.zv = trunc nsw i64 %indvars.iv.next2866 to i32
  %i.zw = trunc nsw i64 %indvars.iv.next2864 to i32
  %i.zx = trunc nsw i64 %indvars.iv.next2862 to i32
  %i.zy = trunc nsw i64 %indvars.iv.next2860 to i32
  %i.zz = add nsw i32 %i.tc, %i.zw                ; 2 uses
  %i.aaa = add nsw i32 %i.td, %i.zv               ; 2 uses
  %i.aab = add nsw i32 %i.te, %i.zy               ; 2 uses
  %i.aac = add nsw i32 %i.tf, %i.zx               ; 2 uses
  %i.aad = add nuw nsw i32 %.321152557.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2875.not = icmp eq i32 %i.aad, %i.sp
  br i1 %exitcond2875.not, label %._crit_edge2558.split.us.us.us.us.us.us, label %.preheader2460.us.us.us.us.us.us, !llvm.loop !41

._crit_edge2558.split.us.us.us.us.us.us:          ; preds = %._crit_edge.us.us.us.us.us.us2612
  %i.aae = add nsw i32 %i.tg, %i.zz
  %i.aaf = add nsw i32 %i.th, %i.aaa
  %i.aag = add nsw i32 %i.ti, %i.aab
  %i.aah = add nsw i32 %i.tj, %i.aac
  %i.aai = add nuw nsw i32 %.321232578.us.us.us.us.us, 1 ; 2 uses
  %exitcond2876.not = icmp eq i32 %i.aai, %i.sq
  br i1 %exitcond2876.not, label %.loopexit2473, label %.preheader2464.us.us.us.us.us, !llvm.loop !42

bb.ag:                                            ; preds = %bb.h
  br i1 %i.em, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.aaj = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.aak = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !4
  %i.aam = sub nsw i32 %i.aaj, %i.aal
  %i.aan = add nuw nsw i32 %i.el, 1
  %i.aao = mul nsw i32 %i.aam, %i.aan
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.aap = phi i32 [ %i.aao, %bb.ah ], [ 0, %bb.ag ]
  %i.aaq = load i32, ptr %i.di, align 4, !tbaa !4
  %i.aar = sub i32 %i.aaq, %i.ed                  ; 2 uses
  %i.aas = icmp sgt i32 %i.aar, -1                ; 2 uses
  %i.aat = add nsw i32 %i.ei, %i.aap
  %i.aau = add i32 %i.aar, 1                      ; 2 uses
  %i.aav = mul nsw i32 %i.aau, %i.aat
  %i.aaw = select i1 %i.aas, i32 %i.aav, i32 0
  %i.aax = add nsw i32 %i.ee, %i.aaw
  %i.aay = load i32, ptr %i.ba, align 4, !tbaa !4 ; 2 uses
  %i.aaz = sub i32 %i.ec, %i.aay
  %i.aba = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !4 ; 2 uses
  %i.abc = sub i32 %i.eg, %i.abb
  %i.abd = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.abe = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !4
  %i.abg = sub nsw i32 %i.abf, %i.abb             ; 3 uses
  %i.abh = icmp sgt i32 %i.abg, -1                ; 2 uses
  br i1 %i.abh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.abi = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.abj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !4
  %i.abl = sub nsw i32 %i.abi, %i.abk
  %i.abm = add nuw nsw i32 %i.abg, 1
  %i.abn = mul nsw i32 %i.abl, %i.abm
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.abo = phi i32 [ %i.abn, %bb.aj ], [ 0, %bb.ai ]
  %i.abp = load i32, ptr %i.abd, align 4, !tbaa !4
  %i.abq = sub i32 %i.abp, %i.aay                 ; 2 uses
  %i.abr = icmp sgt i32 %i.abq, -1                ; 2 uses
  %i.abs = add nsw i32 %i.abc, %i.abo
  %i.abt = add i32 %i.abq, 1                      ; 2 uses
  %i.abu = mul nsw i32 %i.abt, %i.abs
  %i.abv = select i1 %i.abr, i32 %i.abu, i32 0
  %i.abw = add nsw i32 %i.aaz, %i.abv
  %i.abx = load i32, ptr %i.b, align 4, !tbaa !4
  %i.aby = load i32, ptr %i.au, align 4, !tbaa !4 ; 2 uses
  %i.abz = sub i32 %i.abx, %i.aby
  %i.aca = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.acb = load i32, ptr %i.cy, align 4, !tbaa !4 ; 2 uses
  %i.acc = sub i32 %i.aca, %i.acb
  %i.acd = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.ace = sub nsw i32 %i.acd, %i.acb             ; 3 uses
  %i.acf = icmp sgt i32 %i.ace, -1                ; 2 uses
  br i1 %i.acf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.acg = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ach = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !4
  %i.acj = sub nsw i32 %i.acg, %i.aci
  %i.ack = add nuw nsw i32 %i.ace, 1
  %i.acl = mul nsw i32 %i.acj, %i.ack
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.acm = phi i32 [ %i.acl, %bb.al ], [ 0, %bb.ak ]
  %i.acn = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.aco = sub nsw i32 %i.acn, %i.aby             ; 2 uses
  %i.acp = icmp sgt i32 %i.aco, -1                ; 2 uses
  %i.acq = add nsw i32 %i.acc, %i.acm
  %i.acr = add nuw nsw i32 %i.aco, 1              ; 3 uses
  %i.acs = mul nsw i32 %i.acr, %i.acq
  %i.act = select i1 %i.acp, i32 %i.acs, i32 0
  %i.acu = add nsw i32 %i.abz, %i.act
  %i.acv = load i32, ptr %i.bd, align 4, !tbaa !4 ; 2 uses
  %i.acw = sub i32 %i.ec, %i.acv
  %i.acx = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !4 ; 2 uses
  %i.acz = sub i32 %i.eg, %i.acy
  %i.ada = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.adb = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !4
  %i.add = sub nsw i32 %i.adc, %i.acy             ; 3 uses
  %i.ade = icmp sgt i32 %i.add, -1                ; 2 uses
  br i1 %i.ade, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.adf = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.adg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !4
  %i.adi = sub nsw i32 %i.adf, %i.adh
  %i.adj = add nuw nsw i32 %i.add, 1
  %i.adk = mul nsw i32 %i.adi, %i.adj
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.adl = phi i32 [ %i.adk, %bb.an ], [ 0, %bb.am ]
  %i.adm = load i32, ptr %i.ada, align 4, !tbaa !4
  %i.adn = sub i32 %i.adm, %i.acv                 ; 2 uses
  %i.ado = icmp sgt i32 %i.adn, -1                ; 2 uses
  %i.adp = add nsw i32 %i.acz, %i.adl
  %i.adq = add i32 %i.adn, 1                      ; 2 uses
  %i.adr = mul nsw i32 %i.adq, %i.adp
  %i.ads = select i1 %i.ado, i32 %i.adr, i32 0
  %i.adt = add nsw i32 %i.acw, %i.ads
  %i.adu = select i1 %i.aas, i32 %i.aau, i32 0    ; 3 uses
  %i.adv = add nuw nsw i32 %i.el, 1
  %i.adw = mul nsw i32 %i.adu, %i.adv
  %i.adx = select i1 %i.em, i32 %i.adw, i32 0
  %i.ady = select i1 %i.abr, i32 %i.abt, i32 0    ; 3 uses
  %i.adz = add nuw nsw i32 %i.abg, 1
  %i.aea = mul nsw i32 %i.ady, %i.adz
  %i.aeb = select i1 %i.abh, i32 %i.aea, i32 0
  %i.aec = load i32, ptr %5, align 4, !tbaa !4    ; 2 uses
  br i1 %i.acp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.aed = load i32, ptr %i.af, align 4, !tbaa !4
  %i.aee = mul nsw i32 %i.aed, %i.acr
  %i.aef = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.aeg = mul nsw i32 %i.aef, %i.acr
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.aeh = phi i32 [ %i.aee, %bb.ap ], [ 0, %bb.ao ] ; 2 uses
  %i.aei = phi i32 [ %i.aeg, %bb.ap ], [ 0, %bb.ao ]
  %i.aej = load i32, ptr %i.c, align 4, !tbaa !4  ; 7 uses
  %i.aek = load i32, ptr %i.ah, align 4, !tbaa !4 ; 7 uses
  %i.ael = load i32, ptr %i.ai, align 4, !tbaa !4 ; 3 uses
  %.02164 = call i32 @llvm.smax.i32(i32 %i.aek, i32 %i.aej)
  %.12165 = call i32 @llvm.smax.i32(i32 %i.ael, i32 %.02164)
  %i.aem = icmp sgt i32 %.12165, 0
  br i1 %i.aem, label %.preheader2471.lr.ph, label %.loopexit2473

.preheader2471.lr.ph:                             ; preds = %bb.aq
  %i.aen = select i1 %i.ado, i32 %i.adq, i32 0    ; 3 uses
  %factor.op.mul2527 = mul i32 %i.aek, %i.aen
  %factor.op.mul2526 = mul i32 %i.aek, %i.aeh
  %factor.op.mul = mul i32 %i.aek, %i.ady
  %factor.op.mul2525 = mul i32 %i.aek, %i.adu
  %i.aeo = add nuw nsw i32 %i.add, 1
  %i.aep = mul nsw i32 %i.aen, %i.aeo
  %i.aeq = select i1 %i.ade, i32 %i.aep, i32 0
  %i.aer = add nuw nsw i32 %i.ace, 1
  %i.aes = mul nsw i32 %i.aei, %i.aer
  %i.aet = select i1 %i.acf, i32 %i.aes, i32 0
  %i.aeu = mul i32 %i.aej, %i.aec
  %i.aev = icmp slt i32 %i.ael, 1
  %i.aew = icmp slt i32 %i.aej, 1
  %i.aex = sub i32 %i.adu, %i.aej
  %i.aey = sub i32 %i.ady, %i.aej
  %i.aez = sub i32 %i.aeh, %i.aeu
  %i.afa = sub i32 %i.aen, %i.aej
  %i.afb = sub i32 %i.adx, %factor.op.mul2525
  %i.afc = sub i32 %i.aeb, %factor.op.mul
  %i.afd = sub i32 %i.aet, %factor.op.mul2526
  %i.afe = sub i32 %i.aeq, %factor.op.mul2527
  %i.aff = icmp slt i32 %i.aek, 1
  %or.cond2983.not2991 = or i1 %i.aev, %i.aff
  %brmerge2985 = or i1 %or.cond2983.not2991, %i.aew
  br i1 %brmerge2985, label %.loopexit2473, label %.preheader2465.us.us.us.us.us.preheader

.preheader2465.us.us.us.us.us.preheader:          ; preds = %.preheader2471.lr.ph
  %i.afg = sext i32 %i.aec to i64
  %i.afh = sext i32 %i.dh to i64                  ; 2 uses
  %i.afi = sext i32 %i.dv to i64
  %8 = zext nneg i32 %i.ea to i64                 ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.be, i64 %8
  br label %.preheader2465.us.us.us.us.us

.preheader2465.us.us.us.us.us:                    ; preds = %.preheader2465.us.us.us.us.us.preheader, %._crit_edge2492.split.us.us.us.us.us.us
  %.521252511.us.us.us.us.us = phi i32 [ %i.aor, %._crit_edge2492.split.us.us.us.us.us.us ], [ 0, %.preheader2465.us.us.us.us.us.preheader ]
  %.621932510.us.us.us.us.us = phi i32 [ %i.aop, %._crit_edge2492.split.us.us.us.us.us.us ], [ %i.acu, %.preheader2465.us.us.us.us.us.preheader ]
  %.622012509.us.us.us.us.us = phi i32 [ %i.aoq, %._crit_edge2492.split.us.us.us.us.us.us ], [ %i.adt, %.preheader2465.us.us.us.us.us.preheader ]
  %.622132508.us.us.us.us.us = phi i32 [ %i.aon, %._crit_edge2492.split.us.us.us.us.us.us ], [ %i.aax, %.preheader2465.us.us.us.us.us.preheader ]
  %.622252507.us.us.us.us.us = phi i32 [ %i.aoo, %._crit_edge2492.split.us.us.us.us.us.us ], [ %i.abw, %.preheader2465.us.us.us.us.us.preheader ]
  br label %.preheader2461.us.us.us.us.us.us

.preheader2461.us.us.us.us.us.us:                 ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader2465.us.us.us.us.us
  %.521172491.us.us.us.us.us.us = phi i32 [ 0, %.preheader2465.us.us.us.us.us ], [ %i.aom, %._crit_edge.us.us.us.us.us.us ]
  %.721942490.us.us.us.us.us.us = phi i32 [ %.621932510.us.us.us.us.us, %.preheader2465.us.us.us.us.us ], [ %i.aok, %._crit_edge.us.us.us.us.us.us ]
  %.722022489.us.us.us.us.us.us = phi i32 [ %.622012509.us.us.us.us.us, %.preheader2465.us.us.us.us.us ], [ %i.aol, %._crit_edge.us.us.us.us.us.us ]
  %.722142488.us.us.us.us.us.us = phi i32 [ %.622132508.us.us.us.us.us, %.preheader2465.us.us.us.us.us ], [ %i.aoi, %._crit_edge.us.us.us.us.us.us ]
  %.722262487.us.us.us.us.us.us = phi i32 [ %.622252507.us.us.us.us.us, %.preheader2465.us.us.us.us.us ], [ %i.aoj, %._crit_edge.us.us.us.us.us.us ]
  %i.afj = sext i32 %.721942490.us.us.us.us.us.us to i64
  %i.afk = sext i32 %.722022489.us.us.us.us.us.us to i64
  %i.afl = sext i32 %.722142488.us.us.us.us.us.us to i64
  %i.afm = sext i32 %.722262487.us.us.us.us.us.us to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.preheader2461.us.us.us.us.us.us
  %indvars.iv2846 = phi i64 [ %indvars.iv.next2847, %bb.ar ], [ %i.afm, %.preheader2461.us.us.us.us.us.us ] ; 3 uses
  %indvars.iv2844 = phi i64 [ %indvars.iv.next2845, %bb.ar ], [ %i.afl, %.preheader2461.us.us.us.us.us.us ] ; 6 uses
  %indvars.iv2842 = phi i64 [ %indvars.iv.next2843, %bb.ar ], [ %i.afk, %.preheader2461.us.us.us.us.us.us ] ; 15 uses
  %indvars.iv2840 = phi i64 [ %indvars.iv.next2841, %bb.ar ], [ %i.afj, %.preheader2461.us.us.us.us.us.us ] ; 16 uses
  %.52483.us.us.us.us.us.us = phi i32 [ %i.aod, %bb.ar ], [ 0, %.preheader2461.us.us.us.us.us.us ]
  %i.afn = sub nsw i64 %indvars.iv2840, %i.afh    ; 17 uses
  %i.afo = add nsw i64 %indvars.iv2840, %i.afh    ; 8 uses
  %i.afp = sub nsw i64 %indvars.iv2844, %i.afi    ; 3 uses
  %i.afq = sub nsw i64 %i.afp, %8
  %i.afr = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv2846 ; 14 uses
  %i.afs = load double, ptr %i.afr, align 8, !tbaa !35
  %i.aft = getelementptr inbounds [8 x i8], ptr %.121412396, i64 %i.afn ; 2 uses
  %i.afu = load double, ptr %i.aft, align 8, !tbaa !35
  %i.afv = fmul double %i.afs, %i.afu
  %i.afw = getelementptr [8 x i8], ptr %i.be, i64 %i.afq ; 3 uses
  %i.afx = getelementptr i8, ptr %i.afw, i64 -8
  %i.afy = load double, ptr %i.afx, align 8, !tbaa !35
  %i.afz = fmul double %i.afv, %i.afy
  %i.aga = getelementptr inbounds [8 x i8], ptr %.12180, i64 %indvars.iv2842
  store double %i.afz, ptr %i.aga, align 8, !tbaa !35
  %i.agb = load double, ptr %i.afr, align 8, !tbaa !35 ; 2 uses
  %i.agc = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.afn ; 2 uses
  %i.agd = load double, ptr %i.agc, align 8, !tbaa !35
  %i.age = fmul double %i.agb, %i.agd
  %i.agf = load double, ptr %i.afw, align 8, !tbaa !35 ; 2 uses
  %i.agg = getelementptr inbounds [8 x i8], ptr %.1213723712391, i64 %i.afn
  %i.agh = load double, ptr %i.agg, align 8, !tbaa !35
  %i.agi = fmul double %i.agb, %i.agh
  %i.agj = call double @llvm.fmuladd.f64(double %i.age, double %i.agf, double %i.agi)
  %i.agk = getelementptr inbounds [8 x i8], ptr %.1213723712391, i64 %indvars.iv2840 ; 2 uses
  %i.agl = load double, ptr %i.agk, align 8, !tbaa !35
  %i.agm = call double @llvm.fmuladd.f64(double %i.agl, double %i.agf, double %i.agj)
  %i.agn = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv2842
  store double %i.agm, ptr %i.agn, align 8, !tbaa !35
  %i.ago = load double, ptr %i.afr, align 8, !tbaa !35
  %i.agp = getelementptr inbounds [8 x i8], ptr %.121432395, i64 %i.afn ; 2 uses
  %i.agq = load double, ptr %i.agp, align 8, !tbaa !35
  %i.agr = fmul double %i.ago, %i.agq
  %i.ags = getelementptr i8, ptr %i.afw, i64 8
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !35
  %i.agu = fmul double %i.agr, %i.agt
  %i.agv = getelementptr inbounds [8 x i8], ptr %.12182, i64 %indvars.iv2842
  store double %i.agu, ptr %i.agv, align 8, !tbaa !35
  %i.agw = load double, ptr %i.afr, align 8, !tbaa !35 ; 2 uses
  %i.agx = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.afn ; 2 uses
  %i.agy = load double, ptr %i.agx, align 8, !tbaa !35
  %i.agz = fmul double %i.agw, %i.agy
  %i.aha = getelementptr [8 x i8], ptr %i.be, i64 %i.afp ; 3 uses
  %i.ahb = getelementptr i8, ptr %i.aha, i64 -8
  %i.ahc = load double, ptr %i.ahb, align 8, !tbaa !35 ; 2 uses
  %i.ahd = getelementptr inbounds [8 x i8], ptr %.1213323732389, i64 %i.afn
  %i.ahe = load double, ptr %i.ahd, align 8, !tbaa !35
  %i.ahf = fmul double %i.agw, %i.ahe
  %i.ahg = call double @llvm.fmuladd.f64(double %i.agz, double %i.ahc, double %i.ahf)
  %i.ahh = getelementptr inbounds [8 x i8], ptr %.1213323732389, i64 %indvars.iv2840 ; 2 uses
  %i.ahi = load double, ptr %i.ahh, align 8, !tbaa !35
  %i.ahj = call double @llvm.fmuladd.f64(double %i.ahi, double %i.ahc, double %i.ahg)
  %i.ahk = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv2842
  store double %i.ahj, ptr %i.ahk, align 8, !tbaa !35
  %i.ahl = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv2840 ; 2 uses
  %i.ahm = load double, ptr %i.ahl, align 8, !tbaa !35
  %i.ahn = load double, ptr %i.aha, align 8, !tbaa !35 ; 2 uses
  %i.aho = load double, ptr %i.afr, align 8, !tbaa !35 ; 2 uses
  %i.ahp = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.afn ; 2 uses
  %i.ahq = load double, ptr %i.ahp, align 8, !tbaa !35
  %i.ahr = fmul double %i.aho, %i.ahq
  %i.ahs = fmul double %i.ahn, %i.ahr
  %i.aht = call double @llvm.fmuladd.f64(double %i.ahm, double %i.ahn, double %i.ahs)
  %i.ahu = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.afn
  %i.ahv = load double, ptr %i.ahu, align 8, !tbaa !35
  %i.ahw = call double @llvm.fmuladd.f64(double %i.aho, double %i.ahv, double %i.aht)
  %i.ahx = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2842
  store double %i.ahw, ptr %i.ahx, align 8, !tbaa !35
  %i.ahy = load double, ptr %i.afr, align 8, !tbaa !35 ; 2 uses
  %i.ahz = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.afn
  %i.aia = load double, ptr %i.ahz, align 8, !tbaa !35
  %i.aib = fmul double %i.ahy, %i.aia
  %i.aic = getelementptr i8, ptr %i.aha, i64 8
  %i.aid = load double, ptr %i.aic, align 8, !tbaa !35 ; 2 uses
  %i.aie = getelementptr inbounds [8 x i8], ptr %.1213523722390, i64 %i.afn
  %i.aif = load double, ptr %i.aie, align 8, !tbaa !35
  %i.aig = fmul double %i.ahy, %i.aif
  %i.aih = call double @llvm.fmuladd.f64(double %i.aib, double %i.aid, double %i.aig)
  %i.aii = getelementptr inbounds [8 x i8], ptr %.1213523722390, i64 %indvars.iv2840
  %i.aij = load double, ptr %i.aii, align 8, !tbaa !35
  %i.aik = call double @llvm.fmuladd.f64(double %i.aij, double %i.aid, double %i.aih)
  %i.ail = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv2842
  store double %i.aik, ptr %i.ail, align 8, !tbaa !35
  %i.aim = load double, ptr %i.afr, align 8, !tbaa !35
  %i.ain = getelementptr inbounds [8 x i8], ptr %.121452394, i64 %i.afn
  %i.aio = load double, ptr %i.ain, align 8, !tbaa !35
  %i.aip = fmul double %i.aim, %i.aio
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.afp ; 3 uses
  %i.aiq = getelementptr i8, ptr %gep, i64 -8
  %i.air = load double, ptr %i.aiq, align 8, !tbaa !35
  %i.ais = fmul double %i.aip, %i.air
  %i.ait = getelementptr inbounds [8 x i8], ptr %.12184, i64 %indvars.iv2842
  store double %i.ais, ptr %i.ait, align 8, !tbaa !35
  %i.aiu = load double, ptr %i.afr, align 8, !tbaa !35 ; 2 uses
  %i.aiv = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.afn
  %i.aiw = load double, ptr %i.aiv, align 8, !tbaa !35
  %i.aix = fmul double %i.aiu, %i.aiw
  %i.aiy = load double, ptr %gep, align 8, !tbaa !35 ; 2 uses
  %i.aiz = getelementptr inbounds [8 x i8], ptr %.1213923702392, i64 %i.afn
  %i.aja = load double, ptr %i.aiz, align 8, !tbaa !35
  %i.ajb = fmul double %i.aiu, %i.aja
  %i.ajc = call double @llvm.fmuladd.f64(double %i.aix, double %i.aiy, double %i.ajb)
  %i.ajd = getelementptr inbounds [8 x i8], ptr %.1213923702392, i64 %indvars.iv2840
  %i.aje = load double, ptr %i.ajd, align 8, !tbaa !35
  %i.ajf = call double @llvm.fmuladd.f64(double %i.aje, double %i.aiy, double %i.ajc)
  %i.ajg = getelementptr inbounds [8 x i8], ptr %i.co, i64 %indvars.iv2842
  store double %i.ajf, ptr %i.ajg, align 8, !tbaa !35
  %i.ajh = load double, ptr %i.afr, align 8, !tbaa !35
  %i.aji = getelementptr inbounds [8 x i8], ptr %.121472393, i64 %i.afn
  %i.ajj = load double, ptr %i.aji, align 8, !tbaa !35
  %i.ajk = fmul double %i.ajh, %i.ajj
  %i.ajl = getelementptr i8, ptr %gep, i64 8
  %i.ajm = load double, ptr %i.ajl, align 8, !tbaa !35
  %i.ajn = fmul double %i.ajk, %i.ajm
  %i.ajo = getelementptr inbounds [8 x i8], ptr %.12186, i64 %indvars.iv2842
  store double %i.ajn, ptr %i.ajo, align 8, !tbaa !35
  %i.ajp = sub nsw i64 %indvars.iv2844, %8        ; 4 uses
  %i.ajq = add nsw i64 %i.ajp, -1                 ; 2 uses
  %i.ajr = getelementptr inbounds [8 x i8], ptr %.121412396, i64 %indvars.iv2840
  %i.ajs = load double, ptr %i.ajr, align 8, !tbaa !35
  %i.ajt = load double, ptr %i.afr, align 8, !tbaa !35
  %i.aju = load double, ptr %i.aft, align 8, !tbaa !35
  %i.ajv = fmul double %i.ajt, %i.aju
  %i.ajw = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.ajq
  %i.ajx = load double, ptr %i.ajw, align 8, !tbaa !35
  %i.ajy = call double @llvm.fmuladd.f64(double %i.ajv, double %i.ajx, double %i.ajs)
  %i.ajz = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2846 ; 5 uses
  %i.aka = load double, ptr %i.ajz, align 8, !tbaa !35
  %i.akb = getelementptr inbounds [8 x i8], ptr %.121412396, i64 %i.afo
  %i.akc = load double, ptr %i.akb, align 8, !tbaa !35
  %i.akd = fmul double %i.aka, %i.akc
  %i.ake = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ajq
  %i.akf = load double, ptr %i.ake, align 8, !tbaa !35
  %i.akg = call double @llvm.fmuladd.f64(double %i.akd, double %i.akf, double %i.ajy)
  %i.akh = getelementptr inbounds [8 x i8], ptr %.12173, i64 %indvars.iv2842
  store double %i.akg, ptr %i.akh, align 8, !tbaa !35
  %i.aki = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %indvars.iv2840
  %i.akj = load double, ptr %i.aki, align 8, !tbaa !35
  %i.akk = load double, ptr %i.afr, align 8, !tbaa !35 ; 2 uses
  %i.akl = load double, ptr %i.agc, align 8, !tbaa !35
  %i.akm = fmul double %i.akk, %i.akl
  %i.akn = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.ajp
  %i.ako = load double, ptr %i.akn, align 8, !tbaa !35 ; 2 uses
  %i.akp = call double @llvm.fmuladd.f64(double %i.akm, double %i.ako, double %i.akj)
  %i.akq = load double, ptr %i.ajz, align 8, !tbaa !35 ; 2 uses
  %i.akr = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.afo
  %i.aks = load double, ptr %i.akr, align 8, !tbaa !35
  %i.akt = fmul double %i.akq, %i.aks
  %i.aku = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ajp
  %i.akv = load double, ptr %i.aku, align 8, !tbaa !35 ; 2 uses
  %i.akw = call double @llvm.fmuladd.f64(double %i.akt, double %i.akv, double %i.akp)
  %i.akx = load double, ptr %i.agk, align 8, !tbaa !35
  %i.aky = call double @llvm.fmuladd.f64(double %i.akx, double %i.ako, double %i.akw)
  %i.akz = getelementptr inbounds [8 x i8], ptr %.1213123742388, i64 %indvars.iv2840
  %i.ala = load double, ptr %i.akz, align 8, !tbaa !35
  %i.alb = call double @llvm.fmuladd.f64(double %i.ala, double %i.akv, double %i.aky)
  %i.alc = getelementptr inbounds [8 x i8], ptr %.1213123742388, i64 %i.afn
  %i.ald = load double, ptr %i.alc, align 8, !tbaa !35
  %i.ale = call double @llvm.fmuladd.f64(double %i.akk, double %i.ald, double %i.alb)
  %i.alf = getelementptr inbounds [8 x i8], ptr %.1213723712391, i64 %i.afo
  %i.alg = load double, ptr %i.alf, align 8, !tbaa !35
  %i.alh = call double @llvm.fmuladd.f64(double %i.akq, double %i.alg, double %i.ale)
  %i.ali = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv2842
  store double %i.alh, ptr %i.ali, align 8, !tbaa !35
  %i.alj = add nsw i64 %i.ajp, 1                  ; 2 uses
  %i.alk = getelementptr inbounds [8 x i8], ptr %.121432395, i64 %indvars.iv2840
  %i.all = load double, ptr %i.alk, align 8, !tbaa !35
  %i.alm = load double, ptr %i.afr, align 8, !tbaa !35
  %i.aln = load double, ptr %i.agp, align 8, !tbaa !35
  %i.alo = fmul double %i.alm, %i.aln
  %i.alp = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.alj
end_hunk_1
begin_hunk_2_@hypre_SMG3BuildRAPSym:bb.a
  %exitcond.not = icmp eq i32 %i.aod, %i.aej
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us.us, label %bb.ar, !llvm.loop !43

._crit_edge.us.us.us.us.us.us:                    ; preds = %bb.ar
  %i.aoe = trunc nsw i64 %indvars.iv.next2847 to i32
  %i.aof = trunc nsw i64 %indvars.iv.next2845 to i32
  %i.aog = trunc nsw i64 %indvars.iv.next2843 to i32
  %i.aoh = trunc nsw i64 %indvars.iv.next2841 to i32
  %i.aoi = add nsw i32 %i.aex, %i.aof             ; 2 uses
  %i.aoj = add nsw i32 %i.aey, %i.aoe             ; 2 uses
  %i.aok = add nsw i32 %i.aez, %i.aoh             ; 2 uses
  %i.aol = add nsw i32 %i.afa, %i.aog             ; 2 uses
  %i.aom = add nuw nsw i32 %.521172491.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2855.not = icmp eq i32 %i.aom, %i.aek
  br i1 %exitcond2855.not, label %._crit_edge2492.split.us.us.us.us.us.us, label %.preheader2461.us.us.us.us.us.us, !llvm.loop !44

._crit_edge2492.split.us.us.us.us.us.us:          ; preds = %._crit_edge.us.us.us.us.us.us
  %i.aon = add nsw i32 %i.afb, %i.aoi
  %i.aoo = add nsw i32 %i.afc, %i.aoj
  %i.aop = add nsw i32 %i.afd, %i.aok
  %i.aoq = add nsw i32 %i.afe, %i.aol
  %i.aor = add nuw nsw i32 %.521252511.us.us.us.us.us, 1 ; 2 uses
  %exitcond2856.not = icmp eq i32 %i.aor, %i.ael
  br i1 %exitcond2856.not, label %.loopexit2473, label %.preheader2465.us.us.us.us.us, !llvm.loop !45

bb.as:                                            ; preds = %bb.h
  br i1 %i.em, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.aos = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.aot = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !4
  %i.aov = sub nsw i32 %i.aos, %i.aou
  %i.aow = add nuw nsw i32 %i.el, 1
  %i.aox = mul nsw i32 %i.aov, %i.aow
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.aoy = phi i32 [ %i.aox, %bb.at ], [ 0, %bb.as ]
  %i.aoz = load i32, ptr %i.di, align 4, !tbaa !4
  %i.apa = sub i32 %i.aoz, %i.ed                  ; 2 uses
  %i.apb = icmp sgt i32 %i.apa, -1                ; 2 uses
  %i.apc = add nsw i32 %i.ei, %i.aoy
  %i.apd = add i32 %i.apa, 1                      ; 2 uses
  %i.ape = mul nsw i32 %i.apd, %i.apc
  %i.apf = select i1 %i.apb, i32 %i.ape, i32 0
  %i.apg = add nsw i32 %i.ee, %i.apf
  %i.aph = load i32, ptr %i.ba, align 4, !tbaa !4 ; 2 uses
  %i.api = sub i32 %i.ec, %i.aph
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !4 ; 2 uses
  %i.apl = sub i32 %i.eg, %i.apk
  %i.apm = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.apn = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !4
  %i.app = sub nsw i32 %i.apo, %i.apk             ; 3 uses
  %i.apq = icmp sgt i32 %i.app, -1                ; 2 uses
  br i1 %i.apq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.apr = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.aps = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !4
  %i.apu = sub nsw i32 %i.apr, %i.apt
  %i.apv = add nuw nsw i32 %i.app, 1
  %i.apw = mul nsw i32 %i.apu, %i.apv
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.apx = phi i32 [ %i.apw, %bb.av ], [ 0, %bb.au ]
  %i.apy = load i32, ptr %i.apm, align 4, !tbaa !4
  %i.apz = sub i32 %i.apy, %i.aph                 ; 2 uses
  %i.aqa = icmp sgt i32 %i.apz, -1                ; 2 uses
  %i.aqb = add nsw i32 %i.apl, %i.apx
  %i.aqc = add i32 %i.apz, 1                      ; 2 uses
  %i.aqd = mul nsw i32 %i.aqc, %i.aqb
  %i.aqe = select i1 %i.aqa, i32 %i.aqd, i32 0
  %i.aqf = add nsw i32 %i.api, %i.aqe
  %i.aqg = load i32, ptr %i.b, align 4, !tbaa !4
  %i.aqh = load i32, ptr %i.au, align 4, !tbaa !4 ; 2 uses
  %i.aqi = sub i32 %i.aqg, %i.aqh
  %i.aqj = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.aqk = load i32, ptr %i.cy, align 4, !tbaa !4 ; 2 uses
  %i.aql = sub i32 %i.aqj, %i.aqk
  %i.aqm = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.aqn = sub nsw i32 %i.aqm, %i.aqk             ; 3 uses
  %i.aqo = icmp sgt i32 %i.aqn, -1                ; 2 uses
  br i1 %i.aqo, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.aqp = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aqr = load i32, ptr %i.aqq, align 4, !tbaa !4
  %i.aqs = sub nsw i32 %i.aqp, %i.aqr
  %i.aqt = add nuw nsw i32 %i.aqn, 1
  %i.aqu = mul nsw i32 %i.aqs, %i.aqt
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.aqv = phi i32 [ %i.aqu, %bb.ax ], [ 0, %bb.aw ]
  %i.aqw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.aqx = sub nsw i32 %i.aqw, %i.aqh             ; 2 uses
  %i.aqy = icmp sgt i32 %i.aqx, -1                ; 2 uses
  %i.aqz = add nsw i32 %i.aql, %i.aqv
  %i.ara = add nuw nsw i32 %i.aqx, 1              ; 3 uses
  %i.arb = mul nsw i32 %i.ara, %i.aqz
  %i.arc = select i1 %i.aqy, i32 %i.arb, i32 0
  %i.ard = add nsw i32 %i.aqi, %i.arc
  %i.are = load i32, ptr %i.bd, align 4, !tbaa !4 ; 2 uses
  %i.arf = sub i32 %i.ec, %i.are
  %i.arg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !4 ; 2 uses
  %i.ari = sub i32 %i.eg, %i.arh
  %i.arj = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.ark = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !4
  %i.arm = sub nsw i32 %i.arl, %i.arh             ; 3 uses
  %i.arn = icmp sgt i32 %i.arm, -1                ; 2 uses
  br i1 %i.arn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.aro = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.arp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !4
  %i.arr = sub nsw i32 %i.aro, %i.arq
  %i.ars = add nuw nsw i32 %i.arm, 1
  %i.art = mul nsw i32 %i.arr, %i.ars
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.aru = phi i32 [ %i.art, %bb.az ], [ 0, %bb.ay ]
  %i.arv = load i32, ptr %i.arj, align 4, !tbaa !4
  %i.arw = sub i32 %i.arv, %i.are                 ; 2 uses
  %i.arx = icmp sgt i32 %i.arw, -1                ; 2 uses
  %i.ary = add nsw i32 %i.ari, %i.aru
  %i.arz = add i32 %i.arw, 1                      ; 2 uses
  %i.asa = mul nsw i32 %i.arz, %i.ary
  %i.asb = select i1 %i.arx, i32 %i.asa, i32 0
  %i.asc = add nsw i32 %i.arf, %i.asb
  %i.asd = select i1 %i.apb, i32 %i.apd, i32 0    ; 3 uses
  %i.ase = add nuw nsw i32 %i.el, 1
  %i.asf = mul nsw i32 %i.asd, %i.ase
  %i.asg = select i1 %i.em, i32 %i.asf, i32 0
  %i.ash = select i1 %i.aqa, i32 %i.aqc, i32 0    ; 3 uses
  %i.asi = add nuw nsw i32 %i.app, 1
  %i.asj = mul nsw i32 %i.ash, %i.asi
  %i.ask = select i1 %i.apq, i32 %i.asj, i32 0
  %i.asl = load i32, ptr %5, align 4, !tbaa !4    ; 2 uses
  br i1 %i.aqy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.asm = load i32, ptr %i.af, align 4, !tbaa !4
  %i.asn = mul nsw i32 %i.asm, %i.ara
  %i.aso = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.asp = mul nsw i32 %i.aso, %i.ara
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.asq = phi i32 [ %i.asn, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %i.asr = phi i32 [ %i.asp, %bb.bb ], [ 0, %bb.ba ]
  %i.ass = load i32, ptr %i.c, align 4, !tbaa !4  ; 7 uses
  %i.ast = load i32, ptr %i.ah, align 4, !tbaa !4 ; 7 uses
  %i.asu = load i32, ptr %i.ai, align 4, !tbaa !4 ; 3 uses
  %.02099 = call i32 @llvm.smax.i32(i32 %i.ast, i32 %i.ass)
  %.12100 = call i32 @llvm.smax.i32(i32 %i.asu, i32 %.02099)
  %i.asv = icmp sgt i32 %.12100, 0
  br i1 %i.asv, label %.preheader2466.lr.ph, label %.loopexit2473

.preheader2466.lr.ph:                             ; preds = %bb.bc
  %i.asw = select i1 %i.arx, i32 %i.arz, i32 0    ; 3 uses
  %factor.op.mul2735 = mul i32 %i.ast, %i.asw
  %factor.op.mul2734 = mul i32 %i.ast, %i.asq
  %factor.op.mul2733 = mul i32 %i.ast, %i.ash
  %factor.op.mul2732 = mul i32 %i.ast, %i.asd
  %i.asx = add nuw nsw i32 %i.arm, 1
  %i.asy = mul nsw i32 %i.asw, %i.asx
  %i.asz = select i1 %i.arn, i32 %i.asy, i32 0
  %i.ata = add nuw nsw i32 %i.aqn, 1
  %i.atb = mul nsw i32 %i.asr, %i.ata
  %i.atc = select i1 %i.aqo, i32 %i.atb, i32 0
  %i.atd = mul i32 %i.ass, %i.asl
  %i.ate = icmp slt i32 %i.asu, 1
  %i.atf = icmp slt i32 %i.ass, 1
  %i.atg = sub i32 %i.asd, %i.ass
  %i.ath = sub i32 %i.ash, %i.ass
  %i.ati = sub i32 %i.asq, %i.atd
  %i.atj = sub i32 %i.asw, %i.ass
  %i.atk = sub i32 %i.asg, %factor.op.mul2732
  %i.atl = sub i32 %i.ask, %factor.op.mul2733
  %i.atm = sub i32 %i.atc, %factor.op.mul2734
  %i.atn = sub i32 %i.asz, %factor.op.mul2735
  %i.ato = icmp slt i32 %i.ast, 1
  %or.cond2986.not3000 = or i1 %i.ate, %i.ato
  %brmerge2988 = or i1 %or.cond2986.not3000, %i.atf
  br i1 %brmerge2988, label %.loopexit2473, label %.preheader2462.us.us.us.us.us.preheader

.preheader2462.us.us.us.us.us.preheader:          ; preds = %.preheader2466.lr.ph
  %i.atp = sext i32 %i.asl to i64
  %i.atq = sext i32 %i.dh to i64                  ; 2 uses
  %i.atr = sext i32 %i.dv to i64
  %9 = zext nneg i32 %i.ea to i64                 ; 3 uses
  %invariant.gep2977 = getelementptr [8 x i8], ptr %i.be, i64 %9
  br label %.preheader2462.us.us.us.us.us

.preheader2462.us.us.us.us.us:                    ; preds = %.preheader2462.us.us.us.us.us.preheader, %._crit_edge2698.split.us.us.us.us.us.us
  %.721272718.us.us.us.us.us = phi i32 [ %i.beu, %._crit_edge2698.split.us.us.us.us.us.us ], [ 0, %.preheader2462.us.us.us.us.us.preheader ]
  %.92717.us.us.us.us.us = phi i32 [ %i.bes, %._crit_edge2698.split.us.us.us.us.us.us ], [ %i.ard, %.preheader2462.us.us.us.us.us.preheader ]
  %.922042716.us.us.us.us.us = phi i32 [ %i.bet, %._crit_edge2698.split.us.us.us.us.us.us ], [ %i.asc, %.preheader2462.us.us.us.us.us.preheader ]
  %.922162715.us.us.us.us.us = phi i32 [ %i.beq, %._crit_edge2698.split.us.us.us.us.us.us ], [ %i.apg, %.preheader2462.us.us.us.us.us.preheader ]
  %.922282714.us.us.us.us.us = phi i32 [ %i.ber, %._crit_edge2698.split.us.us.us.us.us.us ], [ %i.aqf, %.preheader2462.us.us.us.us.us.preheader ]
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge.us.us.us.us.us.us2752, %.preheader2462.us.us.us.us.us
  %.721192697.us.us.us.us.us.us = phi i32 [ 0, %.preheader2462.us.us.us.us.us ], [ %i.bep, %._crit_edge.us.us.us.us.us.us2752 ]
  %.102696.us.us.us.us.us.us = phi i32 [ %.92717.us.us.us.us.us, %.preheader2462.us.us.us.us.us ], [ %i.ben, %._crit_edge.us.us.us.us.us.us2752 ]
  %.1022052695.us.us.us.us.us.us = phi i32 [ %.922042716.us.us.us.us.us, %.preheader2462.us.us.us.us.us ], [ %i.beo, %._crit_edge.us.us.us.us.us.us2752 ]
  %.1022172694.us.us.us.us.us.us = phi i32 [ %.922162715.us.us.us.us.us, %.preheader2462.us.us.us.us.us ], [ %i.bel, %._crit_edge.us.us.us.us.us.us2752 ]
  %.1022292693.us.us.us.us.us.us = phi i32 [ %.922282714.us.us.us.us.us, %.preheader2462.us.us.us.us.us ], [ %i.bem, %._crit_edge.us.us.us.us.us.us2752 ]
  %i.ats = sext i32 %.102696.us.us.us.us.us.us to i64
  %i.att = sext i32 %.1022052695.us.us.us.us.us.us to i64
  %i.atu = sext i32 %.1022172694.us.us.us.us.us.us to i64
  %i.atv = sext i32 %.1022292693.us.us.us.us.us.us to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.preheader.us.us.us.us.us.us
  %indvars.iv2905 = phi i64 [ %indvars.iv.next2906, %bb.bd ], [ %i.atv, %.preheader.us.us.us.us.us.us ] ; 3 uses
  %indvars.iv2903 = phi i64 [ %indvars.iv.next2904, %bb.bd ], [ %i.atu, %.preheader.us.us.us.us.us.us ] ; 6 uses
  %indvars.iv2901 = phi i64 [ %indvars.iv.next2902, %bb.bd ], [ %i.att, %.preheader.us.us.us.us.us.us ] ; 15 uses
  %indvars.iv2899 = phi i64 [ %indvars.iv.next2900, %bb.bd ], [ %i.ats, %.preheader.us.us.us.us.us.us ] ; 22 uses
  %.72688.us.us.us.us.us.us = phi i32 [ %i.beg, %bb.bd ], [ 0, %.preheader.us.us.us.us.us.us ]
  %i.atw = sub nsw i64 %indvars.iv2899, %i.atq    ; 23 uses
  %i.atx = add nsw i64 %indvars.iv2899, %i.atq    ; 10 uses
  %i.aty = sub nsw i64 %indvars.iv2903, %i.atr    ; 3 uses
  %i.atz = sub nsw i64 %i.aty, %9
  %i.aua = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv2905 ; 14 uses
  %i.aub = load double, ptr %i.aua, align 8, !tbaa !35 ; 2 uses
  %i.auc = getelementptr inbounds [8 x i8], ptr %.121412396, i64 %i.atw ; 2 uses
  %i.aud = load double, ptr %i.auc, align 8, !tbaa !35
  %i.aue = fmul double %i.aub, %i.aud
  %i.auf = getelementptr [8 x i8], ptr %i.be, i64 %i.atz ; 3 uses
  %i.aug = getelementptr i8, ptr %i.auf, i64 -8
  %i.auh = load double, ptr %i.aug, align 8, !tbaa !35 ; 2 uses
  %i.aui = getelementptr inbounds [8 x i8], ptr %.12153, i64 %i.atw
  %i.auj = load double, ptr %i.aui, align 8, !tbaa !35
  %i.auk = fmul double %i.aub, %i.auj
  %i.aul = call double @llvm.fmuladd.f64(double %i.aue, double %i.auh, double %i.auk)
  %i.aum = getelementptr inbounds [8 x i8], ptr %.12153, i64 %indvars.iv2899 ; 2 uses
  %i.aun = load double, ptr %i.aum, align 8, !tbaa !35
  %i.auo = call double @llvm.fmuladd.f64(double %i.aun, double %i.auh, double %i.aul)
  %i.aup = getelementptr inbounds [8 x i8], ptr %.12180, i64 %indvars.iv2901
  store double %i.auo, ptr %i.aup, align 8, !tbaa !35
  %i.auq = load double, ptr %i.aua, align 8, !tbaa !35 ; 2 uses
  %i.aur = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.atw ; 2 uses
  %i.aus = load double, ptr %i.aur, align 8, !tbaa !35
  %i.aut = fmul double %i.auq, %i.aus
  %i.auu = load double, ptr %i.auf, align 8, !tbaa !35 ; 2 uses
  %i.auv = getelementptr inbounds [8 x i8], ptr %.1213723712391, i64 %i.atw
  %i.auw = load double, ptr %i.auv, align 8, !tbaa !35
  %i.aux = fmul double %i.auq, %i.auw
  %i.auy = call double @llvm.fmuladd.f64(double %i.aut, double %i.auu, double %i.aux)
  %i.auz = getelementptr inbounds [8 x i8], ptr %.1213723712391, i64 %indvars.iv2899 ; 2 uses
  %i.ava = load double, ptr %i.auz, align 8, !tbaa !35
  %i.avb = call double @llvm.fmuladd.f64(double %i.ava, double %i.auu, double %i.auy)
  %i.avc = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv2901
  store double %i.avb, ptr %i.avc, align 8, !tbaa !35
  %i.avd = load double, ptr %i.aua, align 8, !tbaa !35 ; 2 uses
  %i.ave = getelementptr inbounds [8 x i8], ptr %.121432395, i64 %i.atw ; 2 uses
  %i.avf = load double, ptr %i.ave, align 8, !tbaa !35
  %i.avg = fmul double %i.avd, %i.avf
  %i.avh = getelementptr i8, ptr %i.auf, i64 8
  %i.avi = load double, ptr %i.avh, align 8, !tbaa !35 ; 2 uses
  %i.avj = getelementptr inbounds [8 x i8], ptr %.12155, i64 %i.atw
  %i.avk = load double, ptr %i.avj, align 8, !tbaa !35
  %i.avl = fmul double %i.avd, %i.avk
  %i.avm = call double @llvm.fmuladd.f64(double %i.avg, double %i.avi, double %i.avl)
  %i.avn = getelementptr inbounds [8 x i8], ptr %.12155, i64 %indvars.iv2899 ; 2 uses
  %i.avo = load double, ptr %i.avn, align 8, !tbaa !35
  %i.avp = call double @llvm.fmuladd.f64(double %i.avo, double %i.avi, double %i.avm)
  %i.avq = getelementptr inbounds [8 x i8], ptr %.12182, i64 %indvars.iv2901
  store double %i.avp, ptr %i.avq, align 8, !tbaa !35
  %i.avr = load double, ptr %i.aua, align 8, !tbaa !35 ; 2 uses
  %i.avs = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.atw ; 2 uses
  %i.avt = load double, ptr %i.avs, align 8, !tbaa !35
  %i.avu = fmul double %i.avr, %i.avt
  %i.avv = getelementptr [8 x i8], ptr %i.be, i64 %i.aty ; 3 uses
  %i.avw = getelementptr i8, ptr %i.avv, i64 -8
  %i.avx = load double, ptr %i.avw, align 8, !tbaa !35 ; 2 uses
  %i.avy = getelementptr inbounds [8 x i8], ptr %.1213323732389, i64 %i.atw
  %i.avz = load double, ptr %i.avy, align 8, !tbaa !35
  %i.awa = fmul double %i.avr, %i.avz
  %i.awb = call double @llvm.fmuladd.f64(double %i.avu, double %i.avx, double %i.awa)
  %i.awc = getelementptr inbounds [8 x i8], ptr %.1213323732389, i64 %indvars.iv2899 ; 2 uses
  %i.awd = load double, ptr %i.awc, align 8, !tbaa !35
  %i.awe = call double @llvm.fmuladd.f64(double %i.awd, double %i.avx, double %i.awb)
  %i.awf = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv2901
  store double %i.awe, ptr %i.awf, align 8, !tbaa !35
  %i.awg = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv2899 ; 2 uses
  %i.awh = load double, ptr %i.awg, align 8, !tbaa !35
  %i.awi = load double, ptr %i.avv, align 8, !tbaa !35 ; 2 uses
  %i.awj = load double, ptr %i.aua, align 8, !tbaa !35 ; 2 uses
  %i.awk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.atw ; 2 uses
  %i.awl = load double, ptr %i.awk, align 8, !tbaa !35
  %i.awm = fmul double %i.awj, %i.awl
  %i.awn = fmul double %i.awi, %i.awm
  %i.awo = call double @llvm.fmuladd.f64(double %i.awh, double %i.awi, double %i.awn)
  %i.awp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.atw
  %i.awq = load double, ptr %i.awp, align 8, !tbaa !35
  %i.awr = call double @llvm.fmuladd.f64(double %i.awj, double %i.awq, double %i.awo)
  %i.aws = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2901
  store double %i.awr, ptr %i.aws, align 8, !tbaa !35
  %i.awt = load double, ptr %i.aua, align 8, !tbaa !35 ; 2 uses
  %i.awu = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.atw
  %i.awv = load double, ptr %i.awu, align 8, !tbaa !35
  %i.aww = fmul double %i.awt, %i.awv
  %i.awx = getelementptr i8, ptr %i.avv, i64 8
  %i.awy = load double, ptr %i.awx, align 8, !tbaa !35 ; 2 uses
  %i.awz = getelementptr inbounds [8 x i8], ptr %.1213523722390, i64 %i.atw
  %i.axa = load double, ptr %i.awz, align 8, !tbaa !35
  %i.axb = fmul double %i.awt, %i.axa
  %i.axc = call double @llvm.fmuladd.f64(double %i.aww, double %i.awy, double %i.axb)
  %i.axd = getelementptr inbounds [8 x i8], ptr %.1213523722390, i64 %indvars.iv2899
  %i.axe = load double, ptr %i.axd, align 8, !tbaa !35
  %i.axf = call double @llvm.fmuladd.f64(double %i.axe, double %i.awy, double %i.axc)
  %i.axg = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv2901
  store double %i.axf, ptr %i.axg, align 8, !tbaa !35
  %i.axh = load double, ptr %i.aua, align 8, !tbaa !35 ; 2 uses
  %i.axi = getelementptr inbounds [8 x i8], ptr %.121452394, i64 %i.atw
  %i.axj = load double, ptr %i.axi, align 8, !tbaa !35
  %i.axk = fmul double %i.axh, %i.axj
  %gep2978 = getelementptr [8 x i8], ptr %invariant.gep2977, i64 %i.aty ; 3 uses
  %i.axl = getelementptr i8, ptr %gep2978, i64 -8
  %i.axm = load double, ptr %i.axl, align 8, !tbaa !35 ; 2 uses
  %i.axn = getelementptr inbounds [8 x i8], ptr %.12169, i64 %i.atw
  %i.axo = load double, ptr %i.axn, align 8, !tbaa !35
  %i.axp = fmul double %i.axh, %i.axo
  %i.axq = call double @llvm.fmuladd.f64(double %i.axk, double %i.axm, double %i.axp)
  %i.axr = getelementptr inbounds [8 x i8], ptr %.12169, i64 %indvars.iv2899
  %i.axs = load double, ptr %i.axr, align 8, !tbaa !35
  %i.axt = call double @llvm.fmuladd.f64(double %i.axs, double %i.axm, double %i.axq)
  %i.axu = getelementptr inbounds [8 x i8], ptr %.12184, i64 %indvars.iv2901
  store double %i.axt, ptr %i.axu, align 8, !tbaa !35
  %i.axv = load double, ptr %i.aua, align 8, !tbaa !35 ; 2 uses
  %i.axw = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.atw
  %i.axx = load double, ptr %i.axw, align 8, !tbaa !35
  %i.axy = fmul double %i.axv, %i.axx
  %i.axz = load double, ptr %gep2978, align 8, !tbaa !35 ; 2 uses
  %i.aya = getelementptr inbounds [8 x i8], ptr %.1213923702392, i64 %i.atw
  %i.ayb = load double, ptr %i.aya, align 8, !tbaa !35
  %i.ayc = fmul double %i.axv, %i.ayb
  %i.ayd = call double @llvm.fmuladd.f64(double %i.axy, double %i.axz, double %i.ayc)
  %i.aye = getelementptr inbounds [8 x i8], ptr %.1213923702392, i64 %indvars.iv2899
  %i.ayf = load double, ptr %i.aye, align 8, !tbaa !35
  %i.ayg = call double @llvm.fmuladd.f64(double %i.ayf, double %i.axz, double %i.ayd)
  %i.ayh = getelementptr inbounds [8 x i8], ptr %i.co, i64 %indvars.iv2901
  store double %i.ayg, ptr %i.ayh, align 8, !tbaa !35
  %i.ayi = load double, ptr %i.aua, align 8, !tbaa !35 ; 2 uses
  %i.ayj = getelementptr inbounds [8 x i8], ptr %.121472393, i64 %i.atw
  %i.ayk = load double, ptr %i.ayj, align 8, !tbaa !35
  %i.ayl = fmul double %i.ayi, %i.ayk
  %i.aym = getelementptr i8, ptr %gep2978, i64 8
  %i.ayn = load double, ptr %i.aym, align 8, !tbaa !35 ; 2 uses
  %i.ayo = getelementptr inbounds [8 x i8], ptr %.12171, i64 %i.atw
  %i.ayp = load double, ptr %i.ayo, align 8, !tbaa !35
  %i.ayq = fmul double %i.ayi, %i.ayp
  %i.ayr = call double @llvm.fmuladd.f64(double %i.ayl, double %i.ayn, double %i.ayq)
  %i.ays = getelementptr inbounds [8 x i8], ptr %.12171, i64 %indvars.iv2899
  %i.ayt = load double, ptr %i.ays, align 8, !tbaa !35
  %i.ayu = call double @llvm.fmuladd.f64(double %i.ayt, double %i.ayn, double %i.ayr)
  %i.ayv = getelementptr inbounds [8 x i8], ptr %.12186, i64 %indvars.iv2901
  store double %i.ayu, ptr %i.ayv, align 8, !tbaa !35
  %i.ayw = sub nsw i64 %indvars.iv2903, %9        ; 4 uses
  %i.ayx = add nsw i64 %i.ayw, -1                 ; 2 uses
  %i.ayy = getelementptr inbounds [8 x i8], ptr %.121412396, i64 %indvars.iv2899
  %i.ayz = load double, ptr %i.ayy, align 8, !tbaa !35
  %i.aza = load double, ptr %i.aua, align 8, !tbaa !35 ; 2 uses
  %i.azb = load double, ptr %i.auc, align 8, !tbaa !35
  %i.azc = fmul double %i.aza, %i.azb
  %i.azd = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.ayx
  %i.aze = load double, ptr %i.azd, align 8, !tbaa !35 ; 2 uses
  %i.azf = call double @llvm.fmuladd.f64(double %i.azc, double %i.aze, double %i.ayz)
  %i.azg = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2905 ; 5 uses
  %i.azh = load double, ptr %i.azg, align 8, !tbaa !35 ; 2 uses
  %i.azi = getelementptr inbounds [8 x i8], ptr %.121412396, i64 %i.atx
  %i.azj = load double, ptr %i.azi, align 8, !tbaa !35
  %i.azk = fmul double %i.azh, %i.azj
  %i.azl = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ayx
  %i.azm = load double, ptr %i.azl, align 8, !tbaa !35 ; 2 uses
  %i.azn = call double @llvm.fmuladd.f64(double %i.azk, double %i.azm, double %i.azf)
  %i.azo = load double, ptr %i.aum, align 8, !tbaa !35
  %i.azp = call double @llvm.fmuladd.f64(double %i.azo, double %i.aze, double %i.azn)
  %i.azq = getelementptr inbounds [8 x i8], ptr %.12149, i64 %indvars.iv2899
  %i.azr = load double, ptr %i.azq, align 8, !tbaa !35
  %i.azs = call double @llvm.fmuladd.f64(double %i.azr, double %i.azm, double %i.azp)
  %i.azt = getelementptr inbounds [8 x i8], ptr %.12149, i64 %i.atw
  %i.azu = load double, ptr %i.azt, align 8, !tbaa !35
  %i.azv = call double @llvm.fmuladd.f64(double %i.aza, double %i.azu, double %i.azs)
  %i.azw = getelementptr inbounds [8 x i8], ptr %.12153, i64 %i.atx
  %i.azx = load double, ptr %i.azw, align 8, !tbaa !35
  %i.azy = call double @llvm.fmuladd.f64(double %i.azh, double %i.azx, double %i.azv)
  %i.azz = getelementptr inbounds [8 x i8], ptr %.12173, i64 %indvars.iv2901
  store double %i.azy, ptr %i.azz, align 8, !tbaa !35
end_hunk_2
begin_hunk_3_@hypre_SMG3BuildRAPNoSym:bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.bg = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %2, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.bh = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %2, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bi = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bj = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bk = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 12 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bl = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bm = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 12 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.bn = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 8 uses
  br i1 %i.aa, label %bb.d, label %.thread2244

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.bo = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 3 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.bp = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.bq = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.br = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 3 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.bs = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.bt = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 3 uses
  br i1 %i.ab, label %bb.e, label %.thread2244

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bu = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bv = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 2 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bw = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bx = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5 ; 2 uses
  br i1 %i.ac, label %bb.f, label %.thread2244

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.by = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.bz = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.ca = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.cb = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.cc = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %i.cd = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.a) #5
  br label %.thread2244

.thread2244:                                      ; preds = %bb.c, %bb.d, %bb.f, %bb.e
  %.120092264 = phi ptr [ %i.bu, %bb.f ], [ %i.bu, %bb.e ], [ %.020082637, %bb.d ], [ %.020082637, %bb.c ] ; 3 uses
  %.120112263 = phi ptr [ %i.bv, %bb.f ], [ %i.bv, %bb.e ], [ %.020102636, %bb.d ], [ %.020102636, %bb.c ] ; 3 uses
  %.120132262 = phi ptr [ %i.bw, %bb.f ], [ %i.bw, %bb.e ], [ %.020122635, %bb.d ], [ %.020122635, %bb.c ] ; 7 uses
  %.120152261 = phi ptr [ %i.bx, %bb.f ], [ %i.bx, %bb.e ], [ %.020142634, %bb.d ], [ %.020142634, %bb.c ] ; 7 uses
  %.1200722382260 = phi ptr [ %i.bt, %bb.f ], [ %i.bt, %bb.e ], [ %i.bt, %bb.d ], [ %.020062638, %bb.c ] ; 7 uses
  %.1200522392259 = phi ptr [ %i.bs, %bb.f ], [ %i.bs, %bb.e ], [ %i.bs, %bb.d ], [ %.020042639, %bb.c ] ; 7 uses
  %.1200322402258 = phi ptr [ %i.br, %bb.f ], [ %i.br, %bb.e ], [ %i.br, %bb.d ], [ %.020022640, %bb.c ] ; 10 uses
  %.1200122412257 = phi ptr [ %i.bq, %bb.f ], [ %i.bq, %bb.e ], [ %i.bq, %bb.d ], [ %.020002641, %bb.c ] ; 7 uses
  %.1199922422256 = phi ptr [ %i.bp, %bb.f ], [ %i.bp, %bb.e ], [ %i.bp, %bb.d ], [ %.019982642, %bb.c ] ; 10 uses
  %.1199722432255 = phi ptr [ %i.bo, %bb.f ], [ %i.bo, %bb.e ], [ %i.bo, %bb.d ], [ %.019962643, %bb.c ] ; 7 uses
  %i.ce = phi i1 [ true, %bb.f ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.12039 = phi ptr [ %i.cd, %bb.f ], [ %.020382628, %bb.e ], [ %.020382628, %bb.d ], [ %.020382628, %bb.c ] ; 3 uses
  %.12037 = phi ptr [ %i.cc, %bb.f ], [ %.020362629, %bb.e ], [ %.020362629, %bb.d ], [ %.020362629, %bb.c ] ; 3 uses
  %.12023 = phi ptr [ %i.cb, %bb.f ], [ %.020222630, %bb.e ], [ %.020222630, %bb.d ], [ %.020222630, %bb.c ] ; 4 uses
  %.12021 = phi ptr [ %i.ca, %bb.f ], [ %.020202631, %bb.e ], [ %.020202631, %bb.d ], [ %.020202631, %bb.c ] ; 4 uses
  %.12019 = phi ptr [ %i.bz, %bb.f ], [ %.020182632, %bb.e ], [ %.020182632, %bb.d ], [ %.020182632, %bb.c ] ; 3 uses
  %.12017 = phi ptr [ %i.by, %bb.f ], [ %.020162633, %bb.e ], [ %.020162633, %bb.d ], [ %.020162633, %bb.c ] ; 3 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.cf = trunc nuw nsw i64 %indvars.iv2785 to i32 ; 13 uses
  %i.cg = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.ch = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.ci = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.cj = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.ck = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.cl = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.cm = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5 ; 4 uses
  br i1 %i.ce, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread2244
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.cn = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.co = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.cp = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.cq = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.cr = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.cs = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.cf, ptr noundef nonnull %i.a) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread2244
  %.12054 = phi ptr [ %i.cs, %bb.g ], [ %.020532622, %.thread2244 ] ; 3 uses
  %.12052 = phi ptr [ %i.cr, %bb.g ], [ %.020512623, %.thread2244 ] ; 3 uses
  %.12050 = phi ptr [ %i.cq, %bb.g ], [ %.020492624, %.thread2244 ] ; 3 uses
  %.12048 = phi ptr [ %i.cp, %bb.g ], [ %.020472625, %.thread2244 ] ; 3 uses
  %.12046 = phi ptr [ %i.co, %bb.g ], [ %.020452626, %.thread2244 ] ; 3 uses
  %.12041 = phi ptr [ %i.cn, %bb.g ], [ %.020402627, %.thread2244 ] ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 5 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 5 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = sub nsw i32 %i.cv, %i.cx
  %i.cz = call i32 @llvm.smax.i32(i32 %i.cy, i32 -1)
  %spec.select = add nsw i32 %i.cz, 1
  %i.da = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.db = load i32, ptr %i.au, align 4, !tbaa !4
  %i.dc = sub nsw i32 %i.da, %i.db                ; 2 uses
  %i.dd = add nuw nsw i32 %i.dc, 1
  %i.de = mul nsw i32 %i.dd, %spec.select
  %.inv = icmp slt i32 %i.dc, 0
  %i.df = select i1 %.inv, i32 0, i32 %i.de       ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = sub nsw i32 %i.di, %i.dk
  %i.dm = call i32 @llvm.smax.i32(i32 %i.dl, i32 -1)
  %i.dn = add nsw i32 %i.dm, 1
  %i.do = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.dp = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.dq = sub nsw i32 %i.do, %i.dp                ; 2 uses
  %i.dr = add nuw nsw i32 %i.dq, 1
  %i.ds = mul nsw i32 %i.dr, %i.dn
  %.inv2270 = icmp slt i32 %i.dq, 0
  %i.dt = select i1 %.inv2270, i32 0, i32 %i.ds   ; 4 uses
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.du = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.dv = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.dw = sub nsw i32 %i.du, %i.dv
  %i.dx = call i32 @llvm.smax.i32(i32 %i.dw, i32 -1) ; 3 uses
  %i.dy = add nsw i32 %i.dx, 1                    ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.dz = call i32 @hypre_BoxGetSize(ptr noundef %i.aq, ptr noundef nonnull %i.c) #5 ; 0 uses
  %i.ea = load i32, ptr %i.aq, align 4, !tbaa !4  ; 9 uses
  %i.eb = load i32, ptr %i.ax, align 4, !tbaa !4  ; 5 uses
  %i.ec = sub i32 %i.ea, %i.eb                    ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !4  ; 9 uses
  %i.ef = load i32, ptr %i.dj, align 4, !tbaa !4  ; 2 uses
  %i.eg = sub i32 %i.ee, %i.ef                    ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 12 uses
  %i.ei = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.ej = sub nsw i32 %i.ei, %i.ef                ; 9 uses
  %i.ek = icmp sgt i32 %i.ej, -1                  ; 8 uses
  switch i32 %i.g, label %bb.as [
    i32 7, label %bb.i
    i32 15, label %bb.u
    i32 19, label %bb.ag
  ]

bb.i:                                             ; preds = %bb.h
  br i1 %i.ek, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.el = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !4
  %i.eo = sub nsw i32 %i.el, %i.en
  %i.ep = add nuw nsw i32 %i.ej, 1
  %i.eq = mul nsw i32 %i.eo, %i.ep
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.er = phi i32 [ %i.eq, %bb.j ], [ 0, %bb.i ]
  %i.es = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.et = sub i32 %i.es, %i.eb                    ; 2 uses
  %i.eu = icmp sgt i32 %i.et, -1                  ; 2 uses
  %i.ev = add nsw i32 %i.eg, %i.er
  %i.ew = add i32 %i.et, 1                        ; 2 uses
  %i.ex = mul nsw i32 %i.ew, %i.ev
  %i.ey = select i1 %i.eu, i32 %i.ex, i32 0
  %i.ez = add nsw i32 %i.ec, %i.ey
  %i.fa = load i32, ptr %i.ba, align 4, !tbaa !4  ; 2 uses
  %i.fb = sub i32 %i.ea, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4  ; 2 uses
  %i.fe = sub i32 %i.ee, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !4
  %i.fi = sub nsw i32 %i.fh, %i.fd                ; 3 uses
  %i.fj = icmp sgt i32 %i.fi, -1                  ; 2 uses
  br i1 %i.fj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fk = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = sub nsw i32 %i.fk, %i.fm
  %i.fo = add nuw nsw i32 %i.fi, 1
  %i.fp = mul nsw i32 %i.fn, %i.fo
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.fq = phi i32 [ %i.fp, %bb.l ], [ 0, %bb.k ]
  %i.fr = load i32, ptr %i.ff, align 4, !tbaa !4
  %i.fs = sub i32 %i.fr, %i.fa                    ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, -1                  ; 2 uses
  %i.fu = add nsw i32 %i.fe, %i.fq
  %i.fv = add i32 %i.fs, 1                        ; 2 uses
  %i.fw = mul nsw i32 %i.fv, %i.fu
  %i.fx = select i1 %i.ft, i32 %i.fw, i32 0
  %i.fy = add nsw i32 %i.fb, %i.fx
  %i.fz = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ga = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.gb = sub i32 %i.fz, %i.ga
  %i.gc = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.gd = load i32, ptr %i.cw, align 4, !tbaa !4  ; 2 uses
  %i.ge = sub i32 %i.gc, %i.gd
  %i.gf = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.gg = sub nsw i32 %i.gf, %i.gd                ; 3 uses
  %i.gh = icmp sgt i32 %i.gg, -1                  ; 2 uses
  br i1 %i.gh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gi = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.gl = sub nsw i32 %i.gi, %i.gk
  %i.gm = add nuw nsw i32 %i.gg, 1
  %i.gn = mul nsw i32 %i.gl, %i.gm
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.go = phi i32 [ %i.gn, %bb.n ], [ 0, %bb.m ]
  %i.gp = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.gq = sub nsw i32 %i.gp, %i.ga                ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, -1                  ; 2 uses
  %i.gs = add nsw i32 %i.ge, %i.go
  %i.gt = add nuw nsw i32 %i.gq, 1                ; 3 uses
  %i.gu = mul nsw i32 %i.gt, %i.gs
  %i.gv = select i1 %i.gr, i32 %i.gu, i32 0
  %i.gw = add nsw i32 %i.gb, %i.gv
  %i.gx = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.gy = sub i32 %i.ea, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4  ; 2 uses
  %i.hb = sub i32 %i.ee, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !4
  %i.hf = sub nsw i32 %i.he, %i.ha                ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, -1                  ; 2 uses
  br i1 %i.hg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hh = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !4
  %i.hk = sub nsw i32 %i.hh, %i.hj
  %i.hl = add nuw nsw i32 %i.hf, 1
  %i.hm = mul nsw i32 %i.hk, %i.hl
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.hn = phi i32 [ %i.hm, %bb.p ], [ 0, %bb.o ]
  %i.ho = load i32, ptr %i.hc, align 4, !tbaa !4
  %i.hp = sub i32 %i.ho, %i.gx                    ; 2 uses
  %i.hq = icmp sgt i32 %i.hp, -1                  ; 2 uses
  %i.hr = add nsw i32 %i.hb, %i.hn
  %i.hs = add i32 %i.hp, 1                        ; 2 uses
  %i.ht = mul nsw i32 %i.hs, %i.hr
  %i.hu = select i1 %i.hq, i32 %i.ht, i32 0
  %i.hv = add nsw i32 %i.gy, %i.hu
  %i.hw = select i1 %i.eu, i32 %i.ew, i32 0       ; 3 uses
  %i.hx = add nuw nsw i32 %i.ej, 1
  %i.hy = mul nsw i32 %i.hw, %i.hx
  %i.hz = select i1 %i.ek, i32 %i.hy, i32 0
  %i.ia = select i1 %i.ft, i32 %i.fv, i32 0       ; 3 uses
  %i.ib = add nuw nsw i32 %i.fi, 1
  %i.ic = mul nsw i32 %i.ia, %i.ib
  %i.id = select i1 %i.fj, i32 %i.ic, i32 0
  %i.ie = load i32, ptr %5, align 4, !tbaa !4     ; 2 uses
  br i1 %i.gr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.if = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ig = mul nsw i32 %i.if, %i.gt
  %i.ih = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ii = mul nsw i32 %i.ih, %i.gt
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ij = phi i32 [ %i.ig, %bb.r ], [ 0, %bb.q ]  ; 2 uses
  %i.ik = phi i32 [ %i.ii, %bb.r ], [ 0, %bb.q ]
  %i.il = load i32, ptr %i.c, align 4, !tbaa !4   ; 7 uses
  %i.im = load i32, ptr %i.ah, align 4, !tbaa !4  ; 7 uses
  %i.in = load i32, ptr %i.ai, align 4, !tbaa !4  ; 3 uses
  %.02116 = call i32 @llvm.smax.i32(i32 %i.im, i32 %i.il)
  %.12117 = call i32 @llvm.smax.i32(i32 %i.in, i32 %.02116)
  %i.io = icmp sgt i32 %.12117, 0
  br i1 %i.io, label %.preheader2335.lr.ph, label %.loopexit2341

.preheader2335.lr.ph:                             ; preds = %bb.s
  %i.ip = select i1 %i.hq, i32 %i.hs, i32 0       ; 3 uses
  %factor.op.mul2533 = mul i32 %i.im, %i.ip
  %factor.op.mul2532 = mul i32 %i.im, %i.ij
  %factor.op.mul2531 = mul i32 %i.im, %i.ia
  %factor.op.mul2530 = mul i32 %i.im, %i.hw
  %i.iq = add nuw nsw i32 %i.hf, 1
  %i.ir = mul nsw i32 %i.ip, %i.iq
  %i.is = select i1 %i.hg, i32 %i.ir, i32 0
  %i.it = add nuw nsw i32 %i.gg, 1
  %i.iu = mul nsw i32 %i.ik, %i.it
  %i.iv = select i1 %i.gh, i32 %i.iu, i32 0
  %i.iw = mul i32 %i.il, %i.ie
  %i.ix = icmp slt i32 %i.in, 1
  %i.iy = icmp slt i32 %i.il, 1
  %i.iz = sub i32 %i.hw, %i.il
  %i.ja = sub i32 %i.ia, %i.il
  %i.jb = sub i32 %i.ij, %i.iw
  %i.jc = sub i32 %i.ip, %i.il
  %i.jd = sub i32 %i.hz, %factor.op.mul2530
  %i.je = sub i32 %i.id, %factor.op.mul2531
  %i.jf = sub i32 %i.iv, %factor.op.mul2532
  %i.jg = sub i32 %i.is, %factor.op.mul2533
  %i.jh = icmp slt i32 %i.im, 1
  %or.cond.not2865 = or i1 %i.ix, %i.jh
  %brmerge = or i1 %or.cond.not2865, %i.iy
  br i1 %brmerge, label %.loopexit2341, label %.preheader2331.us.us.us.us.us.preheader

.preheader2331.us.us.us.us.us.preheader:          ; preds = %.preheader2335.lr.ph
  %i.ji = sext i32 %i.ie to i64
  %i.jj = sext i32 %i.df to i64                   ; 2 uses
  %i.jk = sext i32 %i.dt to i64
  %6 = zext nneg i32 %i.dy to i64                 ; 3 uses
  %invariant.gep2843 = getelementptr [8 x i8], ptr %i.bf, i64 %6
  br label %.preheader2331.us.us.us.us.us

.preheader2331.us.us.us.us.us:                    ; preds = %.preheader2331.us.us.us.us.us.preheader, %._crit_edge2496.split.us.us.us.us.us.us
  %.119892516.us.us.us.us.us = phi i32 [ %i.nj, %._crit_edge2496.split.us.us.us.us.us.us ], [ 0, %.preheader2331.us.us.us.us.us.preheader ]
  %.020552515.us.us.us.us.us = phi i32 [ %i.nh, %._crit_edge2496.split.us.us.us.us.us.us ], [ %i.gw, %.preheader2331.us.us.us.us.us.preheader ]
  %.020632514.us.us.us.us.us = phi i32 [ %i.ni, %._crit_edge2496.split.us.us.us.us.us.us ], [ %i.hv, %.preheader2331.us.us.us.us.us.preheader ]
  %.020752513.us.us.us.us.us = phi i32 [ %i.nf, %._crit_edge2496.split.us.us.us.us.us.us ], [ %i.ez, %.preheader2331.us.us.us.us.us.preheader ]
  %.020872512.us.us.us.us.us = phi i32 [ %i.ng, %._crit_edge2496.split.us.us.us.us.us.us ], [ %i.fy, %.preheader2331.us.us.us.us.us.preheader ]
  br label %.preheader2327.us.us.us.us.us.us

.preheader2327.us.us.us.us.us.us:                 ; preds = %._crit_edge.us.us.us.us.us.us2550, %.preheader2331.us.us.us.us.us
  %.119812495.us.us.us.us.us.us = phi i32 [ 0, %.preheader2331.us.us.us.us.us ], [ %i.ne, %._crit_edge.us.us.us.us.us.us2550 ]
  %.120562494.us.us.us.us.us.us = phi i32 [ %.020552515.us.us.us.us.us, %.preheader2331.us.us.us.us.us ], [ %i.nc, %._crit_edge.us.us.us.us.us.us2550 ]
  %.120642493.us.us.us.us.us.us = phi i32 [ %.020632514.us.us.us.us.us, %.preheader2331.us.us.us.us.us ], [ %i.nd, %._crit_edge.us.us.us.us.us.us2550 ]
  %.120762492.us.us.us.us.us.us = phi i32 [ %.020752513.us.us.us.us.us, %.preheader2331.us.us.us.us.us ], [ %i.na, %._crit_edge.us.us.us.us.us.us2550 ]
  %.120882491.us.us.us.us.us.us = phi i32 [ %.020872512.us.us.us.us.us, %.preheader2331.us.us.us.us.us ], [ %i.nb, %._crit_edge.us.us.us.us.us.us2550 ]
  %i.jl = sext i32 %.120562494.us.us.us.us.us.us to i64
  %i.jm = sext i32 %.120642493.us.us.us.us.us.us to i64
  %i.jn = sext i32 %.120762492.us.us.us.us.us.us to i64
  %i.jo = sext i32 %.120882491.us.us.us.us.us.us to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader2327.us.us.us.us.us.us
  %indvars.iv2753 = phi i64 [ %indvars.iv.next2754, %bb.t ], [ %i.jo, %.preheader2327.us.us.us.us.us.us ] ; 3 uses
  %indvars.iv2751 = phi i64 [ %indvars.iv.next2752, %bb.t ], [ %i.jn, %.preheader2327.us.us.us.us.us.us ] ; 3 uses
  %indvars.iv2749 = phi i64 [ %indvars.iv.next2750, %bb.t ], [ %i.jm, %.preheader2327.us.us.us.us.us.us ] ; 8 uses
  %indvars.iv2747 = phi i64 [ %indvars.iv.next2748, %bb.t ], [ %i.jl, %.preheader2327.us.us.us.us.us.us ] ; 6 uses
  %.119752486.us.us.us.us.us.us = phi i32 [ %i.mv, %bb.t ], [ 0, %.preheader2327.us.us.us.us.us.us ]
  %i.jp = sub nsw i64 %indvars.iv2747, %i.jj      ; 2 uses
  %i.jq = add nsw i64 %indvars.iv2747, %i.jj      ; 6 uses
  %i.jr = add nsw i64 %indvars.iv2751, %i.jk      ; 3 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2753 ; 7 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !35
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.jq ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !35
  %i.jw = fmul double %i.jt, %i.jv
  %gep2844 = getelementptr [8 x i8], ptr %invariant.gep2843, i64 %i.jr
  %i.jx = load double, ptr %gep2844, align 8, !tbaa !35
  %i.jy = fmul double %i.jw, %i.jx
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv2749
  store double %i.jy, ptr %i.jz, align 8, !tbaa !35
  %i.ka = load double, ptr %i.js, align 8, !tbaa !35
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.jq ; 2 uses
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !35
  %i.kd = fmul double %i.ka, %i.kc
  %i.ke = getelementptr [8 x i8], ptr %i.bf, i64 %i.jr ; 3 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 8
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !35
  %i.kh = fmul double %i.kd, %i.kg
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2749
  store double %i.kh, ptr %i.ki, align 8, !tbaa !35
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv2747
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !35
  %i.kl = load double, ptr %i.ke, align 8, !tbaa !35 ; 2 uses
  %i.km = load double, ptr %i.js, align 8, !tbaa !35 ; 2 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.jq
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !35
  %i.kp = fmul double %i.km, %i.ko
  %i.kq = fmul double %i.kl, %i.kp
  %i.kr = call double @llvm.fmuladd.f64(double %i.kk, double %i.kl, double %i.kq)
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.jq
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !35
  %i.ku = call double @llvm.fmuladd.f64(double %i.km, double %i.kt, double %i.kr)
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv2749
  store double %i.ku, ptr %i.kv, align 8, !tbaa !35
  %i.kw = load double, ptr %i.js, align 8, !tbaa !35
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.jq
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !35
  %i.kz = fmul double %i.kw, %i.ky
  %i.la = getelementptr i8, ptr %i.ke, i64 -8
  %i.lb = load double, ptr %i.la, align 8, !tbaa !35
  %i.lc = fmul double %i.kz, %i.lb
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv2749
  store double %i.lc, ptr %i.ld, align 8, !tbaa !35
  %i.le = sub nsw i64 %i.jr, %6
  %i.lf = load double, ptr %i.js, align 8, !tbaa !35
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.jq
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !35
  %i.li = fmul double %i.lf, %i.lh
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.le
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !35
  %i.ll = fmul double %i.li, %i.lk
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv2749
  store double %i.ll, ptr %i.lm, align 8, !tbaa !35
  %i.ln = add nsw i64 %indvars.iv2751, %6         ; 2 uses
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv2747
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !35
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv2753 ; 2 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !35
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.jp
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !35
  %i.lu = fmul double %i.lr, %i.lt
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.ln
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !35
  %i.lx = call double @llvm.fmuladd.f64(double %i.lu, double %i.lw, double %i.lp)
  %i.ly = load double, ptr %i.js, align 8, !tbaa !35
  %i.lz = load double, ptr %i.ju, align 8, !tbaa !35
  %i.ma = fmul double %i.ly, %i.lz
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ln
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !35
  %i.md = call double @llvm.fmuladd.f64(double %i.ma, double %i.mc, double %i.lx)
  %i.me = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2749
  store double %i.md, ptr %i.me, align 8, !tbaa !35
  %indvars.iv.next2752 = add nsw i64 %indvars.iv2751, 1 ; 4 uses
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv2747
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !35
  %i.mh = load double, ptr %i.lq, align 8, !tbaa !35
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.jp
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !35
  %i.mk = fmul double %i.mh, %i.mj
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv.next2752
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !35
  %i.mn = call double @llvm.fmuladd.f64(double %i.mk, double %i.mm, double %i.mg)
  %i.mo = load double, ptr %i.js, align 8, !tbaa !35
  %i.mp = load double, ptr %i.kb, align 8, !tbaa !35
  %i.mq = fmul double %i.mo, %i.mp
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next2752
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !35
  %i.mt = call double @llvm.fmuladd.f64(double %i.mq, double %i.ms, double %i.mn)
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv2749
  store double %i.mt, ptr %i.mu, align 8, !tbaa !35
  %indvars.iv.next2754 = add nsw i64 %indvars.iv2753, 1 ; 2 uses
  %indvars.iv.next2748 = add nsw i64 %indvars.iv2747, %i.ji ; 2 uses
  %indvars.iv.next2750 = add nsw i64 %indvars.iv2749, 1 ; 2 uses
  %i.mv = add nuw nsw i32 %.119752486.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2762.not = icmp eq i32 %i.mv, %i.il
  br i1 %exitcond2762.not, label %._crit_edge.us.us.us.us.us.us2550, label %bb.t, !llvm.loop !51

._crit_edge.us.us.us.us.us.us2550:                ; preds = %bb.t
  %i.mw = trunc nsw i64 %indvars.iv.next2754 to i32
  %i.mx = trunc nsw i64 %indvars.iv.next2752 to i32
  %i.my = trunc nsw i64 %indvars.iv.next2750 to i32
  %i.mz = trunc nsw i64 %indvars.iv.next2748 to i32
  %i.na = add nsw i32 %i.iz, %i.mx                ; 2 uses
  %i.nb = add nsw i32 %i.ja, %i.mw                ; 2 uses
  %i.nc = add nsw i32 %i.jb, %i.mz                ; 2 uses
  %i.nd = add nsw i32 %i.jc, %i.my                ; 2 uses
  %i.ne = add nuw nsw i32 %.119812495.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2763.not = icmp eq i32 %i.ne, %i.im
  br i1 %exitcond2763.not, label %._crit_edge2496.split.us.us.us.us.us.us, label %.preheader2327.us.us.us.us.us.us, !llvm.loop !52

._crit_edge2496.split.us.us.us.us.us.us:          ; preds = %._crit_edge.us.us.us.us.us.us2550
  %i.nf = add nsw i32 %i.jd, %i.na
  %i.ng = add nsw i32 %i.je, %i.nb
  %i.nh = add nsw i32 %i.jf, %i.nc
  %i.ni = add nsw i32 %i.jg, %i.nd
  %i.nj = add nuw nsw i32 %.119892516.us.us.us.us.us, 1 ; 2 uses
  %exitcond2764.not = icmp eq i32 %i.nj, %i.in
  br i1 %exitcond2764.not, label %.loopexit2341, label %.preheader2331.us.us.us.us.us, !llvm.loop !53

bb.u:                                             ; preds = %bb.h
  br i1 %i.ek, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.nk = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !4
  %i.nn = sub nsw i32 %i.nk, %i.nm
  %i.no = add nuw nsw i32 %i.ej, 1
  %i.np = mul nsw i32 %i.nn, %i.no
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.nq = phi i32 [ %i.np, %bb.v ], [ 0, %bb.u ]
  %i.nr = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.ns = sub i32 %i.nr, %i.eb                    ; 2 uses
  %i.nt = icmp sgt i32 %i.ns, -1                  ; 2 uses
  %i.nu = add nsw i32 %i.eg, %i.nq
  %i.nv = add i32 %i.ns, 1                        ; 2 uses
  %i.nw = mul nsw i32 %i.nv, %i.nu
  %i.nx = select i1 %i.nt, i32 %i.nw, i32 0
  %i.ny = add nsw i32 %i.ec, %i.nx
  %i.nz = load i32, ptr %i.ba, align 4, !tbaa !4  ; 2 uses
  %i.oa = sub i32 %i.ea, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !4  ; 2 uses
  %i.od = sub i32 %i.ee, %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.of = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.og = load i32, ptr %i.of, align 4, !tbaa !4
  %i.oh = sub nsw i32 %i.og, %i.oc                ; 3 uses
  %i.oi = icmp sgt i32 %i.oh, -1                  ; 2 uses
  br i1 %i.oi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.oj = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !4
  %i.om = sub nsw i32 %i.oj, %i.ol
  %i.on = add nuw nsw i32 %i.oh, 1
  %i.oo = mul nsw i32 %i.om, %i.on
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.op = phi i32 [ %i.oo, %bb.x ], [ 0, %bb.w ]
  %i.oq = load i32, ptr %i.oe, align 4, !tbaa !4
  %i.or = sub i32 %i.oq, %i.nz                    ; 2 uses
  %i.os = icmp sgt i32 %i.or, -1                  ; 2 uses
  %i.ot = add nsw i32 %i.od, %i.op
  %i.ou = add i32 %i.or, 1                        ; 2 uses
  %i.ov = mul nsw i32 %i.ou, %i.ot
  %i.ow = select i1 %i.os, i32 %i.ov, i32 0
  %i.ox = add nsw i32 %i.oa, %i.ow
  %i.oy = load i32, ptr %i.b, align 4, !tbaa !4
  %i.oz = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.pa = sub i32 %i.oy, %i.oz
  %i.pb = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.pc = load i32, ptr %i.cw, align 4, !tbaa !4  ; 2 uses
  %i.pd = sub i32 %i.pb, %i.pc
  %i.pe = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.pf = sub nsw i32 %i.pe, %i.pc                ; 3 uses
  %i.pg = icmp sgt i32 %i.pf, -1                  ; 2 uses
  br i1 %i.pg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ph = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.pi = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !4
  %i.pk = sub nsw i32 %i.ph, %i.pj
  %i.pl = add nuw nsw i32 %i.pf, 1
  %i.pm = mul nsw i32 %i.pk, %i.pl
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.pn = phi i32 [ %i.pm, %bb.z ], [ 0, %bb.y ]
  %i.po = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.pp = sub nsw i32 %i.po, %i.oz                ; 2 uses
  %i.pq = icmp sgt i32 %i.pp, -1                  ; 2 uses
  %i.pr = add nsw i32 %i.pd, %i.pn
  %i.ps = add nuw nsw i32 %i.pp, 1                ; 3 uses
  %i.pt = mul nsw i32 %i.ps, %i.pr
  %i.pu = select i1 %i.pq, i32 %i.pt, i32 0
  %i.pv = add nsw i32 %i.pa, %i.pu
  %i.pw = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.px = sub i32 %i.ea, %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !4  ; 2 uses
  %i.qa = sub i32 %i.ee, %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.qc = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !4
  %i.qe = sub nsw i32 %i.qd, %i.pz                ; 3 uses
  %i.qf = icmp sgt i32 %i.qe, -1                  ; 2 uses
  br i1 %i.qf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.qg = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !4
  %i.qj = sub nsw i32 %i.qg, %i.qi
  %i.qk = add nuw nsw i32 %i.qe, 1
  %i.ql = mul nsw i32 %i.qj, %i.qk
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.qm = phi i32 [ %i.ql, %bb.ab ], [ 0, %bb.aa ]
  %i.qn = load i32, ptr %i.qb, align 4, !tbaa !4
  %i.qo = sub i32 %i.qn, %i.pw                    ; 2 uses
  %i.qp = icmp sgt i32 %i.qo, -1                  ; 2 uses
  %i.qq = add nsw i32 %i.qa, %i.qm
  %i.qr = add i32 %i.qo, 1                        ; 2 uses
  %i.qs = mul nsw i32 %i.qr, %i.qq
  %i.qt = select i1 %i.qp, i32 %i.qs, i32 0
  %i.qu = add nsw i32 %i.px, %i.qt
  %i.qv = select i1 %i.nt, i32 %i.nv, i32 0       ; 3 uses
  %i.qw = add nuw nsw i32 %i.ej, 1
  %i.qx = mul nsw i32 %i.qv, %i.qw
  %i.qy = select i1 %i.ek, i32 %i.qx, i32 0
  %i.qz = select i1 %i.os, i32 %i.ou, i32 0       ; 3 uses
  %i.ra = add nuw nsw i32 %i.oh, 1
  %i.rb = mul nsw i32 %i.qz, %i.ra
  %i.rc = select i1 %i.oi, i32 %i.rb, i32 0
  %i.rd = load i32, ptr %5, align 4, !tbaa !4     ; 2 uses
  br i1 %i.pq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.re = load i32, ptr %i.af, align 4, !tbaa !4
  %i.rf = mul nsw i32 %i.re, %i.ps
  %i.rg = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.rh = mul nsw i32 %i.rg, %i.ps
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ri = phi i32 [ %i.rf, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.rj = phi i32 [ %i.rh, %bb.ad ], [ 0, %bb.ac ]
  %i.rk = load i32, ptr %i.c, align 4, !tbaa !4   ; 7 uses
  %i.rl = load i32, ptr %i.ah, align 4, !tbaa !4  ; 7 uses
  %i.rm = load i32, ptr %i.ai, align 4, !tbaa !4  ; 3 uses
  %.02112 = call i32 @llvm.smax.i32(i32 %i.rl, i32 %i.rk)
  %.12113 = call i32 @llvm.smax.i32(i32 %i.rm, i32 %.02112)
  %i.rn = icmp sgt i32 %.12113, 0
  br i1 %i.rn, label %.preheader2337.lr.ph, label %.loopexit2341

.preheader2337.lr.ph:                             ; preds = %bb.ae
  %i.ro = select i1 %i.qp, i32 %i.qr, i32 0       ; 3 uses
  %factor.op.mul2463 = mul i32 %i.rl, %i.ro
  %factor.op.mul2462 = mul i32 %i.rl, %i.ri
  %factor.op.mul2461 = mul i32 %i.rl, %i.qz
  %factor.op.mul2460 = mul i32 %i.rl, %i.qv
  %i.rp = add nuw nsw i32 %i.qe, 1
  %i.rq = mul nsw i32 %i.ro, %i.rp
  %i.rr = select i1 %i.qf, i32 %i.rq, i32 0
  %i.rs = add nuw nsw i32 %i.pf, 1
  %i.rt = mul nsw i32 %i.rj, %i.rs
  %i.ru = select i1 %i.pg, i32 %i.rt, i32 0
  %i.rv = mul i32 %i.rk, %i.rd
  %i.rw = icmp slt i32 %i.rm, 1
  %i.rx = icmp slt i32 %i.rk, 1
  %i.ry = sub i32 %i.qv, %i.rk
  %i.rz = sub i32 %i.qz, %i.rk
  %i.sa = sub i32 %i.ri, %i.rv
  %i.sb = sub i32 %i.ro, %i.rk
  %i.sc = sub i32 %i.qy, %factor.op.mul2460
  %i.sd = sub i32 %i.rc, %factor.op.mul2461
  %i.se = sub i32 %i.ru, %factor.op.mul2462
  %i.sf = sub i32 %i.rr, %factor.op.mul2463
  %i.sg = icmp slt i32 %i.rl, 1
  %or.cond2848.not2862 = or i1 %i.rw, %i.sg
  %brmerge2850 = or i1 %or.cond2848.not2862, %i.rx
  br i1 %brmerge2850, label %.loopexit2341, label %.preheader2332.us.us.us.us.us.preheader

.preheader2332.us.us.us.us.us.preheader:          ; preds = %.preheader2337.lr.ph
  %i.sh = sext i32 %i.rd to i64
  %i.si = sext i32 %i.df to i64                   ; 2 uses
  %i.sj = sext i32 %i.dt to i64
  %7 = zext nneg i32 %i.dy to i64                 ; 3 uses
  %invariant.gep2841 = getelementptr [8 x i8], ptr %i.bf, i64 %7
  br label %.preheader2332.us.us.us.us.us

.preheader2332.us.us.us.us.us:                    ; preds = %.preheader2332.us.us.us.us.us.preheader, %._crit_edge2426.split.us.us.us.us.us.us
  %.319912446.us.us.us.us.us = phi i32 [ %i.yc, %._crit_edge2426.split.us.us.us.us.us.us ], [ 0, %.preheader2332.us.us.us.us.us.preheader ]
  %.320582445.us.us.us.us.us = phi i32 [ %i.ya, %._crit_edge2426.split.us.us.us.us.us.us ], [ %i.pv, %.preheader2332.us.us.us.us.us.preheader ]
  %.320662444.us.us.us.us.us = phi i32 [ %i.yb, %._crit_edge2426.split.us.us.us.us.us.us ], [ %i.qu, %.preheader2332.us.us.us.us.us.preheader ]
  %.320782443.us.us.us.us.us = phi i32 [ %i.xy, %._crit_edge2426.split.us.us.us.us.us.us ], [ %i.ny, %.preheader2332.us.us.us.us.us.preheader ]
  %.320902442.us.us.us.us.us = phi i32 [ %i.xz, %._crit_edge2426.split.us.us.us.us.us.us ], [ %i.ox, %.preheader2332.us.us.us.us.us.preheader ]
  br label %.preheader2328.us.us.us.us.us.us

.preheader2328.us.us.us.us.us.us:                 ; preds = %._crit_edge.us.us.us.us.us.us2480, %.preheader2332.us.us.us.us.us
  %.319832425.us.us.us.us.us.us = phi i32 [ 0, %.preheader2332.us.us.us.us.us ], [ %i.xx, %._crit_edge.us.us.us.us.us.us2480 ]
  %.420592424.us.us.us.us.us.us = phi i32 [ %.320582445.us.us.us.us.us, %.preheader2332.us.us.us.us.us ], [ %i.xv, %._crit_edge.us.us.us.us.us.us2480 ]
  %.420672423.us.us.us.us.us.us = phi i32 [ %.320662444.us.us.us.us.us, %.preheader2332.us.us.us.us.us ], [ %i.xw, %._crit_edge.us.us.us.us.us.us2480 ]
  %.420792422.us.us.us.us.us.us = phi i32 [ %.320782443.us.us.us.us.us, %.preheader2332.us.us.us.us.us ], [ %i.xt, %._crit_edge.us.us.us.us.us.us2480 ]
  %.420912421.us.us.us.us.us.us = phi i32 [ %.320902442.us.us.us.us.us, %.preheader2332.us.us.us.us.us ], [ %i.xu, %._crit_edge.us.us.us.us.us.us2480 ]
  %i.sk = sext i32 %.420592424.us.us.us.us.us.us to i64
  %i.sl = sext i32 %.420672423.us.us.us.us.us.us to i64
  %i.sm = sext i32 %.420792422.us.us.us.us.us.us to i64
  %i.sn = sext i32 %.420912421.us.us.us.us.us.us to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.preheader2328.us.us.us.us.us.us
  %indvars.iv2733 = phi i64 [ %indvars.iv.next2734, %bb.af ], [ %i.sn, %.preheader2328.us.us.us.us.us.us ] ; 3 uses
  %indvars.iv2731 = phi i64 [ %indvars.iv.next2732, %bb.af ], [ %i.sm, %.preheader2328.us.us.us.us.us.us ] ; 3 uses
  %indvars.iv2729 = phi i64 [ %indvars.iv.next2730, %bb.af ], [ %i.sl, %.preheader2328.us.us.us.us.us.us ] ; 8 uses
  %indvars.iv2727 = phi i64 [ %indvars.iv.next2728, %bb.af ], [ %i.sk, %.preheader2328.us.us.us.us.us.us ] ; 12 uses
  %.32416.us.us.us.us.us.us = phi i32 [ %i.xo, %bb.af ], [ 0, %.preheader2328.us.us.us.us.us.us ]
  %i.so = sub nsw i64 %indvars.iv2727, %i.si      ; 4 uses
  %i.sp = add nsw i64 %indvars.iv2727, %i.si      ; 12 uses
  %i.sq = add nsw i64 %indvars.iv2731, %i.sj      ; 3 uses
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2733 ; 7 uses
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !35 ; 2 uses
  %i.st = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.sp ; 2 uses
  %i.su = load double, ptr %i.st, align 8, !tbaa !35
  %i.sv = fmul double %i.ss, %i.su
  %gep2842 = getelementptr [8 x i8], ptr %invariant.gep2841, i64 %i.sq
  %i.sw = load double, ptr %gep2842, align 8, !tbaa !35 ; 2 uses
  %i.sx = getelementptr inbounds [8 x i8], ptr %.1200322402258, i64 %i.sp
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !35
  %i.sz = fmul double %i.ss, %i.sy
  %i.ta = call double @llvm.fmuladd.f64(double %i.sv, double %i.sw, double %i.sz)
  %i.tb = getelementptr inbounds [8 x i8], ptr %.1200322402258, i64 %indvars.iv2727 ; 2 uses
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !35
  %i.td = call double @llvm.fmuladd.f64(double %i.tc, double %i.sw, double %i.ta)
  %i.te = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv2729
  store double %i.td, ptr %i.te, align 8, !tbaa !35
  %i.tf = load double, ptr %i.sr, align 8, !tbaa !35 ; 2 uses
  %i.tg = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.sp ; 2 uses
  %i.th = load double, ptr %i.tg, align 8, !tbaa !35
  %i.ti = fmul double %i.tf, %i.th
  %i.tj = getelementptr [8 x i8], ptr %i.bf, i64 %i.sq ; 3 uses
  %i.tk = getelementptr i8, ptr %i.tj, i64 8
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !35 ; 2 uses
  %i.tm = getelementptr inbounds [8 x i8], ptr %.1199922422256, i64 %i.sp
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !35
  %i.to = fmul double %i.tf, %i.tn
  %i.tp = call double @llvm.fmuladd.f64(double %i.ti, double %i.tl, double %i.to)
  %i.tq = getelementptr inbounds [8 x i8], ptr %.1199922422256, i64 %indvars.iv2727 ; 2 uses
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !35
  %i.ts = call double @llvm.fmuladd.f64(double %i.tr, double %i.tl, double %i.tp)
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2729
  store double %i.ts, ptr %i.tt, align 8, !tbaa !35
  %i.tu = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv2727
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !35
  %i.tw = load double, ptr %i.tj, align 8, !tbaa !35 ; 2 uses
  %i.tx = load double, ptr %i.sr, align 8, !tbaa !35 ; 2 uses
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.sp
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !35
  %i.ua = fmul double %i.tx, %i.tz
  %i.ub = fmul double %i.tw, %i.ua
  %i.uc = call double @llvm.fmuladd.f64(double %i.tv, double %i.tw, double %i.ub)
  %i.ud = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.sp
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !35
  %i.uf = call double @llvm.fmuladd.f64(double %i.tx, double %i.ue, double %i.uc)
  %i.ug = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv2729
  store double %i.uf, ptr %i.ug, align 8, !tbaa !35
  %i.uh = load double, ptr %i.sr, align 8, !tbaa !35 ; 2 uses
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.sp
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !35
  %i.uk = fmul double %i.uh, %i.uj
  %i.ul = getelementptr i8, ptr %i.tj, i64 -8
  %i.um = load double, ptr %i.ul, align 8, !tbaa !35 ; 2 uses
  %i.un = getelementptr inbounds [8 x i8], ptr %.1199722432255, i64 %i.sp
  %i.uo = load double, ptr %i.un, align 8, !tbaa !35
  %i.up = fmul double %i.uh, %i.uo
  %i.uq = call double @llvm.fmuladd.f64(double %i.uk, double %i.um, double %i.up)
  %i.ur = getelementptr inbounds [8 x i8], ptr %.1199722432255, i64 %indvars.iv2727
  %i.us = load double, ptr %i.ur, align 8, !tbaa !35
  %i.ut = call double @llvm.fmuladd.f64(double %i.us, double %i.um, double %i.uq)
  %i.uu = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv2729
  store double %i.ut, ptr %i.uu, align 8, !tbaa !35
  %i.uv = sub nsw i64 %i.sq, %7
  %i.uw = load double, ptr %i.sr, align 8, !tbaa !35 ; 2 uses
  %i.ux = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.sp
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !35
  %i.uz = fmul double %i.uw, %i.uy
  %i.va = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.uv
  %i.vb = load double, ptr %i.va, align 8, !tbaa !35 ; 2 uses
  %i.vc = getelementptr inbounds [8 x i8], ptr %.1200122412257, i64 %i.sp
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !35
  %i.ve = fmul double %i.uw, %i.vd
  %i.vf = call double @llvm.fmuladd.f64(double %i.uz, double %i.vb, double %i.ve)
  %i.vg = getelementptr inbounds [8 x i8], ptr %.1200122412257, i64 %indvars.iv2727
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !35
  %i.vi = call double @llvm.fmuladd.f64(double %i.vh, double %i.vb, double %i.vf)
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv2729
  store double %i.vi, ptr %i.vj, align 8, !tbaa !35
  %i.vk = add nsw i64 %indvars.iv2731, %7         ; 2 uses
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv2727
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !35
  %i.vn = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv2733 ; 2 uses
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !35 ; 2 uses
  %i.vp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.so
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !35
  %i.vr = fmul double %i.vo, %i.vq
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.vk
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !35 ; 2 uses
  %i.vu = call double @llvm.fmuladd.f64(double %i.vr, double %i.vt, double %i.vm)
  %i.vv = load double, ptr %i.sr, align 8, !tbaa !35 ; 2 uses
  %i.vw = load double, ptr %i.st, align 8, !tbaa !35
  %i.vx = fmul double %i.vv, %i.vw
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.vk
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !35 ; 2 uses
  %i.wa = call double @llvm.fmuladd.f64(double %i.vx, double %i.vz, double %i.vu)
  %i.wb = getelementptr inbounds [8 x i8], ptr %.1200722382260, i64 %indvars.iv2727
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !35
  %i.wd = call double @llvm.fmuladd.f64(double %i.wc, double %i.vt, double %i.wa)
  %i.we = load double, ptr %i.tb, align 8, !tbaa !35
  %i.wf = call double @llvm.fmuladd.f64(double %i.we, double %i.vz, double %i.wd)
  %i.wg = getelementptr inbounds [8 x i8], ptr %.1200322402258, i64 %i.so
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !35
  %i.wi = call double @llvm.fmuladd.f64(double %i.vo, double %i.wh, double %i.wf)
  %i.wj = getelementptr inbounds [8 x i8], ptr %.1200722382260, i64 %i.sp
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !35
  %i.wl = call double @llvm.fmuladd.f64(double %i.vv, double %i.wk, double %i.wi)
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2729
  store double %i.wl, ptr %i.wm, align 8, !tbaa !35
  %indvars.iv.next2732 = add nsw i64 %indvars.iv2731, 1 ; 4 uses
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv2727
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !35
  %i.wp = load double, ptr %i.vn, align 8, !tbaa !35 ; 2 uses
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.so
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !35
  %i.ws = fmul double %i.wp, %i.wr
  %i.wt = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv.next2732
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !35 ; 2 uses
  %i.wv = call double @llvm.fmuladd.f64(double %i.ws, double %i.wu, double %i.wo)
  %i.ww = load double, ptr %i.sr, align 8, !tbaa !35 ; 2 uses
  %i.wx = load double, ptr %i.tg, align 8, !tbaa !35
  %i.wy = fmul double %i.ww, %i.wx
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next2732
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !35 ; 2 uses
  %i.xb = call double @llvm.fmuladd.f64(double %i.wy, double %i.xa, double %i.wv)
  %i.xc = getelementptr inbounds [8 x i8], ptr %.1200522392259, i64 %indvars.iv2727
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !35
  %i.xe = call double @llvm.fmuladd.f64(double %i.xd, double %i.wu, double %i.xb)
  %i.xf = load double, ptr %i.tq, align 8, !tbaa !35
  %i.xg = call double @llvm.fmuladd.f64(double %i.xf, double %i.xa, double %i.xe)
  %i.xh = getelementptr inbounds [8 x i8], ptr %.1199922422256, i64 %i.so
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !35
  %i.xj = call double @llvm.fmuladd.f64(double %i.wp, double %i.xi, double %i.xg)
  %i.xk = getelementptr inbounds [8 x i8], ptr %.1200522392259, i64 %i.sp
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !35
  %i.xm = call double @llvm.fmuladd.f64(double %i.ww, double %i.xl, double %i.xj)
  %i.xn = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv2729
  store double %i.xm, ptr %i.xn, align 8, !tbaa !35
  %indvars.iv.next2734 = add nsw i64 %indvars.iv2733, 1 ; 2 uses
  %indvars.iv.next2728 = add nsw i64 %indvars.iv2727, %i.sh ; 2 uses
  %indvars.iv.next2730 = add nsw i64 %indvars.iv2729, 1 ; 2 uses
  %i.xo = add nuw nsw i32 %.32416.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2742.not = icmp eq i32 %i.xo, %i.rk
  br i1 %exitcond2742.not, label %._crit_edge.us.us.us.us.us.us2480, label %bb.af, !llvm.loop !54

._crit_edge.us.us.us.us.us.us2480:                ; preds = %bb.af
  %i.xp = trunc nsw i64 %indvars.iv.next2734 to i32
  %i.xq = trunc nsw i64 %indvars.iv.next2732 to i32
  %i.xr = trunc nsw i64 %indvars.iv.next2730 to i32
  %i.xs = trunc nsw i64 %indvars.iv.next2728 to i32
  %i.xt = add nsw i32 %i.ry, %i.xq                ; 2 uses
  %i.xu = add nsw i32 %i.rz, %i.xp                ; 2 uses
  %i.xv = add nsw i32 %i.sa, %i.xs                ; 2 uses
  %i.xw = add nsw i32 %i.sb, %i.xr                ; 2 uses
  %i.xx = add nuw nsw i32 %.319832425.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2743.not = icmp eq i32 %i.xx, %i.rl
  br i1 %exitcond2743.not, label %._crit_edge2426.split.us.us.us.us.us.us, label %.preheader2328.us.us.us.us.us.us, !llvm.loop !55

._crit_edge2426.split.us.us.us.us.us.us:          ; preds = %._crit_edge.us.us.us.us.us.us2480
  %i.xy = add nsw i32 %i.sc, %i.xt
  %i.xz = add nsw i32 %i.sd, %i.xu
  %i.ya = add nsw i32 %i.se, %i.xv
  %i.yb = add nsw i32 %i.sf, %i.xw
  %i.yc = add nuw nsw i32 %.319912446.us.us.us.us.us, 1 ; 2 uses
  %exitcond2744.not = icmp eq i32 %i.yc, %i.rm
  br i1 %exitcond2744.not, label %.loopexit2341, label %.preheader2332.us.us.us.us.us, !llvm.loop !56

bb.ag:                                            ; preds = %bb.h
  br i1 %i.ek, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.yd = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !4
  %i.yg = sub nsw i32 %i.yd, %i.yf
  %i.yh = add nuw nsw i32 %i.ej, 1
  %i.yi = mul nsw i32 %i.yg, %i.yh
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.yj = phi i32 [ %i.yi, %bb.ah ], [ 0, %bb.ag ]
  %i.yk = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.yl = sub i32 %i.yk, %i.eb                    ; 2 uses
  %i.ym = icmp sgt i32 %i.yl, -1                  ; 2 uses
  %i.yn = add nsw i32 %i.eg, %i.yj
  %i.yo = add i32 %i.yl, 1                        ; 2 uses
  %i.yp = mul nsw i32 %i.yo, %i.yn
  %i.yq = select i1 %i.ym, i32 %i.yp, i32 0
  %i.yr = add nsw i32 %i.ec, %i.yq
  %i.ys = load i32, ptr %i.ba, align 4, !tbaa !4  ; 2 uses
  %i.yt = sub i32 %i.ea, %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !4  ; 2 uses
  %i.yw = sub i32 %i.ee, %i.yv
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !4
  %i.za = sub nsw i32 %i.yz, %i.yv                ; 3 uses
  %i.zb = icmp sgt i32 %i.za, -1                  ; 2 uses
  br i1 %i.zb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.zc = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.zd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !4
  %i.zf = sub nsw i32 %i.zc, %i.ze
  %i.zg = add nuw nsw i32 %i.za, 1
  %i.zh = mul nsw i32 %i.zf, %i.zg
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.zi = phi i32 [ %i.zh, %bb.aj ], [ 0, %bb.ai ]
  %i.zj = load i32, ptr %i.yx, align 4, !tbaa !4
  %i.zk = sub i32 %i.zj, %i.ys                    ; 2 uses
  %i.zl = icmp sgt i32 %i.zk, -1                  ; 2 uses
  %i.zm = add nsw i32 %i.yw, %i.zi
  %i.zn = add i32 %i.zk, 1                        ; 2 uses
  %i.zo = mul nsw i32 %i.zn, %i.zm
  %i.zp = select i1 %i.zl, i32 %i.zo, i32 0
  %i.zq = add nsw i32 %i.yt, %i.zp
  %i.zr = load i32, ptr %i.b, align 4, !tbaa !4
  %i.zs = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.zt = sub i32 %i.zr, %i.zs
  %i.zu = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.zv = load i32, ptr %i.cw, align 4, !tbaa !4  ; 2 uses
  %i.zw = sub i32 %i.zu, %i.zv
  %i.zx = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.zy = sub nsw i32 %i.zx, %i.zv                ; 3 uses
  %i.zz = icmp sgt i32 %i.zy, -1                  ; 2 uses
  br i1 %i.zz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.aaa = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.aab = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !4
  %i.aad = sub nsw i32 %i.aaa, %i.aac
  %i.aae = add nuw nsw i32 %i.zy, 1
  %i.aaf = mul nsw i32 %i.aad, %i.aae
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.aag = phi i32 [ %i.aaf, %bb.al ], [ 0, %bb.ak ]
  %i.aah = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.aai = sub nsw i32 %i.aah, %i.zs              ; 2 uses
  %i.aaj = icmp sgt i32 %i.aai, -1                ; 2 uses
  %i.aak = add nsw i32 %i.zw, %i.aag
  %i.aal = add nuw nsw i32 %i.aai, 1              ; 3 uses
  %i.aam = mul nsw i32 %i.aal, %i.aak
  %i.aan = select i1 %i.aaj, i32 %i.aam, i32 0
  %i.aao = add nsw i32 %i.zt, %i.aan
  %i.aap = load i32, ptr %i.bd, align 4, !tbaa !4 ; 2 uses
  %i.aaq = sub i32 %i.ea, %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !4 ; 2 uses
  %i.aat = sub i32 %i.ee, %i.aas
  %i.aau = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.aav = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !4
  %i.aax = sub nsw i32 %i.aaw, %i.aas             ; 3 uses
  %i.aay = icmp sgt i32 %i.aax, -1                ; 2 uses
  br i1 %i.aay, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.aaz = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.aba = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !4
  %i.abc = sub nsw i32 %i.aaz, %i.abb
  %i.abd = add nuw nsw i32 %i.aax, 1
  %i.abe = mul nsw i32 %i.abc, %i.abd
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.abf = phi i32 [ %i.abe, %bb.an ], [ 0, %bb.am ]
  %i.abg = load i32, ptr %i.aau, align 4, !tbaa !4
  %i.abh = sub i32 %i.abg, %i.aap                 ; 2 uses
  %i.abi = icmp sgt i32 %i.abh, -1                ; 2 uses
  %i.abj = add nsw i32 %i.aat, %i.abf
  %i.abk = add i32 %i.abh, 1                      ; 2 uses
  %i.abl = mul nsw i32 %i.abk, %i.abj
  %i.abm = select i1 %i.abi, i32 %i.abl, i32 0
  %i.abn = add nsw i32 %i.aaq, %i.abm
  %i.abo = select i1 %i.ym, i32 %i.yo, i32 0      ; 3 uses
  %i.abp = add nuw nsw i32 %i.ej, 1
  %i.abq = mul nsw i32 %i.abo, %i.abp
  %i.abr = select i1 %i.ek, i32 %i.abq, i32 0
  %i.abs = select i1 %i.zl, i32 %i.zn, i32 0      ; 3 uses
  %i.abt = add nuw nsw i32 %i.za, 1
  %i.abu = mul nsw i32 %i.abs, %i.abt
  %i.abv = select i1 %i.zb, i32 %i.abu, i32 0
  %i.abw = load i32, ptr %5, align 4, !tbaa !4    ; 2 uses
  br i1 %i.aaj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.abx = load i32, ptr %i.af, align 4, !tbaa !4
  %i.aby = mul nsw i32 %i.abx, %i.aal
  %i.abz = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.aca = mul nsw i32 %i.abz, %i.aal
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.acb = phi i32 [ %i.aby, %bb.ap ], [ 0, %bb.ao ] ; 2 uses
  %i.acc = phi i32 [ %i.aca, %bb.ap ], [ 0, %bb.ao ]
  %i.acd = load i32, ptr %i.c, align 4, !tbaa !4  ; 7 uses
  %i.ace = load i32, ptr %i.ah, align 4, !tbaa !4 ; 7 uses
  %i.acf = load i32, ptr %i.ai, align 4, !tbaa !4 ; 3 uses
  %.02032 = call i32 @llvm.smax.i32(i32 %i.ace, i32 %i.acd)
  %.12033 = call i32 @llvm.smax.i32(i32 %i.acf, i32 %.02032)
  %i.acg = icmp sgt i32 %.12033, 0
  br i1 %i.acg, label %.preheader2339.lr.ph, label %.loopexit2341

.preheader2339.lr.ph:                             ; preds = %bb.aq
  %i.ach = select i1 %i.abi, i32 %i.abk, i32 0    ; 3 uses
  %factor.op.mul2395 = mul i32 %i.ace, %i.ach
  %factor.op.mul2394 = mul i32 %i.ace, %i.acb
  %factor.op.mul = mul i32 %i.ace, %i.abs
  %factor.op.mul2393 = mul i32 %i.ace, %i.abo
  %i.aci = add nuw nsw i32 %i.aax, 1
  %i.acj = mul nsw i32 %i.ach, %i.aci
  %i.ack = select i1 %i.aay, i32 %i.acj, i32 0
  %i.acl = add nuw nsw i32 %i.zy, 1
  %i.acm = mul nsw i32 %i.acc, %i.acl
  %i.acn = select i1 %i.zz, i32 %i.acm, i32 0
  %i.aco = mul i32 %i.acd, %i.abw
  %i.acp = icmp slt i32 %i.acf, 1
  %i.acq = icmp slt i32 %i.acd, 1
  %i.acr = sub i32 %i.abo, %i.acd
  %i.acs = sub i32 %i.abs, %i.acd
  %i.act = sub i32 %i.acb, %i.aco
  %i.acu = sub i32 %i.ach, %i.acd
  %i.acv = sub i32 %i.abr, %factor.op.mul2393
  %i.acw = sub i32 %i.abv, %factor.op.mul
  %i.acx = sub i32 %i.acn, %factor.op.mul2394
  %i.acy = sub i32 %i.ack, %factor.op.mul2395
  %i.acz = icmp slt i32 %i.ace, 1
  %or.cond2851.not2859 = or i1 %i.acp, %i.acz
  %brmerge2853 = or i1 %or.cond2851.not2859, %i.acq
  br i1 %brmerge2853, label %.loopexit2341, label %.preheader2333.us.us.us.us.us.preheader

.preheader2333.us.us.us.us.us.preheader:          ; preds = %.preheader2339.lr.ph
  %i.ada = sext i32 %i.abw to i64
  %i.adb = sext i32 %i.df to i64                  ; 2 uses
  %i.adc = sext i32 %i.dt to i64
  %8 = zext nneg i32 %i.dy to i64                 ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.bf, i64 %8
  br label %.preheader2333.us.us.us.us.us

.preheader2333.us.us.us.us.us:                    ; preds = %.preheader2333.us.us.us.us.us.preheader, %._crit_edge2360.split.us.us.us.us.us.us
  %.519932379.us.us.us.us.us = phi i32 [ %i.all, %._crit_edge2360.split.us.us.us.us.us.us ], [ 0, %.preheader2333.us.us.us.us.us.preheader ]
  %.620612378.us.us.us.us.us = phi i32 [ %i.alj, %._crit_edge2360.split.us.us.us.us.us.us ], [ %i.aao, %.preheader2333.us.us.us.us.us.preheader ]
  %.620692377.us.us.us.us.us = phi i32 [ %i.alk, %._crit_edge2360.split.us.us.us.us.us.us ], [ %i.abn, %.preheader2333.us.us.us.us.us.preheader ]
  %.620812376.us.us.us.us.us = phi i32 [ %i.alh, %._crit_edge2360.split.us.us.us.us.us.us ], [ %i.yr, %.preheader2333.us.us.us.us.us.preheader ]
  %.620932375.us.us.us.us.us = phi i32 [ %i.ali, %._crit_edge2360.split.us.us.us.us.us.us ], [ %i.zq, %.preheader2333.us.us.us.us.us.preheader ]
  br label %.preheader2329.us.us.us.us.us.us

.preheader2329.us.us.us.us.us.us:                 ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader2333.us.us.us.us.us
  %.519852359.us.us.us.us.us.us = phi i32 [ 0, %.preheader2333.us.us.us.us.us ], [ %i.alg, %._crit_edge.us.us.us.us.us.us ]
  %.720622358.us.us.us.us.us.us = phi i32 [ %.620612378.us.us.us.us.us, %.preheader2333.us.us.us.us.us ], [ %i.ale, %._crit_edge.us.us.us.us.us.us ]
  %.720702357.us.us.us.us.us.us = phi i32 [ %.620692377.us.us.us.us.us, %.preheader2333.us.us.us.us.us ], [ %i.alf, %._crit_edge.us.us.us.us.us.us ]
  %.720822356.us.us.us.us.us.us = phi i32 [ %.620812376.us.us.us.us.us, %.preheader2333.us.us.us.us.us ], [ %i.alc, %._crit_edge.us.us.us.us.us.us ]
  %.720942355.us.us.us.us.us.us = phi i32 [ %.620932375.us.us.us.us.us, %.preheader2333.us.us.us.us.us ], [ %i.ald, %._crit_edge.us.us.us.us.us.us ]
  %i.add = sext i32 %.720622358.us.us.us.us.us.us to i64
  %i.ade = sext i32 %.720702357.us.us.us.us.us.us to i64
  %i.adf = sext i32 %.720822356.us.us.us.us.us.us to i64
  %i.adg = sext i32 %.720942355.us.us.us.us.us.us to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.preheader2329.us.us.us.us.us.us
  %indvars.iv2714 = phi i64 [ %indvars.iv.next2715, %bb.ar ], [ %i.adg, %.preheader2329.us.us.us.us.us.us ] ; 3 uses
  %indvars.iv2712 = phi i64 [ %indvars.iv.next2713, %bb.ar ], [ %i.adf, %.preheader2329.us.us.us.us.us.us ] ; 4 uses
  %indvars.iv2710 = phi i64 [ %indvars.iv.next2711, %bb.ar ], [ %i.ade, %.preheader2329.us.us.us.us.us.us ] ; 14 uses
  %indvars.iv2708 = phi i64 [ %indvars.iv.next2709, %bb.ar ], [ %i.add, %.preheader2329.us.us.us.us.us.us ] ; 14 uses
  %.52351.us.us.us.us.us.us = phi i32 [ %i.akx, %bb.ar ], [ 0, %.preheader2329.us.us.us.us.us.us ]
  %i.adh = sub nsw i64 %indvars.iv2708, %i.adb    ; 6 uses
  %i.adi = add nsw i64 %indvars.iv2708, %i.adb    ; 16 uses
  %i.adj = add nsw i64 %indvars.iv2712, %i.adc    ; 3 uses
  %i.adk = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2714 ; 13 uses
  %i.adl = load double, ptr %i.adk, align 8, !tbaa !35
  %i.adm = getelementptr inbounds [8 x i8], ptr %.120152261, i64 %i.adi ; 2 uses
  %i.adn = load double, ptr %i.adm, align 8, !tbaa !35
  %i.ado = fmul double %i.adl, %i.adn
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.adj ; 3 uses
  %i.adp = getelementptr i8, ptr %gep, i64 8
  %i.adq = load double, ptr %i.adp, align 8, !tbaa !35
  %i.adr = fmul double %i.ado, %i.adq
  %i.ads = getelementptr inbounds [8 x i8], ptr %.12054, i64 %indvars.iv2710
  store double %i.adr, ptr %i.ads, align 8, !tbaa !35
  %i.adt = load double, ptr %i.adk, align 8, !tbaa !35 ; 2 uses
  %i.adu = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.adi ; 2 uses
  %i.adv = load double, ptr %i.adu, align 8, !tbaa !35
  %i.adw = fmul double %i.adt, %i.adv
  %i.adx = load double, ptr %gep, align 8, !tbaa !35 ; 2 uses
  %i.ady = getelementptr inbounds [8 x i8], ptr %.1200322402258, i64 %i.adi
  %i.adz = load double, ptr %i.ady, align 8, !tbaa !35
  %i.aea = fmul double %i.adt, %i.adz
  %i.aeb = call double @llvm.fmuladd.f64(double %i.adw, double %i.adx, double %i.aea)
  %i.aec = getelementptr inbounds [8 x i8], ptr %.1200322402258, i64 %indvars.iv2708 ; 2 uses
  %i.aed = load double, ptr %i.aec, align 8, !tbaa !35
  %i.aee = call double @llvm.fmuladd.f64(double %i.aed, double %i.adx, double %i.aeb)
  %i.aef = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv2710
  store double %i.aee, ptr %i.aef, align 8, !tbaa !35
  %i.aeg = load double, ptr %i.adk, align 8, !tbaa !35
  %i.aeh = getelementptr inbounds [8 x i8], ptr %.120132262, i64 %i.adi ; 2 uses
  %i.aei = load double, ptr %i.aeh, align 8, !tbaa !35
  %i.aej = fmul double %i.aeg, %i.aei
  %i.aek = getelementptr i8, ptr %gep, i64 -8
  %i.ael = load double, ptr %i.aek, align 8, !tbaa !35
  %i.aem = fmul double %i.aej, %i.ael
  %i.aen = getelementptr inbounds [8 x i8], ptr %.12052, i64 %indvars.iv2710
  store double %i.aem, ptr %i.aen, align 8, !tbaa !35
  %i.aeo = load double, ptr %i.adk, align 8, !tbaa !35 ; 2 uses
  %i.aep = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.adi ; 2 uses
  %i.aeq = load double, ptr %i.aep, align 8, !tbaa !35
  %i.aer = fmul double %i.aeo, %i.aeq
  %i.aes = getelementptr [8 x i8], ptr %i.bf, i64 %i.adj ; 3 uses
  %i.aet = getelementptr i8, ptr %i.aes, i64 8
  %i.aeu = load double, ptr %i.aet, align 8, !tbaa !35 ; 2 uses
  %i.aev = getelementptr inbounds [8 x i8], ptr %.1199922422256, i64 %i.adi
  %i.aew = load double, ptr %i.aev, align 8, !tbaa !35
  %i.aex = fmul double %i.aeo, %i.aew
  %i.aey = call double @llvm.fmuladd.f64(double %i.aer, double %i.aeu, double %i.aex)
  %i.aez = getelementptr inbounds [8 x i8], ptr %.1199922422256, i64 %indvars.iv2708 ; 2 uses
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !35
  %i.afb = call double @llvm.fmuladd.f64(double %i.afa, double %i.aeu, double %i.aey)
  %i.afc = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2710
  store double %i.afb, ptr %i.afc, align 8, !tbaa !35
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv2708
  %i.afe = load double, ptr %i.afd, align 8, !tbaa !35
  %i.aff = load double, ptr %i.aes, align 8, !tbaa !35 ; 2 uses
  %i.afg = load double, ptr %i.adk, align 8, !tbaa !35 ; 2 uses
  %i.afh = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.adi
  %i.afi = load double, ptr %i.afh, align 8, !tbaa !35
  %i.afj = fmul double %i.afg, %i.afi
  %i.afk = fmul double %i.aff, %i.afj
  %i.afl = call double @llvm.fmuladd.f64(double %i.afe, double %i.aff, double %i.afk)
  %i.afm = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.adi
  %i.afn = load double, ptr %i.afm, align 8, !tbaa !35
  %i.afo = call double @llvm.fmuladd.f64(double %i.afg, double %i.afn, double %i.afl)
  %i.afp = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv2710
  store double %i.afo, ptr %i.afp, align 8, !tbaa !35
  %i.afq = load double, ptr %i.adk, align 8, !tbaa !35 ; 2 uses
  %i.afr = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.adi
  %i.afs = load double, ptr %i.afr, align 8, !tbaa !35
  %i.aft = fmul double %i.afq, %i.afs
  %i.afu = getelementptr i8, ptr %i.aes, i64 -8
  %i.afv = load double, ptr %i.afu, align 8, !tbaa !35 ; 2 uses
  %i.afw = getelementptr inbounds [8 x i8], ptr %.1199722432255, i64 %i.adi
  %i.afx = load double, ptr %i.afw, align 8, !tbaa !35
  %i.afy = fmul double %i.afq, %i.afx
  %i.afz = call double @llvm.fmuladd.f64(double %i.aft, double %i.afv, double %i.afy)
  %i.aga = getelementptr inbounds [8 x i8], ptr %.1199722432255, i64 %indvars.iv2708
  %i.agb = load double, ptr %i.aga, align 8, !tbaa !35
  %i.agc = call double @llvm.fmuladd.f64(double %i.agb, double %i.afv, double %i.afz)
  %i.agd = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv2710
  store double %i.agc, ptr %i.agd, align 8, !tbaa !35
  %i.age = sub nsw i64 %i.adj, %8
  %i.agf = load double, ptr %i.adk, align 8, !tbaa !35
  %i.agg = getelementptr inbounds [8 x i8], ptr %.120112263, i64 %i.adi
  %i.agh = load double, ptr %i.agg, align 8, !tbaa !35
  %i.agi = fmul double %i.agf, %i.agh
  %i.agj = getelementptr [8 x i8], ptr %i.bf, i64 %i.age ; 3 uses
  %i.agk = getelementptr i8, ptr %i.agj, i64 8
  %i.agl = load double, ptr %i.agk, align 8, !tbaa !35
  %i.agm = fmul double %i.agi, %i.agl
  %i.agn = getelementptr inbounds [8 x i8], ptr %.12050, i64 %indvars.iv2710
  store double %i.agm, ptr %i.agn, align 8, !tbaa !35
  %i.ago = load double, ptr %i.adk, align 8, !tbaa !35 ; 2 uses
  %i.agp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.adi
  %i.agq = load double, ptr %i.agp, align 8, !tbaa !35
  %i.agr = fmul double %i.ago, %i.agq
  %i.ags = load double, ptr %i.agj, align 8, !tbaa !35 ; 2 uses
  %i.agt = getelementptr inbounds [8 x i8], ptr %.1200122412257, i64 %i.adi
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !35
  %i.agv = fmul double %i.ago, %i.agu
  %i.agw = call double @llvm.fmuladd.f64(double %i.agr, double %i.ags, double %i.agv)
  %i.agx = getelementptr inbounds [8 x i8], ptr %.1200122412257, i64 %indvars.iv2708
  %i.agy = load double, ptr %i.agx, align 8, !tbaa !35
  %i.agz = call double @llvm.fmuladd.f64(double %i.agy, double %i.ags, double %i.agw)
  %i.aha = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv2710
  store double %i.agz, ptr %i.aha, align 8, !tbaa !35
  %i.ahb = load double, ptr %i.adk, align 8, !tbaa !35
  %i.ahc = getelementptr inbounds [8 x i8], ptr %.120092264, i64 %i.adi
  %i.ahd = load double, ptr %i.ahc, align 8, !tbaa !35
  %i.ahe = fmul double %i.ahb, %i.ahd
  %i.ahf = getelementptr i8, ptr %i.agj, i64 -8
  %i.ahg = load double, ptr %i.ahf, align 8, !tbaa !35
  %i.ahh = fmul double %i.ahe, %i.ahg
  %i.ahi = getelementptr inbounds [8 x i8], ptr %.12048, i64 %indvars.iv2710
  store double %i.ahh, ptr %i.ahi, align 8, !tbaa !35
  %i.ahj = add nsw i64 %indvars.iv2712, %8        ; 3 uses
  %i.ahk = add nsw i64 %i.ahj, 1                  ; 2 uses
  %i.ahl = getelementptr inbounds [8 x i8], ptr %.120152261, i64 %indvars.iv2708
  %i.ahm = load double, ptr %i.ahl, align 8, !tbaa !35
  %i.ahn = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv2714 ; 4 uses
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !35
  %i.ahp = getelementptr inbounds [8 x i8], ptr %.120152261, i64 %i.adh
  %i.ahq = load double, ptr %i.ahp, align 8, !tbaa !35
  %i.ahr = fmul double %i.aho, %i.ahq
  %i.ahs = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.ahk
  %i.aht = load double, ptr %i.ahs, align 8, !tbaa !35
  %i.ahu = call double @llvm.fmuladd.f64(double %i.ahr, double %i.aht, double %i.ahm)
  %i.ahv = load double, ptr %i.adk, align 8, !tbaa !35
  %i.ahw = load double, ptr %i.adm, align 8, !tbaa !35
  %i.ahx = fmul double %i.ahv, %i.ahw
  %i.ahy = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ahk
  %i.ahz = load double, ptr %i.ahy, align 8, !tbaa !35
  %i.aia = call double @llvm.fmuladd.f64(double %i.ahx, double %i.ahz, double %i.ahu)
  %i.aib = getelementptr inbounds [8 x i8], ptr %.12046, i64 %indvars.iv2710
  store double %i.aia, ptr %i.aib, align 8, !tbaa !35
  %i.aic = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv2708
  %i.aid = load double, ptr %i.aic, align 8, !tbaa !35
  %i.aie = load double, ptr %i.ahn, align 8, !tbaa !35 ; 2 uses
  %i.aif = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.adh
  %i.aig = load double, ptr %i.aif, align 8, !tbaa !35
  %i.aih = fmul double %i.aie, %i.aig
  %i.aii = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.ahj
  %i.aij = load double, ptr %i.aii, align 8, !tbaa !35 ; 2 uses
  %i.aik = call double @llvm.fmuladd.f64(double %i.aih, double %i.aij, double %i.aid)
  %i.ail = load double, ptr %i.adk, align 8, !tbaa !35 ; 2 uses
  %i.aim = load double, ptr %i.adu, align 8, !tbaa !35
  %i.ain = fmul double %i.ail, %i.aim
  %i.aio = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ahj
  %i.aip = load double, ptr %i.aio, align 8, !tbaa !35 ; 2 uses
  %i.aiq = call double @llvm.fmuladd.f64(double %i.ain, double %i.aip, double %i.aik)
  %i.air = getelementptr inbounds [8 x i8], ptr %.1200722382260, i64 %indvars.iv2708
  %i.ais = load double, ptr %i.air, align 8, !tbaa !35
  %i.ait = call double @llvm.fmuladd.f64(double %i.ais, double %i.aij, double %i.aiq)
  %i.aiu = load double, ptr %i.aec, align 8, !tbaa !35
  %i.aiv = call double @llvm.fmuladd.f64(double %i.aiu, double %i.aip, double %i.ait)
  %i.aiw = getelementptr inbounds [8 x i8], ptr %.1200322402258, i64 %i.adh
  %i.aix = load double, ptr %i.aiw, align 8, !tbaa !35
  %i.aiy = call double @llvm.fmuladd.f64(double %i.aie, double %i.aix, double %i.aiv)
  %i.aiz = getelementptr inbounds [8 x i8], ptr %.1200722382260, i64 %i.adi
  %i.aja = load double, ptr %i.aiz, align 8, !tbaa !35
  %i.ajb = call double @llvm.fmuladd.f64(double %i.ail, double %i.aja, double %i.aiy)
  %i.ajc = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2710
  store double %i.ajb, ptr %i.ajc, align 8, !tbaa !35
  %i.ajd = trunc nsw i64 %indvars.iv2712 to i32
  %i.aje = add i32 %i.dx, %i.ajd
  %i.ajf = getelementptr inbounds [8 x i8], ptr %.120132262, i64 %indvars.iv2708
  %i.ajg = load double, ptr %i.ajf, align 8, !tbaa !35
  %i.ajh = load double, ptr %i.ahn, align 8, !tbaa !35
  %i.aji = getelementptr inbounds [8 x i8], ptr %.120132262, i64 %i.adh
  %i.ajj = load double, ptr %i.aji, align 8, !tbaa !35
end_hunk_3
begin_hunk_4_@hypre_SMG3BuildRAPNoSym:bb.a
  %exitcond.not = icmp eq i32 %i.akx, %i.acd
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us.us, label %bb.ar, !llvm.loop !57

._crit_edge.us.us.us.us.us.us:                    ; preds = %bb.ar
  %i.aky = trunc nsw i64 %indvars.iv.next2715 to i32
  %i.akz = trunc nsw i64 %indvars.iv.next2713 to i32
  %i.ala = trunc nsw i64 %indvars.iv.next2711 to i32
  %i.alb = trunc nsw i64 %indvars.iv.next2709 to i32
  %i.alc = add nsw i32 %i.acr, %i.akz             ; 2 uses
  %i.ald = add nsw i32 %i.acs, %i.aky             ; 2 uses
  %i.ale = add nsw i32 %i.act, %i.alb             ; 2 uses
  %i.alf = add nsw i32 %i.acu, %i.ala             ; 2 uses
  %i.alg = add nuw nsw i32 %.519852359.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2723.not = icmp eq i32 %i.alg, %i.ace
  br i1 %exitcond2723.not, label %._crit_edge2360.split.us.us.us.us.us.us, label %.preheader2329.us.us.us.us.us.us, !llvm.loop !58

._crit_edge2360.split.us.us.us.us.us.us:          ; preds = %._crit_edge.us.us.us.us.us.us
  %i.alh = add nsw i32 %i.acv, %i.alc
  %i.ali = add nsw i32 %i.acw, %i.ald
  %i.alj = add nsw i32 %i.acx, %i.ale
  %i.alk = add nsw i32 %i.acy, %i.alf
  %i.all = add nuw nsw i32 %.519932379.us.us.us.us.us, 1 ; 2 uses
  %exitcond2724.not = icmp eq i32 %i.all, %i.acf
  br i1 %exitcond2724.not, label %.loopexit2341, label %.preheader2333.us.us.us.us.us, !llvm.loop !59

bb.as:                                            ; preds = %bb.h
  br i1 %i.ek, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.alm = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !4
  %i.alp = sub nsw i32 %i.alm, %i.alo
  %i.alq = add nuw nsw i32 %i.ej, 1
  %i.alr = mul nsw i32 %i.alp, %i.alq
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.als = phi i32 [ %i.alr, %bb.at ], [ 0, %bb.as ]
  %i.alt = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.alu = sub i32 %i.alt, %i.eb                  ; 2 uses
  %i.alv = icmp sgt i32 %i.alu, -1                ; 2 uses
  %i.alw = add nsw i32 %i.eg, %i.als
  %i.alx = add i32 %i.alu, 1                      ; 2 uses
  %i.aly = mul nsw i32 %i.alx, %i.alw
  %i.alz = select i1 %i.alv, i32 %i.aly, i32 0
  %i.ama = add nsw i32 %i.ec, %i.alz
  %i.amb = load i32, ptr %i.ba, align 4, !tbaa !4 ; 2 uses
  %i.amc = sub i32 %i.ea, %i.amb
  %i.amd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !4 ; 2 uses
  %i.amf = sub i32 %i.ee, %i.ame
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.amh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !4
  %i.amj = sub nsw i32 %i.ami, %i.ame             ; 3 uses
  %i.amk = icmp sgt i32 %i.amj, -1                ; 2 uses
  br i1 %i.amk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.aml = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.amm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !4
  %i.amo = sub nsw i32 %i.aml, %i.amn
  %i.amp = add nuw nsw i32 %i.amj, 1
  %i.amq = mul nsw i32 %i.amo, %i.amp
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.amr = phi i32 [ %i.amq, %bb.av ], [ 0, %bb.au ]
  %i.ams = load i32, ptr %i.amg, align 4, !tbaa !4
  %i.amt = sub i32 %i.ams, %i.amb                 ; 2 uses
  %i.amu = icmp sgt i32 %i.amt, -1                ; 2 uses
  %i.amv = add nsw i32 %i.amf, %i.amr
  %i.amw = add i32 %i.amt, 1                      ; 2 uses
  %i.amx = mul nsw i32 %i.amw, %i.amv
  %i.amy = select i1 %i.amu, i32 %i.amx, i32 0
  %i.amz = add nsw i32 %i.amc, %i.amy
  %i.ana = load i32, ptr %i.b, align 4, !tbaa !4
  %i.anb = load i32, ptr %i.au, align 4, !tbaa !4 ; 2 uses
  %i.anc = sub i32 %i.ana, %i.anb
  %i.and = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.ane = load i32, ptr %i.cw, align 4, !tbaa !4 ; 2 uses
  %i.anf = sub i32 %i.and, %i.ane
  %i.ang = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.anh = sub nsw i32 %i.ang, %i.ane             ; 3 uses
  %i.ani = icmp sgt i32 %i.anh, -1                ; 2 uses
  br i1 %i.ani, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.anj = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ank = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.anl = load i32, ptr %i.ank, align 4, !tbaa !4
  %i.anm = sub nsw i32 %i.anj, %i.anl
  %i.ann = add nuw nsw i32 %i.anh, 1
  %i.ano = mul nsw i32 %i.anm, %i.ann
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.anp = phi i32 [ %i.ano, %bb.ax ], [ 0, %bb.aw ]
  %i.anq = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.anr = sub nsw i32 %i.anq, %i.anb             ; 2 uses
  %i.ans = icmp sgt i32 %i.anr, -1                ; 2 uses
  %i.ant = add nsw i32 %i.anf, %i.anp
  %i.anu = add nuw nsw i32 %i.anr, 1              ; 3 uses
  %i.anv = mul nsw i32 %i.anu, %i.ant
  %i.anw = select i1 %i.ans, i32 %i.anv, i32 0
  %i.anx = add nsw i32 %i.anc, %i.anw
  %i.any = load i32, ptr %i.bd, align 4, !tbaa !4 ; 2 uses
  %i.anz = sub i32 %i.ea, %i.any
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !4 ; 2 uses
  %i.aoc = sub i32 %i.ee, %i.aob
  %i.aod = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !4
  %i.aog = sub nsw i32 %i.aof, %i.aob             ; 3 uses
  %i.aoh = icmp sgt i32 %i.aog, -1                ; 2 uses
  br i1 %i.aoh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.aoi = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !4
  %i.aol = sub nsw i32 %i.aoi, %i.aok
  %i.aom = add nuw nsw i32 %i.aog, 1
  %i.aon = mul nsw i32 %i.aol, %i.aom
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.aoo = phi i32 [ %i.aon, %bb.az ], [ 0, %bb.ay ]
  %i.aop = load i32, ptr %i.aod, align 4, !tbaa !4
  %i.aoq = sub i32 %i.aop, %i.any                 ; 2 uses
  %i.aor = icmp sgt i32 %i.aoq, -1                ; 2 uses
  %i.aos = add nsw i32 %i.aoc, %i.aoo
  %i.aot = add i32 %i.aoq, 1                      ; 2 uses
  %i.aou = mul nsw i32 %i.aot, %i.aos
  %i.aov = select i1 %i.aor, i32 %i.aou, i32 0
  %i.aow = add nsw i32 %i.anz, %i.aov
  %i.aox = select i1 %i.alv, i32 %i.alx, i32 0    ; 3 uses
  %i.aoy = add nuw nsw i32 %i.ej, 1
  %i.aoz = mul nsw i32 %i.aox, %i.aoy
  %i.apa = select i1 %i.ek, i32 %i.aoz, i32 0
  %i.apb = select i1 %i.amu, i32 %i.amw, i32 0    ; 3 uses
  %i.apc = add nuw nsw i32 %i.amj, 1
  %i.apd = mul nsw i32 %i.apb, %i.apc
  %i.ape = select i1 %i.amk, i32 %i.apd, i32 0
  %i.apf = load i32, ptr %5, align 4, !tbaa !4    ; 2 uses
  br i1 %i.ans, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.apg = load i32, ptr %i.af, align 4, !tbaa !4
  %i.aph = mul nsw i32 %i.apg, %i.anu
  %i.api = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.apj = mul nsw i32 %i.api, %i.anu
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.apk = phi i32 [ %i.aph, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %i.apl = phi i32 [ %i.apj, %bb.bb ], [ 0, %bb.ba ]
  %i.apm = load i32, ptr %i.c, align 4, !tbaa !4  ; 7 uses
  %i.apn = load i32, ptr %i.ah, align 4, !tbaa !4 ; 7 uses
  %i.apo = load i32, ptr %i.ai, align 4, !tbaa !4 ; 3 uses
  %.01967 = call i32 @llvm.smax.i32(i32 %i.apn, i32 %i.apm)
  %.11968 = call i32 @llvm.smax.i32(i32 %i.apo, i32 %.01967)
  %i.app = icmp sgt i32 %.11968, 0
  br i1 %i.app, label %.preheader2334.lr.ph, label %.loopexit2341

.preheader2334.lr.ph:                             ; preds = %bb.bc
  %i.apq = select i1 %i.aor, i32 %i.aot, i32 0    ; 3 uses
  %factor.op.mul2603 = mul i32 %i.apn, %i.apq
  %factor.op.mul2602 = mul i32 %i.apn, %i.apk
  %factor.op.mul2601 = mul i32 %i.apn, %i.apb
  %factor.op.mul2600 = mul i32 %i.apn, %i.aox
  %i.apr = add nuw nsw i32 %i.aog, 1
  %i.aps = mul nsw i32 %i.apq, %i.apr
  %i.apt = select i1 %i.aoh, i32 %i.aps, i32 0
  %i.apu = add nuw nsw i32 %i.anh, 1
  %i.apv = mul nsw i32 %i.apl, %i.apu
  %i.apw = select i1 %i.ani, i32 %i.apv, i32 0
  %i.apx = mul i32 %i.apm, %i.apf
  %i.apy = icmp slt i32 %i.apo, 1
  %i.apz = icmp slt i32 %i.apm, 1
  %i.aqa = sub i32 %i.aox, %i.apm
  %i.aqb = sub i32 %i.apb, %i.apm
  %i.aqc = sub i32 %i.apk, %i.apx
  %i.aqd = sub i32 %i.apq, %i.apm
  %i.aqe = sub i32 %i.apa, %factor.op.mul2600
  %i.aqf = sub i32 %i.ape, %factor.op.mul2601
  %i.aqg = sub i32 %i.apw, %factor.op.mul2602
  %i.aqh = sub i32 %i.apt, %factor.op.mul2603
  %i.aqi = icmp slt i32 %i.apn, 1
  %or.cond2854.not2868 = or i1 %i.apy, %i.aqi
  %brmerge2856 = or i1 %or.cond2854.not2868, %i.apz
  br i1 %brmerge2856, label %.loopexit2341, label %.preheader2330.us.us.us.us.us.preheader

.preheader2330.us.us.us.us.us.preheader:          ; preds = %.preheader2334.lr.ph
  %i.aqj = sext i32 %i.apf to i64
  %i.aqk = sext i32 %i.df to i64                  ; 2 uses
  %i.aql = sext i32 %i.dt to i64
  %9 = zext nneg i32 %i.dy to i64                 ; 3 uses
  %invariant.gep2845 = getelementptr [8 x i8], ptr %i.bf, i64 %9
  br label %.preheader2330.us.us.us.us.us

.preheader2330.us.us.us.us.us:                    ; preds = %.preheader2330.us.us.us.us.us.preheader, %._crit_edge2566.split.us.us.us.us.us.us
  %.719952586.us.us.us.us.us = phi i32 [ %i.bao, %._crit_edge2566.split.us.us.us.us.us.us ], [ 0, %.preheader2330.us.us.us.us.us.preheader ]
  %.92585.us.us.us.us.us = phi i32 [ %i.bam, %._crit_edge2566.split.us.us.us.us.us.us ], [ %i.anx, %.preheader2330.us.us.us.us.us.preheader ]
  %.920722584.us.us.us.us.us = phi i32 [ %i.ban, %._crit_edge2566.split.us.us.us.us.us.us ], [ %i.aow, %.preheader2330.us.us.us.us.us.preheader ]
  %.920842583.us.us.us.us.us = phi i32 [ %i.bak, %._crit_edge2566.split.us.us.us.us.us.us ], [ %i.ama, %.preheader2330.us.us.us.us.us.preheader ]
  %.920962582.us.us.us.us.us = phi i32 [ %i.bal, %._crit_edge2566.split.us.us.us.us.us.us ], [ %i.amz, %.preheader2330.us.us.us.us.us.preheader ]
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge.us.us.us.us.us.us2620, %.preheader2330.us.us.us.us.us
  %.719872565.us.us.us.us.us.us = phi i32 [ 0, %.preheader2330.us.us.us.us.us ], [ %i.baj, %._crit_edge.us.us.us.us.us.us2620 ]
  %.102564.us.us.us.us.us.us = phi i32 [ %.92585.us.us.us.us.us, %.preheader2330.us.us.us.us.us ], [ %i.bah, %._crit_edge.us.us.us.us.us.us2620 ]
  %.1020732563.us.us.us.us.us.us = phi i32 [ %.920722584.us.us.us.us.us, %.preheader2330.us.us.us.us.us ], [ %i.bai, %._crit_edge.us.us.us.us.us.us2620 ]
  %.1020852562.us.us.us.us.us.us = phi i32 [ %.920842583.us.us.us.us.us, %.preheader2330.us.us.us.us.us ], [ %i.baf, %._crit_edge.us.us.us.us.us.us2620 ]
  %.1020972561.us.us.us.us.us.us = phi i32 [ %.920962582.us.us.us.us.us, %.preheader2330.us.us.us.us.us ], [ %i.bag, %._crit_edge.us.us.us.us.us.us2620 ]
  %i.aqm = sext i32 %.102564.us.us.us.us.us.us to i64
  %i.aqn = sext i32 %.1020732563.us.us.us.us.us.us to i64
  %i.aqo = sext i32 %.1020852562.us.us.us.us.us.us to i64
  %i.aqp = sext i32 %.1020972561.us.us.us.us.us.us to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.preheader.us.us.us.us.us.us
  %indvars.iv2773 = phi i64 [ %indvars.iv.next2774, %bb.bd ], [ %i.aqp, %.preheader.us.us.us.us.us.us ] ; 3 uses
  %indvars.iv2771 = phi i64 [ %indvars.iv.next2772, %bb.bd ], [ %i.aqo, %.preheader.us.us.us.us.us.us ] ; 4 uses
  %indvars.iv2769 = phi i64 [ %indvars.iv.next2770, %bb.bd ], [ %i.aqn, %.preheader.us.us.us.us.us.us ] ; 14 uses
  %indvars.iv2767 = phi i64 [ %indvars.iv.next2768, %bb.bd ], [ %i.aqm, %.preheader.us.us.us.us.us.us ] ; 20 uses
  %.72556.us.us.us.us.us.us = phi i32 [ %i.baa, %bb.bd ], [ 0, %.preheader.us.us.us.us.us.us ]
  %i.aqq = sub nsw i64 %indvars.iv2767, %i.aqk    ; 8 uses
  %i.aqr = add nsw i64 %indvars.iv2767, %i.aqk    ; 22 uses
  %i.aqs = add nsw i64 %indvars.iv2771, %i.aql    ; 3 uses
  %i.aqt = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv2773 ; 13 uses
  %i.aqu = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.aqv = getelementptr inbounds [8 x i8], ptr %.120152261, i64 %i.aqr ; 2 uses
  %i.aqw = load double, ptr %i.aqv, align 8, !tbaa !35
  %i.aqx = fmul double %i.aqu, %i.aqw
  %gep2846 = getelementptr [8 x i8], ptr %invariant.gep2845, i64 %i.aqs ; 3 uses
  %i.aqy = getelementptr i8, ptr %gep2846, i64 8
  %i.aqz = load double, ptr %i.aqy, align 8, !tbaa !35 ; 2 uses
  %i.ara = getelementptr inbounds [8 x i8], ptr %.12023, i64 %i.aqr
  %i.arb = load double, ptr %i.ara, align 8, !tbaa !35
  %i.arc = fmul double %i.aqu, %i.arb
  %i.ard = call double @llvm.fmuladd.f64(double %i.aqx, double %i.aqz, double %i.arc)
  %i.are = getelementptr inbounds [8 x i8], ptr %.12023, i64 %indvars.iv2767 ; 2 uses
  %i.arf = load double, ptr %i.are, align 8, !tbaa !35
  %i.arg = call double @llvm.fmuladd.f64(double %i.arf, double %i.aqz, double %i.ard)
  %i.arh = getelementptr inbounds [8 x i8], ptr %.12054, i64 %indvars.iv2769
  store double %i.arg, ptr %i.arh, align 8, !tbaa !35
  %i.ari = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.arj = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.aqr ; 2 uses
  %i.ark = load double, ptr %i.arj, align 8, !tbaa !35
  %i.arl = fmul double %i.ari, %i.ark
  %i.arm = load double, ptr %gep2846, align 8, !tbaa !35 ; 2 uses
  %i.arn = getelementptr inbounds [8 x i8], ptr %.1200322402258, i64 %i.aqr
  %i.aro = load double, ptr %i.arn, align 8, !tbaa !35
  %i.arp = fmul double %i.ari, %i.aro
  %i.arq = call double @llvm.fmuladd.f64(double %i.arl, double %i.arm, double %i.arp)
  %i.arr = getelementptr inbounds [8 x i8], ptr %.1200322402258, i64 %indvars.iv2767 ; 2 uses
  %i.ars = load double, ptr %i.arr, align 8, !tbaa !35
  %i.art = call double @llvm.fmuladd.f64(double %i.ars, double %i.arm, double %i.arq)
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv2769
  store double %i.art, ptr %i.aru, align 8, !tbaa !35
  %i.arv = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.arw = getelementptr inbounds [8 x i8], ptr %.120132262, i64 %i.aqr ; 2 uses
  %i.arx = load double, ptr %i.arw, align 8, !tbaa !35
  %i.ary = fmul double %i.arv, %i.arx
  %i.arz = getelementptr i8, ptr %gep2846, i64 -8
  %i.asa = load double, ptr %i.arz, align 8, !tbaa !35 ; 2 uses
  %i.asb = getelementptr inbounds [8 x i8], ptr %.12021, i64 %i.aqr
  %i.asc = load double, ptr %i.asb, align 8, !tbaa !35
  %i.asd = fmul double %i.arv, %i.asc
  %i.ase = call double @llvm.fmuladd.f64(double %i.ary, double %i.asa, double %i.asd)
  %i.asf = getelementptr inbounds [8 x i8], ptr %.12021, i64 %indvars.iv2767 ; 2 uses
  %i.asg = load double, ptr %i.asf, align 8, !tbaa !35
  %i.ash = call double @llvm.fmuladd.f64(double %i.asg, double %i.asa, double %i.ase)
  %i.asi = getelementptr inbounds [8 x i8], ptr %.12052, i64 %indvars.iv2769
  store double %i.ash, ptr %i.asi, align 8, !tbaa !35
  %i.asj = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.ask = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.aqr ; 2 uses
  %i.asl = load double, ptr %i.ask, align 8, !tbaa !35
  %i.asm = fmul double %i.asj, %i.asl
  %i.asn = getelementptr [8 x i8], ptr %i.bf, i64 %i.aqs ; 3 uses
  %i.aso = getelementptr i8, ptr %i.asn, i64 8
  %i.asp = load double, ptr %i.aso, align 8, !tbaa !35 ; 2 uses
  %i.asq = getelementptr inbounds [8 x i8], ptr %.1199922422256, i64 %i.aqr
  %i.asr = load double, ptr %i.asq, align 8, !tbaa !35
  %i.ass = fmul double %i.asj, %i.asr
  %i.ast = call double @llvm.fmuladd.f64(double %i.asm, double %i.asp, double %i.ass)
  %i.asu = getelementptr inbounds [8 x i8], ptr %.1199922422256, i64 %indvars.iv2767 ; 2 uses
  %i.asv = load double, ptr %i.asu, align 8, !tbaa !35
  %i.asw = call double @llvm.fmuladd.f64(double %i.asv, double %i.asp, double %i.ast)
  %i.asx = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv2769
  store double %i.asw, ptr %i.asx, align 8, !tbaa !35
  %i.asy = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv2767
  %i.asz = load double, ptr %i.asy, align 8, !tbaa !35
  %i.ata = load double, ptr %i.asn, align 8, !tbaa !35 ; 2 uses
  %i.atb = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.atc = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.aqr
  %i.atd = load double, ptr %i.atc, align 8, !tbaa !35
  %i.ate = fmul double %i.atb, %i.atd
  %i.atf = fmul double %i.ata, %i.ate
  %i.atg = call double @llvm.fmuladd.f64(double %i.asz, double %i.ata, double %i.atf)
  %i.ath = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.aqr
  %i.ati = load double, ptr %i.ath, align 8, !tbaa !35
  %i.atj = call double @llvm.fmuladd.f64(double %i.atb, double %i.ati, double %i.atg)
  %i.atk = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv2769
  store double %i.atj, ptr %i.atk, align 8, !tbaa !35
  %i.atl = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.atm = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.aqr
  %i.atn = load double, ptr %i.atm, align 8, !tbaa !35
  %i.ato = fmul double %i.atl, %i.atn
  %i.atp = getelementptr i8, ptr %i.asn, i64 -8
  %i.atq = load double, ptr %i.atp, align 8, !tbaa !35 ; 2 uses
  %i.atr = getelementptr inbounds [8 x i8], ptr %.1199722432255, i64 %i.aqr
  %i.ats = load double, ptr %i.atr, align 8, !tbaa !35
  %i.att = fmul double %i.atl, %i.ats
  %i.atu = call double @llvm.fmuladd.f64(double %i.ato, double %i.atq, double %i.att)
  %i.atv = getelementptr inbounds [8 x i8], ptr %.1199722432255, i64 %indvars.iv2767
  %i.atw = load double, ptr %i.atv, align 8, !tbaa !35
  %i.atx = call double @llvm.fmuladd.f64(double %i.atw, double %i.atq, double %i.atu)
  %i.aty = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv2769
  store double %i.atx, ptr %i.aty, align 8, !tbaa !35
  %i.atz = sub nsw i64 %i.aqs, %9
  %i.aua = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.aub = getelementptr inbounds [8 x i8], ptr %.120112263, i64 %i.aqr
  %i.auc = load double, ptr %i.aub, align 8, !tbaa !35
  %i.aud = fmul double %i.aua, %i.auc
  %i.aue = getelementptr [8 x i8], ptr %i.bf, i64 %i.atz ; 3 uses
  %i.auf = getelementptr i8, ptr %i.aue, i64 8
  %i.aug = load double, ptr %i.auf, align 8, !tbaa !35 ; 2 uses
  %i.auh = getelementptr inbounds [8 x i8], ptr %.12019, i64 %i.aqr
  %i.aui = load double, ptr %i.auh, align 8, !tbaa !35
  %i.auj = fmul double %i.aua, %i.aui
  %i.auk = call double @llvm.fmuladd.f64(double %i.aud, double %i.aug, double %i.auj)
  %i.aul = getelementptr inbounds [8 x i8], ptr %.12019, i64 %indvars.iv2767
  %i.aum = load double, ptr %i.aul, align 8, !tbaa !35
  %i.aun = call double @llvm.fmuladd.f64(double %i.aum, double %i.aug, double %i.auk)
  %i.auo = getelementptr inbounds [8 x i8], ptr %.12050, i64 %indvars.iv2769
  store double %i.aun, ptr %i.auo, align 8, !tbaa !35
  %i.aup = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.auq = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.aqr
  %i.aur = load double, ptr %i.auq, align 8, !tbaa !35
  %i.aus = fmul double %i.aup, %i.aur
  %i.aut = load double, ptr %i.aue, align 8, !tbaa !35 ; 2 uses
  %i.auu = getelementptr inbounds [8 x i8], ptr %.1200122412257, i64 %i.aqr
  %i.auv = load double, ptr %i.auu, align 8, !tbaa !35
  %i.auw = fmul double %i.aup, %i.auv
  %i.aux = call double @llvm.fmuladd.f64(double %i.aus, double %i.aut, double %i.auw)
  %i.auy = getelementptr inbounds [8 x i8], ptr %.1200122412257, i64 %indvars.iv2767
  %i.auz = load double, ptr %i.auy, align 8, !tbaa !35
  %i.ava = call double @llvm.fmuladd.f64(double %i.auz, double %i.aut, double %i.aux)
  %i.avb = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv2769
  store double %i.ava, ptr %i.avb, align 8, !tbaa !35
  %i.avc = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.avd = getelementptr inbounds [8 x i8], ptr %.120092264, i64 %i.aqr
  %i.ave = load double, ptr %i.avd, align 8, !tbaa !35
  %i.avf = fmul double %i.avc, %i.ave
  %i.avg = getelementptr i8, ptr %i.aue, i64 -8
  %i.avh = load double, ptr %i.avg, align 8, !tbaa !35 ; 2 uses
  %i.avi = getelementptr inbounds [8 x i8], ptr %.12017, i64 %i.aqr
  %i.avj = load double, ptr %i.avi, align 8, !tbaa !35
  %i.avk = fmul double %i.avc, %i.avj
  %i.avl = call double @llvm.fmuladd.f64(double %i.avf, double %i.avh, double %i.avk)
  %i.avm = getelementptr inbounds [8 x i8], ptr %.12017, i64 %indvars.iv2767
  %i.avn = load double, ptr %i.avm, align 8, !tbaa !35
  %i.avo = call double @llvm.fmuladd.f64(double %i.avn, double %i.avh, double %i.avl)
  %i.avp = getelementptr inbounds [8 x i8], ptr %.12048, i64 %indvars.iv2769
  store double %i.avo, ptr %i.avp, align 8, !tbaa !35
  %i.avq = add nsw i64 %indvars.iv2771, %9        ; 3 uses
  %i.avr = add nsw i64 %i.avq, 1                  ; 2 uses
  %i.avs = getelementptr inbounds [8 x i8], ptr %.120152261, i64 %indvars.iv2767
  %i.avt = load double, ptr %i.avs, align 8, !tbaa !35
  %i.avu = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv2773 ; 4 uses
  %i.avv = load double, ptr %i.avu, align 8, !tbaa !35 ; 2 uses
  %i.avw = getelementptr inbounds [8 x i8], ptr %.120152261, i64 %i.aqq
  %i.avx = load double, ptr %i.avw, align 8, !tbaa !35
  %i.avy = fmul double %i.avv, %i.avx
  %i.avz = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.avr
  %i.awa = load double, ptr %i.avz, align 8, !tbaa !35 ; 2 uses
  %i.awb = call double @llvm.fmuladd.f64(double %i.avy, double %i.awa, double %i.avt)
  %i.awc = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.awd = load double, ptr %i.aqv, align 8, !tbaa !35
  %i.awe = fmul double %i.awc, %i.awd
  %i.awf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.avr
  %i.awg = load double, ptr %i.awf, align 8, !tbaa !35 ; 2 uses
  %i.awh = call double @llvm.fmuladd.f64(double %i.awe, double %i.awg, double %i.awb)
  %i.awi = getelementptr inbounds [8 x i8], ptr %.12039, i64 %indvars.iv2767
  %i.awj = load double, ptr %i.awi, align 8, !tbaa !35
  %i.awk = call double @llvm.fmuladd.f64(double %i.awj, double %i.awa, double %i.awh)
  %i.awl = load double, ptr %i.are, align 8, !tbaa !35
  %i.awm = call double @llvm.fmuladd.f64(double %i.awl, double %i.awg, double %i.awk)
  %i.awn = getelementptr inbounds [8 x i8], ptr %.12023, i64 %i.aqq
  %i.awo = load double, ptr %i.awn, align 8, !tbaa !35
  %i.awp = call double @llvm.fmuladd.f64(double %i.avv, double %i.awo, double %i.awm)
  %i.awq = getelementptr inbounds [8 x i8], ptr %.12039, i64 %i.aqr
  %i.awr = load double, ptr %i.awq, align 8, !tbaa !35
  %i.aws = call double @llvm.fmuladd.f64(double %i.awc, double %i.awr, double %i.awp)
  %i.awt = getelementptr inbounds [8 x i8], ptr %.12046, i64 %indvars.iv2769
  store double %i.aws, ptr %i.awt, align 8, !tbaa !35
  %i.awu = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv2767
  %i.awv = load double, ptr %i.awu, align 8, !tbaa !35
  %i.aww = load double, ptr %i.avu, align 8, !tbaa !35 ; 2 uses
  %i.awx = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.aqq
  %i.awy = load double, ptr %i.awx, align 8, !tbaa !35
  %i.awz = fmul double %i.aww, %i.awy
  %i.axa = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.avq
  %i.axb = load double, ptr %i.axa, align 8, !tbaa !35 ; 2 uses
  %i.axc = call double @llvm.fmuladd.f64(double %i.awz, double %i.axb, double %i.awv)
  %i.axd = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.axe = load double, ptr %i.arj, align 8, !tbaa !35
  %i.axf = fmul double %i.axd, %i.axe
  %i.axg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.avq
  %i.axh = load double, ptr %i.axg, align 8, !tbaa !35 ; 2 uses
  %i.axi = call double @llvm.fmuladd.f64(double %i.axf, double %i.axh, double %i.axc)
  %i.axj = getelementptr inbounds [8 x i8], ptr %.1200722382260, i64 %indvars.iv2767
  %i.axk = load double, ptr %i.axj, align 8, !tbaa !35
  %i.axl = call double @llvm.fmuladd.f64(double %i.axk, double %i.axb, double %i.axi)
  %i.axm = load double, ptr %i.arr, align 8, !tbaa !35
  %i.axn = call double @llvm.fmuladd.f64(double %i.axm, double %i.axh, double %i.axl)
  %i.axo = getelementptr inbounds [8 x i8], ptr %.1200322402258, i64 %i.aqq
  %i.axp = load double, ptr %i.axo, align 8, !tbaa !35
  %i.axq = call double @llvm.fmuladd.f64(double %i.aww, double %i.axp, double %i.axn)
  %i.axr = getelementptr inbounds [8 x i8], ptr %.1200722382260, i64 %i.aqr
  %i.axs = load double, ptr %i.axr, align 8, !tbaa !35
  %i.axt = call double @llvm.fmuladd.f64(double %i.axd, double %i.axs, double %i.axq)
  %i.axu = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2769
  store double %i.axt, ptr %i.axu, align 8, !tbaa !35
  %i.axv = trunc nsw i64 %indvars.iv2771 to i32
  %i.axw = add i32 %i.dx, %i.axv
  %i.axx = getelementptr inbounds [8 x i8], ptr %.120132262, i64 %indvars.iv2767
  %i.axy = load double, ptr %i.axx, align 8, !tbaa !35
  %i.axz = load double, ptr %i.avu, align 8, !tbaa !35 ; 2 uses
  %i.aya = getelementptr inbounds [8 x i8], ptr %.120132262, i64 %i.aqq
  %i.ayb = load double, ptr %i.aya, align 8, !tbaa !35
  %i.ayc = fmul double %i.axz, %i.ayb
  %i.ayd = sext i32 %i.axw to i64                 ; 2 uses
  %i.aye = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.ayd
  %i.ayf = load double, ptr %i.aye, align 8, !tbaa !35 ; 2 uses
  %i.ayg = call double @llvm.fmuladd.f64(double %i.ayc, double %i.ayf, double %i.axy)
  %i.ayh = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.ayi = load double, ptr %i.arw, align 8, !tbaa !35
  %i.ayj = fmul double %i.ayh, %i.ayi
  %i.ayk = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ayd
  %i.ayl = load double, ptr %i.ayk, align 8, !tbaa !35 ; 2 uses
  %i.aym = call double @llvm.fmuladd.f64(double %i.ayj, double %i.ayl, double %i.ayg)
  %i.ayn = getelementptr inbounds [8 x i8], ptr %.12037, i64 %indvars.iv2767
  %i.ayo = load double, ptr %i.ayn, align 8, !tbaa !35
  %i.ayp = call double @llvm.fmuladd.f64(double %i.ayo, double %i.ayf, double %i.aym)
  %i.ayq = load double, ptr %i.asf, align 8, !tbaa !35
  %i.ayr = call double @llvm.fmuladd.f64(double %i.ayq, double %i.ayl, double %i.ayp)
  %i.ays = getelementptr inbounds [8 x i8], ptr %.12021, i64 %i.aqq
  %i.ayt = load double, ptr %i.ays, align 8, !tbaa !35
  %i.ayu = call double @llvm.fmuladd.f64(double %i.axz, double %i.ayt, double %i.ayr)
  %i.ayv = getelementptr inbounds [8 x i8], ptr %.12037, i64 %i.aqr
  %i.ayw = load double, ptr %i.ayv, align 8, !tbaa !35
  %i.ayx = call double @llvm.fmuladd.f64(double %i.ayh, double %i.ayw, double %i.ayu)
  %i.ayy = getelementptr inbounds [8 x i8], ptr %.12041, i64 %indvars.iv2769
  store double %i.ayx, ptr %i.ayy, align 8, !tbaa !35
  %indvars.iv.next2772 = add nsw i64 %indvars.iv2771, 1 ; 4 uses
  %i.ayz = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv2767
  %i.aza = load double, ptr %i.ayz, align 8, !tbaa !35
  %i.azb = load double, ptr %i.avu, align 8, !tbaa !35 ; 2 uses
  %i.azc = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.aqq
  %i.azd = load double, ptr %i.azc, align 8, !tbaa !35
  %i.aze = fmul double %i.azb, %i.azd
  %i.azf = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv.next2772
  %i.azg = load double, ptr %i.azf, align 8, !tbaa !35 ; 2 uses
  %i.azh = call double @llvm.fmuladd.f64(double %i.aze, double %i.azg, double %i.aza)
  %i.azi = load double, ptr %i.aqt, align 8, !tbaa !35 ; 2 uses
  %i.azj = load double, ptr %i.ask, align 8, !tbaa !35
  %i.azk = fmul double %i.azi, %i.azj
  %i.azl = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next2772
  %i.azm = load double, ptr %i.azl, align 8, !tbaa !35 ; 2 uses
  %i.azn = call double @llvm.fmuladd.f64(double %i.azk, double %i.azm, double %i.azh)
  %i.azo = getelementptr inbounds [8 x i8], ptr %.1200522392259, i64 %indvars.iv2767
  %i.azp = load double, ptr %i.azo, align 8, !tbaa !35
  %i.azq = call double @llvm.fmuladd.f64(double %i.azp, double %i.azg, double %i.azn)
  %i.azr = load double, ptr %i.asu, align 8, !tbaa !35
  %i.azs = call double @llvm.fmuladd.f64(double %i.azr, double %i.azm, double %i.azq)
  %i.azt = getelementptr inbounds [8 x i8], ptr %.1199922422256, i64 %i.aqq
  %i.azu = load double, ptr %i.azt, align 8, !tbaa !35
  %i.azv = call double @llvm.fmuladd.f64(double %i.azb, double %i.azu, double %i.azs)
  %i.azw = getelementptr inbounds [8 x i8], ptr %.1200522392259, i64 %i.aqr
  %i.azx = load double, ptr %i.azw, align 8, !tbaa !35
  %i.azy = call double @llvm.fmuladd.f64(double %i.azi, double %i.azx, double %i.azv)
  %i.azz = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv2769
  store double %i.azy, ptr %i.azz, align 8, !tbaa !35
  %indvars.iv.next2774 = add nsw i64 %indvars.iv2773, 1 ; 2 uses
  %indvars.iv.next2768 = add nsw i64 %indvars.iv2767, %i.aqj ; 2 uses
  %indvars.iv.next2770 = add nsw i64 %indvars.iv2769, 1 ; 2 uses
  %i.baa = add nuw nsw i32 %.72556.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2782.not = icmp eq i32 %i.baa, %i.apm
  br i1 %exitcond2782.not, label %._crit_edge.us.us.us.us.us.us2620, label %bb.bd, !llvm.loop !60

._crit_edge.us.us.us.us.us.us2620:                ; preds = %bb.bd
  %i.bab = trunc nsw i64 %indvars.iv.next2774 to i32
  %i.bac = trunc nsw i64 %indvars.iv.next2772 to i32
  %i.bad = trunc nsw i64 %indvars.iv.next2770 to i32
  %i.bae = trunc nsw i64 %indvars.iv.next2768 to i32
  %i.baf = add nsw i32 %i.aqa, %i.bac             ; 2 uses
  %i.bag = add nsw i32 %i.aqb, %i.bab             ; 2 uses
  %i.bah = add nsw i32 %i.aqc, %i.bae             ; 2 uses
  %i.bai = add nsw i32 %i.aqd, %i.bad             ; 2 uses
  %i.baj = add nuw nsw i32 %.719872565.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2783.not = icmp eq i32 %i.baj, %i.apn
  br i1 %exitcond2783.not, label %._crit_edge2566.split.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !61

._crit_edge2566.split.us.us.us.us.us.us:          ; preds = %._crit_edge.us.us.us.us.us.us2620
  %i.bak = add nsw i32 %i.aqe, %i.baf
  %i.bal = add nsw i32 %i.aqf, %i.bag
  %i.bam = add nsw i32 %i.aqg, %i.bah
  %i.ban = add nsw i32 %i.aqh, %i.bai
  %i.bao = add nuw nsw i32 %.719952586.us.us.us.us.us, 1 ; 2 uses
  %exitcond2784.not = icmp eq i32 %i.bao, %i.apo
  br i1 %exitcond2784.not, label %.loopexit2341, label %.preheader2330.us.us.us.us.us, !llvm.loop !62

.loopexit2341:                                    ; preds = %._crit_edge2360.split.us.us.us.us.us.us, %._crit_edge2426.split.us.us.us.us.us.us, %._crit_edge2496.split.us.us.us.us.us.us, %._crit_edge2566.split.us.us.us.us.us.us, %.preheader2334.lr.ph, %.preheader2339.lr.ph, %.preheader2337.lr.ph, %.preheader2335.lr.ph, %bb.aq, %bb.ae, %bb.s, %bb.bc
  %indvars.iv.next2786 = add nuw nsw i64 %indvars.iv2785, 1 ; 2 uses
  %i.bap = load i32, ptr %i.r, align 8, !tbaa !29
  %i.baq = sext i32 %i.bap to i64
  %i.bar = icmp slt i64 %indvars.iv.next2786, %i.baq
  br i1 %i.bar, label %.preheader2345, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %.loopexit2341, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMG3RAPPeriodicSym(ptr noundef %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 32 uses
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %.loopexit717

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @hypre_StructMatrixAssemble(ptr noundef nonnull %0) #5 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %.loopexit717

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 15 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 15 uses
  %i.u = icmp eq i32 %i.f, 27                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit716
  %indvars.iv878 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next879, %.loopexit716 ] ; 4 uses
  %.0596834 = phi ptr [ undef, %.lr.ph ], [ %.1597, %.loopexit716 ]
  %.0598833 = phi ptr [ undef, %.lr.ph ], [ %.1599, %.loopexit716 ]
  %.0600832 = phi ptr [ undef, %.lr.ph ], [ %.1601, %.loopexit716 ]
  %.0614831 = phi ptr [ undef, %.lr.ph ], [ %.1615, %.loopexit716 ]
  %.0616830 = phi ptr [ undef, %.lr.ph ], [ %.1617, %.loopexit716 ]
  %.0618829 = phi ptr [ undef, %.lr.ph ], [ %.1619, %.loopexit716 ]
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv878 ; 6 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv878 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.s, align 4, !tbaa !4
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ah = sub i32 %i.af, %i.ag
  %i.ai = call i32 @llvm.smax.i32(i32 %i.ah, i32 -1) ; 8 uses
  %.neg = xor i32 %i.ai, -1                       ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.aj = trunc nuw nsw i64 %indvars.iv878 to i32 ; 14 uses
  %i.ak = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.am = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.an = ptrtoaddr ptr %i.am to i64              ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.ao = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.aq = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64              ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.as = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.at = ptrtoaddr ptr %i.as to i64              ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.s, align 4, !tbaa !4
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %i.au = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.s, align 4, !tbaa !4
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %i.av = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %i.aw = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 4 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.ax = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.ay = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.az = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.ba = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %i.bb = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %i.bc = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1619 = phi ptr [ %i.bc, %bb.d ], [ %.0618829, %bb.c ] ; 5 uses
  %.1617 = phi ptr [ %i.bb, %bb.d ], [ %.0616830, %bb.c ] ; 5 uses
  %.1615 = phi ptr [ %i.ba, %bb.d ], [ %.0614831, %bb.c ] ; 10 uses
  %.1601 = phi ptr [ %i.az, %bb.d ], [ %.0600832, %bb.c ] ; 10 uses
  %.1599 = phi ptr [ %i.ay, %bb.d ], [ %.0598833, %bb.c ] ; 10 uses
  %.1597 = phi ptr [ %i.ax, %bb.d ], [ %.0596834, %bb.c ] ; 10 uses
  %.1599931 = ptrtoaddr ptr %.1599 to i64         ; 3 uses
  %.1597932 = ptrtoaddr ptr %.1597 to i64         ; 3 uses
  %.1601933 = ptrtoaddr ptr %.1601 to i64         ; 3 uses
  %.1615935 = ptrtoaddr ptr %.1615 to i64         ; 3 uses
  %i.bd = call i32 @hypre_BoxGetSize(ptr noundef %i.y, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.be = load i32, ptr %i.y, align 4, !tbaa !4
  %i.bf = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %i.bg = sub nsw i32 %i.be, %i.bf                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = load i32, ptr %i.ae, align 4, !tbaa !4  ; 2 uses
  %i.bk = sub nsw i32 %i.bi, %i.bj                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.bn = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.bo = sub nsw i32 %i.bn, %i.bj                ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, -1                  ; 3 uses
  br i1 %i.bp, label %bb.f, label %._crit_edge882

._crit_edge882:                                   ; preds = %bb.e
  %.pre = add nuw nsw i32 %i.bo, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bq = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.br = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bs = sub nsw i32 %i.bq, %i.br
  %i.bt = add nuw nsw i32 %i.bo, 1                ; 2 uses
  %i.bu = mul nsw i32 %i.bs, %i.bt
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge882, %bb.f
  %.pre-phi = phi i32 [ %.pre, %._crit_edge882 ], [ %i.bt, %bb.f ] ; 2 uses
  %i.bv = phi i32 [ 0, %._crit_edge882 ], [ %i.bu, %bb.f ]
  %i.bw = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.bx = sub i32 %i.bw, %i.bf                    ; 2 uses
  %i.by = icmp sgt i32 %i.bx, -1                  ; 3 uses
  %i.bz = add i32 %i.bx, 1                        ; 3 uses
  %i.ca = select i1 %i.by, i32 %i.bz, i32 0       ; 5 uses
  %i.cb = mul nsw i32 %i.ca, %.pre-phi
  %i.cc = select i1 %i.bp, i32 %i.cb, i32 0       ; 2 uses
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !4   ; 14 uses
  %i.ce = load i32, ptr %i.v, align 4, !tbaa !4   ; 7 uses
  %i.cf = load i32, ptr %i.w, align 4, !tbaa !4   ; 5 uses
  %.0646 = call i32 @llvm.smax.i32(i32 %i.ce, i32 %i.cd)
  %.1647 = call i32 @llvm.smax.i32(i32 %i.cf, i32 %.0646)
  %i.cg = icmp sgt i32 %.1647, 0                  ; 2 uses
  br i1 %i.cg, label %.preheader714.lr.ph, label %._crit_edge

.preheader714.lr.ph:                              ; preds = %bb.g
  %factor.op.mul732 = mul i32 %i.ca, %i.ce
  %i.ch = icmp slt i32 %i.cf, 1
  %i.ci = icmp slt i32 %i.cd, 1
  %i.cj = sub i32 %i.ca, %i.cd
  %i.ck = sub i32 %i.cc, %factor.op.mul732
  %i.cl = icmp slt i32 %i.ce, 1
  %or.cond.not921 = or i1 %i.ch, %i.cl
  %brmerge = or i1 %or.cond.not921, %i.ci
  br i1 %brmerge, label %._crit_edge, label %.preheader708.us.us.us.us.us.preheader

.preheader708.us.us.us.us.us.preheader:           ; preds = %.preheader714.lr.ph
  %i.cm = add nsw i32 %i.bv, %i.bk
  %i.cn = mul nsw i32 %i.bz, %i.cm
  %i.co = select i1 %i.by, i32 %i.cn, i32 0
  %i.cp = add nsw i32 %i.co, %i.bg
  %i.cq = add nsw i32 %i.cd, -1                   ; 2 uses
  %i.cr = xor i32 %i.ai, -1
  %scevgep1054 = getelementptr i8, ptr %i.au, i64 8
  %i.cs = zext i32 %i.cq to i64
  %i.ct = shl nuw nsw i64 %i.cs, 3                ; 8 uses
  %scevgep1055 = getelementptr i8, ptr %scevgep1054, i64 %i.ct
  %scevgep1058 = getelementptr i8, ptr %i.av, i64 8
  %scevgep1059 = getelementptr i8, ptr %scevgep1058, i64 %i.ct
  %scevgep1062 = getelementptr i8, ptr %i.aw, i64 8
  %scevgep1063 = getelementptr i8, ptr %scevgep1062, i64 %i.ct
  %scevgep1066 = getelementptr i8, ptr %i.ak, i64 8
  %scevgep1067 = getelementptr i8, ptr %scevgep1066, i64 %i.ct
  %scevgep1070 = getelementptr i8, ptr %i.am, i64 8
  %scevgep1071 = getelementptr i8, ptr %scevgep1070, i64 %i.ct
  %scevgep1073 = getelementptr i8, ptr %i.ao, i64 -8
  %scevgep1075 = getelementptr i8, ptr %i.ao, i64 %i.ct
  %scevgep1078 = getelementptr i8, ptr %i.aq, i64 8
  %scevgep1079 = getelementptr i8, ptr %scevgep1078, i64 %i.ct
  %i.cu = xor i32 %i.ai, -1
  %scevgep1082 = getelementptr i8, ptr %i.as, i64 8
  %scevgep1083 = getelementptr i8, ptr %scevgep1082, i64 %i.ct
  %i.cv = zext nneg i32 %i.cd to i64              ; 2 uses
  %min.iters.check1157 = icmp ult i32 %i.cd, 16
  %n.vec1160 = and i64 %i.cv, 2147483646          ; 4 uses
  %i.cw = trunc nuw nsw i64 %n.vec1160 to i32
  %cmp.n1173 = icmp eq i64 %n.vec1160, %i.cv
  br label %.preheader708.us.us.us.us.us

.preheader708.us.us.us.us.us:                     ; preds = %.preheader708.us.us.us.us.us.preheader, %._crit_edge722.split.us.us.us.us.us.us
  %.1589725.us.us.us.us.us = phi i32 [ %i.fd, %._crit_edge722.split.us.us.us.us.us.us ], [ 0, %.preheader708.us.us.us.us.us.preheader ]
  %.0623724.us.us.us.us.us = phi i32 [ %i.fc, %._crit_edge722.split.us.us.us.us.us.us ], [ %i.cp, %.preheader708.us.us.us.us.us.preheader ]
  br label %.preheader704.us.us.us.us.us.us

.preheader704.us.us.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader708.us.us.us.us.us
  %.1578721.us.us.us.us.us.us = phi i32 [ 0, %.preheader708.us.us.us.us.us ], [ %i.fb, %._crit_edge.us.us.us.us.us.us ]
  %.1624720.us.us.us.us.us.us = phi i32 [ %.0623724.us.us.us.us.us, %.preheader708.us.us.us.us.us ], [ %i.fa, %._crit_edge.us.us.us.us.us.us ] ; 3 uses
  %i.cx = sext i32 %.1624720.us.us.us.us.us.us to i64 ; 6 uses
  br i1 %min.iters.check1157, label %scalar.ph1156.preheader, label %vector.scevcheck1051

vector.scevcheck1051:                             ; preds = %.preheader704.us.us.us.us.us.us
  %i.cy = add i32 %.1624720.us.us.us.us.us.us, %i.cr ; 2 uses
  %i.cz = add i32 %i.cy, %i.cq
  %i.da = icmp slt i32 %i.cz, %i.cy
  br i1 %i.da, label %scalar.ph1156.preheader, label %vector.memcheck1052

vector.memcheck1052:                              ; preds = %vector.scevcheck1051
  %i.db = shl nsw i64 %i.cx, 3                    ; 14 uses
  %scevgep1053 = getelementptr i8, ptr %i.au, i64 %i.db ; 7 uses
  %scevgep1056 = getelementptr i8, ptr %scevgep1055, i64 %i.db ; 7 uses
  %scevgep1057 = getelementptr i8, ptr %i.av, i64 %i.db ; 7 uses
  %scevgep1060 = getelementptr i8, ptr %scevgep1059, i64 %i.db ; 7 uses
  %scevgep1061 = getelementptr i8, ptr %i.aw, i64 %i.db ; 7 uses
  %scevgep1064 = getelementptr i8, ptr %scevgep1063, i64 %i.db ; 7 uses
  %scevgep1065 = getelementptr i8, ptr %i.ak, i64 %i.db ; 3 uses
  %scevgep1068 = getelementptr i8, ptr %scevgep1067, i64 %i.db ; 3 uses
  %scevgep1069 = getelementptr i8, ptr %i.am, i64 %i.db ; 3 uses
  %scevgep1072 = getelementptr i8, ptr %scevgep1071, i64 %i.db ; 3 uses
  %scevgep1074 = getelementptr i8, ptr %scevgep1073, i64 %i.db ; 3 uses
  %scevgep1076 = getelementptr i8, ptr %scevgep1075, i64 %i.db ; 3 uses
  %scevgep1077 = getelementptr i8, ptr %i.aq, i64 %i.db ; 3 uses
  %scevgep1080 = getelementptr i8, ptr %scevgep1079, i64 %i.db ; 3 uses
end_hunk_4
begin_hunk_5_@hypre_SMG3RAPPeriodicSym:bb.a
  %i.fn = icmp slt i32 %i.ce, 1
  %or.cond910.not923 = or i1 %i.fj, %i.fn
  %brmerge912 = or i1 %or.cond910.not923, %i.fk
  br i1 %brmerge912, label %._crit_edge760, label %.preheader707.us.us.us.us.us.preheader

.preheader707.us.us.us.us.us.preheader:           ; preds = %.preheader712.lr.ph
  %i.fo = add nsw i32 %i.fi, %i.bk
  %i.fp = mul nsw i32 %i.fo, %i.bz
  %i.fq = select i1 %i.by, i32 %i.fp, i32 0
  %i.fr = add nsw i32 %i.fq, %i.bg
  %i.fs = sub i64 %i.an, %i.al
  %i.ft = sub i64 %i.ap, %i.al
  %i.fu = sub i64 %i.ar, %i.al
  %i.fv = sub i64 %i.at, %i.al
  %i.fw = sub i64 %i.ap, %i.an
  %i.fx = sub i64 %i.ar, %i.an
  %i.fy = sub i64 %i.at, %i.an
  %i.fz = sub i64 %i.ar, %i.ap
  %i.ga = sub i64 %i.at, %i.ap
  %i.gb = sub i64 %i.at, %i.ar
  %i.gc = zext nneg i32 %i.cd to i64              ; 2 uses
  %min.iters.check1040 = icmp ult i32 %i.cd, 8
  %diff.check1020 = icmp ult i64 %i.fs, 32
  %diff.check1021 = icmp ult i64 %i.ft, 32
  %conflict.rdx1022 = or i1 %diff.check1020, %diff.check1021
  %diff.check1023 = icmp ult i64 %i.fu, 32
  %conflict.rdx1024 = or i1 %conflict.rdx1022, %diff.check1023
  %diff.check1025 = icmp ult i64 %i.fv, 32
  %conflict.rdx1026 = or i1 %conflict.rdx1024, %diff.check1025
  %diff.check1027 = icmp ult i64 %i.fw, 32
  %conflict.rdx1028 = or i1 %conflict.rdx1026, %diff.check1027
  %diff.check1029 = icmp ult i64 %i.fx, 32
  %conflict.rdx1030 = or i1 %conflict.rdx1028, %diff.check1029
  %diff.check1031 = icmp ult i64 %i.fy, 32
  %conflict.rdx1032 = or i1 %conflict.rdx1030, %diff.check1031
  %diff.check1033 = icmp ult i64 %i.fz, 32
  %conflict.rdx1034 = or i1 %conflict.rdx1032, %diff.check1033
  %diff.check1035 = icmp ult i64 %i.ga, 32
  %conflict.rdx1036 = or i1 %conflict.rdx1034, %diff.check1035
  %diff.check1037 = icmp ult i64 %i.gb, 32
  %conflict.rdx1038 = or i1 %conflict.rdx1036, %diff.check1037
  %n.vec1043 = and i64 %i.gc, 2147483644          ; 4 uses
  %i.gd = trunc nuw nsw i64 %n.vec1043 to i32
  %cmp.n1048 = icmp eq i64 %n.vec1043, %i.gc
  br label %.preheader707.us.us.us.us.us

.preheader707.us.us.us.us.us:                     ; preds = %.preheader707.us.us.us.us.us.preheader, %._crit_edge748.split.us.us.us.us.us.us
  %.3591751.us.us.us.us.us = phi i32 [ %i.hp, %._crit_edge748.split.us.us.us.us.us.us ], [ 0, %.preheader707.us.us.us.us.us.preheader ]
  %.3626750.us.us.us.us.us = phi i32 [ %i.ho, %._crit_edge748.split.us.us.us.us.us.us ], [ %i.fr, %.preheader707.us.us.us.us.us.preheader ]
  br label %.preheader703.us.us.us.us.us.us

.preheader703.us.us.us.us.us.us:                  ; preds = %._crit_edge745.us.us.us.us.us.us, %.preheader707.us.us.us.us.us
  %.3580747.us.us.us.us.us.us = phi i32 [ 0, %.preheader707.us.us.us.us.us ], [ %i.hn, %._crit_edge745.us.us.us.us.us.us ]
  %.4627746.us.us.us.us.us.us = phi i32 [ %.3626750.us.us.us.us.us, %.preheader707.us.us.us.us.us ], [ %i.hm, %._crit_edge745.us.us.us.us.us.us ]
  %i.ge = sext i32 %.4627746.us.us.us.us.us.us to i64 ; 3 uses
  %brmerge1199 = select i1 %min.iters.check1040, i1 true, i1 %conflict.rdx1038
  br i1 %brmerge1199, label %scalar.ph1039.preheader, label %vector.ph1041

vector.ph1041:                                    ; preds = %.preheader703.us.us.us.us.us.us
  %i.gf = add nsw i64 %n.vec1043, %i.ge           ; 2 uses
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.body1044, %vector.ph1041
  %index1045 = phi i64 [ 0, %vector.ph1041 ], [ %index.next1046, %vector.body1044 ] ; 2 uses
  %i.gg = add i64 %index1045, %i.ge               ; 5 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.gg ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <2 x double> zeroinitializer, ptr %i.gh, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.gi, align 8, !tbaa !35
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.gg ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store <2 x double> zeroinitializer, ptr %i.gj, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.gk, align 8, !tbaa !35
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.gg ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store <2 x double> zeroinitializer, ptr %i.gl, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.gm, align 8, !tbaa !35
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.gg ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <2 x double> zeroinitializer, ptr %i.gn, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.go, align 8, !tbaa !35
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.gg ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <2 x double> zeroinitializer, ptr %i.gp, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.gq, align 8, !tbaa !35
  %index.next1046 = add nuw i64 %index1045, 4     ; 2 uses
  %i.gr = icmp eq i64 %index.next1046, %n.vec1043
  br i1 %i.gr, label %middle.block1047, label %vector.body1044, !llvm.loop !90

middle.block1047:                                 ; preds = %vector.body1044
  br i1 %cmp.n1048, label %._crit_edge745.us.us.us.us.us.us, label %scalar.ph1039.preheader

scalar.ph1039.preheader:                          ; preds = %.preheader703.us.us.us.us.us.us, %middle.block1047
  %indvars.iv860.ph = phi i64 [ %i.gf, %middle.block1047 ], [ %i.ge, %.preheader703.us.us.us.us.us.us ] ; 7 uses
  %.3744.us.us.us.us.us.us.ph = phi i32 [ %i.gd, %middle.block1047 ], [ 0, %.preheader703.us.us.us.us.us.us ] ; 4 uses
  %i.gs = sub i32 %i.cd, %.3744.us.us.us.us.us.us.ph
  %.neg1187.a = add i32 %.3744.us.us.us.us.us.us.ph, 1
  %xtraiter = and i32 %i.gs, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph1039.prol.loopexit, label %scalar.ph1039.prol

scalar.ph1039.prol:                               ; preds = %scalar.ph1039.preheader
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv860.ph
  store double 0.000000e+00, ptr %i.gt, align 8, !tbaa !35
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv860.ph
  store double 0.000000e+00, ptr %i.gu, align 8, !tbaa !35
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv860.ph
  store double 0.000000e+00, ptr %i.gv, align 8, !tbaa !35
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv860.ph
  store double 0.000000e+00, ptr %i.gw, align 8, !tbaa !35
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.as, i64 %indvars.iv860.ph
  store double 0.000000e+00, ptr %i.gx, align 8, !tbaa !35
  %indvars.iv.next861.prol = add nsw i64 %indvars.iv860.ph, 1 ; 2 uses
  %i.gy = add nuw nsw i32 %.3744.us.us.us.us.us.us.ph, 1
  br label %scalar.ph1039.prol.loopexit

scalar.ph1039.prol.loopexit:                      ; preds = %scalar.ph1039.prol, %scalar.ph1039.preheader
  %indvars.iv.next861.lcssa1179.unr = phi i64 [ poison, %scalar.ph1039.preheader ], [ %indvars.iv.next861.prol, %scalar.ph1039.prol ]
  %indvars.iv860.unr = phi i64 [ %indvars.iv860.ph, %scalar.ph1039.preheader ], [ %indvars.iv.next861.prol, %scalar.ph1039.prol ]
  %.3744.us.us.us.us.us.us.unr = phi i32 [ %.3744.us.us.us.us.us.us.ph, %scalar.ph1039.preheader ], [ %i.gy, %scalar.ph1039.prol ]
  %i.gz = icmp eq i32 %i.cd, %.neg1187.a
  br i1 %i.gz, label %._crit_edge745.us.us.us.us.us.us, label %scalar.ph1039

scalar.ph1039:                                    ; preds = %scalar.ph1039.prol.loopexit, %scalar.ph1039
  %indvars.iv860 = phi i64 [ %indvars.iv.next861.1, %scalar.ph1039 ], [ %indvars.iv860.unr, %scalar.ph1039.prol.loopexit ] ; 7 uses
  %.3744.us.us.us.us.us.us = phi i32 [ %i.hk, %scalar.ph1039 ], [ %.3744.us.us.us.us.us.us.unr, %scalar.ph1039.prol.loopexit ]
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv860
  store double 0.000000e+00, ptr %i.ha, align 8, !tbaa !35
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv860
  store double 0.000000e+00, ptr %i.hb, align 8, !tbaa !35
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv860
  store double 0.000000e+00, ptr %i.hc, align 8, !tbaa !35
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv860
  store double 0.000000e+00, ptr %i.hd, align 8, !tbaa !35
  %i.he = getelementptr inbounds [8 x i8], ptr %i.as, i64 %indvars.iv860
  store double 0.000000e+00, ptr %i.he, align 8, !tbaa !35
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, 1 ; 5 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv.next861
  store double 0.000000e+00, ptr %i.hf, align 8, !tbaa !35
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.next861
  store double 0.000000e+00, ptr %i.hg, align 8, !tbaa !35
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next861
  store double 0.000000e+00, ptr %i.hh, align 8, !tbaa !35
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv.next861
  store double 0.000000e+00, ptr %i.hi, align 8, !tbaa !35
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.as, i64 %indvars.iv.next861
  store double 0.000000e+00, ptr %i.hj, align 8, !tbaa !35
  %indvars.iv.next861.1 = add nsw i64 %indvars.iv860, 2 ; 2 uses
  %i.hk = add nuw nsw i32 %.3744.us.us.us.us.us.us, 2 ; 2 uses
  %exitcond863.not.1 = icmp eq i32 %i.hk, %i.cd
  br i1 %exitcond863.not.1, label %._crit_edge745.us.us.us.us.us.us, label %scalar.ph1039, !llvm.loop !91

._crit_edge745.us.us.us.us.us.us:                 ; preds = %scalar.ph1039.prol.loopexit, %scalar.ph1039, %middle.block1047
  %indvars.iv.next861.lcssa = phi i64 [ %i.gf, %middle.block1047 ], [ %indvars.iv.next861.lcssa1179.unr, %scalar.ph1039.prol.loopexit ], [ %indvars.iv.next861.1, %scalar.ph1039 ]
  %i.hl = trunc nsw i64 %indvars.iv.next861.lcssa to i32
  %i.hm = add nsw i32 %i.fl, %i.hl                ; 2 uses
  %i.hn = add nuw nsw i32 %.3580747.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond864.not = icmp eq i32 %i.hn, %i.ce
  br i1 %exitcond864.not, label %._crit_edge748.split.us.us.us.us.us.us, label %.preheader703.us.us.us.us.us.us, !llvm.loop !92

._crit_edge748.split.us.us.us.us.us.us:           ; preds = %._crit_edge745.us.us.us.us.us.us
  %i.ho = add nsw i32 %i.fm, %i.hm
  %i.hp = add nuw nsw i32 %.3591751.us.us.us.us.us, 1 ; 2 uses
  %exitcond865.not = icmp eq i32 %i.hp, %i.cf
  br i1 %exitcond865.not, label %._crit_edge760, label %.preheader707.us.us.us.us.us, !llvm.loop !93

._crit_edge760:                                   ; preds = %._crit_edge748.split.us.us.us.us.us.us, %.preheader712.lr.ph, %bb.i
  br i1 %i.u, label %bb.j, label %.loopexit716

bb.j:                                             ; preds = %._crit_edge760
  %i.hq = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.y, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.hr = load i32, ptr %i.y, align 4, !tbaa !4
  %i.hs = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %i.ht = sub nsw i32 %i.hr, %i.hs                ; 2 uses
  %i.hu = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.hv = load i32, ptr %i.ae, align 4, !tbaa !4  ; 2 uses
  %i.hw = sub nsw i32 %i.hu, %i.hv                ; 2 uses
  %i.hx = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.hy = sub nsw i32 %i.hx, %i.hv                ; 3 uses
  %i.hz = icmp sgt i32 %i.hy, -1                  ; 3 uses
  br i1 %i.hz, label %bb.k, label %._crit_edge881

._crit_edge881:                                   ; preds = %bb.j
  %.pre883 = add nuw nsw i32 %i.hy, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ia = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.ib = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.ic = sub nsw i32 %i.ia, %i.ib
  %i.id = add nuw nsw i32 %i.hy, 1                ; 2 uses
  %i.ie = mul nsw i32 %i.ic, %i.id
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge881, %bb.k
  %.pre-phi884 = phi i32 [ %.pre883, %._crit_edge881 ], [ %i.id, %bb.k ] ; 2 uses
  %i.if = phi i32 [ 0, %._crit_edge881 ], [ %i.ie, %bb.k ]
  %i.ig = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ih = sub i32 %i.ig, %i.hs                    ; 2 uses
  %i.ii = icmp sgt i32 %i.ih, -1                  ; 3 uses
  %3 = add nsw i32 %i.if, %i.hw
  %4 = add i32 %i.ih, 1                           ; 3 uses
  %5 = mul nsw i32 %4, %3
  %6 = select i1 %i.ii, i32 %5, i32 0
  %i.ij = add nsw i32 %6, %i.ht
  %i.ik = select i1 %i.ii, i32 %4, i32 0          ; 5 uses
  %i.il = mul nsw i32 %i.ik, %.pre-phi884
  %i.im = select i1 %i.hz, i32 %i.il, i32 0       ; 2 uses
  %i.in = load i32, ptr %i.b, align 4, !tbaa !4   ; 14 uses
  %i.io = load i32, ptr %i.v, align 4, !tbaa !4   ; 7 uses
  %i.ip = load i32, ptr %i.w, align 4, !tbaa !4   ; 5 uses
  %.0610 = call i32 @llvm.smax.i32(i32 %i.io, i32 %i.in)
  %.1611 = call i32 @llvm.smax.i32(i32 %i.ip, i32 %.0610)
  %i.iq = icmp sgt i32 %.1611, 0                  ; 2 uses
  br i1 %i.iq, label %.preheader710.lr.ph, label %._crit_edge789

.preheader710.lr.ph:                              ; preds = %bb.l
  %factor.op.mul787 = mul i32 %i.ik, %i.io
  %i.ir = icmp slt i32 %i.ip, 1
  %i.is = icmp slt i32 %i.in, 1
  %i.it = sub i32 %i.ik, %i.in
  %i.iu = sub i32 %i.im, %factor.op.mul787
  %i.iv = icmp slt i32 %i.io, 1
  %or.cond913.not925 = or i1 %i.ir, %i.iv
  %brmerge915 = or i1 %or.cond913.not925, %i.is
  br i1 %brmerge915, label %._crit_edge789, label %.preheader706.us.us.us.us.us.preheader

.preheader706.us.us.us.us.us.preheader:           ; preds = %.preheader710.lr.ph
  %7 = sext i32 %i.ai to i64                      ; 4 uses
  %i.iw = add nsw i32 %i.in, -1                   ; 2 uses
  %scevgep946 = getelementptr i8, ptr %.1617, i64 8
  %i.ix = zext i32 %i.iw to i64                   ; 2 uses
  %i.iy = shl nuw nsw i64 %i.ix, 3                ; 5 uses
  %scevgep947 = getelementptr i8, ptr %scevgep946, i64 %i.iy
  %scevgep950.a = getelementptr i8, ptr %.1619, i64 8
  %scevgep951 = getelementptr i8, ptr %scevgep950.a, i64 %i.iy
  %scevgep954.a = getelementptr i8, ptr %.1597, i64 8
  %scevgep955 = getelementptr i8, ptr %scevgep954.a, i64 %i.iy
  %scevgep958.a = getelementptr i8, ptr %.1615, i64 8
  %scevgep959 = getelementptr i8, ptr %scevgep958.a, i64 %i.iy
  %scevgep962.a = getelementptr i8, ptr %.1599, i64 8
  %scevgep963 = getelementptr i8, ptr %scevgep962.a, i64 %i.iy
  %8 = mul nsw i64 %7, -8
  %scevgep965.a = getelementptr i8, ptr %.1601, i64 %8
  %scevgep967 = getelementptr i8, ptr %.1601, i64 8
  %9 = sub nsw i64 %i.ix, %7
  %10 = shl nsw i64 %9, 3
  %scevgep968 = getelementptr i8, ptr %scevgep967, i64 %10
  %i.iz = zext nneg i32 %i.in to i64              ; 2 uses
  %min.iters.check1003 = icmp ult i32 %i.in, 10
  %invariant.op1196 = sub i32 -2, %i.ai
  %invariant.op1197 = sub i32 -2, %i.ai
  %n.vec1006 = and i64 %i.iz, 2147483646          ; 4 uses
  %i.ja = trunc nuw nsw i64 %n.vec1006 to i32
  %invariant.op = sub i32 -2, %i.ai
  %cmp.n1016 = icmp eq i64 %n.vec1006, %i.iz
  %invariant.op1195 = sub i32 -2, %i.ai
  br label %.preheader706.us.us.us.us.us

.preheader706.us.us.us.us.us:                     ; preds = %.preheader706.us.us.us.us.us.preheader, %._crit_edge777.split.us.us.us.us.us.us
  %.5593780.us.us.us.us.us = phi i32 [ %i.kt, %._crit_edge777.split.us.us.us.us.us.us ], [ 0, %.preheader706.us.us.us.us.us.preheader ]
  %.6629779.us.us.us.us.us = phi i32 [ %i.ks, %._crit_edge777.split.us.us.us.us.us.us ], [ %i.ij, %.preheader706.us.us.us.us.us.preheader ]
  br label %.preheader702.us.us.us.us.us.us

.preheader702.us.us.us.us.us.us:                  ; preds = %._crit_edge774.us.us.us.us.us.us, %.preheader706.us.us.us.us.us
  %.5582776.us.us.us.us.us.us = phi i32 [ 0, %.preheader706.us.us.us.us.us ], [ %i.kr, %._crit_edge774.us.us.us.us.us.us ]
  %.7630775.us.us.us.us.us.us = phi i32 [ %.6629779.us.us.us.us.us, %.preheader706.us.us.us.us.us ], [ %i.kq, %._crit_edge774.us.us.us.us.us.us ] ; 3 uses
  %i.jb = sext i32 %.7630775.us.us.us.us.us.us to i64 ; 6 uses
  br i1 %min.iters.check1003, label %scalar.ph1002.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader702.us.us.us.us.us.us
  %.reass = add i32 %.7630775.us.us.us.us.us.us, %invariant.op1196 ; 2 uses
  %i.jc = add i32 %.reass, %i.iw
  %i.jd = icmp slt i32 %i.jc, %.reass
  br i1 %i.jd, label %scalar.ph1002.preheader, label %vector.memcheck945

vector.memcheck945:                               ; preds = %vector.scevcheck
  %i.je = shl nsw i64 %i.jb, 3                    ; 10 uses
  %scevgep = getelementptr i8, ptr %.1617, i64 %i.je ; 5 uses
  %scevgep948 = getelementptr i8, ptr %scevgep947, i64 %i.je ; 5 uses
  %scevgep949 = getelementptr i8, ptr %.1619, i64 %i.je ; 5 uses
  %scevgep952 = getelementptr i8, ptr %scevgep951, i64 %i.je ; 5 uses
  %scevgep953 = getelementptr i8, ptr %.1597, i64 %i.je ; 2 uses
  %scevgep956 = getelementptr i8, ptr %scevgep955, i64 %i.je ; 2 uses
  %.reass1198 = add i32 %.7630775.us.us.us.us.us.us, %invariant.op1197
  %i.jf = sext i32 %.reass1198 to i64
  %i.jg = shl nsw i64 %i.jf, 3                    ; 2 uses
  %scevgep957 = getelementptr i8, ptr %.1615, i64 %i.jg ; 2 uses
  %scevgep960 = getelementptr i8, ptr %scevgep959, i64 %i.jg ; 2 uses
  %scevgep961 = getelementptr i8, ptr %.1599, i64 %i.je ; 2 uses
  %scevgep964 = getelementptr i8, ptr %scevgep963, i64 %i.je ; 2 uses
  %scevgep966 = getelementptr i8, ptr %scevgep965.a, i64 %i.je ; 2 uses
  %scevgep969 = getelementptr i8, ptr %scevgep968, i64 %i.je ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep952
  %bound1 = icmp ult ptr %scevgep949, %scevgep948
  %found.conflict = and i1 %bound0, %bound1
  %bound0970 = icmp ult ptr %scevgep, %scevgep956
  %bound1971 = icmp ult ptr %scevgep953, %scevgep948
  %found.conflict972 = and i1 %bound0970, %bound1971
  %conflict.rdx973 = or i1 %found.conflict, %found.conflict972
  %bound0974 = icmp ult ptr %scevgep, %scevgep960
  %bound1975 = icmp ult ptr %scevgep957, %scevgep948
  %found.conflict976 = and i1 %bound0974, %bound1975
  %conflict.rdx977 = or i1 %conflict.rdx973, %found.conflict976
  %bound0978 = icmp ult ptr %scevgep, %scevgep964
  %bound1979 = icmp ult ptr %scevgep961, %scevgep948
  %found.conflict980 = and i1 %bound0978, %bound1979
  %conflict.rdx981 = or i1 %conflict.rdx977, %found.conflict980
  %bound0982 = icmp ult ptr %scevgep, %scevgep969
  %bound1983 = icmp ult ptr %scevgep966, %scevgep948
  %found.conflict984 = and i1 %bound0982, %bound1983
  %conflict.rdx985 = or i1 %conflict.rdx981, %found.conflict984
  %bound0986 = icmp ult ptr %scevgep949, %scevgep956
  %bound1987 = icmp ult ptr %scevgep953, %scevgep952
  %found.conflict988 = and i1 %bound0986, %bound1987
  %conflict.rdx989 = or i1 %conflict.rdx985, %found.conflict988
  %bound0990 = icmp ult ptr %scevgep949, %scevgep960
  %bound1991 = icmp ult ptr %scevgep957, %scevgep952
  %found.conflict992 = and i1 %bound0990, %bound1991
  %conflict.rdx993 = or i1 %conflict.rdx989, %found.conflict992
  %bound0994 = icmp ult ptr %scevgep949, %scevgep964
  %bound1995 = icmp ult ptr %scevgep961, %scevgep952
  %found.conflict996 = and i1 %bound0994, %bound1995
  %conflict.rdx997 = or i1 %conflict.rdx993, %found.conflict996
  %bound0998 = icmp ult ptr %scevgep949, %scevgep969
  %bound1999 = icmp ult ptr %scevgep966, %scevgep952
  %found.conflict1000 = and i1 %bound0998, %bound1999
  %conflict.rdx1001 = or i1 %conflict.rdx997, %found.conflict1000
  br i1 %conflict.rdx1001, label %scalar.ph1002.preheader, label %vector.ph1004

vector.ph1004:                                    ; preds = %vector.memcheck945
  %i.jh = add nsw i64 %n.vec1006, %i.jb           ; 2 uses
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %vector.ph1004
  %index1008 = phi i64 [ 0, %vector.ph1004 ], [ %index.next1014, %vector.body1007 ] ; 2 uses
  %i.ji = add i64 %index1008, %i.jb               ; 6 uses
  %i.jj = trunc nsw i64 %i.ji to i32
  %.reass1194 = add i32 %i.jj, %invariant.op
  %11 = sub nsw i64 %i.ji, %7
  %i.jk = getelementptr inbounds [8 x i8], ptr %.1597, i64 %i.ji
  %wide.load = load <2 x double>, ptr %i.jk, align 8, !tbaa !35, !alias.scope !94
  %i.jl = sext i32 %.reass1194 to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %.1615, i64 %i.jl
  %wide.load1009 = load <2 x double>, ptr %i.jm, align 8, !tbaa !35, !alias.scope !97
  %i.jn = fadd <2 x double> %wide.load, %wide.load1009
  %i.jo = getelementptr inbounds [8 x i8], ptr %.1617, i64 %i.ji ; 2 uses
  %wide.load1010 = load <2 x double>, ptr %i.jo, align 8, !tbaa !35, !alias.scope !99, !noalias !101
  %i.jp = fadd <2 x double> %wide.load1010, %i.jn
  store <2 x double> %i.jp, ptr %i.jo, align 8, !tbaa !35, !alias.scope !99, !noalias !101
  %i.jq = getelementptr inbounds [8 x i8], ptr %.1599, i64 %i.ji
  %wide.load1011 = load <2 x double>, ptr %i.jq, align 8, !tbaa !35, !alias.scope !105
  %i.jr = getelementptr inbounds [8 x i8], ptr %.1601, i64 %11
  %wide.load1012 = load <2 x double>, ptr %i.jr, align 8, !tbaa !35, !alias.scope !106
  %i.js = fadd <2 x double> %wide.load1011, %wide.load1012
  %i.jt = getelementptr inbounds [8 x i8], ptr %.1619, i64 %i.ji ; 2 uses
  %wide.load1013 = load <2 x double>, ptr %i.jt, align 8, !tbaa !35, !alias.scope !107, !noalias !108
  %i.ju = fadd <2 x double> %wide.load1013, %i.js
  store <2 x double> %i.ju, ptr %i.jt, align 8, !tbaa !35, !alias.scope !107, !noalias !108
  %index.next1014 = add nuw i64 %index1008, 2     ; 2 uses
  %i.jv = icmp eq i64 %index.next1014, %n.vec1006
  br i1 %i.jv, label %middle.block1015, label %vector.body1007, !llvm.loop !109

middle.block1015:                                 ; preds = %vector.body1007
  br i1 %cmp.n1016, label %._crit_edge774.us.us.us.us.us.us, label %scalar.ph1002.preheader

scalar.ph1002.preheader:                          ; preds = %vector.memcheck945, %vector.scevcheck, %.preheader702.us.us.us.us.us.us, %middle.block1015
  %indvars.iv866.ph = phi i64 [ %i.jb, %vector.memcheck945 ], [ %i.jb, %vector.scevcheck ], [ %i.jb, %.preheader702.us.us.us.us.us.us ], [ %i.jh, %middle.block1015 ]
  %.5773.us.us.us.us.us.us.ph = phi i32 [ 0, %vector.memcheck945 ], [ 0, %vector.scevcheck ], [ 0, %.preheader702.us.us.us.us.us.us ], [ %i.ja, %middle.block1015 ]
  br label %scalar.ph1002

scalar.ph1002:                                    ; preds = %scalar.ph1002.preheader, %scalar.ph1002
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %scalar.ph1002 ], [ %indvars.iv866.ph, %scalar.ph1002.preheader ] ; 7 uses
  %.5773.us.us.us.us.us.us = phi i32 [ %i.ko, %scalar.ph1002 ], [ %.5773.us.us.us.us.us.us.ph, %scalar.ph1002.preheader ]
  %i.jw = trunc nsw i64 %indvars.iv866 to i32
  %.reass.reass = add i32 %i.jw, %invariant.op1195
  %indvars.iv.next867 = add nsw i64 %indvars.iv866, 1 ; 2 uses
  %12 = sub nsw i64 %indvars.iv866, %7
  %i.jx = getelementptr inbounds [8 x i8], ptr %.1597, i64 %indvars.iv866
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !35
  %i.jz = sext i32 %.reass.reass to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %.1615, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !35
  %i.kc = fadd double %i.jy, %i.kb
  %i.kd = getelementptr inbounds [8 x i8], ptr %.1617, i64 %indvars.iv866 ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !35
  %i.kf = fadd double %i.ke, %i.kc
  store double %i.kf, ptr %i.kd, align 8, !tbaa !35
  %i.kg = getelementptr inbounds [8 x i8], ptr %.1599, i64 %indvars.iv866
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !35
  %i.ki = getelementptr inbounds [8 x i8], ptr %.1601, i64 %12
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !35
  %i.kk = fadd double %i.kh, %i.kj
  %i.kl = getelementptr inbounds [8 x i8], ptr %.1619, i64 %indvars.iv866 ; 2 uses
  %i.km = load double, ptr %i.kl, align 8, !tbaa !35
  %i.kn = fadd double %i.km, %i.kk
  store double %i.kn, ptr %i.kl, align 8, !tbaa !35
  %i.ko = add nuw nsw i32 %.5773.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond869.not = icmp eq i32 %i.ko, %i.in
  br i1 %exitcond869.not, label %._crit_edge774.us.us.us.us.us.us, label %scalar.ph1002, !llvm.loop !110

._crit_edge774.us.us.us.us.us.us:                 ; preds = %scalar.ph1002, %middle.block1015
  %indvars.iv.next867.lcssa = phi i64 [ %i.jh, %middle.block1015 ], [ %indvars.iv.next867, %scalar.ph1002 ]
  %i.kp = trunc nsw i64 %indvars.iv.next867.lcssa to i32
  %i.kq = add nsw i32 %i.it, %i.kp                ; 2 uses
  %i.kr = add nuw nsw i32 %.5582776.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond870.not = icmp eq i32 %i.kr, %i.io
  br i1 %exitcond870.not, label %._crit_edge777.split.us.us.us.us.us.us, label %.preheader702.us.us.us.us.us.us, !llvm.loop !111

._crit_edge777.split.us.us.us.us.us.us:           ; preds = %._crit_edge774.us.us.us.us.us.us
  %i.ks = add nsw i32 %i.iu, %i.kq
  %i.kt = add nuw nsw i32 %.5593780.us.us.us.us.us, 1 ; 2 uses
  %exitcond871.not = icmp eq i32 %i.kt, %i.ip
  br i1 %exitcond871.not, label %._crit_edge789, label %.preheader706.us.us.us.us.us, !llvm.loop !112

._crit_edge789:                                   ; preds = %._crit_edge777.split.us.us.us.us.us.us, %.preheader710.lr.ph, %bb.l
  br i1 %i.hz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge789
  %i.ku = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.kv = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.kw = sub nsw i32 %i.ku, %i.kv
  %i.kx = mul nsw i32 %i.kw, %.pre-phi884
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge789, %bb.m
  %i.ky = phi i32 [ %i.kx, %bb.m ], [ 0, %._crit_edge789 ]
  br i1 %i.iq, label %.preheader709.lr.ph, label %.loopexit716

.preheader709.lr.ph:                              ; preds = %bb.n
  %factor.op.mul816 = mul i32 %i.ik, %i.io
  %i.kz = icmp slt i32 %i.ip, 1
  %i.la = icmp slt i32 %i.in, 1
  %i.lb = sub i32 %i.ik, %i.in
  %i.lc = sub i32 %i.im, %factor.op.mul816
  %i.ld = icmp slt i32 %i.io, 1
  %or.cond916.not927 = or i1 %i.kz, %i.ld
  %brmerge918 = or i1 %or.cond916.not927, %i.la
  br i1 %brmerge918, label %.loopexit716, label %.preheader705.us.us.us.us.us.preheader

.preheader705.us.us.us.us.us.preheader:           ; preds = %.preheader709.lr.ph
  %i.le = add nsw i32 %i.ky, %i.hw
  %i.lf = mul nsw i32 %i.le, %4
  %i.lg = select i1 %i.ii, i32 %i.lf, i32 0
  %i.lh = add nsw i32 %i.lg, %i.ht
  %i.li = sub i64 %.1599931, %.1597932
  %i.lj = sub i64 %.1601933, %.1597932
  %i.lk = sub i64 %.1615935, %.1597932
  %i.ll = sub i64 %.1601933, %.1599931
  %i.lm = sub i64 %.1615935, %.1599931
  %i.ln = sub i64 %.1615935, %.1601933
  %i.lo = zext nneg i32 %i.in to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.in, 6
  %diff.check = icmp ult i64 %i.li, 32
  %diff.check934 = icmp ult i64 %i.lj, 32
  %conflict.rdx = or i1 %diff.check, %diff.check934
  %diff.check936 = icmp ult i64 %i.lk, 32
  %conflict.rdx937 = or i1 %conflict.rdx, %diff.check936
  %diff.check938 = icmp ult i64 %i.ll, 32
  %conflict.rdx939 = or i1 %conflict.rdx937, %diff.check938
  %diff.check940 = icmp ult i64 %i.lm, 32
  %conflict.rdx941 = or i1 %conflict.rdx939, %diff.check940
  %diff.check942 = icmp ult i64 %i.ln, 32
  %conflict.rdx943 = or i1 %conflict.rdx941, %diff.check942
  %n.vec = and i64 %i.lo, 2147483644              ; 4 uses
  %i.lp = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.lo
  br label %.preheader705.us.us.us.us.us

.preheader705.us.us.us.us.us:                     ; preds = %.preheader705.us.us.us.us.us.preheader, %._crit_edge806.split.us.us.us.us.us.us
  %.7595809.us.us.us.us.us = phi i32 [ %i.mw, %._crit_edge806.split.us.us.us.us.us.us ], [ 0, %.preheader705.us.us.us.us.us.preheader ]
  %.9808.us.us.us.us.us = phi i32 [ %i.mv, %._crit_edge806.split.us.us.us.us.us.us ], [ %i.lh, %.preheader705.us.us.us.us.us.preheader ]
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge803.us.us.us.us.us.us, %.preheader705.us.us.us.us.us
  %.7584805.us.us.us.us.us.us = phi i32 [ 0, %.preheader705.us.us.us.us.us ], [ %i.mu, %._crit_edge803.us.us.us.us.us.us ]
  %.10804.us.us.us.us.us.us = phi i32 [ %.9808.us.us.us.us.us, %.preheader705.us.us.us.us.us ], [ %i.mt, %._crit_edge803.us.us.us.us.us.us ]
  %i.lq = sext i32 %.10804.us.us.us.us.us.us to i64 ; 3 uses
  %brmerge1200 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx943
  br i1 %brmerge1200, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.us.us.us.us
  %i.lr = add nsw i64 %n.vec, %i.lq               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ls = add i64 %index, %i.lq                   ; 4 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %.1597, i64 %i.ls ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store <2 x double> zeroinitializer, ptr %i.lt, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.lu, align 8, !tbaa !35
  %i.lv = getelementptr inbounds [8 x i8], ptr %.1599, i64 %i.ls ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <2 x double> zeroinitializer, ptr %i.lv, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.lw, align 8, !tbaa !35
  %i.lx = getelementptr inbounds [8 x i8], ptr %.1601, i64 %i.ls ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store <2 x double> zeroinitializer, ptr %i.lx, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.ly, align 8, !tbaa !35
  %i.lz = getelementptr inbounds [8 x i8], ptr %.1615, i64 %i.ls ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  store <2 x double> zeroinitializer, ptr %i.lz, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.ma, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mb = icmp eq i64 %index.next, %n.vec
  br i1 %i.mb, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge803.us.us.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us.us.us.us, %middle.block
  %indvars.iv872.ph = phi i64 [ %i.lr, %middle.block ], [ %i.lq, %.preheader.us.us.us.us.us.us ] ; 6 uses
  %.7802.us.us.us.us.us.us.ph = phi i32 [ %i.lp, %middle.block ], [ 0, %.preheader.us.us.us.us.us.us ] ; 4 uses
  %i.mc = sub i32 %i.in, %.7802.us.us.us.us.us.us.ph
  %.neg1188 = add i32 %.7802.us.us.us.us.us.us.ph, 1
  %xtraiter1185 = and i32 %i.mc, 1
  %lcmp.mod1186.not = icmp eq i32 %xtraiter1185, 0
  br i1 %lcmp.mod1186.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.md = getelementptr inbounds [8 x i8], ptr %.1597, i64 %indvars.iv872.ph
  store double 0.000000e+00, ptr %i.md, align 8, !tbaa !35
  %i.me = getelementptr inbounds [8 x i8], ptr %.1599, i64 %indvars.iv872.ph
  store double 0.000000e+00, ptr %i.me, align 8, !tbaa !35
  %i.mf = getelementptr inbounds [8 x i8], ptr %.1601, i64 %indvars.iv872.ph
  store double 0.000000e+00, ptr %i.mf, align 8, !tbaa !35
  %i.mg = getelementptr inbounds [8 x i8], ptr %.1615, i64 %indvars.iv872.ph
  store double 0.000000e+00, ptr %i.mg, align 8, !tbaa !35
  %indvars.iv.next873.prol = add nsw i64 %indvars.iv872.ph, 1 ; 2 uses
  %i.mh = add nuw nsw i32 %.7802.us.us.us.us.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next873.lcssa1183.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next873.prol, %scalar.ph.prol ]
  %indvars.iv872.unr = phi i64 [ %indvars.iv872.ph, %scalar.ph.preheader ], [ %indvars.iv.next873.prol, %scalar.ph.prol ]
  %.7802.us.us.us.us.us.us.unr = phi i32 [ %.7802.us.us.us.us.us.us.ph, %scalar.ph.preheader ], [ %i.mh, %scalar.ph.prol ]
  %i.mi = icmp eq i32 %i.in, %.neg1188
  br i1 %i.mi, label %._crit_edge803.us.us.us.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv872 = phi i64 [ %indvars.iv.next873.1, %scalar.ph ], [ %indvars.iv872.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.7802.us.us.us.us.us.us = phi i32 [ %i.mr, %scalar.ph ], [ %.7802.us.us.us.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.mj = getelementptr inbounds [8 x i8], ptr %.1597, i64 %indvars.iv872
  store double 0.000000e+00, ptr %i.mj, align 8, !tbaa !35
  %i.mk = getelementptr inbounds [8 x i8], ptr %.1599, i64 %indvars.iv872
  store double 0.000000e+00, ptr %i.mk, align 8, !tbaa !35
  %i.ml = getelementptr inbounds [8 x i8], ptr %.1601, i64 %indvars.iv872
  store double 0.000000e+00, ptr %i.ml, align 8, !tbaa !35
  %i.mm = getelementptr inbounds [8 x i8], ptr %.1615, i64 %indvars.iv872
  store double 0.000000e+00, ptr %i.mm, align 8, !tbaa !35
  %indvars.iv.next873 = add nsw i64 %indvars.iv872, 1 ; 4 uses
  %i.mn = getelementptr inbounds [8 x i8], ptr %.1597, i64 %indvars.iv.next873
  store double 0.000000e+00, ptr %i.mn, align 8, !tbaa !35
  %i.mo = getelementptr inbounds [8 x i8], ptr %.1599, i64 %indvars.iv.next873
  store double 0.000000e+00, ptr %i.mo, align 8, !tbaa !35
  %i.mp = getelementptr inbounds [8 x i8], ptr %.1601, i64 %indvars.iv.next873
  store double 0.000000e+00, ptr %i.mp, align 8, !tbaa !35
  %i.mq = getelementptr inbounds [8 x i8], ptr %.1615, i64 %indvars.iv.next873
  store double 0.000000e+00, ptr %i.mq, align 8, !tbaa !35
  %indvars.iv.next873.1 = add nsw i64 %indvars.iv872, 2 ; 2 uses
  %i.mr = add nuw nsw i32 %.7802.us.us.us.us.us.us, 2 ; 2 uses
  %exitcond875.not.1 = icmp eq i32 %i.mr, %i.in
  br i1 %exitcond875.not.1, label %._crit_edge803.us.us.us.us.us.us, label %scalar.ph, !llvm.loop !114

._crit_edge803.us.us.us.us.us.us:                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next873.lcssa = phi i64 [ %i.lr, %middle.block ], [ %indvars.iv.next873.lcssa1183.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next873.1, %scalar.ph ]
  %i.ms = trunc nsw i64 %indvars.iv.next873.lcssa to i32
  %i.mt = add nsw i32 %i.lb, %i.ms                ; 2 uses
  %i.mu = add nuw nsw i32 %.7584805.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond876.not = icmp eq i32 %i.mu, %i.io
  br i1 %exitcond876.not, label %._crit_edge806.split.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !115

._crit_edge806.split.us.us.us.us.us.us:           ; preds = %._crit_edge803.us.us.us.us.us.us
  %i.mv = add nsw i32 %i.lc, %i.mt
  %i.mw = add nuw nsw i32 %.7595809.us.us.us.us.us, 1 ; 2 uses
  %exitcond877.not = icmp eq i32 %i.mw, %i.ip
  br i1 %exitcond877.not, label %.loopexit716, label %.preheader705.us.us.us.us.us, !llvm.loop !116

.loopexit716:                                     ; preds = %._crit_edge806.split.us.us.us.us.us.us, %.preheader709.lr.ph, %bb.n, %._crit_edge760
  %indvars.iv.next879 = add nuw nsw i64 %indvars.iv878, 1 ; 2 uses
  %i.mx = load i32, ptr %i.o, align 8, !tbaa !29
  %i.my = sext i32 %i.mx to i64
  %i.mz = icmp slt i64 %indvars.iv.next879, %i.my
  br i1 %i.mz, label %bb.c, label %.loopexit717, !llvm.loop !117

.loopexit717:                                     ; preds = %.loopexit716, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

declare i32 @hypre_StructMatrixAssemble(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMG3RAPPeriodicNoSym(ptr noundef %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 58 uses
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %.preheader491, label %.loopexit492

.preheader491:                                    ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.loopexit492

.lr.ph:                                           ; preds = %.preheader491
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 27 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 27 uses
  %i.t = icmp eq i32 %i.f, 27                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit490
  %indvars.iv577 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next578, %.loopexit490 ] ; 4 uses
  %.0420557 = phi ptr [ undef, %.lr.ph ], [ %.1421, %.loopexit490 ]
  %.0422556 = phi ptr [ undef, %.lr.ph ], [ %.1423, %.loopexit490 ]
  %.0424555 = phi ptr [ undef, %.lr.ph ], [ %.1425, %.loopexit490 ]
  %.0436554 = phi ptr [ undef, %.lr.ph ], [ %.1437, %.loopexit490 ]
  %.0438553 = phi ptr [ undef, %.lr.ph ], [ %.1439, %.loopexit490 ]
  %.0440552 = phi ptr [ undef, %.lr.ph ], [ %.1441, %.loopexit490 ]
  %.0445551 = phi ptr [ undef, %.lr.ph ], [ %.1446, %.loopexit490 ]
  %.0447550 = phi ptr [ undef, %.lr.ph ], [ %.1448, %.loopexit490 ]
  %.0449549 = phi ptr [ undef, %.lr.ph ], [ %.1450, %.loopexit490 ]
  %.0451548 = phi ptr [ undef, %.lr.ph ], [ %.1452, %.loopexit490 ]
  %.0453547 = phi ptr [ undef, %.lr.ph ], [ %.1454, %.loopexit490 ]
  %.0455546 = phi ptr [ undef, %.lr.ph ], [ %.1456, %.loopexit490 ]
end_hunk_5
