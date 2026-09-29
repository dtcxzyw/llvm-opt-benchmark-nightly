Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5diff_array?download=true
inline.NumInlined: 154
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@diff_schar_element:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !25
  %.not3.i178 = icmp eq i32 %i.am, 0
  br i1 %.not3.i178, label %print_data.exit.thread, label %print_data.exit179

print_data.exit179:                               ; preds = %bb.j, %bb.k
  %i.an = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i177.not = icmp eq i32 %i.an, 0
  br i1 %.not4.i177.not, label %bb.l, label %print_data.exit.thread

bb.l:                                             ; preds = %print_data.exit179
  %i.ao = sext i8 %.0.val to i32                  ; 2 uses
  %i.ap = sext i8 %.0.val1 to i32                 ; 2 uses
  %i.aq = sub nsw i32 %i.ao, %i.ap
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.110, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef %i.ar) #15
  br label %print_data.exit.thread

bb.m:                                             ; preds = %.thread, %bb.i
  %.013922 = phi double [ %i.ad, %.thread ], [ -1.000000e+00, %bb.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load double, ptr %i.as, align 8, !tbaa !27
  %i.au = fcmp ogt double %.013922, %i.at
  br i1 %i.au, label %bb.n, label %print_data.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.av, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !24
  %.not.i180 = icmp eq i32 %i.ax, 0
  br i1 %.not.i180, label %bb.o, label %print_data.exit183

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !25
  %.not3.i182 = icmp eq i32 %i.az, 0
  br i1 %.not3.i182, label %print_data.exit.thread, label %print_data.exit183

print_data.exit183:                               ; preds = %bb.n, %bb.o
  %i.ba = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i181.not = icmp eq i32 %i.ba, 0
  br i1 %.not4.i181.not, label %bb.p, label %print_data.exit.thread

bb.p:                                             ; preds = %print_data.exit183
  %i.bb = sext i8 %.0.val to i32                  ; 2 uses
  %i.bc = sext i8 %.0.val1 to i32                 ; 2 uses
  %i.bd = sub nsw i32 %i.bb, %i.bc
  %i.be = tail call i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.60, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.be, double noundef %.013922) #15
  br label %print_data.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.bf = sitofp i8 %.0.val to double             ; 2 uses
  %i.bg = fsub double 0.000000e+00, %i.bf
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp olt double %i.bh, f0x3CB0000000000000
  br i1 %i.bi, label %bb.r, label %.thread23

.thread23:                                        ; preds = %bb.q
  %i.bj = sext i8 %.0.val1 to i32
  %i.bk = sext i8 %.0.val to i32
  %i.bl = sub nsw i32 %i.bj, %i.bk
  %i.bm = sitofp i32 %i.bl to double
  %i.bn = fdiv double %i.bm, %i.bf                ; 3 uses
  %i.bo = fcmp ult double %i.bn, 0.000000e+00
  %i.bp = fneg double %i.bn
  %i.bq = select i1 %i.bo, double %i.bp, double %i.bn
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.br = sitofp i8 %.0.val1 to double
  %i.bs = fsub double 0.000000e+00, %i.br
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs)
  %i.bu = fcmp uge double %i.bt, f0x3CB0000000000000
  br i1 %i.bu, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.bv, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !24
  %.not.i184 = icmp eq i32 %i.bx, 0
  br i1 %.not.i184, label %bb.t, label %print_data.exit187

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !25
  %.not3.i186 = icmp eq i32 %i.bz, 0
  br i1 %.not3.i186, label %print_data.exit.thread, label %print_data.exit187

print_data.exit187:                               ; preds = %bb.s, %bb.t
  %i.ca = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i185.not = icmp eq i32 %i.ca, 0
  br i1 %.not4.i185.not, label %bb.u, label %print_data.exit.thread

bb.u:                                             ; preds = %print_data.exit187
  %i.cb = sext i8 %.0.val to i32                  ; 2 uses
  %i.cc = sext i8 %.0.val1 to i32                 ; 2 uses
  %i.cd = sub nsw i32 %i.cb, %i.cc
  %i.ce = tail call i32 @llvm.abs.i32(i32 %i.cd, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.110, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.ce) #15
  br label %print_data.exit.thread

bb.v:                                             ; preds = %.thread23, %bb.r
  %.114026 = phi double [ %i.bq, %.thread23 ], [ -1.000000e+00, %bb.r ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !27
  %i.ch = fcmp ogt double %.114026, %i.cg
  br i1 %i.ch, label %bb.w, label %print_data.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ci = sext i8 %.0.val to i32                  ; 2 uses
  %i.cj = sext i8 %.0.val1 to i32                 ; 2 uses
  %i.ck = sub nsw i32 %i.ci, %i.cj
  %i.cl = tail call i32 @llvm.abs.i32(i32 %i.ck, i1 true) ; 2 uses
  %i.cm = uitofp nneg i32 %i.cl to double
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.co = load double, ptr %i.cn, align 8, !tbaa !22
  %i.cp = fcmp olt double %i.co, %i.cm
  br i1 %i.cp, label %bb.x, label %print_data.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.cq, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !24
  %.not.i188 = icmp eq i32 %i.cs, 0
  br i1 %.not.i188, label %bb.y, label %print_data.exit191

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !25
  %.not3.i190 = icmp eq i32 %i.cu, 0
  br i1 %.not3.i190, label %print_data.exit.thread, label %print_data.exit191

print_data.exit191:                               ; preds = %bb.x, %bb.y
  %i.cv = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i189.not = icmp eq i32 %i.cv, 0
  br i1 %.not4.i189.not, label %bb.z, label %print_data.exit.thread

bb.z:                                             ; preds = %print_data.exit191
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.60, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.cl, double noundef %.114026) #15
  br label %print_data.exit.thread

.thread10:                                        ; preds = %bb.g
  %i.cw = sext i8 %.0.val to i32                  ; 2 uses
  %i.cx = sext i8 %.0.val1 to i32                 ; 2 uses
  %.not171 = icmp eq i8 %.0.val, %.0.val1
  br i1 %.not171, label %print_data.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.thread10
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.cy, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !24
  %.not.i192 = icmp eq i32 %i.da, 0
  br i1 %.not.i192, label %bb.ab, label %print_data.exit195

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !25
  %.not3.i194 = icmp eq i32 %i.dc, 0
  br i1 %.not3.i194, label %print_data.exit.thread, label %print_data.exit195

print_data.exit195:                               ; preds = %bb.aa, %bb.ab
  %i.dd = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i193.not = icmp eq i32 %i.dd, 0
  br i1 %.not4.i193.not, label %bb.ac, label %print_data.exit.thread

bb.ac:                                            ; preds = %print_data.exit195
  %i.de = sub nsw i32 %i.cw, %i.cx
  %i.df = tail call i32 @llvm.abs.i32(i32 %i.de, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.59, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef %i.df) #15
  br label %print_data.exit.thread

print_data.exit.thread:                           ; preds = %bb.ab, %bb.y, %bb.t, %bb.o, %bb.k, %bb.e, %print_data.exit195, %bb.ac, %print_data.exit191, %bb.z, %print_data.exit187, %bb.u, %print_data.exit183, %bb.p, %print_data.exit179, %bb.l, %print_data.exit, %bb.f, %bb.c, %bb.v, %bb.w, %.thread10, %bb.m
  %.0141 = phi i64 [ 1, %print_data.exit187 ], [ 0, %bb.w ], [ 0, %bb.v ], [ 1, %print_data.exit183 ], [ 1, %print_data.exit191 ], [ 0, %.thread10 ], [ 1, %print_data.exit179 ], [ 0, %bb.m ], [ 1, %print_data.exit ], [ 0, %bb.c ], [ 1, %bb.f ], [ 1, %bb.l ], [ 1, %bb.p ], [ 1, %bb.u ], [ 1, %bb.z ], [ 1, %bb.ac ], [ 1, %print_data.exit195 ], [ 1, %bb.y ], [ 1, %bb.e ], [ 1, %bb.k ], [ 1, %bb.o ], [ 1, %bb.t ], [ 1, %bb.ab ]
  ret i64 %.0141
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 2) i64 @diff_uchar_element(i8 %.0.val, i8 %.0.val1, i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not175 = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %.not179 = icmp eq i32 %i.d, 0                  ; 2 uses
  br i1 %.not175, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not179, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.e = zext i8 %.0.val1 to i32                  ; 2 uses
  %i.f = zext i8 %.0.val to i32                   ; 2 uses
  %i.g = sub nsw i32 %i.e, %i.f
  %2 = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true) ; 2 uses
  %3 = uitofp nneg i32 %2 to double
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !22
  %i.j = fcmp olt double %i.i, %3
  br i1 %i.j, label %bb.d, label %print_data.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %print_data.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25
  %.not3.i = icmp eq i32 %i.o, 0
  br i1 %.not3.i, label %print_data.exit.thread, label %print_data.exit

print_data.exit:                                  ; preds = %bb.d, %bb.e
  %i.p = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i.not = icmp eq i32 %i.p, 0
  br i1 %.not4.i.not, label %bb.f, label %print_data.exit.thread

bb.f:                                             ; preds = %print_data.exit
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.59, i32 noundef %i.f, i32 noundef %i.e, i32 noundef %2) #15
  br label %print_data.exit.thread

bb.g:                                             ; preds = %bb.a
  br i1 %.not179, label %.thread10, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = uitofp i8 %.0.val to double              ; 2 uses
  %i.r = fsub double 0.000000e+00, %i.q
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %i.t = fcmp olt double %i.s, f0x3CB0000000000000
  br i1 %i.t, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.u = sub i8 %.0.val1, %.0.val
  %i.v = sitofp i8 %i.u to double
  %i.w = fdiv double %i.v, %i.q                   ; 3 uses
  %i.x = fcmp ult double %i.w, 0.000000e+00
  %i.y = fneg double %i.w
  %i.z = select i1 %i.x, double %i.y, double %i.w
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aa = uitofp i8 %.0.val1 to double
  %i.ab = fsub double 0.000000e+00, %i.aa
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp uge double %i.ac, f0x3CB0000000000000
  br i1 %i.ad, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.ae, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !24
  %.not.i188 = icmp eq i32 %i.ag, 0
  br i1 %.not.i188, label %bb.k, label %print_data.exit191

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !25
  %.not3.i190 = icmp eq i32 %i.ai, 0
  br i1 %.not3.i190, label %print_data.exit.thread, label %print_data.exit191

print_data.exit191:                               ; preds = %bb.j, %bb.k
  %i.aj = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i189.not = icmp eq i32 %i.aj, 0
  br i1 %.not4.i189.not, label %bb.l, label %print_data.exit.thread

bb.l:                                             ; preds = %print_data.exit191
  %i.ak = zext i8 %.0.val to i32                  ; 2 uses
  %i.al = zext i8 %.0.val1 to i32                 ; 2 uses
  %i.am = sub nsw i32 %i.al, %i.ak
  %4 = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.110, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %4) #15
  br label %print_data.exit.thread

bb.m:                                             ; preds = %.thread, %bb.i
  %.013922 = phi double [ %i.z, %.thread ], [ -1.000000e+00, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load double, ptr %i.an, align 8, !tbaa !27
  %i.ap = fcmp ogt double %.013922, %i.ao
  br i1 %i.ap, label %bb.n, label %print_data.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.aq, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !24
  %.not.i192 = icmp eq i32 %i.as, 0
  br i1 %.not.i192, label %bb.o, label %print_data.exit195

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !25
  %.not3.i194 = icmp eq i32 %i.au, 0
  br i1 %.not3.i194, label %print_data.exit.thread, label %print_data.exit195

print_data.exit195:                               ; preds = %bb.n, %bb.o
  %i.av = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i193.not = icmp eq i32 %i.av, 0
  br i1 %.not4.i193.not, label %bb.p, label %print_data.exit.thread

bb.p:                                             ; preds = %print_data.exit195
  %i.aw = zext i8 %.0.val to i32                  ; 2 uses
  %i.ax = zext i8 %.0.val1 to i32                 ; 2 uses
  %i.ay = sub nsw i32 %i.ax, %i.aw
  %5 = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.60, i32 noundef %i.aw, i32 noundef %i.ax, i32 noundef %5, double noundef %.013922) #15
  br label %print_data.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.az = uitofp i8 %.0.val to double             ; 2 uses
  %i.ba = fsub double 0.000000e+00, %i.az
  %i.bb = tail call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp olt double %i.bb, f0x3CB0000000000000
  br i1 %i.bc, label %bb.r, label %.thread23

.thread23:                                        ; preds = %bb.q
  %i.bd = sub i8 %.0.val1, %.0.val
  %i.be = sitofp i8 %i.bd to double
  %i.bf = fdiv double %i.be, %i.az                ; 3 uses
  %i.bg = fcmp ult double %i.bf, 0.000000e+00
  %i.bh = fneg double %i.bf
  %i.bi = select i1 %i.bg, double %i.bh, double %i.bf
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bj = uitofp i8 %.0.val1 to double
  %i.bk = fsub double 0.000000e+00, %i.bj
  %i.bl = tail call double @llvm.fabs.f64(double %i.bk)
  %i.bm = fcmp uge double %i.bl, f0x3CB0000000000000
  br i1 %i.bm, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.bn, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !24
  %.not.i196 = icmp eq i32 %i.bp, 0
  br i1 %.not.i196, label %bb.t, label %print_data.exit199

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !25
  %.not3.i198 = icmp eq i32 %i.br, 0
  br i1 %.not3.i198, label %print_data.exit.thread, label %print_data.exit199

print_data.exit199:                               ; preds = %bb.s, %bb.t
  %i.bs = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i197.not = icmp eq i32 %i.bs, 0
  br i1 %.not4.i197.not, label %bb.u, label %print_data.exit.thread

bb.u:                                             ; preds = %print_data.exit199
  %i.bt = zext i8 %.0.val to i32                  ; 2 uses
  %i.bu = zext i8 %.0.val1 to i32                 ; 2 uses
  %i.bv = sub nsw i32 %i.bu, %i.bt
  %6 = tail call i32 @llvm.abs.i32(i32 %i.bv, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.110, i32 noundef %i.bt, i32 noundef %i.bu, i32 noundef %6) #15
  br label %print_data.exit.thread

bb.v:                                             ; preds = %.thread23, %bb.r
  %.114026 = phi double [ %i.bi, %.thread23 ], [ -1.000000e+00, %bb.r ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !27
  %i.by = fcmp ogt double %.114026, %i.bx
  br i1 %i.by, label %bb.w, label %print_data.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bz = zext i8 %.0.val1 to i32                 ; 2 uses
  %i.ca = zext i8 %.0.val to i32                  ; 2 uses
  %i.cb = sub nsw i32 %i.bz, %i.ca
  %7 = tail call i32 @llvm.abs.i32(i32 %i.cb, i1 true) ; 2 uses
  %8 = uitofp nneg i32 %7 to double
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !22
  %i.ce = fcmp olt double %i.cd, %8
  br i1 %i.ce, label %bb.x, label %print_data.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.cf, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !24
  %.not.i200 = icmp eq i32 %i.ch, 0
  br i1 %.not.i200, label %bb.y, label %print_data.exit203

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !25
  %.not3.i202 = icmp eq i32 %i.cj, 0
  br i1 %.not3.i202, label %print_data.exit.thread, label %print_data.exit203

print_data.exit203:                               ; preds = %bb.x, %bb.y
  %i.ck = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i201.not = icmp eq i32 %i.ck, 0
  br i1 %.not4.i201.not, label %bb.z, label %print_data.exit.thread

bb.z:                                             ; preds = %print_data.exit203
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.60, i32 noundef %i.ca, i32 noundef %i.bz, i32 noundef %7, double noundef %.114026) #15
  br label %print_data.exit.thread

.thread10:                                        ; preds = %bb.g
  %i.cl = zext i8 %.0.val to i32                  ; 2 uses
  %i.cm = zext i8 %.0.val1 to i32                 ; 2 uses
  %.not183 = icmp eq i8 %.0.val, %.0.val1
  br i1 %.not183, label %print_data.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.thread10
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.cn, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !24
  %.not.i204 = icmp eq i32 %i.cp, 0
  br i1 %.not.i204, label %bb.ab, label %print_data.exit207

bb.ab:                                            ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !25
  %.not3.i206 = icmp eq i32 %i.cr, 0
  br i1 %.not3.i206, label %print_data.exit.thread, label %print_data.exit207

print_data.exit207:                               ; preds = %bb.aa, %bb.ab
  %i.cs = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i205.not = icmp eq i32 %i.cs, 0
  br i1 %.not4.i205.not, label %bb.ac, label %print_data.exit.thread

bb.ac:                                            ; preds = %print_data.exit207
  %i.ct = sub nsw i32 %i.cm, %i.cl
  %9 = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.59, i32 noundef %i.cl, i32 noundef %i.cm, i32 noundef %9) #15
  br label %print_data.exit.thread

print_data.exit.thread:                           ; preds = %bb.ab, %bb.y, %bb.t, %bb.o, %bb.k, %bb.e, %print_data.exit207, %bb.ac, %print_data.exit203, %bb.z, %print_data.exit199, %bb.u, %print_data.exit195, %bb.p, %print_data.exit191, %bb.l, %print_data.exit, %bb.f, %bb.c, %bb.v, %bb.w, %.thread10, %bb.m
  %.0141 = phi i64 [ 1, %print_data.exit199 ], [ 0, %bb.w ], [ 0, %bb.v ], [ 1, %print_data.exit195 ], [ 1, %print_data.exit203 ], [ 0, %.thread10 ], [ 1, %print_data.exit191 ], [ 0, %bb.m ], [ 1, %print_data.exit ], [ 0, %bb.c ], [ 1, %bb.f ], [ 1, %bb.l ], [ 1, %bb.p ], [ 1, %bb.u ], [ 1, %bb.z ], [ 1, %bb.ac ], [ 1, %print_data.exit207 ], [ 1, %bb.y ], [ 1, %bb.e ], [ 1, %bb.k ], [ 1, %bb.o ], [ 1, %bb.t ], [ 1, %bb.ab ]
  ret i64 %.0141
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 2) i64 @diff_short_element(i16 %.0.val, i16 %.0.val1, i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not163 = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %.not167 = icmp eq i32 %i.d, 0                  ; 2 uses
  br i1 %.not163, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not167, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.e = sext i16 %.0.val to i32                  ; 2 uses
  %i.f = sext i16 %.0.val1 to i32                 ; 2 uses
  %i.g = sub nsw i32 %i.e, %i.f
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true) ; 2 uses
  %i.i = uitofp nneg i32 %i.h to double
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load double, ptr %i.j, align 8, !tbaa !22
  %i.l = fcmp olt double %i.k, %i.i
  br i1 %i.l, label %bb.d, label %print_data.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.m, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.e, label %print_data.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !25
  %.not3.i = icmp eq i32 %i.q, 0
  br i1 %.not3.i, label %print_data.exit.thread, label %print_data.exit

print_data.exit:                                  ; preds = %bb.d, %bb.e
  %i.r = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i.not = icmp eq i32 %i.r, 0
  br i1 %.not4.i.not, label %bb.f, label %print_data.exit.thread

bb.f:                                             ; preds = %print_data.exit
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.59, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.h) #15
  br label %print_data.exit.thread

bb.g:                                             ; preds = %bb.a
  br i1 %.not167, label %.thread10, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = sitofp i16 %.0.val to double             ; 2 uses
  %i.t = fsub double 0.000000e+00, %i.s
  %i.u = tail call double @llvm.fabs.f64(double %i.t)
  %i.v = fcmp olt double %i.u, f0x3CB0000000000000
  br i1 %i.v, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.w = sext i16 %.0.val1 to i32
  %i.x = sext i16 %.0.val to i32
  %i.y = sub nsw i32 %i.w, %i.x
  %i.z = sitofp i32 %i.y to double
  %i.aa = fdiv double %i.z, %i.s                  ; 3 uses
  %i.ab = fcmp ult double %i.aa, 0.000000e+00
  %i.ac = fneg double %i.aa
  %i.ad = select i1 %i.ab, double %i.ac, double %i.aa
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ae = sitofp i16 %.0.val1 to double
  %i.af = fsub double 0.000000e+00, %i.ae
  %i.ag = tail call double @llvm.fabs.f64(double %i.af)
  %i.ah = fcmp uge double %i.ag, f0x3CB0000000000000
  br i1 %i.ah, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.ai, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !24
  %.not.i176 = icmp eq i32 %i.ak, 0
  br i1 %.not.i176, label %bb.k, label %print_data.exit179

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !25
  %.not3.i178 = icmp eq i32 %i.am, 0
  br i1 %.not3.i178, label %print_data.exit.thread, label %print_data.exit179

print_data.exit179:                               ; preds = %bb.j, %bb.k
  %i.an = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i177.not = icmp eq i32 %i.an, 0
  br i1 %.not4.i177.not, label %bb.l, label %print_data.exit.thread

bb.l:                                             ; preds = %print_data.exit179
  %i.ao = sext i16 %.0.val to i32                 ; 2 uses
  %i.ap = sext i16 %.0.val1 to i32                ; 2 uses
  %i.aq = sub nsw i32 %i.ao, %i.ap
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.110, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef %i.ar) #15
  br label %print_data.exit.thread

bb.m:                                             ; preds = %.thread, %bb.i
  %.013922 = phi double [ %i.ad, %.thread ], [ -1.000000e+00, %bb.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load double, ptr %i.as, align 8, !tbaa !27
  %i.au = fcmp ogt double %.013922, %i.at
  br i1 %i.au, label %bb.n, label %print_data.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.av, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !24
  %.not.i180 = icmp eq i32 %i.ax, 0
  br i1 %.not.i180, label %bb.o, label %print_data.exit183

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !25
  %.not3.i182 = icmp eq i32 %i.az, 0
  br i1 %.not3.i182, label %print_data.exit.thread, label %print_data.exit183

print_data.exit183:                               ; preds = %bb.n, %bb.o
  %i.ba = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i181.not = icmp eq i32 %i.ba, 0
  br i1 %.not4.i181.not, label %bb.p, label %print_data.exit.thread

bb.p:                                             ; preds = %print_data.exit183
  %i.bb = sext i16 %.0.val to i32                 ; 2 uses
  %i.bc = sext i16 %.0.val1 to i32                ; 2 uses
  %i.bd = sub nsw i32 %i.bb, %i.bc
  %i.be = tail call i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.60, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.be, double noundef %.013922) #15
  br label %print_data.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.bf = sitofp i16 %.0.val to double            ; 2 uses
  %i.bg = fsub double 0.000000e+00, %i.bf
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp olt double %i.bh, f0x3CB0000000000000
  br i1 %i.bi, label %bb.r, label %.thread23

.thread23:                                        ; preds = %bb.q
  %i.bj = sext i16 %.0.val1 to i32
  %i.bk = sext i16 %.0.val to i32
  %i.bl = sub nsw i32 %i.bj, %i.bk
  %i.bm = sitofp i32 %i.bl to double
  %i.bn = fdiv double %i.bm, %i.bf                ; 3 uses
  %i.bo = fcmp ult double %i.bn, 0.000000e+00
  %i.bp = fneg double %i.bn
  %i.bq = select i1 %i.bo, double %i.bp, double %i.bn
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.br = sitofp i16 %.0.val1 to double
  %i.bs = fsub double 0.000000e+00, %i.br
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs)
  %i.bu = fcmp uge double %i.bt, f0x3CB0000000000000
  br i1 %i.bu, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.bv, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !24
  %.not.i184 = icmp eq i32 %i.bx, 0
  br i1 %.not.i184, label %bb.t, label %print_data.exit187

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !25
  %.not3.i186 = icmp eq i32 %i.bz, 0
  br i1 %.not3.i186, label %print_data.exit.thread, label %print_data.exit187

print_data.exit187:                               ; preds = %bb.s, %bb.t
  %i.ca = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i185.not = icmp eq i32 %i.ca, 0
  br i1 %.not4.i185.not, label %bb.u, label %print_data.exit.thread

bb.u:                                             ; preds = %print_data.exit187
  %i.cb = sext i16 %.0.val to i32                 ; 2 uses
  %i.cc = sext i16 %.0.val1 to i32                ; 2 uses
  %i.cd = sub nsw i32 %i.cb, %i.cc
  %i.ce = tail call i32 @llvm.abs.i32(i32 %i.cd, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.110, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.ce) #15
  br label %print_data.exit.thread

bb.v:                                             ; preds = %.thread23, %bb.r
  %.114026 = phi double [ %i.bq, %.thread23 ], [ -1.000000e+00, %bb.r ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !27
  %i.ch = fcmp ogt double %.114026, %i.cg
  br i1 %i.ch, label %bb.w, label %print_data.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ci = sext i16 %.0.val to i32                 ; 2 uses
  %i.cj = sext i16 %.0.val1 to i32                ; 2 uses
  %i.ck = sub nsw i32 %i.ci, %i.cj
  %i.cl = tail call i32 @llvm.abs.i32(i32 %i.ck, i1 true) ; 2 uses
  %i.cm = uitofp nneg i32 %i.cl to double
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.co = load double, ptr %i.cn, align 8, !tbaa !22
  %i.cp = fcmp olt double %i.co, %i.cm
  br i1 %i.cp, label %bb.x, label %print_data.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.cq, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !24
  %.not.i188 = icmp eq i32 %i.cs, 0
  br i1 %.not.i188, label %bb.y, label %print_data.exit191

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !25
  %.not3.i190 = icmp eq i32 %i.cu, 0
  br i1 %.not3.i190, label %print_data.exit.thread, label %print_data.exit191

print_data.exit191:                               ; preds = %bb.x, %bb.y
  %i.cv = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i189.not = icmp eq i32 %i.cv, 0
  br i1 %.not4.i189.not, label %bb.z, label %print_data.exit.thread

bb.z:                                             ; preds = %print_data.exit191
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.60, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.cl, double noundef %.114026) #15
  br label %print_data.exit.thread

.thread10:                                        ; preds = %bb.g
  %i.cw = sext i16 %.0.val to i32                 ; 2 uses
  %i.cx = sext i16 %.0.val1 to i32                ; 2 uses
  %.not171 = icmp eq i16 %.0.val, %.0.val1
  br i1 %.not171, label %print_data.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.thread10
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.cy, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !24
  %.not.i192 = icmp eq i32 %i.da, 0
  br i1 %.not.i192, label %bb.ab, label %print_data.exit195

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !25
  %.not3.i194 = icmp eq i32 %i.dc, 0
  br i1 %.not3.i194, label %print_data.exit.thread, label %print_data.exit195

print_data.exit195:                               ; preds = %bb.aa, %bb.ab
  %i.dd = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i193.not = icmp eq i32 %i.dd, 0
  br i1 %.not4.i193.not, label %bb.ac, label %print_data.exit.thread

bb.ac:                                            ; preds = %print_data.exit195
  %i.de = sub nsw i32 %i.cw, %i.cx
  %i.df = tail call i32 @llvm.abs.i32(i32 %i.de, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.59, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef %i.df) #15
  br label %print_data.exit.thread

print_data.exit.thread:                           ; preds = %bb.ab, %bb.y, %bb.t, %bb.o, %bb.k, %bb.e, %print_data.exit195, %bb.ac, %print_data.exit191, %bb.z, %print_data.exit187, %bb.u, %print_data.exit183, %bb.p, %print_data.exit179, %bb.l, %print_data.exit, %bb.f, %bb.c, %bb.v, %bb.w, %.thread10, %bb.m
  %.0141 = phi i64 [ 1, %print_data.exit187 ], [ 0, %bb.w ], [ 0, %bb.v ], [ 1, %print_data.exit183 ], [ 1, %print_data.exit191 ], [ 0, %.thread10 ], [ 1, %print_data.exit179 ], [ 0, %bb.m ], [ 1, %print_data.exit ], [ 0, %bb.c ], [ 1, %bb.f ], [ 1, %bb.l ], [ 1, %bb.p ], [ 1, %bb.u ], [ 1, %bb.z ], [ 1, %bb.ac ], [ 1, %print_data.exit195 ], [ 1, %bb.y ], [ 1, %bb.e ], [ 1, %bb.k ], [ 1, %bb.o ], [ 1, %bb.t ], [ 1, %bb.ab ]
  ret i64 %.0141
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 2) i64 @diff_ushort_element(i16 %.0.val, i16 %.0.val1, i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not175 = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %.not179 = icmp eq i32 %i.d, 0                  ; 2 uses
  br i1 %.not175, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not179, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.e = zext i16 %.0.val1 to i32                 ; 2 uses
  %i.f = zext i16 %.0.val to i32                  ; 2 uses
  %i.g = sub nsw i32 %i.e, %i.f
  %2 = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true) ; 2 uses
  %3 = uitofp nneg i32 %2 to double
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !22
  %i.j = fcmp olt double %i.i, %3
  br i1 %i.j, label %bb.d, label %print_data.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %print_data.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25
  %.not3.i = icmp eq i32 %i.o, 0
  br i1 %.not3.i, label %print_data.exit.thread, label %print_data.exit

print_data.exit:                                  ; preds = %bb.d, %bb.e
  %i.p = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i.not = icmp eq i32 %i.p, 0
  br i1 %.not4.i.not, label %bb.f, label %print_data.exit.thread

bb.f:                                             ; preds = %print_data.exit
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.59, i32 noundef %i.f, i32 noundef %i.e, i32 noundef %2) #15
  br label %print_data.exit.thread

bb.g:                                             ; preds = %bb.a
  br i1 %.not179, label %.thread10, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = uitofp i16 %.0.val to double             ; 2 uses
  %i.r = fsub double 0.000000e+00, %i.q
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %i.t = fcmp olt double %i.s, f0x3CB0000000000000
  br i1 %i.t, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.u = sub i16 %.0.val1, %.0.val
  %i.v = sitofp i16 %i.u to double
  %i.w = fdiv double %i.v, %i.q                   ; 3 uses
  %i.x = fcmp ult double %i.w, 0.000000e+00
  %i.y = fneg double %i.w
  %i.z = select i1 %i.x, double %i.y, double %i.w
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aa = uitofp i16 %.0.val1 to double
  %i.ab = fsub double 0.000000e+00, %i.aa
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp uge double %i.ac, f0x3CB0000000000000
  br i1 %i.ad, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.ae, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !24
  %.not.i188 = icmp eq i32 %i.ag, 0
  br i1 %.not.i188, label %bb.k, label %print_data.exit191

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !25
  %.not3.i190 = icmp eq i32 %i.ai, 0
  br i1 %.not3.i190, label %print_data.exit.thread, label %print_data.exit191

print_data.exit191:                               ; preds = %bb.j, %bb.k
  %i.aj = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i189.not = icmp eq i32 %i.aj, 0
  br i1 %.not4.i189.not, label %bb.l, label %print_data.exit.thread

bb.l:                                             ; preds = %print_data.exit191
  %i.ak = zext i16 %.0.val to i32                 ; 2 uses
  %i.al = zext i16 %.0.val1 to i32                ; 2 uses
  %i.am = sub nsw i32 %i.al, %i.ak
  %4 = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.110, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %4) #15
  br label %print_data.exit.thread

bb.m:                                             ; preds = %.thread, %bb.i
  %.013922 = phi double [ %i.z, %.thread ], [ -1.000000e+00, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load double, ptr %i.an, align 8, !tbaa !27
  %i.ap = fcmp ogt double %.013922, %i.ao
  br i1 %i.ap, label %bb.n, label %print_data.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.aq, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !24
  %.not.i192 = icmp eq i32 %i.as, 0
  br i1 %.not.i192, label %bb.o, label %print_data.exit195

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !25
  %.not3.i194 = icmp eq i32 %i.au, 0
  br i1 %.not3.i194, label %print_data.exit.thread, label %print_data.exit195

print_data.exit195:                               ; preds = %bb.n, %bb.o
  %i.av = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i193.not = icmp eq i32 %i.av, 0
  br i1 %.not4.i193.not, label %bb.p, label %print_data.exit.thread

bb.p:                                             ; preds = %print_data.exit195
  %i.aw = zext i16 %.0.val to i32                 ; 2 uses
  %i.ax = zext i16 %.0.val1 to i32                ; 2 uses
  %i.ay = sub nsw i32 %i.ax, %i.aw
  %5 = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.60, i32 noundef %i.aw, i32 noundef %i.ax, i32 noundef %5, double noundef %.013922) #15
  br label %print_data.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.az = uitofp i16 %.0.val to double            ; 2 uses
  %i.ba = fsub double 0.000000e+00, %i.az
  %i.bb = tail call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp olt double %i.bb, f0x3CB0000000000000
  br i1 %i.bc, label %bb.r, label %.thread23

.thread23:                                        ; preds = %bb.q
  %i.bd = sub i16 %.0.val1, %.0.val
  %i.be = sitofp i16 %i.bd to double
  %i.bf = fdiv double %i.be, %i.az                ; 3 uses
  %i.bg = fcmp ult double %i.bf, 0.000000e+00
  %i.bh = fneg double %i.bf
  %i.bi = select i1 %i.bg, double %i.bh, double %i.bf
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bj = uitofp i16 %.0.val1 to double
  %i.bk = fsub double 0.000000e+00, %i.bj
  %i.bl = tail call double @llvm.fabs.f64(double %i.bk)
  %i.bm = fcmp uge double %i.bl, f0x3CB0000000000000
  br i1 %i.bm, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.bn, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !24
  %.not.i196 = icmp eq i32 %i.bp, 0
  br i1 %.not.i196, label %bb.t, label %print_data.exit199

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !25
  %.not3.i198 = icmp eq i32 %i.br, 0
  br i1 %.not3.i198, label %print_data.exit.thread, label %print_data.exit199

print_data.exit199:                               ; preds = %bb.s, %bb.t
  %i.bs = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i197.not = icmp eq i32 %i.bs, 0
  br i1 %.not4.i197.not, label %bb.u, label %print_data.exit.thread

bb.u:                                             ; preds = %print_data.exit199
  %i.bt = zext i16 %.0.val to i32                 ; 2 uses
  %i.bu = zext i16 %.0.val1 to i32                ; 2 uses
  %i.bv = sub nsw i32 %i.bu, %i.bt
  %6 = tail call i32 @llvm.abs.i32(i32 %i.bv, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.110, i32 noundef %i.bt, i32 noundef %i.bu, i32 noundef %6) #15
  br label %print_data.exit.thread

bb.v:                                             ; preds = %.thread23, %bb.r
  %.114026 = phi double [ %i.bi, %.thread23 ], [ -1.000000e+00, %bb.r ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !27
  %i.by = fcmp ogt double %.114026, %i.bx
  br i1 %i.by, label %bb.w, label %print_data.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bz = zext i16 %.0.val1 to i32                ; 2 uses
  %i.ca = zext i16 %.0.val to i32                 ; 2 uses
  %i.cb = sub nsw i32 %i.bz, %i.ca
  %7 = tail call i32 @llvm.abs.i32(i32 %i.cb, i1 true) ; 2 uses
  %8 = uitofp nneg i32 %7 to double
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !22
  %i.ce = fcmp olt double %i.cd, %8
  br i1 %i.ce, label %bb.x, label %print_data.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.cf, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !24
  %.not.i200 = icmp eq i32 %i.ch, 0
  br i1 %.not.i200, label %bb.y, label %print_data.exit203

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !25
  %.not3.i202 = icmp eq i32 %i.cj, 0
  br i1 %.not3.i202, label %print_data.exit.thread, label %print_data.exit203

print_data.exit203:                               ; preds = %bb.x, %bb.y
  %i.ck = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i201.not = icmp eq i32 %i.ck, 0
  br i1 %.not4.i201.not, label %bb.z, label %print_data.exit.thread

bb.z:                                             ; preds = %print_data.exit203
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.60, i32 noundef %i.ca, i32 noundef %i.bz, i32 noundef %7, double noundef %.114026) #15
  br label %print_data.exit.thread

.thread10:                                        ; preds = %bb.g
  %i.cl = zext i16 %.0.val to i32                 ; 2 uses
  %i.cm = zext i16 %.0.val1 to i32                ; 2 uses
  %.not183 = icmp eq i16 %.0.val, %.0.val1
  br i1 %.not183, label %print_data.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.thread10
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.cn, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !24
  %.not.i204 = icmp eq i32 %i.cp, 0
  br i1 %.not.i204, label %bb.ab, label %print_data.exit207

bb.ab:                                            ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !25
  %.not3.i206 = icmp eq i32 %i.cr, 0
  br i1 %.not3.i206, label %print_data.exit.thread, label %print_data.exit207

print_data.exit207:                               ; preds = %bb.aa, %bb.ab
  %i.cs = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i205.not = icmp eq i32 %i.cs, 0
  br i1 %.not4.i205.not, label %bb.ac, label %print_data.exit.thread

bb.ac:                                            ; preds = %print_data.exit207
  %i.ct = sub nsw i32 %i.cm, %i.cl
  %9 = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.59, i32 noundef %i.cl, i32 noundef %i.cm, i32 noundef %9) #15
  br label %print_data.exit.thread

print_data.exit.thread:                           ; preds = %bb.ab, %bb.y, %bb.t, %bb.o, %bb.k, %bb.e, %print_data.exit207, %bb.ac, %print_data.exit203, %bb.z, %print_data.exit199, %bb.u, %print_data.exit195, %bb.p, %print_data.exit191, %bb.l, %print_data.exit, %bb.f, %bb.c, %bb.v, %bb.w, %.thread10, %bb.m
  %.0141 = phi i64 [ 1, %print_data.exit199 ], [ 0, %bb.w ], [ 0, %bb.v ], [ 1, %print_data.exit195 ], [ 1, %print_data.exit203 ], [ 0, %.thread10 ], [ 1, %print_data.exit191 ], [ 0, %bb.m ], [ 1, %print_data.exit ], [ 0, %bb.c ], [ 1, %bb.f ], [ 1, %bb.l ], [ 1, %bb.p ], [ 1, %bb.u ], [ 1, %bb.z ], [ 1, %bb.ac ], [ 1, %print_data.exit207 ], [ 1, %bb.y ], [ 1, %bb.e ], [ 1, %bb.k ], [ 1, %bb.o ], [ 1, %bb.t ], [ 1, %bb.ab ]
  ret i64 %.0141
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 2) i64 @diff_int_element(i32 %.0.val, i32 %.0.val1, i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not161 = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %.not165 = icmp eq i32 %i.d, 0                  ; 2 uses
  br i1 %.not161, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not165, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i32 %.0.val, %.0.val1
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true) ; 2 uses
  %i.g = uitofp nneg i32 %i.f to double
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !22
  %i.j = fcmp olt double %i.i, %i.g
  br i1 %i.j, label %bb.d, label %print_data.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %print_data.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25
  %.not3.i = icmp eq i32 %i.o, 0
  br i1 %.not3.i, label %print_data.exit.thread, label %print_data.exit

print_data.exit:                                  ; preds = %bb.d, %bb.e
  %i.p = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i.not = icmp eq i32 %i.p, 0
  br i1 %.not4.i.not, label %bb.f, label %print_data.exit.thread

bb.f:                                             ; preds = %print_data.exit
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.59, i32 noundef %.0.val, i32 noundef %.0.val1, i32 noundef %i.f) #15
  br label %print_data.exit.thread

bb.g:                                             ; preds = %bb.a
  br i1 %.not165, label %.thread10, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = sitofp i32 %.0.val to double             ; 2 uses
  %i.r = fsub double 0.000000e+00, %i.q
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %i.t = fcmp olt double %i.s, f0x3CB0000000000000
  br i1 %i.t, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.u = sub nsw i32 %.0.val1, %.0.val
  %i.v = sitofp i32 %i.u to double
  %i.w = fdiv double %i.v, %i.q                   ; 3 uses
  %i.x = fcmp ult double %i.w, 0.000000e+00
  %i.y = fneg double %i.w
  %i.z = select i1 %i.x, double %i.y, double %i.w
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aa = sitofp i32 %.0.val1 to double
  %i.ab = fsub double 0.000000e+00, %i.aa
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp uge double %i.ac, f0x3CB0000000000000
  br i1 %i.ad, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.ae, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !24
  %.not.i174 = icmp eq i32 %i.ag, 0
  br i1 %.not.i174, label %bb.k, label %print_data.exit177

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !25
  %.not3.i176 = icmp eq i32 %i.ai, 0
  br i1 %.not3.i176, label %print_data.exit.thread, label %print_data.exit177

print_data.exit177:                               ; preds = %bb.j, %bb.k
  %i.aj = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i175.not = icmp eq i32 %i.aj, 0
  br i1 %.not4.i175.not, label %bb.l, label %print_data.exit.thread

bb.l:                                             ; preds = %print_data.exit177
  %i.ak = sub nsw i32 %.0.val, %.0.val1
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.110, i32 noundef %.0.val, i32 noundef %.0.val1, i32 noundef %i.al) #15
  br label %print_data.exit.thread

bb.m:                                             ; preds = %.thread, %bb.i
  %.013922 = phi double [ %i.z, %.thread ], [ -1.000000e+00, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !27
  %i.ao = fcmp ogt double %.013922, %i.an
  br i1 %i.ao, label %bb.n, label %print_data.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.ap, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !24
  %.not.i178 = icmp eq i32 %i.ar, 0
  br i1 %.not.i178, label %bb.o, label %print_data.exit181

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !25
  %.not3.i180 = icmp eq i32 %i.at, 0
  br i1 %.not3.i180, label %print_data.exit.thread, label %print_data.exit181

print_data.exit181:                               ; preds = %bb.n, %bb.o
  %i.au = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i179.not = icmp eq i32 %i.au, 0
  br i1 %.not4.i179.not, label %bb.p, label %print_data.exit.thread

bb.p:                                             ; preds = %print_data.exit181
  %i.av = sub nsw i32 %.0.val, %.0.val1
  %i.aw = tail call i32 @llvm.abs.i32(i32 %i.av, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.60, i32 noundef %.0.val, i32 noundef %.0.val1, i32 noundef %i.aw, double noundef %.013922) #15
  br label %print_data.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.ax = sitofp i32 %.0.val to double            ; 2 uses
  %i.ay = fsub double 0.000000e+00, %i.ax
  %i.az = tail call double @llvm.fabs.f64(double %i.ay)
  %i.ba = fcmp olt double %i.az, f0x3CB0000000000000
  br i1 %i.ba, label %bb.r, label %.thread23

.thread23:                                        ; preds = %bb.q
  %i.bb = sub nsw i32 %.0.val1, %.0.val
  %i.bc = sitofp i32 %i.bb to double
  %i.bd = fdiv double %i.bc, %i.ax                ; 3 uses
  %i.be = fcmp ult double %i.bd, 0.000000e+00
  %i.bf = fneg double %i.bd
  %i.bg = select i1 %i.be, double %i.bf, double %i.bd
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bh = sitofp i32 %.0.val1 to double
  %i.bi = fsub double 0.000000e+00, %i.bh
  %i.bj = tail call double @llvm.fabs.f64(double %i.bi)
  %i.bk = fcmp uge double %i.bj, f0x3CB0000000000000
  br i1 %i.bk, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.bl, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !24
  %.not.i182 = icmp eq i32 %i.bn, 0
  br i1 %.not.i182, label %bb.t, label %print_data.exit185

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !25
  %.not3.i184 = icmp eq i32 %i.bp, 0
  br i1 %.not3.i184, label %print_data.exit.thread, label %print_data.exit185

print_data.exit185:                               ; preds = %bb.s, %bb.t
  %i.bq = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i183.not = icmp eq i32 %i.bq, 0
  br i1 %.not4.i183.not, label %bb.u, label %print_data.exit.thread

bb.u:                                             ; preds = %print_data.exit185
  %i.br = sub nsw i32 %.0.val, %.0.val1
  %i.bs = tail call i32 @llvm.abs.i32(i32 %i.br, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.110, i32 noundef %.0.val, i32 noundef %.0.val1, i32 noundef %i.bs) #15
  br label %print_data.exit.thread

bb.v:                                             ; preds = %.thread23, %bb.r
  %.114026 = phi double [ %i.bg, %.thread23 ], [ -1.000000e+00, %bb.r ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !27
  %i.bv = fcmp ogt double %.114026, %i.bu
  br i1 %i.bv, label %bb.w, label %print_data.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bw = sub nsw i32 %.0.val, %.0.val1
  %i.bx = tail call i32 @llvm.abs.i32(i32 %i.bw, i1 true) ; 2 uses
  %i.by = uitofp nneg i32 %i.bx to double
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_0
begin_hunk_1_@diff_datum:bb.a
    i64 3, label %bb.jt
    i64 4, label %bb.ju
  ]

bb.jr:                                            ; preds = %.split
  %.val = load half, ptr %0, align 1
  %.val859 = load half, ptr %1, align 1
  %i.agc = tail call fastcc i64 @diff_float16_element(half %.val, half %.val859, i64 noundef %2, ptr noundef nonnull %3)
  br label %.thread942

bb.js:                                            ; preds = %.split
  %.val860 = load float, ptr %0, align 1
  %.val861 = load float, ptr %1, align 1
  %i.agd = tail call fastcc i64 @diff_float_element(float %.val860, float %.val861, i64 noundef %2, ptr noundef nonnull %3)
  br label %.thread942

bb.jt:                                            ; preds = %.split
  %.val862 = load double, ptr %0, align 1
  %.val863 = load double, ptr %1, align 1
  %i.age = tail call fastcc i64 @diff_double_element(double %.val862, double %.val863, i64 noundef %2, ptr noundef nonnull %3)
  br label %.thread942

bb.ju:                                            ; preds = %.split
  %.val864 = load x86_fp80, ptr %0, align 1
  %.val865 = load x86_fp80, ptr %1, align 1
  %i.agf = tail call fastcc i64 @diff_ldouble_element(x86_fp80 %.val864, x86_fp80 %.val865, i64 noundef %2, ptr noundef nonnull %3)
  br label %.thread942

.thread942:                                       ; preds = %.lr.ph970, %.lr.ph974, %character_compare.exit, %character_compare.exit910, %.thread1126, %.preheader949, %.preheader947, %.preheader945, %.preheader, %all_zero.exit924.thr_comm, %bb.jq, %.split, %bb.jo, %bb.jp, %bb.jm, %bb.jj, %bb.jk, %bb.jh, %bb.v, %bb.g, %bb.h, %bb.e, %._crit_edge986, %bb.au, %._crit_edge962, %._crit_edge, %bb.ii, %bb.in, %bb.ip, %bb.io, %bb.im, %bb.it, %bb.ix, %bb.jb, %bb.jf, %bb.jl, %bb.jd, %bb.iz, %bb.iv, %bb.ir, %bb.js, %bb.ju, %bb.jt, %bb.jr, %bb.ax, %bb.c
  %.25 = phi i64 [ 0, %bb.c ], [ 0, %bb.jl ], [ %i.aeh, %bb.in ], [ %i.agc, %bb.jr ], [ %.23, %bb.ii ], [ %i.agd, %bb.js ], [ %i.aee, %bb.im ], [ %i.age, %bb.jt ], [ %.24.lcssa, %._crit_edge ], [ %i.agf, %bb.ju ], [ 0, %.split ], [ 1, %bb.ax ], [ %i.aeq, %bb.ir ], [ %.8.lcssa, %._crit_edge962 ], [ %i.aes, %bb.it ], [ %.7, %bb.au ], [ %i.aeu, %bb.iv ], [ %spec.select8579381149, %.preheader945 ], [ %i.aev, %bb.ix ], [ %spec.select8579381149, %character_compare.exit ], [ %i.aex, %bb.iz ], [ 0, %bb.g ], [ %i.aey, %bb.jb ], [ %.0585.lcssa, %._crit_edge986 ], [ %i.afa, %bb.jd ], [ %i.ael, %bb.ip ], [ %i.afb, %bb.jf ], [ %spec.select857938, %bb.v ], [ %i.aek, %bb.io ], [ 0, %bb.jj ], [ 0, %all_zero.exit924.thr_comm ], [ 0, %bb.e ], [ 0, %bb.h ], [ %i.cs, %character_compare.exit910 ], [ 0, %bb.jq ], [ 0, %bb.jh ], [ 0, %bb.jk ], [ 0, %bb.jm ], [ 0, %bb.jp ], [ 0, %bb.jo ], [ %spec.select8579381149, %.preheader ], [ %spec.select8579381133, %.thread1126 ], [ 0, %.preheader947 ], [ 0, %.preheader949 ], [ %i.cx, %.lr.ph974 ], [ %i.dc, %.lr.ph970 ]
  %.4 = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.jl ], [ %i.k, %bb.in ], [ %i.k, %bb.jr ], [ %.3584, %bb.ii ], [ %i.k, %bb.js ], [ %i.k, %bb.im ], [ %i.k, %bb.jt ], [ %i.k, %._crit_edge ], [ %i.k, %bb.ju ], [ %i.k, %.split ], [ %i.hp, %bb.ax ], [ %i.k, %bb.ir ], [ %i.k, %._crit_edge962 ], [ %i.k, %bb.it ], [ %i.k, %bb.au ], [ %i.k, %bb.iv ], [ %i.k, %.preheader945 ], [ %i.k, %bb.ix ], [ %i.k, %character_compare.exit ], [ %i.k, %bb.iz ], [ 2, %bb.g ], [ %i.k, %bb.jb ], [ %i.k, %._crit_edge986 ], [ %i.k, %bb.jd ], [ %i.k, %bb.ip ], [ %i.k, %bb.jf ], [ %i.k, %bb.v ], [ %i.k, %bb.io ], [ 2, %bb.jj ], [ %i.k, %all_zero.exit924.thr_comm ], [ 2, %bb.e ], [ 2, %bb.h ], [ %i.k, %character_compare.exit910 ], [ %i.k, %bb.jq ], [ 2, %bb.jh ], [ 2, %bb.jk ], [ 2, %bb.jm ], [ 2, %bb.jp ], [ 2, %bb.jo ], [ %i.k, %.preheader ], [ %i.k, %.thread1126 ], [ %i.k, %.preheader947 ], [ %i.k, %.preheader949 ], [ %i.k, %.lr.ph974 ], [ %i.k, %.lr.ph970 ]
  %i.agg = load i32, ptr %i.j, align 8, !tbaa !31
  %i.agh = or i32 %i.agg, %.4
  store i32 %i.agh, ptr %i.j, align 8, !tbaa !31
  ret i64 %.25
}

; Function Attrs: nounwind uwtable
define internal fastcc void @get_member_types(i64 noundef %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %0, 0
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %common.ret50

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @H5Tget_class(i64 noundef %0) #15 ; 2 uses
  %i.d = add i32 %i.c, -9
  %or.cond3 = icmp ult i32 %i.d, 2
  br i1 %or.cond3, label %bb.c, label %bb.d

common.ret50:                                     ; preds = %bb.e, %bb.d, %bb.a, %.lr.ph, %bb.c
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @H5Tget_super(i64 noundef %0) #15 ; 2 uses
  tail call fastcc void @get_member_types(i64 noundef %i.e, ptr noundef nonnull %1)
  %i.f = tail call i32 @H5Tclose(i64 noundef %i.e) #15 ; 0 uses
  br label %common.ret50

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.c, 6
  br i1 %i.g, label %bb.e, label %common.ret50

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @H5Tget_nmembers(i64 noundef %0) #15 ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader, label %common.ret50

.lr.ph.preheader:                                 ; preds = %bb.e
  store i32 %i.h, ptr %1, align 8, !tbaa !40
  %i.j = zext nneg i32 %i.h to i64                ; 3 uses
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !42
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !41
  %i.o = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !43
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 6 uses
  %i.q = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.r = tail call i64 @H5Tget_member_type(i64 noundef %0, i32 noundef %i.q) #15
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  store i64 %i.r, ptr %i.t, align 8, !tbaa !17
  %i.u = tail call i64 @H5Tget_member_offset(i64 noundef %0, i32 noundef %i.q) #15
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  store i64 %i.u, ptr %i.w, align 8, !tbaa !17
  %i.x = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19 ; 2 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !45
  tail call fastcc void @get_member_types(i64 noundef %i.ac, ptr noundef %i.ad)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %1, align 8, !tbaa !40
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp samesign ult i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph, label %common.ret50, !llvm.loop !94
}

; Function Attrs: nounwind uwtable
define internal fastcc void @close_member_types(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !40
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %.not18 = icmp eq ptr %i.h, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @close_member_types(ptr noundef %i.h)
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  tail call void @free(ptr noundef %i.k) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  %i.o = tail call i32 @H5Tclose(i64 noundef %i.n) #15 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %0, align 8, !tbaa !40
  %i.q = zext i32 %i.p to i64
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.c, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  tail call void @free(ptr noundef %i.t) #15
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.u) #15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.w) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @H5Epush2(i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @H5Tget_strpad(i64 noundef) local_unnamed_addr #2

declare i32 @H5Tis_variable_str(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 2) i64 @character_compare_opt(i8 %.0.val, i8 %.0.val1, i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %.not135 = icmp eq i32 %i.d, 0                  ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not135, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.e = zext i8 %.0.val1 to i32                  ; 2 uses
  %i.f = zext i8 %.0.val to i32                   ; 2 uses
  %i.g = sub nsw i32 %i.e, %i.f
  %2 = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true) ; 2 uses
  %3 = uitofp nneg i32 %2 to double
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !22
  %i.j = fcmp olt double %i.i, %3
  br i1 %i.j, label %bb.d, label %print_data.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %print_data.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25
  %.not3.i = icmp eq i32 %i.o, 0
  br i1 %.not3.i, label %print_data.exit.thread, label %print_data.exit

print_data.exit:                                  ; preds = %bb.d, %bb.e
  %i.p = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i.not = icmp eq i32 %i.p, 0
  br i1 %.not4.i.not, label %bb.f, label %print_data.exit.thread

bb.f:                                             ; preds = %print_data.exit
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.59, i32 noundef %i.f, i32 noundef %i.e, i32 noundef %2) #15
  br label %print_data.exit.thread

bb.g:                                             ; preds = %bb.a
  br i1 %.not135, label %.thread5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = uitofp i8 %.0.val to double              ; 2 uses
  %i.r = fsub double 0.000000e+00, %i.q
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %i.t = fcmp olt double %i.s, f0x3CB0000000000000
  br i1 %i.t, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.h
  %i.u = sub i8 %.0.val1, %.0.val
  %i.v = sitofp i8 %i.u to double
  %i.w = fdiv double %i.v, %i.q                   ; 3 uses
  %i.x = fcmp ult double %i.w, 0.000000e+00
  %i.y = fneg double %i.w
  %i.z = select i1 %i.x, double %i.y, double %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge
  %.0 = phi double [ %i.z, %.critedge ], [ -1.000000e+00, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !27
  %i.ac = fcmp ogt double %.0, %i.ab
  br i1 %i.ac, label %bb.j, label %print_data.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.ad, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !24
  %.not.i144 = icmp eq i32 %i.af, 0
  br i1 %.not.i144, label %bb.k, label %print_data.exit147

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !25
  %.not3.i146 = icmp eq i32 %i.ah, 0
  br i1 %.not3.i146, label %print_data.exit.thread, label %print_data.exit147

print_data.exit147:                               ; preds = %bb.j, %bb.k
  %i.ai = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i145.not = icmp eq i32 %i.ai, 0
  br i1 %.not4.i145.not, label %bb.l, label %print_data.exit.thread

bb.l:                                             ; preds = %print_data.exit147
  %i.aj = zext i8 %.0.val to i32                  ; 2 uses
  %i.ak = zext i8 %.0.val1 to i32                 ; 2 uses
  %i.al = sub nsw i32 %i.ak, %i.aj
  %4 = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.60, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef %4, double noundef %.0) #15
  br label %print_data.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.am = uitofp i8 %.0.val to double             ; 2 uses
  %i.an = fsub double 0.000000e+00, %i.am
  %i.ao = tail call double @llvm.fabs.f64(double %i.an)
  %i.ap = fcmp olt double %i.ao, f0x3CB0000000000000
  br i1 %i.ap, label %bb.n, label %.critedge143

.critedge143:                                     ; preds = %bb.m
  %i.aq = sub i8 %.0.val1, %.0.val
  %i.ar = sitofp i8 %i.aq to double
  %i.as = fdiv double %i.ar, %i.am                ; 3 uses
  %i.at = fcmp ult double %i.as, 0.000000e+00
  %i.au = fneg double %i.as
  %i.av = select i1 %i.at, double %i.au, double %i.as
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge143
  %.1 = phi double [ %i.av, %.critedge143 ], [ -1.000000e+00, %bb.m ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !27
  %i.ay = fcmp ogt double %.1, %i.ax
  br i1 %i.ay, label %bb.o, label %print_data.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.az = zext i8 %.0.val1 to i32                 ; 2 uses
  %i.ba = zext i8 %.0.val to i32                  ; 2 uses
  %i.bb = sub nsw i32 %i.az, %i.ba
  %5 = tail call i32 @llvm.abs.i32(i32 %i.bb, i1 true) ; 2 uses
  %6 = uitofp nneg i32 %5 to double
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !22
  %i.be = fcmp olt double %i.bd, %6
  br i1 %i.be, label %bb.p, label %print_data.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.bf, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !24
  %.not.i148 = icmp eq i32 %i.bh, 0
  br i1 %.not.i148, label %bb.q, label %print_data.exit151

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !25
  %.not3.i150 = icmp eq i32 %i.bj, 0
  br i1 %.not3.i150, label %print_data.exit.thread, label %print_data.exit151

print_data.exit151:                               ; preds = %bb.p, %bb.q
  %i.bk = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i149.not = icmp eq i32 %i.bk, 0
  br i1 %.not4.i149.not, label %bb.r, label %print_data.exit.thread

bb.r:                                             ; preds = %print_data.exit151
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.60, i32 noundef %i.ba, i32 noundef %i.az, i32 noundef %5, double noundef %.1) #15
  br label %print_data.exit.thread

.thread5:                                         ; preds = %bb.g
  %i.bl = zext i8 %.0.val to i32                  ; 2 uses
  %i.bm = zext i8 %.0.val1 to i32                 ; 2 uses
  %.not139 = icmp eq i8 %.0.val, %.0.val1
  br i1 %.not139, label %print_data.exit.thread, label %bb.s

bb.s:                                             ; preds = %.thread5
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.bn, align 8, !tbaa !23
  tail call fastcc void @print_pos(ptr noundef nonnull %1, i64 noundef %0, i64 noundef 0)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !24
  %.not.i152 = icmp eq i32 %i.bp, 0
  br i1 %.not.i152, label %bb.t, label %print_data.exit155

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !25
  %.not3.i154 = icmp eq i32 %i.br, 0
  br i1 %.not3.i154, label %print_data.exit.thread, label %print_data.exit155

print_data.exit155:                               ; preds = %bb.s, %bb.t
  %i.bs = load i32, ptr %1, align 8, !tbaa !26
  %.not4.i153.not = icmp eq i32 %i.bs, 0
  br i1 %.not4.i153.not, label %bb.u, label %print_data.exit.thread

bb.u:                                             ; preds = %print_data.exit155
  %i.bt = sub nsw i32 %i.bm, %i.bl
  %7 = tail call i32 @llvm.abs.i32(i32 %i.bt, i1 true)
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.59, i32 noundef %i.bl, i32 noundef %i.bm, i32 noundef %7) #15
  br label %print_data.exit.thread

print_data.exit.thread:                           ; preds = %bb.t, %bb.q, %bb.k, %bb.e, %print_data.exit155, %bb.u, %print_data.exit151, %bb.r, %print_data.exit147, %bb.l, %print_data.exit, %bb.f, %bb.c, %bb.o, %bb.n, %.thread5, %bb.i
  %.0107 = phi i64 [ 1, %print_data.exit147 ], [ 0, %bb.o ], [ 0, %bb.n ], [ 1, %print_data.exit151 ], [ 0, %.thread5 ], [ 1, %print_data.exit ], [ 0, %bb.i ], [ 0, %bb.c ], [ 1, %bb.f ], [ 1, %bb.l ], [ 1, %bb.r ], [ 1, %bb.u ], [ 1, %print_data.exit155 ], [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %bb.k ], [ 1, %bb.t ]
  ret i64 %.0107
}

declare i32 @H5Eauto_is_v2(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eget_auto2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eset_auto2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eget_auto1(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eset_auto1(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Tenum_nameof(i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @print_pos(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %print_data.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %.not3.i = icmp eq i32 %i.d, 0
  br i1 %.not3.i, label %print_data.exit.thread, label %print_data.exit

print_data.exit:                                  ; preds = %bb.a, %bb.b
  %i.e = load i32, ptr %0, align 8, !tbaa !26
  %.not4.i.not = icmp eq i32 %i.e, 0
  br i1 %.not4.i.not, label %bb.c, label %print_data.exit.thread

bb.c:                                             ; preds = %print_data.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 4, !tbaa !14
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  tail call void @print_dimensions(i32 noundef %i.j, ptr noundef nonnull %i.k) #15
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #15
  %i.l = load i32, ptr %i.i, align 8, !tbaa !98
  tail call void @print_dimensions(i32 noundef %i.l, ptr noundef nonnull %i.k) #15
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.2) #15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !23
  %.not.i84 = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48   ; 2 uses
  br i1 %.not.i84, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef %i.p, ptr noundef %i.r, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #15
  br label %print_header.exit

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.73, ptr noundef %i.p, ptr noundef %i.r, ptr noundef nonnull @.str.74) #15
  br label %print_header.exit

print_header.exit:                                ; preds = %bb.e, %bb.f
  %.str.78.sink.i = phi ptr [ @.str.78, %bb.f ], [ @.str.76, %bb.e ]
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull %.str.78.sink.i) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %print_header.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !98
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.61) #15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100  ; 4 uses
  %.not80 = icmp eq ptr %i.w, null
  br i1 %.not80, label %..thread_crit_edge, label %bb.i

..thread_crit_edge:                               ; preds = %bb.h
  %.pre = load i32, ptr %i.s, align 8, !tbaa !98
  br label %.thread

bb.i:                                             ; preds = %bb.h
  %.not81 = icmp ne i64 %1, 0
  %.pre118 = load i32, ptr %i.s, align 8, !tbaa !98 ; 6 uses
  %i.x = icmp sgt i32 %.pre118, 0
  %or.cond = select i1 %.not81, i1 %i.x, i1 false
  br i1 %or.cond, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !104
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.af = zext nneg i32 %.pre118 to i64
  %wide.trip.count = zext nneg i32 %.pre118 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.063100 = phi i64 [ 1, %.lr.ph ], [ %i.ai, %bb.k ]
  %.06499 = phi i64 [ 1, %.lr.ph ], [ %i.az, %bb.k ] ; 2 uses
  %.06598 = phi i64 [ 1, %.lr.ph ], [ %i.ay, %bb.k ]
  %.07097 = phi i64 [ %1, %.lr.ph ], [ %i.aw, %bb.k ] ; 3 uses
  %.07296 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.k ]
  %i.ag = xor i64 %indvars.iv, -1
  %i.ah = add nsw i64 %i.af, %i.ag                ; 4 uses
  %i.ai = mul i64 %.063100, %.06598               ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ah
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ah
  %i.am = load i64, ptr %i.al, align 8, !tbaa !17
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ah
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.ap = mul i64 %i.am, %i.ak                    ; 3 uses
  %i.aq = urem i64 %.07097, %i.ap
  %i.ar = udiv i64 %.07097, %i.ap
  %i.as = mul i64 %i.ao, %i.ai
  %i.at = mul i64 %i.as, %i.aq
  %i.au = add i64 %i.at, %.07296                  ; 3 uses
  %.not82 = icmp ugt i64 %i.ap, %.07097
  br i1 %.not82, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = freeze i64 %i.ar                        ; 3 uses
  %i.aw = mul i64 %i.av, %.06499
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ah
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !17 ; 2 uses
  %i.az = mul i64 %i.ay, %.06499
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.ba = mul i64 %i.av, %i.ao
  %i.bb = icmp eq i64 %i.av, 0
  %i.bc = mul i64 %i.ba, %i.ai
  %i.bd = select i1 %i.bb, i64 0, i64 %i.bc
  %i.be = add i64 %i.bd, %i.au
  br label %.thread

.thread:                                          ; preds = %bb.j, %._crit_edge.loopexit, %..thread_crit_edge, %bb.i
  %i.bf = phi i32 [ %.pre, %..thread_crit_edge ], [ %.pre118, %bb.i ], [ %.pre118, %._crit_edge.loopexit ], [ %.pre118, %bb.j ]
  %.4 = phi i64 [ %1, %..thread_crit_edge ], [ 0, %bb.i ], [ %i.be, %._crit_edge.loopexit ], [ %i.au, %bb.j ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.bi = tail call i64 @calc_acc_pos(i32 noundef %i.bf, i64 noundef %.4, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh) #15 ; 0 uses
  %i.bj = load i32, ptr %i.s, align 8, !tbaa !98
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1464
  br label %bb.l

._crit_edge107:                                   ; preds = %bb.l, %.thread
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.64) #15
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph106, %bb.l
  %indvars.iv115 = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next116, %bb.l ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv115
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv115 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !17
  %i.bq = add i64 %i.bp, %i.bn                    ; 2 uses
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !17
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.62, i64 noundef %i.bq) #15
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.63) #15
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.br = load i32, ptr %i.s, align 8, !tbaa !98
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next116, %i.bs
  br i1 %i.bt, label %bb.l, label %._crit_edge107, !llvm.loop !97

bb.m:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !49
  %.not79 = icmp eq i32 %i.bv, 0
  br i1 %.not79, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_1
