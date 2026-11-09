Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtfttp?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dtfttp_:bb.a
  %wide.trip.count672 = zext nneg i32 %.901 to i64
  %wide.trip.count667 = zext i32 %i.ci to i64
  %i.cj = add i64 %i.b, -8
  %i.ck = zext nneg i32 %.901 to i64
  %i.cl = zext nneg i32 %.901 to i64
  %ident.check.not = icmp ult i32 %i.h, 2
  br label %iter.check938

.loopexit434:                                     ; preds = %.lr.ph450.prol.loopexit, %.lr.ph450, %vec.epilog.middle.block949, %middle.block936
  %indvars.iv.next659.lcssa = phi i64 [ %i.di, %vec.epilog.middle.block949 ], [ %i.cv, %middle.block936 ], [ %indvars.iv.next659.lcssa1609.unr, %.lr.ph450.prol.loopexit ], [ %indvars.iv.next659.7, %.lr.ph450 ]
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1
  %exitcond673.not = icmp eq i64 %indvars.iv.next670, %wide.trip.count672
  br i1 %exitcond673.not, label %.loopexit, label %iter.check938, !llvm.loop !13

iter.check938:                                    ; preds = %.loopexit434, %.lr.ph456.preheader
  %indvars.iv669 = phi i64 [ 0, %.lr.ph456.preheader ], [ %indvars.iv.next670, %.loopexit434 ] ; 4 uses
  %indvars.iv660 = phi i64 [ 1, %.lr.ph456.preheader ], [ %indvars.iv.next661, %.loopexit434 ] ; 7 uses
  %.2454 = phi i64 [ %i.cg, %.lr.ph456.preheader ], [ %indvars.iv.next659.lcssa, %.loopexit434 ] ; 7 uses
  %i.cm = sub nsw i64 %i.ck, %indvars.iv669       ; 7 uses
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %invariant.gep895 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv669 ; 11 uses
  %min.iters.check922 = icmp ugt i64 %i.cm, 3
  %or.cond = and i1 %min.iters.check922, %ident.check.not
  br i1 %or.cond, label %vector.memcheck923, label %.lr.ph450.preheader

vector.memcheck923:                               ; preds = %iter.check938
  %i.cn = shl i64 %indvars.iv669, 4
  %i.co = add i64 %i.cn, %i.a
  %i.cp = sub i64 %i.cj, %i.co
  %i.cq = shl i64 %.2454, 3
  %i.cr = add i64 %i.cp, %i.cq
  %i.cs = add i64 %i.cr, -1
  %diff.check924 = icmp ult i64 %i.cs, 127
  br i1 %diff.check924, label %.lr.ph450.preheader, label %vector.main.loop.iter.check925

vector.main.loop.iter.check925:                   ; preds = %vector.memcheck923
  %min.iters.check926 = icmp ult i64 %i.cm, 16
  br i1 %min.iters.check926, label %vec.epilog.ph942, label %vector.ph927

vector.ph927:                                     ; preds = %vector.main.loop.iter.check925
  %i.ct = and i64 %i.cm, 12
  %n.vec928 = and i64 %i.cm, -16                  ; 5 uses
  %i.cu = add i64 %indvars.iv660, %n.vec928
  %i.cv = add i64 %.2454, %n.vec928               ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep895, i64 %indvars.iv660
  %i.cx = getelementptr [8 x i8], ptr %4, i64 %.2454
  br label %vector.body929

vector.body929:                                   ; preds = %vector.ph927, %vector.body929
  %index930 = phi i64 [ 0, %vector.ph927 ], [ %index.next935, %vector.body929 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index930 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %wide.load931 = load <4 x double>, ptr %i.cy, align 8, !tbaa !92
  %wide.load932 = load <4 x double>, ptr %i.cz, align 8, !tbaa !92
  %wide.load933 = load <4 x double>, ptr %i.da, align 8, !tbaa !92
  %wide.load934 = load <4 x double>, ptr %i.db, align 8, !tbaa !92
  %i.dc = getelementptr [8 x i8], ptr %i.cx, i64 %index930 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  store <4 x double> %wide.load931, ptr %i.dc, align 8, !tbaa !92
  store <4 x double> %wide.load932, ptr %i.dd, align 8, !tbaa !92
  store <4 x double> %wide.load933, ptr %i.de, align 8, !tbaa !92
  store <4 x double> %wide.load934, ptr %i.df, align 8, !tbaa !92
  %index.next935 = add nuw i64 %index930, 16      ; 2 uses
  %i.dg = icmp eq i64 %index.next935, %n.vec928
  br i1 %i.dg, label %middle.block936, label %vector.body929, !llvm.loop !14

middle.block936:                                  ; preds = %vector.body929
  %cmp.n937 = icmp eq i64 %i.cm, %n.vec928
  br i1 %cmp.n937, label %.loopexit434, label %vec.epilog.iter.check939

vec.epilog.iter.check939:                         ; preds = %middle.block936
  %min.epilog.iters.check941 = icmp eq i64 %i.ct, 0
  br i1 %min.epilog.iters.check941, label %.lr.ph450.preheader, label %vec.epilog.ph942, !prof !96

vec.epilog.ph942:                                 ; preds = %vector.main.loop.iter.check925, %vec.epilog.iter.check939
  %vec.epilog.resume.val943 = phi i64 [ %n.vec928, %vec.epilog.iter.check939 ], [ 0, %vector.main.loop.iter.check925 ]
  %n.vec944 = and i64 %i.cm, -4                   ; 4 uses
  %i.dh = add i64 %indvars.iv660, %n.vec944
  %i.di = add i64 %.2454, %n.vec944               ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep895, i64 %indvars.iv660
  %i.dk = getelementptr [8 x i8], ptr %4, i64 %.2454
  br label %vec.epilog.vector.body945

vec.epilog.vector.body945:                        ; preds = %vec.epilog.vector.body945, %vec.epilog.ph942
  %index946 = phi i64 [ %vec.epilog.resume.val943, %vec.epilog.ph942 ], [ %index.next948, %vec.epilog.vector.body945 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index946
  %wide.load947 = load <4 x double>, ptr %i.dl, align 8, !tbaa !92
  %i.dm = getelementptr [8 x i8], ptr %i.dk, i64 %index946
  store <4 x double> %wide.load947, ptr %i.dm, align 8, !tbaa !92
  %index.next948 = add nuw i64 %index946, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next948, %n.vec944
  br i1 %i.dn, label %vec.epilog.middle.block949, label %vec.epilog.vector.body945, !llvm.loop !15

vec.epilog.middle.block949:                       ; preds = %vec.epilog.vector.body945
  %cmp.n950 = icmp eq i64 %i.cm, %n.vec944
  br i1 %cmp.n950, label %.loopexit434, label %.lr.ph450.preheader

.lr.ph450.preheader:                              ; preds = %iter.check938, %vector.memcheck923, %vec.epilog.iter.check939, %vec.epilog.middle.block949
  %indvars.iv662.ph = phi i64 [ %indvars.iv660, %iter.check938 ], [ %indvars.iv660, %vector.memcheck923 ], [ %i.cu, %vec.epilog.iter.check939 ], [ %i.dh, %vec.epilog.middle.block949 ] ; 4 uses
  %indvars.iv658.ph = phi i64 [ %.2454, %iter.check938 ], [ %.2454, %vector.memcheck923 ], [ %i.cv, %vec.epilog.iter.check939 ], [ %i.di, %vec.epilog.middle.block949 ] ; 2 uses
  %i.do = sub i64 %wide.trip.count656, %indvars.iv662.ph
  %i.dp = sub i64 %i.cl, %indvars.iv662.ph
  %xtraiter1611 = and i64 %i.do, 7                ; 2 uses
  %lcmp.mod1612.not = icmp eq i64 %xtraiter1611, 0
  br i1 %lcmp.mod1612.not, label %.lr.ph450.prol.loopexit, label %.lr.ph450.prol

.lr.ph450.prol:                                   ; preds = %.lr.ph450.preheader, %.lr.ph450.prol
  %indvars.iv662.prol = phi i64 [ %indvars.iv.next663.prol, %.lr.ph450.prol ], [ %indvars.iv662.ph, %.lr.ph450.preheader ] ; 2 uses
  %indvars.iv658.prol = phi i64 [ %indvars.iv.next659.prol, %.lr.ph450.prol ], [ %indvars.iv658.ph, %.lr.ph450.preheader ] ; 2 uses
  %prol.iter1613 = phi i64 [ %prol.iter1613.next, %.lr.ph450.prol ], [ 0, %.lr.ph450.preheader ]
  %i.dq = mul nuw nsw i64 %indvars.iv662.prol, %i.ch
  %gep896.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep895, i64 %i.dq
  %i.dr = load double, ptr %gep896.prol, align 8, !tbaa !92
  %i.ds = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv658.prol
  store double %i.dr, ptr %i.ds, align 8, !tbaa !92
  %indvars.iv.next659.prol = add nsw i64 %indvars.iv658.prol, 1 ; 3 uses
  %indvars.iv.next663.prol = add nuw nsw i64 %indvars.iv662.prol, 1 ; 2 uses
  %prol.iter1613.next = add i64 %prol.iter1613, 1 ; 2 uses
  %prol.iter1613.cmp.not = icmp eq i64 %prol.iter1613.next, %xtraiter1611
  br i1 %prol.iter1613.cmp.not, label %.lr.ph450.prol.loopexit, label %.lr.ph450.prol, !llvm.loop !16

.lr.ph450.prol.loopexit:                          ; preds = %.lr.ph450.prol, %.lr.ph450.preheader
  %indvars.iv.next659.lcssa1609.unr = phi i64 [ poison, %.lr.ph450.preheader ], [ %indvars.iv.next659.prol, %.lr.ph450.prol ]
  %indvars.iv662.unr = phi i64 [ %indvars.iv662.ph, %.lr.ph450.preheader ], [ %indvars.iv.next663.prol, %.lr.ph450.prol ]
  %indvars.iv658.unr = phi i64 [ %indvars.iv658.ph, %.lr.ph450.preheader ], [ %indvars.iv.next659.prol, %.lr.ph450.prol ]
  %i.dt = icmp ult i64 %i.dp, 7
  br i1 %i.dt, label %.loopexit434, label %.lr.ph450

.lr.ph450:                                        ; preds = %.lr.ph450.prol.loopexit, %.lr.ph450
  %indvars.iv662 = phi i64 [ %indvars.iv.next663.7, %.lr.ph450 ], [ %indvars.iv662.unr, %.lr.ph450.prol.loopexit ] ; 9 uses
  %indvars.iv658 = phi i64 [ %indvars.iv.next659.7, %.lr.ph450 ], [ %indvars.iv658.unr, %.lr.ph450.prol.loopexit ] ; 9 uses
  %i.du = mul nuw nsw i64 %indvars.iv662, %i.ch
  %gep896 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep895, i64 %i.du
  %i.dv = load double, ptr %gep896, align 8, !tbaa !92
  %i.dw = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv658
  store double %i.dv, ptr %i.dw, align 8, !tbaa !92
  %indvars.iv.next663 = add nuw nsw i64 %indvars.iv662, 1
  %i.dx = mul nuw nsw i64 %indvars.iv.next663, %i.ch
  %gep896.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep895, i64 %i.dx
  %i.dy = load double, ptr %gep896.1, align 8, !tbaa !92
  %i.dz = getelementptr [8 x i8], ptr %4, i64 %indvars.iv658
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  store double %i.dy, ptr %i.ea, align 8, !tbaa !92
  %indvars.iv.next663.1 = add nuw nsw i64 %indvars.iv662, 2
  %i.eb = mul nuw nsw i64 %indvars.iv.next663.1, %i.ch
  %gep896.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep895, i64 %i.eb
  %i.ec = load double, ptr %gep896.2, align 8, !tbaa !92
  %i.ed = getelementptr [8 x i8], ptr %4, i64 %indvars.iv658
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  store double %i.ec, ptr %i.ee, align 8, !tbaa !92
  %indvars.iv.next663.2 = add nuw nsw i64 %indvars.iv662, 3
  %i.ef = mul nuw nsw i64 %indvars.iv.next663.2, %i.ch
  %gep896.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep895, i64 %i.ef
  %i.eg = load double, ptr %gep896.3, align 8, !tbaa !92
  %i.eh = getelementptr [8 x i8], ptr %4, i64 %indvars.iv658
  %i.ei = getelementptr i8, ptr %i.eh, i64 24
  store double %i.eg, ptr %i.ei, align 8, !tbaa !92
  %indvars.iv.next663.3 = add nuw nsw i64 %indvars.iv662, 4
  %i.ej = mul nuw nsw i64 %indvars.iv.next663.3, %i.ch
  %gep896.4 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep895, i64 %i.ej
  %i.ek = load double, ptr %gep896.4, align 8, !tbaa !92
  %i.el = getelementptr [8 x i8], ptr %4, i64 %indvars.iv658
  %i.em = getelementptr i8, ptr %i.el, i64 32
  store double %i.ek, ptr %i.em, align 8, !tbaa !92
  %indvars.iv.next663.4 = add nuw nsw i64 %indvars.iv662, 5
  %i.en = mul nuw nsw i64 %indvars.iv.next663.4, %i.ch
  %gep896.5 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep895, i64 %i.en
  %i.eo = load double, ptr %gep896.5, align 8, !tbaa !92
  %i.ep = getelementptr [8 x i8], ptr %4, i64 %indvars.iv658
  %i.eq = getelementptr i8, ptr %i.ep, i64 40
  store double %i.eo, ptr %i.eq, align 8, !tbaa !92
  %indvars.iv.next663.5 = add nuw nsw i64 %indvars.iv662, 6
  %i.er = mul nuw nsw i64 %indvars.iv.next663.5, %i.ch
  %gep896.6 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep895, i64 %i.er
  %i.es = load double, ptr %gep896.6, align 8, !tbaa !92
  %i.et = getelementptr [8 x i8], ptr %4, i64 %indvars.iv658
  %i.eu = getelementptr i8, ptr %i.et, i64 48
  store double %i.es, ptr %i.eu, align 8, !tbaa !92
  %indvars.iv.next663.6 = add nuw nsw i64 %indvars.iv662, 7
  %i.ev = mul nuw nsw i64 %indvars.iv.next663.6, %i.ch
  %gep896.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep895, i64 %i.ev
  %i.ew = load double, ptr %gep896.7, align 8, !tbaa !92
  %i.ex = getelementptr [8 x i8], ptr %4, i64 %indvars.iv658
  %i.ey = getelementptr i8, ptr %i.ex, i64 56
  store double %i.ew, ptr %i.ey, align 8, !tbaa !92
  %indvars.iv.next659.7 = add nsw i64 %indvars.iv658, 8 ; 2 uses
  %indvars.iv.next663.7 = add nuw nsw i64 %indvars.iv662, 8 ; 2 uses
  %exitcond668.not.7 = icmp eq i64 %indvars.iv.next663.7, %wide.trip.count667
  br i1 %exitcond668.not.7, label %.loopexit434, label %.lr.ph450, !llvm.loop !17

bb.l:                                             ; preds = %.thread420
  %.not407.not460 = icmp sgt i32 %., 0
  br i1 %.not407.not460, label %.lr.ph464.preheader, label %._crit_edge465

.lr.ph464.preheader:                              ; preds = %bb.l
  %i.ez = zext nneg i32 %.0328 to i64             ; 9 uses
  %6 = sub i64 %i.b, %i.a
  %ident.check954.not = icmp ult i32 %i.h, 2
  %invariant.op = add i64 %6, -1
  br label %iter.check973

iter.check973:                                    ; preds = %.lr.ph464.preheader, %.loopexit1583
  %loop-unroll.iv = phi i32 [ 0, %.lr.ph464.preheader ], [ %loop-unroll.iv.next, %.loopexit1583 ] ; 2 uses
  %indvar = phi i64 [ 0, %.lr.ph464.preheader ], [ %indvar.next, %.loopexit1583 ] ; 3 uses
  %indvars.iv683 = phi i32 [ 1, %.lr.ph464.preheader ], [ %indvars.iv.next684, %.loopexit1583 ] ; 3 uses
  %indvars.iv676 = phi i32 [ %.901, %.lr.ph464.preheader ], [ %indvars.iv.next677, %.loopexit1583 ] ; 2 uses
  %.4462 = phi i32 [ 0, %.lr.ph464.preheader ], [ %i.ff, %.loopexit1583 ] ; 2 uses
  %i.fa = trunc i64 %indvar to i32
  %i.fb = add i32 %i.fa, 2
  %i.fc = add i64 %indvar, 1                      ; 7 uses
  %i.fd = sext i32 %indvars.iv676 to i64          ; 7 uses
  %i.fe = sext i32 %.4462 to i64                  ; 7 uses
  %i.ff = add i32 %.4462, %indvars.iv683          ; 4 uses
  %min.iters.check957 = icmp ugt i64 %i.fc, 3
  %or.cond1588 = and i1 %min.iters.check957, %ident.check954.not
  br i1 %or.cond1588, label %vector.memcheck958, label %vec.epilog.scalar.ph975.preheader

vector.memcheck958:                               ; preds = %iter.check973
  %7 = sub nsw i64 %i.fe, %i.fd
  %i.fg = shl nsw i64 %7, 3
  %i.fh = add i64 %i.fg, %invariant.op
  %diff.check959 = icmp ult i64 %i.fh, 127
  br i1 %diff.check959, label %vec.epilog.scalar.ph975.preheader, label %vector.main.loop.iter.check960

vector.main.loop.iter.check960:                   ; preds = %vector.memcheck958
  %min.iters.check961 = icmp ult i64 %i.fc, 16
  br i1 %min.iters.check961, label %vec.epilog.ph977, label %vector.ph962

vector.ph962:                                     ; preds = %vector.main.loop.iter.check960
  %i.fi = and i64 %i.fc, 12
  %n.vec963 = and i64 %i.fc, -16                  ; 5 uses
  %i.fj = add i64 %n.vec963, %i.fd
  %i.fk = add i64 %n.vec963, %i.fe
  %invariant.gep1647 = getelementptr [8 x i8], ptr %3, i64 %i.fd
  %invariant.gep1649 = getelementptr [8 x i8], ptr %4, i64 %i.fe
  br label %vector.body964

vector.body964:                                   ; preds = %vector.ph962, %vector.body964
  %index965 = phi i64 [ 0, %vector.ph962 ], [ %index.next970, %vector.body964 ] ; 3 uses
  %gep1648 = getelementptr [8 x i8], ptr %invariant.gep1647, i64 %index965 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %gep1648, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %gep1648, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %gep1648, i64 96
  %wide.load966 = load <4 x double>, ptr %gep1648, align 8, !tbaa !92
  %wide.load967 = load <4 x double>, ptr %i.fl, align 8, !tbaa !92
  %wide.load968 = load <4 x double>, ptr %i.fm, align 8, !tbaa !92
  %wide.load969 = load <4 x double>, ptr %i.fn, align 8, !tbaa !92
  %gep1650 = getelementptr [8 x i8], ptr %invariant.gep1649, i64 %index965 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %gep1650, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %gep1650, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %gep1650, i64 96
  store <4 x double> %wide.load966, ptr %gep1650, align 8, !tbaa !92
  store <4 x double> %wide.load967, ptr %i.fo, align 8, !tbaa !92
  store <4 x double> %wide.load968, ptr %i.fp, align 8, !tbaa !92
  store <4 x double> %wide.load969, ptr %i.fq, align 8, !tbaa !92
  %index.next970 = add nuw i64 %index965, 16      ; 2 uses
  %i.fr = icmp eq i64 %index.next970, %n.vec963
  br i1 %i.fr, label %middle.block971, label %vector.body964, !llvm.loop !18

middle.block971:                                  ; preds = %vector.body964
  %cmp.n972 = icmp eq i64 %i.fc, %n.vec963
  br i1 %cmp.n972, label %.loopexit1583, label %vec.epilog.iter.check974

vec.epilog.iter.check974:                         ; preds = %middle.block971
  %min.epilog.iters.check976 = icmp eq i64 %i.fi, 0
  br i1 %min.epilog.iters.check976, label %vec.epilog.scalar.ph975.preheader, label %vec.epilog.ph977, !prof !96

vec.epilog.ph977:                                 ; preds = %vector.main.loop.iter.check960, %vec.epilog.iter.check974
  %vec.epilog.resume.val978 = phi i64 [ %n.vec963, %vec.epilog.iter.check974 ], [ 0, %vector.main.loop.iter.check960 ]
  %n.vec979 = and i64 %i.fc, -4                   ; 4 uses
  %i.fs = add i64 %n.vec979, %i.fd
  %i.ft = add i64 %n.vec979, %i.fe
  %invariant.gep1651 = getelementptr [8 x i8], ptr %3, i64 %i.fd
  %invariant.gep1653 = getelementptr [8 x i8], ptr %4, i64 %i.fe
  br label %vec.epilog.vector.body980

vec.epilog.vector.body980:                        ; preds = %vec.epilog.vector.body980, %vec.epilog.ph977
  %index981 = phi i64 [ %vec.epilog.resume.val978, %vec.epilog.ph977 ], [ %index.next983, %vec.epilog.vector.body980 ] ; 3 uses
  %gep1652 = getelementptr [8 x i8], ptr %invariant.gep1651, i64 %index981
  %wide.load982 = load <4 x double>, ptr %gep1652, align 8, !tbaa !92
  %gep1654 = getelementptr [8 x i8], ptr %invariant.gep1653, i64 %index981
  store <4 x double> %wide.load982, ptr %gep1654, align 8, !tbaa !92
  %index.next983 = add nuw i64 %index981, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next983, %n.vec979
  br i1 %i.fu, label %vec.epilog.middle.block984, label %vec.epilog.vector.body980, !llvm.loop !19

vec.epilog.middle.block984:                       ; preds = %vec.epilog.vector.body980
  %cmp.n985 = icmp eq i64 %i.fc, %n.vec979
  br i1 %cmp.n985, label %.loopexit1583, label %vec.epilog.scalar.ph975.preheader

vec.epilog.scalar.ph975.preheader:                ; preds = %iter.check973, %vector.memcheck958, %vec.epilog.iter.check974, %vec.epilog.middle.block984
  %indvars.iv678.ph = phi i64 [ %i.fd, %iter.check973 ], [ %i.fd, %vector.memcheck958 ], [ %i.fj, %vec.epilog.iter.check974 ], [ %i.fs, %vec.epilog.middle.block984 ] ; 2 uses
  %indvars.iv674.ph = phi i64 [ %i.fe, %iter.check973 ], [ %i.fe, %vector.memcheck958 ], [ %i.fk, %vec.epilog.iter.check974 ], [ %i.ft, %vec.epilog.middle.block984 ] ; 3 uses
  %i.fv = trunc i64 %indvars.iv674.ph to i32      ; 2 uses
  %i.fw = sub i32 %i.ff, %i.fv
  %i.fx = sub i32 %loop-unroll.iv, %i.fv
  %xtraiter1614 = and i32 %i.fw, 7                ; 2 uses
  %lcmp.mod1615.not = icmp eq i32 %xtraiter1614, 0
  br i1 %lcmp.mod1615.not, label %vec.epilog.scalar.ph975.prol.loopexit, label %vec.epilog.scalar.ph975.prol

vec.epilog.scalar.ph975.prol:                     ; preds = %vec.epilog.scalar.ph975.preheader, %vec.epilog.scalar.ph975.prol
  %indvars.iv678.prol = phi i64 [ %indvars.iv.next679.prol, %vec.epilog.scalar.ph975.prol ], [ %indvars.iv678.ph, %vec.epilog.scalar.ph975.preheader ] ; 2 uses
  %indvars.iv674.prol = phi i64 [ %indvars.iv.next675.prol, %vec.epilog.scalar.ph975.prol ], [ %indvars.iv674.ph, %vec.epilog.scalar.ph975.preheader ] ; 2 uses
  %prol.iter1616 = phi i32 [ %prol.iter1616.next, %vec.epilog.scalar.ph975.prol ], [ 0, %vec.epilog.scalar.ph975.preheader ]
  %i.fy = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv678.prol
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !92
  %i.ga = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv674.prol
  store double %i.fz, ptr %i.ga, align 8, !tbaa !92
  %indvars.iv.next675.prol = add nsw i64 %indvars.iv674.prol, 1 ; 2 uses
  %indvars.iv.next679.prol = add nsw i64 %indvars.iv678.prol, %i.ez ; 2 uses
  %prol.iter1616.next = add i32 %prol.iter1616, 1 ; 2 uses
  %prol.iter1616.cmp.not = icmp eq i32 %prol.iter1616.next, %xtraiter1614
  br i1 %prol.iter1616.cmp.not, label %vec.epilog.scalar.ph975.prol.loopexit, label %vec.epilog.scalar.ph975.prol, !llvm.loop !20

vec.epilog.scalar.ph975.prol.loopexit:            ; preds = %vec.epilog.scalar.ph975.prol, %vec.epilog.scalar.ph975.preheader
  %indvars.iv678.unr = phi i64 [ %indvars.iv678.ph, %vec.epilog.scalar.ph975.preheader ], [ %indvars.iv.next679.prol, %vec.epilog.scalar.ph975.prol ]
  %indvars.iv674.unr = phi i64 [ %indvars.iv674.ph, %vec.epilog.scalar.ph975.preheader ], [ %indvars.iv.next675.prol, %vec.epilog.scalar.ph975.prol ]
  %i.gb = icmp ult i32 %i.fx, 7
  br i1 %i.gb, label %.loopexit1583, label %vec.epilog.scalar.ph975

vec.epilog.scalar.ph975:                          ; preds = %vec.epilog.scalar.ph975.prol.loopexit, %vec.epilog.scalar.ph975
  %indvars.iv678 = phi i64 [ %indvars.iv.next679.7, %vec.epilog.scalar.ph975 ], [ %indvars.iv678.unr, %vec.epilog.scalar.ph975.prol.loopexit ] ; 2 uses
  %indvars.iv674 = phi i64 [ %indvars.iv.next675.7, %vec.epilog.scalar.ph975 ], [ %indvars.iv674.unr, %vec.epilog.scalar.ph975.prol.loopexit ] ; 9 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv678
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !92
  %i.ge = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv674
  store double %i.gd, ptr %i.ge, align 8, !tbaa !92
  %indvars.iv.next679 = add nsw i64 %indvars.iv678, %i.ez ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !92
  %i.gh = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  store double %i.gg, ptr %i.gi, align 8, !tbaa !92
  %indvars.iv.next679.1 = add nsw i64 %indvars.iv.next679, %i.ez ; 2 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.1
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !92
  %i.gl = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.gm = getelementptr i8, ptr %i.gl, i64 16
  store double %i.gk, ptr %i.gm, align 8, !tbaa !92
  %indvars.iv.next679.2 = add nsw i64 %indvars.iv.next679.1, %i.ez ; 2 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.2
  %i.go = load double, ptr %i.gn, align 8, !tbaa !92
  %i.gp = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.gq = getelementptr i8, ptr %i.gp, i64 24
  store double %i.go, ptr %i.gq, align 8, !tbaa !92
  %indvars.iv.next679.3 = add nsw i64 %indvars.iv.next679.2, %i.ez ; 2 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.3
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !92
  %i.gt = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.gu = getelementptr i8, ptr %i.gt, i64 32
  store double %i.gs, ptr %i.gu, align 8, !tbaa !92
  %indvars.iv.next679.4 = add nsw i64 %indvars.iv.next679.3, %i.ez ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.4
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !92
  %i.gx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.gy = getelementptr i8, ptr %i.gx, i64 40
  store double %i.gw, ptr %i.gy, align 8, !tbaa !92
  %indvars.iv.next679.5 = add nsw i64 %indvars.iv.next679.4, %i.ez ; 2 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.5
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !92
  %i.hb = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.hc = getelementptr i8, ptr %i.hb, i64 48
  store double %i.ha, ptr %i.hc, align 8, !tbaa !92
  %indvars.iv.next679.6 = add nsw i64 %indvars.iv.next679.5, %i.ez ; 2 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.6
  %i.he = load double, ptr %i.hd, align 8, !tbaa !92
  %i.hf = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.hg = getelementptr i8, ptr %i.hf, i64 56
  store double %i.he, ptr %i.hg, align 8, !tbaa !92
  %indvars.iv.next675.7 = add nsw i64 %indvars.iv674, 8 ; 2 uses
  %indvars.iv.next679.7 = add nsw i64 %indvars.iv.next679.6, %i.ez
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next675.7 to i32
  %exitcond685.not.7 = icmp eq i32 %i.ff, %lftr.wideiv.7
  br i1 %exitcond685.not.7, label %.loopexit1583, label %vec.epilog.scalar.ph975, !llvm.loop !21

.loopexit1583:                                    ; preds = %vec.epilog.scalar.ph975.prol.loopexit, %vec.epilog.scalar.ph975, %vec.epilog.middle.block984, %middle.block971
  %indvars.iv.next677 = add i32 %indvars.iv676, 1
  %indvars.iv.next684 = add nuw i32 %indvars.iv683, 1
  %exitcond686.not = icmp eq i32 %indvars.iv683, %.
  %indvar.next = add i64 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.fb
  br i1 %exitcond686.not, label %._crit_edge465, label %iter.check973, !llvm.loop !22

._crit_edge465:                                   ; preds = %.loopexit1583, %bb.l
  %.4.lcssa = phi i32 [ 0, %bb.l ], [ %i.ff, %.loopexit1583 ]
  %.not408.not474 = icmp slt i32 %., %i.h
  br i1 %.not408.not474, label %.lr.ph479.preheader, label %.loopexit

.lr.ph479.preheader:                              ; preds = %._crit_edge465
  %i.hh = zext nneg i32 %.0328 to i64             ; 4 uses
  %i.hi = sext i32 %. to i64                      ; 2 uses
  %wide.trip.count702 = zext nneg i32 %i.h to i64
  %i.hj = mul nsw i64 %i.hh, -8
  %i.hk = sub i64 %i.b, %i.a
  %i.hl = add nuw nsw i64 %i.hh, 1
  br label %.lr.ph479

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %._crit_edge472
  %indvar992 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvar.next993, %._crit_edge472 ] ; 4 uses
  %indvars.iv697 = phi i64 [ %i.hi, %.lr.ph479.preheader ], [ %indvars.iv.next698, %._crit_edge472 ] ; 3 uses
  %indvars.iv690 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvars.iv.next691, %._crit_edge472 ] ; 9 uses
  %.6477 = phi i32 [ %.4.lcssa, %.lr.ph479.preheader ], [ %.7.lcssa, %._crit_edge472 ] ; 2 uses
  %i.hm = mul i64 %i.hl, %indvar992
  %i.hn = add i64 %i.hm, %i.hi
  %smax = tail call i64 @llvm.smax.i64(i64 %i.hn, i64 %indvars.iv690)
  %i.ho = mul i64 %indvar992, %i.hh
  %reass.sub = sub i64 %smax, %i.ho
  %i.hp = add i64 %reass.sub, 1                   ; 7 uses
  %i.hq = add nsw i64 %indvars.iv690, %indvars.iv697
  %.not409467 = icmp slt i64 %indvars.iv697, 0
  br i1 %.not409467, label %._crit_edge472, label %iter.check1010

iter.check1010:                                   ; preds = %.lr.ph479
  %i.hr = sext i32 %.6477 to i64                  ; 7 uses
  %min.iters.check994 = icmp ult i64 %i.hp, 4
  br i1 %min.iters.check994, label %.lr.ph471.preheader, label %vector.memcheck995

vector.memcheck995:                               ; preds = %iter.check1010
  %i.hs = mul i64 %indvar992, %i.hj
  %i.ht = add i64 %i.hk, %i.hs
  %i.hu = shl nsw i64 %i.hr, 3
  %i.hv = add i64 %i.ht, %i.hu
end_hunk_0
begin_hunk_1_@dtfttp_:bb.a

bb.n:                                             ; preds = %bb.m
  %.not403530 = icmp slt i32 %.901, 0
  br i1 %.not403530, label %.loopexit, label %.lr.ph534

.lr.ph534:                                        ; preds = %bb.n
  %i.is = mul nuw nsw i32 %i.s, %i.h              ; 2 uses
  %i.it = add nuw nsw i32 %i.s, 1
  %i.iu = zext nneg i32 %i.s to i64               ; 16 uses
  %i.iv = add nuw nsw i64 %i.iu, 1
  %i.iw = zext nneg i32 %i.is to i64              ; 3 uses
  %i.ix = shl nuw nsw i64 %i.iu, 3
  %i.iy = add nuw nsw i64 %i.ix, 8
  %i.iz = xor i64 %i.iu, -1                       ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.iu, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ja = shl nuw nsw <4 x i64> %broadcast.splat, splat (i64 2) ; 5 uses
  %i.jb = mul nuw nsw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op.a = add nuw nsw <4 x i64> %i.ja, %i.ja ; 2 uses
  %invariant.op1671.a = add nuw nsw <4 x i64> %invariant.op.a, %i.ja ; 2 uses
  %invariant.op1674 = add nuw nsw <4 x i64> %invariant.op1671.a, %i.ja
  %broadcast.splatinsert1213 = insertelement <4 x i64> poison, i64 %i.iu, i64 0
  %broadcast.splat1214 = shufflevector <4 x i64> %broadcast.splatinsert1213, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jc = mul nuw nsw <4 x i64> %broadcast.splat1214, <i64 0, i64 1, i64 2, i64 3>
  %i.jd = shl nuw nsw i64 %i.iu, 2
  %broadcast.splatinsert1216 = insertelement <4 x i64> poison, i64 %i.jd, i64 0
  %broadcast.splat1217 = shufflevector <4 x i64> %broadcast.splatinsert1216, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph534, %._crit_edge528
  %indvar1181 = phi i64 [ 0, %.lr.ph534 ], [ %indvar.next1182, %._crit_edge528 ] ; 4 uses
  %indvars.iv768 = phi i64 [ 0, %.lr.ph534 ], [ %indvars.iv.next769, %._crit_edge528 ] ; 9 uses
  %.8532 = phi i32 [ 0, %.lr.ph534 ], [ %.9.lcssa, %._crit_edge528 ] ; 2 uses
  %.3369531 = phi i32 [ 0, %.lr.ph534 ], [ %i.le, %._crit_edge528 ] ; 3 uses
  %i.je = mul nsw i32 %.3369531, %i.it
  %i.jf = icmp slt i32 %i.je, %i.is
  br i1 %i.jf, label %iter.check1203, label %._crit_edge528

iter.check1203:                                   ; preds = %bb.o
  %i.jg = add nuw i64 %indvars.iv768, %i.iu
  %umax1183 = tail call i64 @llvm.umax.i64(i64 %i.jg, i64 %i.iw)
  %i.jh = mul i64 %indvar1181, %i.iz
  %i.ji = sub i64 %i.jh, %i.iu
  %i.jj = add i64 %umax1183, %i.ji                ; 2 uses
  %i.jk = icmp ne i64 %i.jj, 0                    ; 2 uses
  %umin.neg = sext i1 %i.jk to i64
  %i.jl = add i64 %i.jj, %umin.neg
  %i.jm = sext i32 %.8532 to i64                  ; 8 uses
  %i.jn = select i1 %i.jk, i64 2, i64 1
  %i.jo = udiv i64 %i.jl, %i.iu
  %i.jp = add i64 %i.jn, %i.jo                    ; 7 uses
  %min.iters.check1184 = icmp ult i64 %i.jp, 4
  br i1 %min.iters.check1184, label %.lr.ph527.preheader, label %vector.memcheck1185

vector.memcheck1185:                              ; preds = %iter.check1203
  %i.jq = shl nsw i64 %i.jm, 3
  %i.jr = getelementptr i8, ptr %4, i64 %i.jq
  %i.js = add nuw i64 %indvars.iv768, %i.iu
  %i.jt = tail call i64 @llvm.umax.i64(i64 %i.js, i64 %i.iw)
  %i.ju = mul nsw i64 %indvar1181, %i.iz
  %i.jv = sub i64 %i.ju, %i.iu
  %i.jw = add i64 %i.jt, %i.jv                    ; 2 uses
  %i.jx = icmp ne i64 %i.jw, 0
  %i.jy = zext i1 %i.jx to i64                    ; 2 uses
  %i.jz = sub i64 %i.jw, %i.jy
  %i.ka = udiv i64 %i.jz, %i.iu
  %i.kb = add i64 %i.ka, %i.jy                    ; 2 uses
  %i.kc = add i64 %i.kb, %i.jm
  %i.kd = shl i64 %i.kc, 3
  %i.ke = getelementptr i8, ptr %4, i64 %i.kd
  %i.kf = getelementptr i8, ptr %i.ke, i64 8
  %i.kg = mul i64 %indvar1181, %i.iy              ; 2 uses
  %i.kh = getelementptr i8, ptr %3, i64 %i.kg
  %i.ki = mul i64 %i.kb, %i.iu
  %i.kj = shl i64 %i.ki, 3
  %i.kk = getelementptr i8, ptr %3, i64 %i.kg
  %i.kl = getelementptr i8, ptr %i.kk, i64 8
  %i.km = getelementptr i8, ptr %i.kl, i64 %i.kj
  %bound0 = icmp ult ptr %i.jr, %i.km
  %bound1 = icmp ult ptr %i.kh, %i.kf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph527.preheader, label %vector.main.loop.iter.check1186

vector.main.loop.iter.check1186:                  ; preds = %vector.memcheck1185
  %min.iters.check1187 = icmp ult i64 %i.jp, 16
  br i1 %min.iters.check1187, label %vec.epilog.ph1207, label %vector.ph1188

vector.ph1188:                                    ; preds = %vector.main.loop.iter.check1186
  %i.kn = and i64 %i.jp, 12
  %n.vec1189 = and i64 %i.jp, -16                 ; 5 uses
  %i.ko = mul i64 %n.vec1189, %i.iu
  %i.kp = add i64 %indvars.iv768, %i.ko           ; 2 uses
  %i.kq = add i64 %n.vec1189, %i.jm               ; 2 uses
  %broadcast.splatinsert1190 = insertelement <4 x i64> poison, i64 %indvars.iv768, i64 0
  %broadcast.splat1191 = shufflevector <4 x i64> %broadcast.splatinsert1190, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat1191, %i.jb
  %invariant.gep1672 = getelementptr [8 x i8], ptr %4, i64 %i.jm
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.ph1188, %vector.body1192
  %index1193 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1200, %vector.body1192 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph1188 ], [ %vec.ind.next.reass, %vector.body1192 ] ; 5 uses
  %step.add = add nuw nsw <4 x i64> %vec.ind, %i.ja
  %step.add.2.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op.a
  %step.add.3.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1671.a
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind
  %wide.gep1194 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add
  %wide.gep1195 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.2.reass
  %wide.gep1196 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.3.reass
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %wide.masked.gather1197 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1194, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %wide.masked.gather1198 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1195, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %wide.masked.gather1199 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1196, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %gep1673 = getelementptr [8 x i8], ptr %invariant.gep1672, i64 %index1193 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %gep1673, i64 32
  %i.ks = getelementptr inbounds nuw i8, ptr %gep1673, i64 64
  %i.kt = getelementptr inbounds nuw i8, ptr %gep1673, i64 96
  store <4 x double> %wide.masked.gather, ptr %gep1673, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  store <4 x double> %wide.masked.gather1197, ptr %i.kr, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  store <4 x double> %wide.masked.gather1198, ptr %i.ks, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  store <4 x double> %wide.masked.gather1199, ptr %i.kt, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  %index.next1200 = add nuw i64 %index1193, 16    ; 2 uses
  %vec.ind.next.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1674
  %i.ku = icmp eq i64 %index.next1200, %n.vec1189
  br i1 %i.ku, label %middle.block1201, label %vector.body1192, !llvm.loop !30

middle.block1201:                                 ; preds = %vector.body1192
  %cmp.n1202 = icmp eq i64 %i.jp, %n.vec1189
  br i1 %cmp.n1202, label %._crit_edge528.loopexit, label %vec.epilog.iter.check1204

vec.epilog.iter.check1204:                        ; preds = %middle.block1201
  %min.epilog.iters.check1206 = icmp eq i64 %i.kn, 0
  br i1 %min.epilog.iters.check1206, label %.lr.ph527.preheader, label %vec.epilog.ph1207, !prof !96

vec.epilog.ph1207:                                ; preds = %vector.main.loop.iter.check1186, %vec.epilog.iter.check1204
  %vec.epilog.resume.val1208 = phi i64 [ %n.vec1189, %vec.epilog.iter.check1204 ], [ 0, %vector.main.loop.iter.check1186 ]
  %bc.resume.val1209 = phi i64 [ %i.kp, %vec.epilog.iter.check1204 ], [ %indvars.iv768, %vector.main.loop.iter.check1186 ]
  %n.vec1210 = and i64 %i.jp, -4                  ; 4 uses
  %i.kv = mul i64 %n.vec1210, %i.iu
  %i.kw = add i64 %indvars.iv768, %i.kv
  %i.kx = add i64 %n.vec1210, %i.jm               ; 2 uses
  %broadcast.splatinsert1211 = insertelement <4 x i64> poison, i64 %bc.resume.val1209, i64 0
  %broadcast.splat1212 = shufflevector <4 x i64> %broadcast.splatinsert1211, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1215 = add nuw nsw <4 x i64> %broadcast.splat1212, %i.jc
  %invariant.gep1675 = getelementptr [8 x i8], ptr %4, i64 %i.jm
  br label %vec.epilog.vector.body1218

vec.epilog.vector.body1218:                       ; preds = %vec.epilog.vector.body1218, %vec.epilog.ph1207
  %index1219 = phi i64 [ %vec.epilog.resume.val1208, %vec.epilog.ph1207 ], [ %index.next1223, %vec.epilog.vector.body1218 ] ; 2 uses
  %vec.ind1220 = phi <4 x i64> [ %induction1215, %vec.epilog.ph1207 ], [ %vec.ind.next1224, %vec.epilog.vector.body1218 ] ; 2 uses
  %wide.gep1221 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1220
  %wide.masked.gather1222 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1221, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %gep1676 = getelementptr [8 x i8], ptr %invariant.gep1675, i64 %index1219
  store <4 x double> %wide.masked.gather1222, ptr %gep1676, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  %index.next1223 = add nuw i64 %index1219, 4     ; 2 uses
  %vec.ind.next1224 = add nuw nsw <4 x i64> %vec.ind1220, %broadcast.splat1217
  %i.ky = icmp eq i64 %index.next1223, %n.vec1210
  br i1 %i.ky, label %vec.epilog.middle.block1225, label %vec.epilog.vector.body1218, !llvm.loop !31

vec.epilog.middle.block1225:                      ; preds = %vec.epilog.vector.body1218
  %cmp.n1226 = icmp eq i64 %i.jp, %n.vec1210
  br i1 %cmp.n1226, label %._crit_edge528.loopexit, label %.lr.ph527.preheader

.lr.ph527.preheader:                              ; preds = %iter.check1203, %vector.memcheck1185, %vec.epilog.iter.check1204, %vec.epilog.middle.block1225
  %indvars.iv770.ph = phi i64 [ %indvars.iv768, %iter.check1203 ], [ %indvars.iv768, %vector.memcheck1185 ], [ %i.kp, %vec.epilog.iter.check1204 ], [ %i.kw, %vec.epilog.middle.block1225 ]
  %indvars.iv766.ph = phi i64 [ %i.jm, %iter.check1203 ], [ %i.jm, %vector.memcheck1185 ], [ %i.kq, %vec.epilog.iter.check1204 ], [ %i.kx, %vec.epilog.middle.block1225 ]
  br label %.lr.ph527

.lr.ph527:                                        ; preds = %.lr.ph527.preheader, %.lr.ph527
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %.lr.ph527 ], [ %indvars.iv770.ph, %.lr.ph527.preheader ] ; 2 uses
  %indvars.iv766 = phi i64 [ %indvars.iv.next767, %.lr.ph527 ], [ %indvars.iv766.ph, %.lr.ph527.preheader ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv770
  %i.la = load double, ptr %i.kz, align 8, !tbaa !92
  %i.lb = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv766
  store double %i.la, ptr %i.lb, align 8, !tbaa !92
  %indvars.iv.next767 = add nsw i64 %indvars.iv766, 1 ; 2 uses
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, %i.iu ; 2 uses
  %i.lc = icmp samesign ult i64 %indvars.iv.next771, %i.iw
  br i1 %i.lc, label %.lr.ph527, label %._crit_edge528.loopexit, !llvm.loop !32

._crit_edge528.loopexit:                          ; preds = %.lr.ph527, %vec.epilog.middle.block1225, %middle.block1201
  %indvars.iv.next767.lcssa = phi i64 [ %i.kx, %vec.epilog.middle.block1225 ], [ %i.kq, %middle.block1201 ], [ %indvars.iv.next767, %.lr.ph527 ]
  %i.ld = trunc nsw i64 %indvars.iv.next767.lcssa to i32
  br label %._crit_edge528

._crit_edge528:                                   ; preds = %._crit_edge528.loopexit, %bb.o
  %.9.lcssa = phi i32 [ %.8532, %bb.o ], [ %i.ld, %._crit_edge528.loopexit ] ; 2 uses
  %i.le = add nuw i32 %.3369531, 1
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, %i.iv
  %exitcond775.not = icmp eq i32 %.3369531, %.901
  %indvar.next1182 = add i64 %indvar1181, 1
  br i1 %exitcond775.not, label %._crit_edge535, label %bb.o, !llvm.loop !33

._crit_edge535:                                   ; preds = %._crit_edge528
  %.not404.not544.not = icmp eq i32 %.901, 0
  br i1 %.not404.not544.not, label %.loopexit, label %.lr.ph549

.lr.ph549:                                        ; preds = %._crit_edge535
  %i.lf = add nuw nsw i32 %i.s, 1
  %i.lg = add nuw i32 %.901, 1
  %8 = sub i64 %i.b, %i.a
  %invariant.op1688 = add i64 %8, -1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph549, %._crit_edge542
  %indvars.iv786 = phi i32 [ %i.lg, %.lr.ph549 ], [ %indvars.iv.next787, %._crit_edge542 ] ; 3 uses
  %indvars.iv779 = phi i32 [ 1, %.lr.ph549 ], [ %indvars.iv.next780, %._crit_edge542 ] ; 4 uses
  %.10547 = phi i32 [ %.9.lcssa, %.lr.ph549 ], [ %.11.lcssa, %._crit_edge542 ] ; 2 uses
  %.4358545 = phi i32 [ 0, %.lr.ph549 ], [ %i.nz, %._crit_edge542 ] ; 3 uses
  %i.lh = xor i32 %.4358545, -1
  %i.li = add nsw i32 %.901, %i.lh                ; 3 uses
  %i.lj = zext i32 %i.li to i64
  %i.lk = add nuw nsw i64 %i.lj, 1                ; 5 uses
  %i.ll = xor i32 %.4358545, -1
  %i.lm = add nsw i32 %.901, %i.ll
  %i.ln = add i32 %i.lm, %indvars.iv779           ; 2 uses
  %.not405537 = icmp sgt i32 %indvars.iv779, %i.ln
  br i1 %.not405537, label %._crit_edge542, label %iter.check1247

iter.check1247:                                   ; preds = %bb.p
  %i.lo = sext i32 %indvars.iv779 to i64          ; 7 uses
  %i.lp = sext i32 %.10547 to i64                 ; 7 uses
  %min.iters.check1231 = icmp ult i32 %i.li, 3
  br i1 %min.iters.check1231, label %.lr.ph541.preheader, label %vector.memcheck1232

vector.memcheck1232:                              ; preds = %iter.check1247
  %9 = sub nsw i64 %i.lp, %i.lo
  %i.lq = shl nsw i64 %9, 3
  %i.lr = add i64 %i.lq, %invariant.op1688
  %diff.check1233 = icmp ult i64 %i.lr, 127
  br i1 %diff.check1233, label %.lr.ph541.preheader, label %vector.main.loop.iter.check1234

vector.main.loop.iter.check1234:                  ; preds = %vector.memcheck1232
  %min.iters.check1235 = icmp ult i32 %i.li, 15
  br i1 %min.iters.check1235, label %vec.epilog.ph1251, label %vector.ph1236

vector.ph1236:                                    ; preds = %vector.main.loop.iter.check1234
  %i.ls = and i64 %i.lk, 12
  %n.vec1237 = and i64 %i.lk, 8589934576          ; 5 uses
  %i.lt = add nsw i64 %n.vec1237, %i.lo
  %i.lu = add nsw i64 %n.vec1237, %i.lp           ; 2 uses
  %invariant.gep1677 = getelementptr [8 x i8], ptr %3, i64 %i.lo
  %invariant.gep1679 = getelementptr [8 x i8], ptr %4, i64 %i.lp
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.ph1236, %vector.body1238
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1244, %vector.body1238 ] ; 3 uses
  %gep1678 = getelementptr [8 x i8], ptr %invariant.gep1677, i64 %index1239 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %gep1678, i64 32
  %i.lw = getelementptr inbounds nuw i8, ptr %gep1678, i64 64
  %i.lx = getelementptr inbounds nuw i8, ptr %gep1678, i64 96
  %wide.load1240 = load <4 x double>, ptr %gep1678, align 8, !tbaa !92
  %wide.load1241 = load <4 x double>, ptr %i.lv, align 8, !tbaa !92
  %wide.load1242 = load <4 x double>, ptr %i.lw, align 8, !tbaa !92
  %wide.load1243 = load <4 x double>, ptr %i.lx, align 8, !tbaa !92
  %gep1680 = getelementptr [8 x i8], ptr %invariant.gep1679, i64 %index1239 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %gep1680, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %gep1680, i64 64
  %i.ma = getelementptr inbounds nuw i8, ptr %gep1680, i64 96
  store <4 x double> %wide.load1240, ptr %gep1680, align 8, !tbaa !92
  store <4 x double> %wide.load1241, ptr %i.ly, align 8, !tbaa !92
  store <4 x double> %wide.load1242, ptr %i.lz, align 8, !tbaa !92
  store <4 x double> %wide.load1243, ptr %i.ma, align 8, !tbaa !92
  %index.next1244 = add nuw i64 %index1239, 16    ; 2 uses
  %i.mb = icmp eq i64 %index.next1244, %n.vec1237
  br i1 %i.mb, label %middle.block1245, label %vector.body1238, !llvm.loop !34

middle.block1245:                                 ; preds = %vector.body1238
  %cmp.n1246 = icmp eq i64 %i.lk, %n.vec1237
  br i1 %cmp.n1246, label %._crit_edge542.loopexit, label %vec.epilog.iter.check1248

vec.epilog.iter.check1248:                        ; preds = %middle.block1245
  %min.epilog.iters.check1250 = icmp eq i64 %i.ls, 0
  br i1 %min.epilog.iters.check1250, label %.lr.ph541.preheader, label %vec.epilog.ph1251, !prof !96

vec.epilog.ph1251:                                ; preds = %vector.main.loop.iter.check1234, %vec.epilog.iter.check1248
  %vec.epilog.resume.val1252 = phi i64 [ %n.vec1237, %vec.epilog.iter.check1248 ], [ 0, %vector.main.loop.iter.check1234 ]
  %n.vec1253 = and i64 %i.lk, 8589934588          ; 4 uses
  %i.mc = add nsw i64 %n.vec1253, %i.lo
  %i.md = add nsw i64 %n.vec1253, %i.lp           ; 2 uses
  %invariant.gep1681 = getelementptr [8 x i8], ptr %3, i64 %i.lo
  %invariant.gep1683 = getelementptr [8 x i8], ptr %4, i64 %i.lp
  br label %vec.epilog.vector.body1254

vec.epilog.vector.body1254:                       ; preds = %vec.epilog.vector.body1254, %vec.epilog.ph1251
  %index1255 = phi i64 [ %vec.epilog.resume.val1252, %vec.epilog.ph1251 ], [ %index.next1257, %vec.epilog.vector.body1254 ] ; 3 uses
  %gep1682 = getelementptr [8 x i8], ptr %invariant.gep1681, i64 %index1255
  %wide.load1256 = load <4 x double>, ptr %gep1682, align 8, !tbaa !92
  %gep1684 = getelementptr [8 x i8], ptr %invariant.gep1683, i64 %index1255
  store <4 x double> %wide.load1256, ptr %gep1684, align 8, !tbaa !92
  %index.next1257 = add nuw i64 %index1255, 4     ; 2 uses
  %i.me = icmp eq i64 %index.next1257, %n.vec1253
  br i1 %i.me, label %vec.epilog.middle.block1258, label %vec.epilog.vector.body1254, !llvm.loop !35

vec.epilog.middle.block1258:                      ; preds = %vec.epilog.vector.body1254
  %cmp.n1259 = icmp eq i64 %i.lk, %n.vec1253
  br i1 %cmp.n1259, label %._crit_edge542.loopexit, label %.lr.ph541.preheader

.lr.ph541.preheader:                              ; preds = %iter.check1247, %vector.memcheck1232, %vec.epilog.iter.check1248, %vec.epilog.middle.block1258
  %indvars.iv781.ph = phi i64 [ %i.lo, %iter.check1247 ], [ %i.lo, %vector.memcheck1232 ], [ %i.lt, %vec.epilog.iter.check1248 ], [ %i.mc, %vec.epilog.middle.block1258 ] ; 3 uses
  %indvars.iv777.ph = phi i64 [ %i.lp, %iter.check1247 ], [ %i.lp, %vector.memcheck1232 ], [ %i.lu, %vec.epilog.iter.check1248 ], [ %i.md, %vec.epilog.middle.block1258 ] ; 2 uses
  %i.mf = trunc i64 %indvars.iv781.ph to i32      ; 2 uses
  %i.mg = sub i32 %indvars.iv786, %i.mf
  %i.mh = sub i32 %i.ln, %i.mf
  %xtraiter1628 = and i32 %i.mg, 7                ; 2 uses
  %lcmp.mod1629.not = icmp eq i32 %xtraiter1628, 0
  br i1 %lcmp.mod1629.not, label %.lr.ph541.prol.loopexit, label %.lr.ph541.prol

.lr.ph541.prol:                                   ; preds = %.lr.ph541.preheader, %.lr.ph541.prol
  %indvars.iv781.prol = phi i64 [ %indvars.iv.next782.prol, %.lr.ph541.prol ], [ %indvars.iv781.ph, %.lr.ph541.preheader ] ; 2 uses
  %indvars.iv777.prol = phi i64 [ %indvars.iv.next778.prol, %.lr.ph541.prol ], [ %indvars.iv777.ph, %.lr.ph541.preheader ] ; 2 uses
  %prol.iter1630 = phi i32 [ %prol.iter1630.next, %.lr.ph541.prol ], [ 0, %.lr.ph541.preheader ]
  %i.mi = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv781.prol
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !92
  %i.mk = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv777.prol
  store double %i.mj, ptr %i.mk, align 8, !tbaa !92
  %indvars.iv.next778.prol = add nsw i64 %indvars.iv777.prol, 1 ; 3 uses
  %indvars.iv.next782.prol = add nsw i64 %indvars.iv781.prol, 1 ; 2 uses
  %prol.iter1630.next = add i32 %prol.iter1630, 1 ; 2 uses
  %prol.iter1630.cmp.not = icmp eq i32 %prol.iter1630.next, %xtraiter1628
  br i1 %prol.iter1630.cmp.not, label %.lr.ph541.prol.loopexit, label %.lr.ph541.prol, !llvm.loop !36

.lr.ph541.prol.loopexit:                          ; preds = %.lr.ph541.prol, %.lr.ph541.preheader
  %indvars.iv.next778.lcssa1599.unr = phi i64 [ poison, %.lr.ph541.preheader ], [ %indvars.iv.next778.prol, %.lr.ph541.prol ]
  %indvars.iv781.unr = phi i64 [ %indvars.iv781.ph, %.lr.ph541.preheader ], [ %indvars.iv.next782.prol, %.lr.ph541.prol ]
  %indvars.iv777.unr = phi i64 [ %indvars.iv777.ph, %.lr.ph541.preheader ], [ %indvars.iv.next778.prol, %.lr.ph541.prol ]
  %i.ml = icmp ult i32 %i.mh, 7
  br i1 %i.ml, label %._crit_edge542.loopexit, label %.lr.ph541

.lr.ph541:                                        ; preds = %.lr.ph541.prol.loopexit, %.lr.ph541
  %indvars.iv781 = phi i64 [ %indvars.iv.next782.7, %.lr.ph541 ], [ %indvars.iv781.unr, %.lr.ph541.prol.loopexit ] ; 9 uses
  %indvars.iv777 = phi i64 [ %indvars.iv.next778.7, %.lr.ph541 ], [ %indvars.iv777.unr, %.lr.ph541.prol.loopexit ] ; 9 uses
  %i.mm = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv781
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !92
  %i.mo = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv777
  store double %i.mn, ptr %i.mo, align 8, !tbaa !92
  %i.mp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.mq = getelementptr i8, ptr %i.mp, i64 8
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !92
  %i.ms = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.mt = getelementptr i8, ptr %i.ms, i64 8
  store double %i.mr, ptr %i.mt, align 8, !tbaa !92
  %i.mu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.mv = getelementptr i8, ptr %i.mu, i64 16
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !92
  %i.mx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.my = getelementptr i8, ptr %i.mx, i64 16
  store double %i.mw, ptr %i.my, align 8, !tbaa !92
  %i.mz = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.na = getelementptr i8, ptr %i.mz, i64 24
  %i.nb = load double, ptr %i.na, align 8, !tbaa !92
  %i.nc = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.nd = getelementptr i8, ptr %i.nc, i64 24
  store double %i.nb, ptr %i.nd, align 8, !tbaa !92
  %i.ne = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.nf = getelementptr i8, ptr %i.ne, i64 32
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !92
  %i.nh = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.ni = getelementptr i8, ptr %i.nh, i64 32
  store double %i.ng, ptr %i.ni, align 8, !tbaa !92
  %i.nj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.nk = getelementptr i8, ptr %i.nj, i64 40
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !92
  %i.nm = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.nn = getelementptr i8, ptr %i.nm, i64 40
  store double %i.nl, ptr %i.nn, align 8, !tbaa !92
  %i.no = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.np = getelementptr i8, ptr %i.no, i64 48
  %i.nq = load double, ptr %i.np, align 8, !tbaa !92
  %i.nr = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.ns = getelementptr i8, ptr %i.nr, i64 48
  store double %i.nq, ptr %i.ns, align 8, !tbaa !92
  %i.nt = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.nu = getelementptr i8, ptr %i.nt, i64 56
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !92
  %i.nw = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.nx = getelementptr i8, ptr %i.nw, i64 56
  store double %i.nv, ptr %i.nx, align 8, !tbaa !92
  %indvars.iv.next778.7 = add nsw i64 %indvars.iv777, 8 ; 2 uses
  %indvars.iv.next782.7 = add nsw i64 %indvars.iv781, 8 ; 2 uses
  %lftr.wideiv788.7 = trunc i64 %indvars.iv.next782.7 to i32
  %exitcond789.not.7 = icmp eq i32 %indvars.iv786, %lftr.wideiv788.7
  br i1 %exitcond789.not.7, label %._crit_edge542.loopexit, label %.lr.ph541, !llvm.loop !37

._crit_edge542.loopexit:                          ; preds = %.lr.ph541.prol.loopexit, %.lr.ph541, %vec.epilog.middle.block1258, %middle.block1245
  %indvars.iv.next778.lcssa = phi i64 [ %i.md, %vec.epilog.middle.block1258 ], [ %i.lu, %middle.block1245 ], [ %indvars.iv.next778.lcssa1599.unr, %.lr.ph541.prol.loopexit ], [ %indvars.iv.next778.7, %.lr.ph541 ]
  %i.ny = trunc nsw i64 %indvars.iv.next778.lcssa to i32
  br label %._crit_edge542

._crit_edge542:                                   ; preds = %._crit_edge542.loopexit, %bb.p
  %.11.lcssa = phi i32 [ %.10547, %bb.p ], [ %i.ny, %._crit_edge542.loopexit ]
  %indvars.iv.next780 = add i32 %indvars.iv779, %i.lf
  %i.nz = add nuw nsw i32 %.4358545, 1            ; 2 uses
  %indvars.iv.next787 = add i32 %indvars.iv786, %i.s
  %exitcond790.not = icmp eq i32 %i.nz, %.901
  br i1 %exitcond790.not, label %.loopexit, label %bb.p, !llvm.loop !38

bb.q:                                             ; preds = %bb.m
  %.not399.not552 = icmp sgt i32 %., 0
  br i1 %.not399.not552, label %.lr.ph557.preheader, label %._crit_edge558

.lr.ph557.preheader:                              ; preds = %bb.q
  %i.oa = mul i32 %.901, %i.s
  %i.ob = sext i32 %i.oa to i64                   ; 4 uses
  %i.oc = zext nneg i32 %i.s to i64               ; 4 uses
  %wide.trip.count806 = zext nneg i32 %. to i64
  %i.od = mul nsw i64 %i.oc, -8
  %i.oe = shl nsw i64 %i.ob, 3
  %i.of = add i64 %i.oe, %i.a
  %i.og = sub i64 %i.b, %i.of
  %i.oh = add nuw nsw i64 %i.oc, 1
  br label %iter.check1281

iter.check1281:                                   ; preds = %.lr.ph557.preheader, %.loopexit1581
  %indvars.iv801 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next802, %.loopexit1581 ] ; 5 uses
  %indvars.iv794 = phi i64 [ %i.ob, %.lr.ph557.preheader ], [ %indvars.iv.next795, %.loopexit1581 ] ; 9 uses
  %.12555 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next793.lcssa, %.loopexit1581 ] ; 7 uses
  %i.oi = mul i64 %i.oh, %indvars.iv801
  %i.oj = add i64 %i.oi, %i.ob
  %smax1264 = tail call i64 @llvm.smax.i64(i64 %indvars.iv794, i64 %i.oj)
  %i.ok = mul i64 %indvars.iv801, %i.oc
  %i.ol = add i64 %i.ok, %i.ob
  %reass.sub1585 = sub i64 %smax1264, %i.ol
  %i.om = add i64 %reass.sub1585, 1               ; 7 uses
  %i.on = add nsw i64 %indvars.iv794, %indvars.iv801
  %min.iters.check1265 = icmp ult i64 %i.om, 4
  br i1 %min.iters.check1265, label %vec.epilog.scalar.ph1283.preheader, label %vector.memcheck1266

vector.memcheck1266:                              ; preds = %iter.check1281
  %i.oo = mul i64 %indvars.iv801, %i.od
end_hunk_1
begin_hunk_2_@dtfttp_:bb.a
  br i1 %.not402.not, label %vec.epilog.scalar.ph1283, label %.loopexit1581, !llvm.loop !41

.loopexit1581:                                    ; preds = %vec.epilog.scalar.ph1283, %vec.epilog.middle.block1292, %middle.block1279
  %indvars.iv.next793.lcssa = phi i64 [ %i.pi, %vec.epilog.middle.block1292 ], [ %i.ov, %middle.block1279 ], [ %indvars.iv.next793, %vec.epilog.scalar.ph1283 ] ; 2 uses
  %indvars.iv.next795 = add nsw i64 %indvars.iv794, %i.oc
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1 ; 2 uses
  %exitcond807.not = icmp eq i64 %indvars.iv.next802, %wide.trip.count806
  br i1 %exitcond807.not, label %._crit_edge558, label %iter.check1281, !llvm.loop !42

._crit_edge558:                                   ; preds = %.loopexit1581, %bb.q
  %.12.lcssa = phi i64 [ 0, %bb.q ], [ %indvars.iv.next793.lcssa, %.loopexit1581 ]
  %.not400567 = icmp slt i32 %., 0
  br i1 %.not400567, label %.loopexit, label %.lr.ph571

.lr.ph571:                                        ; preds = %._crit_edge558
  %i.pr = zext nneg i32 %i.s to i64               ; 13 uses
  %i.ps = add nuw i32 %., 1
  %wide.trip.count818 = zext i32 %i.ps to i64
  %broadcast.splatinsert1320 = insertelement <4 x i64> poison, i64 %i.pr, i64 0
  %broadcast.splat1321 = shufflevector <4 x i64> %broadcast.splatinsert1320, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pt = shl nuw nsw <4 x i64> %broadcast.splat1321, splat (i64 2) ; 5 uses
  %i.pu = mul nuw nsw <4 x i64> %broadcast.splat1321, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1685 = add nuw nsw <4 x i64> %i.pt, %i.pt ; 2 uses
  %invariant.op1686 = add nuw nsw <4 x i64> %invariant.op1685, %i.pt ; 2 uses
  %invariant.op1687 = add nuw nsw <4 x i64> %invariant.op1686, %i.pt
  %broadcast.splatinsert1353 = insertelement <4 x i64> poison, i64 %i.pr, i64 0
  %broadcast.splat1354 = shufflevector <4 x i64> %broadcast.splatinsert1353, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.pv = mul nuw nsw <4 x i64> %broadcast.splat1354, <i64 0, i64 1, i64 2, i64 3>
  %i.pw = shl nuw nsw i64 %i.pr, 2
  %broadcast.splatinsert1356 = insertelement <4 x i64> poison, i64 %i.pw, i64 0
  %broadcast.splat1357 = shufflevector <4 x i64> %broadcast.splatinsert1356, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1343

iter.check1343:                                   ; preds = %._crit_edge565, %.lr.ph571
  %indvars.iv810 = phi i64 [ 0, %.lr.ph571 ], [ %indvars.iv.next811, %._crit_edge565 ] ; 17 uses
  %.14569 = phi i64 [ %.12.lcssa, %.lr.ph571 ], [ %indvars.iv.next809.lcssa, %._crit_edge565 ]
  %i.px = add nuw i64 %indvars.iv810, %i.pr       ; 2 uses
  %i.py = add nuw i64 %indvars.iv810, 1
  %i.pz = trunc i64 %indvars.iv810 to i32
  %i.qa = add i32 %., %i.pz
  %i.qb = mul i32 %i.s, %i.qa
  %i.qc = sext i32 %i.qb to i64
  %i.qd = add i64 %i.py, %i.qc                    ; 2 uses
  %smax1309 = tail call i64 @llvm.smax.i64(i64 %i.px, i64 %i.qd)
  %i.qe = add nuw i64 %indvars.iv810, %i.pr
  %i.qf = icmp slt i64 %i.px, %i.qd               ; 2 uses
  %umin1310 = zext i1 %i.qf to i64
  %i.qg = add i64 %i.qe, %umin1310
  %i.qh = sub i64 %smax1309, %i.qg
  %indvars817 = trunc i64 %indvars.iv810 to i32
  %i.qi = add nuw nsw i32 %., %indvars817
  %i.qj = mul nsw i32 %i.qi, %i.s
  %i.qk = sext i32 %i.qj to i64                   ; 2 uses
  %i.ql = add nsw i64 %indvars.iv810, %i.qk
  %sext = shl i64 %.14569, 32                     ; 2 uses
  %i.qm = ashr exact i64 %sext, 32                ; 6 uses
  %i.qn = select i1 %i.qf, i64 2, i64 1
  %i.qo = udiv i64 %i.qh, %i.pr
  %i.qp = add i64 %i.qn, %i.qo                    ; 7 uses
  %min.iters.check1311 = icmp ult i64 %i.qp, 4
  br i1 %min.iters.check1311, label %.lr.ph564.preheader, label %vector.memcheck1312

vector.memcheck1312:                              ; preds = %iter.check1343
  %i.qq = ashr exact i64 %sext, 29                ; 2 uses
  %i.qr = getelementptr i8, ptr %4, i64 %i.qq
  %i.qs = add nuw i64 %indvars.iv810, %i.pr       ; 2 uses
  %i.qt = add nuw i64 %indvars.iv810, 1
  %i.qu = add i64 %i.qt, %i.qk                    ; 2 uses
  %i.qv = tail call i64 @llvm.smax.i64(i64 %i.qs, i64 %i.qu)
  %i.qw = add nuw i64 %indvars.iv810, %i.pr
  %i.qx = icmp slt i64 %i.qs, %i.qu
  %i.qy = zext i1 %i.qx to i64                    ; 2 uses
  %i.qz = add i64 %i.qw, %i.qy
  %i.ra = sub i64 %i.qv, %i.qz
  %i.rb = udiv i64 %i.ra, %i.pr
  %i.rc = add i64 %i.rb, %i.qy                    ; 2 uses
  %i.rd = shl i64 %i.rc, 3
  %i.re = getelementptr i8, ptr %4, i64 %i.rd
  %i.rf = getelementptr i8, ptr %i.re, i64 %i.qq
  %i.rg = getelementptr i8, ptr %i.rf, i64 8
  %i.rh = shl nuw nsw i64 %indvars.iv810, 3       ; 2 uses
  %i.ri = getelementptr nuw i8, ptr %3, i64 %i.rh
  %i.rj = mul i64 %i.rc, %i.pr
  %i.rk = shl i64 %i.rj, 3
  %i.rl = getelementptr i8, ptr %3, i64 %i.rh
  %i.rm = getelementptr i8, ptr %i.rl, i64 8
  %i.rn = getelementptr i8, ptr %i.rm, i64 %i.rk
  %bound01313 = icmp ult ptr %i.qr, %i.rn
  %bound11314 = icmp ult ptr %i.ri, %i.rg
  %found.conflict1315 = and i1 %bound01313, %bound11314
  br i1 %found.conflict1315, label %.lr.ph564.preheader, label %vector.main.loop.iter.check1316

vector.main.loop.iter.check1316:                  ; preds = %vector.memcheck1312
  %min.iters.check1317 = icmp ult i64 %i.qp, 16
  br i1 %min.iters.check1317, label %vec.epilog.ph1347, label %vector.ph1318

vector.ph1318:                                    ; preds = %vector.main.loop.iter.check1316
  %i.ro = and i64 %i.qp, 12
  %n.vec1319 = and i64 %i.qp, -16                 ; 5 uses
  %i.rp = mul i64 %n.vec1319, %i.pr
  %i.rq = add i64 %indvars.iv810, %i.rp           ; 2 uses
  %i.rr = add i64 %i.qm, %n.vec1319               ; 2 uses
  %broadcast.splatinsert1322 = insertelement <4 x i64> poison, i64 %indvars.iv810, i64 0
  %broadcast.splat1323 = shufflevector <4 x i64> %broadcast.splatinsert1322, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1324 = add nuw nsw <4 x i64> %broadcast.splat1323, %i.pu
  %i.rs = getelementptr [8 x i8], ptr %4, i64 %i.qm
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.ph1318, %vector.body1325
  %index1326 = phi i64 [ 0, %vector.ph1318 ], [ %index.next1339, %vector.body1325 ] ; 2 uses
  %vec.ind1327 = phi <4 x i64> [ %induction1324, %vector.ph1318 ], [ %vec.ind.next1340.reass, %vector.body1325 ] ; 5 uses
  %step.add1328 = add nuw nsw <4 x i64> %vec.ind1327, %i.pt
  %step.add.21329.reass = add nuw nsw <4 x i64> %vec.ind1327, %invariant.op1685
  %step.add.31330.reass = add nuw nsw <4 x i64> %vec.ind1327, %invariant.op1686
  %wide.gep1331 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1327
  %wide.gep1332 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add1328
  %wide.gep1333 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.21329.reass
  %wide.gep1334 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.31330.reass
  %wide.masked.gather1335 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1331, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %wide.masked.gather1336 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1332, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %wide.masked.gather1337 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1333, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %wide.masked.gather1338 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1334, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %i.rt = getelementptr [8 x i8], ptr %i.rs, i64 %index1326 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 96
  store <4 x double> %wide.masked.gather1335, ptr %i.rt, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  store <4 x double> %wide.masked.gather1336, ptr %i.ru, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  store <4 x double> %wide.masked.gather1337, ptr %i.rv, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  store <4 x double> %wide.masked.gather1338, ptr %i.rw, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  %index.next1339 = add nuw i64 %index1326, 16    ; 2 uses
  %vec.ind.next1340.reass = add nuw nsw <4 x i64> %vec.ind1327, %invariant.op1687
  %i.rx = icmp eq i64 %index.next1339, %n.vec1319
  br i1 %i.rx, label %middle.block1341, label %vector.body1325, !llvm.loop !46

middle.block1341:                                 ; preds = %vector.body1325
  %cmp.n1342 = icmp eq i64 %i.qp, %n.vec1319
  br i1 %cmp.n1342, label %._crit_edge565, label %vec.epilog.iter.check1344

vec.epilog.iter.check1344:                        ; preds = %middle.block1341
  %min.epilog.iters.check1346 = icmp eq i64 %i.ro, 0
  br i1 %min.epilog.iters.check1346, label %.lr.ph564.preheader, label %vec.epilog.ph1347, !prof !96

vec.epilog.ph1347:                                ; preds = %vector.main.loop.iter.check1316, %vec.epilog.iter.check1344
  %vec.epilog.resume.val1348 = phi i64 [ %n.vec1319, %vec.epilog.iter.check1344 ], [ 0, %vector.main.loop.iter.check1316 ]
  %bc.resume.val1349 = phi i64 [ %i.rq, %vec.epilog.iter.check1344 ], [ %indvars.iv810, %vector.main.loop.iter.check1316 ]
  %n.vec1350 = and i64 %i.qp, -4                  ; 4 uses
  %i.ry = mul i64 %n.vec1350, %i.pr
  %i.rz = add i64 %indvars.iv810, %i.ry
  %i.sa = add i64 %i.qm, %n.vec1350               ; 2 uses
  %broadcast.splatinsert1351 = insertelement <4 x i64> poison, i64 %bc.resume.val1349, i64 0
  %broadcast.splat1352 = shufflevector <4 x i64> %broadcast.splatinsert1351, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1355 = add nuw nsw <4 x i64> %broadcast.splat1352, %i.pv
  %i.sb = getelementptr [8 x i8], ptr %4, i64 %i.qm
  br label %vec.epilog.vector.body1358

vec.epilog.vector.body1358:                       ; preds = %vec.epilog.vector.body1358, %vec.epilog.ph1347
  %index1359 = phi i64 [ %vec.epilog.resume.val1348, %vec.epilog.ph1347 ], [ %index.next1363, %vec.epilog.vector.body1358 ] ; 2 uses
  %vec.ind1360 = phi <4 x i64> [ %induction1355, %vec.epilog.ph1347 ], [ %vec.ind.next1364, %vec.epilog.vector.body1358 ] ; 2 uses
  %wide.gep1361 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1360
  %wide.masked.gather1362 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1361, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %i.sc = getelementptr [8 x i8], ptr %i.sb, i64 %index1359
  store <4 x double> %wide.masked.gather1362, ptr %i.sc, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  %index.next1363 = add nuw i64 %index1359, 4     ; 2 uses
  %vec.ind.next1364 = add nuw nsw <4 x i64> %vec.ind1360, %broadcast.splat1357
  %i.sd = icmp eq i64 %index.next1363, %n.vec1350
  br i1 %i.sd, label %vec.epilog.middle.block1365, label %vec.epilog.vector.body1358, !llvm.loop !47

vec.epilog.middle.block1365:                      ; preds = %vec.epilog.vector.body1358
  %cmp.n1366 = icmp eq i64 %i.qp, %n.vec1350
  br i1 %cmp.n1366, label %._crit_edge565, label %.lr.ph564.preheader

.lr.ph564.preheader:                              ; preds = %iter.check1343, %vector.memcheck1312, %vec.epilog.iter.check1344, %vec.epilog.middle.block1365
  %indvars.iv812.ph = phi i64 [ %indvars.iv810, %iter.check1343 ], [ %indvars.iv810, %vector.memcheck1312 ], [ %i.rq, %vec.epilog.iter.check1344 ], [ %i.rz, %vec.epilog.middle.block1365 ]
  %indvars.iv808.ph = phi i64 [ %i.qm, %iter.check1343 ], [ %i.qm, %vector.memcheck1312 ], [ %i.rr, %vec.epilog.iter.check1344 ], [ %i.sa, %vec.epilog.middle.block1365 ]
  br label %.lr.ph564

.lr.ph564:                                        ; preds = %.lr.ph564.preheader, %.lr.ph564
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %.lr.ph564 ], [ %indvars.iv812.ph, %.lr.ph564.preheader ] ; 2 uses
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %.lr.ph564 ], [ %indvars.iv808.ph, %.lr.ph564.preheader ] ; 2 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv812
  %i.sf = load double, ptr %i.se, align 8, !tbaa !92
  %i.sg = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv808
  store double %i.sf, ptr %i.sg, align 8, !tbaa !92
  %indvars.iv.next809 = add nsw i64 %indvars.iv808, 1 ; 2 uses
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, %i.pr ; 2 uses
  %.not881 = icmp sgt i64 %indvars.iv.next813, %i.ql
  br i1 %.not881, label %._crit_edge565, label %.lr.ph564, !llvm.loop !48

._crit_edge565:                                   ; preds = %.lr.ph564, %vec.epilog.middle.block1365, %middle.block1341
  %indvars.iv.next809.lcssa = phi i64 [ %i.sa, %vec.epilog.middle.block1365 ], [ %i.rr, %middle.block1341 ], [ %indvars.iv.next809, %.lr.ph564 ]
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 1 ; 2 uses
  %exitcond819.not = icmp eq i64 %indvars.iv.next811, %wide.trip.count818
  br i1 %exitcond819.not, label %.loopexit, label %iter.check1343, !llvm.loop !49

.thread423:                                       ; preds = %.thread416
  %i.sh = zext nneg i32 %.0328 to i64             ; 14 uses
  br i1 %.not379, label %iter.check1118.preheader, label %.preheader432.preheader

iter.check1118.preheader:                         ; preds = %.thread423
  %10 = sub i64 %i.b, %i.a
  %ident.check1095.not = icmp ult i32 %i.h, 2
  %invariant.op1671 = add i64 %10, -1
  br label %iter.check1118

.preheader432.preheader:                          ; preds = %.thread423
  %wide.trip.count721 = zext nneg i32 %i.q to i64 ; 3 uses
  %wide.trip.count714 = zext nneg i32 %i.h to i64 ; 4 uses
  %i.si = shl nuw nsw i64 %i.sh, 3
  %i.sj = sub nuw nsw i64 -8, %i.si
  %i.sk = add i64 %i.b, -8
  %i.sl = sub i64 %i.sk, %i.a
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge484
  %indvars.iv716 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next717, %._crit_edge484 ] ; 2 uses
  %indvars.iv707 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next708, %._crit_edge484 ] ; 10 uses
  %.16489 = phi i32 [ 0, %.preheader432.preheader ], [ %.17.lcssa, %._crit_edge484 ] ; 2 uses
  %i.sm = sub nsw i64 %wide.trip.count714, %indvars.iv707 ; 7 uses
  %indvars720 = trunc i64 %indvars.iv707 to i32
  %.not398.not480 = icmp sgt i32 %i.h, %indvars720
  br i1 %.not398.not480, label %iter.check1043, label %._crit_edge484

iter.check1043:                                   ; preds = %.preheader432
  %i.sn = sext i32 %.16489 to i64                 ; 7 uses
  %invariant.gep897 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv716 ; 11 uses
  %min.iters.check1027 = icmp ult i64 %i.sm, 4
  br i1 %min.iters.check1027, label %.lr.ph483.preheader, label %vector.memcheck1028

vector.memcheck1028:                              ; preds = %iter.check1043
  %i.so = mul i64 %indvars.iv707, %i.sj
  %i.sp = add i64 %i.sl, %i.so
  %i.sq = shl nsw i64 %i.sn, 3
  %i.sr = add i64 %i.sp, %i.sq
  %i.ss = add i64 %i.sr, -1
  %diff.check1029 = icmp ult i64 %i.ss, 127
  br i1 %diff.check1029, label %.lr.ph483.preheader, label %vector.main.loop.iter.check1030

vector.main.loop.iter.check1030:                  ; preds = %vector.memcheck1028
  %min.iters.check1031 = icmp ult i64 %i.sm, 16
  br i1 %min.iters.check1031, label %vec.epilog.ph1047, label %vector.ph1032

vector.ph1032:                                    ; preds = %vector.main.loop.iter.check1030
  %i.st = and i64 %i.sm, 12
  %n.vec1033 = and i64 %i.sm, -16                 ; 5 uses
  %i.su = add i64 %indvars.iv707, %n.vec1033
  %i.sv = add i64 %n.vec1033, %i.sn               ; 2 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  %invariant.gep1659 = getelementptr [8 x i8], ptr %4, i64 %i.sn
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.ph1032, %vector.body1034
  %index1035 = phi i64 [ 0, %vector.ph1032 ], [ %index.next1040, %vector.body1034 ] ; 3 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %index1035 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 72
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 104
  %wide.load1036 = load <4 x double>, ptr %i.sy, align 8, !tbaa !92
  %wide.load1037 = load <4 x double>, ptr %i.sz, align 8, !tbaa !92
  %wide.load1038 = load <4 x double>, ptr %i.ta, align 8, !tbaa !92
  %wide.load1039 = load <4 x double>, ptr %i.tb, align 8, !tbaa !92
  %gep1660 = getelementptr [8 x i8], ptr %invariant.gep1659, i64 %index1035 ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %gep1660, i64 32
  %i.td = getelementptr inbounds nuw i8, ptr %gep1660, i64 64
  %i.te = getelementptr inbounds nuw i8, ptr %gep1660, i64 96
  store <4 x double> %wide.load1036, ptr %gep1660, align 8, !tbaa !92
  store <4 x double> %wide.load1037, ptr %i.tc, align 8, !tbaa !92
  store <4 x double> %wide.load1038, ptr %i.td, align 8, !tbaa !92
  store <4 x double> %wide.load1039, ptr %i.te, align 8, !tbaa !92
  %index.next1040 = add nuw i64 %index1035, 16    ; 2 uses
  %i.tf = icmp eq i64 %index.next1040, %n.vec1033
  br i1 %i.tf, label %middle.block1041, label %vector.body1034, !llvm.loop !50

middle.block1041:                                 ; preds = %vector.body1034
  %cmp.n1042 = icmp eq i64 %i.sm, %n.vec1033
  br i1 %cmp.n1042, label %._crit_edge484.loopexit, label %vec.epilog.iter.check1044

vec.epilog.iter.check1044:                        ; preds = %middle.block1041
  %min.epilog.iters.check1046 = icmp eq i64 %i.st, 0
  br i1 %min.epilog.iters.check1046, label %.lr.ph483.preheader, label %vec.epilog.ph1047, !prof !96

vec.epilog.ph1047:                                ; preds = %vector.main.loop.iter.check1030, %vec.epilog.iter.check1044
  %vec.epilog.resume.val1048 = phi i64 [ %n.vec1033, %vec.epilog.iter.check1044 ], [ 0, %vector.main.loop.iter.check1030 ]
  %n.vec1049 = and i64 %i.sm, -4                  ; 4 uses
  %i.tg = add i64 %indvars.iv707, %n.vec1049
  %i.th = add i64 %n.vec1049, %i.sn               ; 2 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  %invariant.gep1661 = getelementptr [8 x i8], ptr %4, i64 %i.sn
  br label %vec.epilog.vector.body1050

vec.epilog.vector.body1050:                       ; preds = %vec.epilog.vector.body1050, %vec.epilog.ph1047
  %index1051 = phi i64 [ %vec.epilog.resume.val1048, %vec.epilog.ph1047 ], [ %index.next1053, %vec.epilog.vector.body1050 ] ; 3 uses
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %index1051
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %wide.load1052 = load <4 x double>, ptr %i.tk, align 8, !tbaa !92
  %gep1662 = getelementptr [8 x i8], ptr %invariant.gep1661, i64 %index1051
  store <4 x double> %wide.load1052, ptr %gep1662, align 8, !tbaa !92
  %index.next1053 = add nuw i64 %index1051, 4     ; 2 uses
  %i.tl = icmp eq i64 %index.next1053, %n.vec1049
  br i1 %i.tl, label %vec.epilog.middle.block1054, label %vec.epilog.vector.body1050, !llvm.loop !51

vec.epilog.middle.block1054:                      ; preds = %vec.epilog.vector.body1050
  %cmp.n1055 = icmp eq i64 %i.sm, %n.vec1049
  br i1 %cmp.n1055, label %._crit_edge484.loopexit, label %.lr.ph483.preheader

.lr.ph483.preheader:                              ; preds = %iter.check1043, %vector.memcheck1028, %vec.epilog.iter.check1044, %vec.epilog.middle.block1054
  %indvars.iv709.ph = phi i64 [ %indvars.iv707, %iter.check1043 ], [ %indvars.iv707, %vector.memcheck1028 ], [ %i.su, %vec.epilog.iter.check1044 ], [ %i.tg, %vec.epilog.middle.block1054 ] ; 4 uses
  %indvars.iv705.ph = phi i64 [ %i.sn, %iter.check1043 ], [ %i.sn, %vector.memcheck1028 ], [ %i.sv, %vec.epilog.iter.check1044 ], [ %i.th, %vec.epilog.middle.block1054 ] ; 2 uses
  %i.tm = sub i64 %wide.trip.count714, %indvars.iv709.ph
  %xtraiter1617 = and i64 %i.tm, 7                ; 2 uses
  %lcmp.mod1618.not = icmp eq i64 %xtraiter1617, 0
  br i1 %lcmp.mod1618.not, label %.lr.ph483.prol.loopexit, label %.lr.ph483.prol

.lr.ph483.prol:                                   ; preds = %.lr.ph483.preheader, %.lr.ph483.prol
  %indvars.iv709.prol = phi i64 [ %indvars.iv.next710.prol, %.lr.ph483.prol ], [ %indvars.iv709.ph, %.lr.ph483.preheader ]
  %indvars.iv705.prol = phi i64 [ %indvars.iv.next706.prol, %.lr.ph483.prol ], [ %indvars.iv705.ph, %.lr.ph483.preheader ] ; 2 uses
  %prol.iter1619 = phi i64 [ %prol.iter1619.next, %.lr.ph483.prol ], [ 0, %.lr.ph483.preheader ]
  %indvars.iv.next710.prol = add nuw nsw i64 %indvars.iv709.prol, 1 ; 3 uses
  %gep898.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv.next710.prol
  %i.tn = load double, ptr %gep898.prol, align 8, !tbaa !92
  %i.to = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv705.prol
  store double %i.tn, ptr %i.to, align 8, !tbaa !92
  %indvars.iv.next706.prol = add nsw i64 %indvars.iv705.prol, 1 ; 3 uses
  %prol.iter1619.next = add i64 %prol.iter1619, 1 ; 2 uses
  %prol.iter1619.cmp.not = icmp eq i64 %prol.iter1619.next, %xtraiter1617
  br i1 %prol.iter1619.cmp.not, label %.lr.ph483.prol.loopexit, label %.lr.ph483.prol, !llvm.loop !52

.lr.ph483.prol.loopexit:                          ; preds = %.lr.ph483.prol, %.lr.ph483.preheader
  %indvars.iv.next706.lcssa1604.unr = phi i64 [ poison, %.lr.ph483.preheader ], [ %indvars.iv.next706.prol, %.lr.ph483.prol ]
  %indvars.iv709.unr = phi i64 [ %indvars.iv709.ph, %.lr.ph483.preheader ], [ %indvars.iv.next710.prol, %.lr.ph483.prol ]
  %indvars.iv705.unr = phi i64 [ %indvars.iv705.ph, %.lr.ph483.preheader ], [ %indvars.iv.next706.prol, %.lr.ph483.prol ]
  %i.tp = sub i64 %indvars.iv709.ph, %wide.trip.count714
  %i.tq = icmp ugt i64 %i.tp, -8
  br i1 %i.tq, label %._crit_edge484.loopexit, label %.lr.ph483

.lr.ph483:                                        ; preds = %.lr.ph483.prol.loopexit, %.lr.ph483
  %indvars.iv709 = phi i64 [ %indvars.iv.next710.7, %.lr.ph483 ], [ %indvars.iv709.unr, %.lr.ph483.prol.loopexit ] ; 8 uses
  %indvars.iv705 = phi i64 [ %indvars.iv.next706.7, %.lr.ph483 ], [ %indvars.iv705.unr, %.lr.ph483.prol.loopexit ] ; 9 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898 = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.ts = load double, ptr %gep898, align 8, !tbaa !92
  %i.tt = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv705
  store double %i.ts, ptr %i.tt, align 8, !tbaa !92
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.1 = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.tv = load double, ptr %gep898.1, align 8, !tbaa !92
  %i.tw = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.tx = getelementptr i8, ptr %i.tw, i64 8
  store double %i.tv, ptr %i.tx, align 8, !tbaa !92
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.2 = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  %i.tz = load double, ptr %gep898.2, align 8, !tbaa !92
  %i.ua = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.ub = getelementptr i8, ptr %i.ua, i64 16
  store double %i.tz, ptr %i.ub, align 8, !tbaa !92
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.3 = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  %i.ud = load double, ptr %gep898.3, align 8, !tbaa !92
  %i.ue = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.uf = getelementptr i8, ptr %i.ue, i64 24
  store double %i.ud, ptr %i.uf, align 8, !tbaa !92
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.4 = getelementptr inbounds nuw i8, ptr %i.ug, i64 40
  %i.uh = load double, ptr %gep898.4, align 8, !tbaa !92
  %i.ui = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.uj = getelementptr i8, ptr %i.ui, i64 32
  store double %i.uh, ptr %i.uj, align 8, !tbaa !92
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.5 = getelementptr inbounds nuw i8, ptr %i.uk, i64 48
  %i.ul = load double, ptr %gep898.5, align 8, !tbaa !92
  %i.um = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.un = getelementptr i8, ptr %i.um, i64 40
  store double %i.ul, ptr %i.un, align 8, !tbaa !92
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.6 = getelementptr inbounds nuw i8, ptr %i.uo, i64 56
  %i.up = load double, ptr %gep898.6, align 8, !tbaa !92
  %i.uq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.ur = getelementptr i8, ptr %i.uq, i64 48
  store double %i.up, ptr %i.ur, align 8, !tbaa !92
  %indvars.iv.next710.7 = add nuw nsw i64 %indvars.iv709, 8 ; 3 uses
  %gep898.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv.next710.7
  %i.us = load double, ptr %gep898.7, align 8, !tbaa !92
  %i.ut = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.uu = getelementptr i8, ptr %i.ut, i64 56
  store double %i.us, ptr %i.uu, align 8, !tbaa !92
  %indvars.iv.next706.7 = add nsw i64 %indvars.iv705, 8 ; 2 uses
  %exitcond715.not.7 = icmp eq i64 %indvars.iv.next710.7, %wide.trip.count714
  br i1 %exitcond715.not.7, label %._crit_edge484.loopexit, label %.lr.ph483, !llvm.loop !53

._crit_edge484.loopexit:                          ; preds = %.lr.ph483.prol.loopexit, %.lr.ph483, %vec.epilog.middle.block1054, %middle.block1041
  %indvars.iv.next706.lcssa = phi i64 [ %i.th, %vec.epilog.middle.block1054 ], [ %i.sv, %middle.block1041 ], [ %indvars.iv.next706.lcssa1604.unr, %.lr.ph483.prol.loopexit ], [ %indvars.iv.next706.7, %.lr.ph483 ]
  %i.uv = trunc nsw i64 %indvars.iv.next706.lcssa to i32
  br label %._crit_edge484

._crit_edge484:                                   ; preds = %._crit_edge484.loopexit, %.preheader432
  %.17.lcssa = phi i32 [ %.16489, %.preheader432 ], [ %i.uv, %._crit_edge484.loopexit ] ; 2 uses
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, %i.sh
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %exitcond722.not = icmp eq i64 %indvars.iv.next708, %wide.trip.count721
  br i1 %exitcond722.not, label %._crit_edge490, label %.preheader432, !llvm.loop !54

._crit_edge490:                                   ; preds = %._crit_edge484
  %.not396.not497 = icmp eq i32 %i.h, 0
  br i1 %.not396.not497, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge490
  %i.uw = sext i32 %.17.lcssa to i64              ; 2 uses
  %i.ux = zext nneg i32 %.0328 to i64             ; 5 uses
  %i.uy = zext nneg i32 %i.q to i64               ; 5 uses
  %xtraiter1620 = and i64 %wide.trip.count721, 3  ; 3 uses
  %i.uz = icmp ult i32 %i.h, 8
  br i1 %i.uz, label %iter.check1079.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count721, 1073741820
  br label %iter.check1079

iter.check1079:                                   ; preds = %._crit_edge495.3, %.preheader.preheader.new
  %indvars.iv725 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next726.3, %._crit_edge495.3 ] ; 6 uses
  %.18499 = phi i64 [ %i.uw, %.preheader.preheader.new ], [ %indvars.iv.next724.3, %._crit_edge495.3 ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %._crit_edge495.3 ]
  %invariant.gep899 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv725
  br label %bb.r

bb.r:                                             ; preds = %iter.check1079, %bb.r
  %indvars.iv727 = phi i64 [ %indvars.iv725, %iter.check1079 ], [ %indvars.iv.next728, %bb.r ] ; 2 uses
  %indvars.iv723 = phi i64 [ %.18499, %iter.check1079 ], [ %indvars.iv.next724, %bb.r ] ; 2 uses
  %i.va = mul nuw nsw i64 %indvars.iv727, %i.ux
  %gep900 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899, i64 %i.va
  %i.vb = load double, ptr %gep900, align 8, !tbaa !92
  %i.vc = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723
  store double %i.vb, ptr %i.vc, align 8, !tbaa !92
  %indvars.iv.next724 = add nsw i64 %indvars.iv723, 1 ; 2 uses
  %indvars.iv.next728 = add nuw nsw i64 %indvars.iv727, 1 ; 2 uses
  %.not397.not = icmp samesign ult i64 %indvars.iv.next728, %i.uy
  br i1 %.not397.not, label %bb.r, label %._crit_edge495, !llvm.loop !55

._crit_edge495:                                   ; preds = %bb.r
  %indvars.iv.next726 = or disjoint i64 %indvars.iv725, 1 ; 2 uses
  %invariant.gep899.1 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next726
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %._crit_edge495
  %indvars.iv727.1 = phi i64 [ %indvars.iv.next726, %._crit_edge495 ], [ %indvars.iv.next728.1, %bb.s ] ; 2 uses
  %indvars.iv723.1 = phi i64 [ %indvars.iv.next724, %._crit_edge495 ], [ %indvars.iv.next724.1, %bb.s ] ; 2 uses
  %i.vd = mul nuw nsw i64 %indvars.iv727.1, %i.ux
  %gep900.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.1, i64 %i.vd
  %i.ve = load double, ptr %gep900.1, align 8, !tbaa !92
  %i.vf = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723.1
  store double %i.ve, ptr %i.vf, align 8, !tbaa !92
  %indvars.iv.next724.1 = add nsw i64 %indvars.iv723.1, 1 ; 2 uses
  %indvars.iv.next728.1 = add nuw nsw i64 %indvars.iv727.1, 1 ; 2 uses
  %.not397.not.1 = icmp samesign ult i64 %indvars.iv.next728.1, %i.uy
  br i1 %.not397.not.1, label %bb.s, label %._crit_edge495.1, !llvm.loop !55

._crit_edge495.1:                                 ; preds = %bb.s
  %indvars.iv.next726.1 = or disjoint i64 %indvars.iv725, 2 ; 2 uses
  %invariant.gep899.2 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next726.1
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %._crit_edge495.1
  %indvars.iv727.2 = phi i64 [ %indvars.iv.next726.1, %._crit_edge495.1 ], [ %indvars.iv.next728.2, %bb.t ] ; 2 uses
  %indvars.iv723.2 = phi i64 [ %indvars.iv.next724.1, %._crit_edge495.1 ], [ %indvars.iv.next724.2, %bb.t ] ; 2 uses
  %i.vg = mul nuw nsw i64 %indvars.iv727.2, %i.ux
  %gep900.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.2, i64 %i.vg
  %i.vh = load double, ptr %gep900.2, align 8, !tbaa !92
  %i.vi = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723.2
  store double %i.vh, ptr %i.vi, align 8, !tbaa !92
  %indvars.iv.next724.2 = add nsw i64 %indvars.iv723.2, 1 ; 2 uses
  %indvars.iv.next728.2 = add nuw nsw i64 %indvars.iv727.2, 1 ; 2 uses
  %.not397.not.2 = icmp samesign ult i64 %indvars.iv.next728.2, %i.uy
  br i1 %.not397.not.2, label %bb.t, label %._crit_edge495.2, !llvm.loop !55

._crit_edge495.2:                                 ; preds = %bb.t
  %indvars.iv.next726.2 = or disjoint i64 %indvars.iv725, 3 ; 2 uses
  %invariant.gep899.3 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next726.2
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %._crit_edge495.2
  %indvars.iv727.3 = phi i64 [ %indvars.iv.next726.2, %._crit_edge495.2 ], [ %indvars.iv.next728.3, %bb.u ] ; 2 uses
  %indvars.iv723.3 = phi i64 [ %indvars.iv.next724.2, %._crit_edge495.2 ], [ %indvars.iv.next724.3, %bb.u ] ; 2 uses
  %i.vj = mul nuw nsw i64 %indvars.iv727.3, %i.ux
  %gep900.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.3, i64 %i.vj
  %i.vk = load double, ptr %gep900.3, align 8, !tbaa !92
  %i.vl = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723.3
  store double %i.vk, ptr %i.vl, align 8, !tbaa !92
  %indvars.iv.next724.3 = add nsw i64 %indvars.iv723.3, 1 ; 3 uses
  %indvars.iv.next728.3 = add nuw nsw i64 %indvars.iv727.3, 1 ; 2 uses
  %.not397.not.3 = icmp samesign ult i64 %indvars.iv.next728.3, %i.uy
  br i1 %.not397.not.3, label %bb.u, label %._crit_edge495.3, !llvm.loop !55

._crit_edge495.3:                                 ; preds = %bb.u
  %indvars.iv.next726.3 = add nuw nsw i64 %indvars.iv725, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit1603.unr-lcssa, label %iter.check1079, !llvm.loop !56

iter.check1118:                                   ; preds = %iter.check1118.preheader, %.loopexit1582
  %loop-unroll.iv1623 = phi i32 [ 0, %iter.check1118.preheader ], [ %loop-unroll.iv.next1624, %.loopexit1582 ] ; 2 uses
  %indvar1100 = phi i64 [ 0, %iter.check1118.preheader ], [ %indvar.next1101, %.loopexit1582 ] ; 3 uses
  %indvars.iv744 = phi i32 [ 1, %iter.check1118.preheader ], [ %indvars.iv.next745, %.loopexit1582 ] ; 3 uses
  %indvars.iv737.in = phi i32 [ %i.q, %iter.check1118.preheader ], [ %indvars.iv737, %.loopexit1582 ]
  %.20505 = phi i32 [ 0, %iter.check1118.preheader ], [ %i.vr, %.loopexit1582 ] ; 2 uses
  %i.vm = trunc i64 %indvar1100 to i32
  %i.vn = add i32 %i.vm, 2
  %i.vo = add i64 %indvar1100, 1                  ; 7 uses
  %indvars.iv737 = add i32 %indvars.iv737.in, 1   ; 2 uses
  %i.vp = sext i32 %indvars.iv737 to i64          ; 7 uses
  %i.vq = sext i32 %.20505 to i64                 ; 7 uses
  %i.vr = add i32 %.20505, %indvars.iv744         ; 4 uses
  %min.iters.check1102 = icmp ugt i64 %i.vo, 3
  %or.cond1589 = and i1 %min.iters.check1102, %ident.check1095.not
  br i1 %or.cond1589, label %vector.memcheck1103, label %vec.epilog.scalar.ph1120.preheader

vector.memcheck1103:                              ; preds = %iter.check1118
  %11 = sub nsw i64 %i.vq, %i.vp
  %i.vs = shl nsw i64 %11, 3
  %i.vt = add i64 %i.vs, %invariant.op1671
  %diff.check1104 = icmp ult i64 %i.vt, 127
  br i1 %diff.check1104, label %vec.epilog.scalar.ph1120.preheader, label %vector.main.loop.iter.check1105

vector.main.loop.iter.check1105:                  ; preds = %vector.memcheck1103
  %min.iters.check1106 = icmp ult i64 %i.vo, 16
  br i1 %min.iters.check1106, label %vec.epilog.ph1122, label %vector.ph1107

vector.ph1107:                                    ; preds = %vector.main.loop.iter.check1105
  %i.vu = and i64 %i.vo, 12
  %n.vec1108 = and i64 %i.vo, -16                 ; 5 uses
  %i.vv = add i64 %n.vec1108, %i.vp
  %i.vw = add i64 %n.vec1108, %i.vq
  %invariant.gep1663 = getelementptr [8 x i8], ptr %3, i64 %i.vp
  %invariant.gep1665 = getelementptr [8 x i8], ptr %4, i64 %i.vq
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.ph1107, %vector.body1109
  %index1110 = phi i64 [ 0, %vector.ph1107 ], [ %index.next1115, %vector.body1109 ] ; 3 uses
  %gep1664 = getelementptr [8 x i8], ptr %invariant.gep1663, i64 %index1110 ; 4 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %gep1664, i64 32
  %i.vy = getelementptr inbounds nuw i8, ptr %gep1664, i64 64
  %i.vz = getelementptr inbounds nuw i8, ptr %gep1664, i64 96
  %wide.load1111 = load <4 x double>, ptr %gep1664, align 8, !tbaa !92
  %wide.load1112 = load <4 x double>, ptr %i.vx, align 8, !tbaa !92
  %wide.load1113 = load <4 x double>, ptr %i.vy, align 8, !tbaa !92
  %wide.load1114 = load <4 x double>, ptr %i.vz, align 8, !tbaa !92
  %gep1666 = getelementptr [8 x i8], ptr %invariant.gep1665, i64 %index1110 ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %gep1666, i64 32
  %i.wb = getelementptr inbounds nuw i8, ptr %gep1666, i64 64
  %i.wc = getelementptr inbounds nuw i8, ptr %gep1666, i64 96
  store <4 x double> %wide.load1111, ptr %gep1666, align 8, !tbaa !92
  store <4 x double> %wide.load1112, ptr %i.wa, align 8, !tbaa !92
  store <4 x double> %wide.load1113, ptr %i.wb, align 8, !tbaa !92
  store <4 x double> %wide.load1114, ptr %i.wc, align 8, !tbaa !92
  %index.next1115 = add nuw i64 %index1110, 16    ; 2 uses
  %i.wd = icmp eq i64 %index.next1115, %n.vec1108
  br i1 %i.wd, label %middle.block1116, label %vector.body1109, !llvm.loop !57

middle.block1116:                                 ; preds = %vector.body1109
  %cmp.n1117 = icmp eq i64 %i.vo, %n.vec1108
  br i1 %cmp.n1117, label %.loopexit1582, label %vec.epilog.iter.check1119

vec.epilog.iter.check1119:                        ; preds = %middle.block1116
  %min.epilog.iters.check1121 = icmp eq i64 %i.vu, 0
  br i1 %min.epilog.iters.check1121, label %vec.epilog.scalar.ph1120.preheader, label %vec.epilog.ph1122, !prof !96

vec.epilog.ph1122:                                ; preds = %vector.main.loop.iter.check1105, %vec.epilog.iter.check1119
  %vec.epilog.resume.val1123 = phi i64 [ %n.vec1108, %vec.epilog.iter.check1119 ], [ 0, %vector.main.loop.iter.check1105 ]
  %n.vec1124 = and i64 %i.vo, -4                  ; 4 uses
  %i.we = add i64 %n.vec1124, %i.vp
  %i.wf = add i64 %n.vec1124, %i.vq
  %invariant.gep1667 = getelementptr [8 x i8], ptr %3, i64 %i.vp
  %invariant.gep1669 = getelementptr [8 x i8], ptr %4, i64 %i.vq
  br label %vec.epilog.vector.body1125

vec.epilog.vector.body1125:                       ; preds = %vec.epilog.vector.body1125, %vec.epilog.ph1122
  %index1126 = phi i64 [ %vec.epilog.resume.val1123, %vec.epilog.ph1122 ], [ %index.next1128, %vec.epilog.vector.body1125 ] ; 3 uses
  %gep1668 = getelementptr [8 x i8], ptr %invariant.gep1667, i64 %index1126
  %wide.load1127 = load <4 x double>, ptr %gep1668, align 8, !tbaa !92
  %gep1670 = getelementptr [8 x i8], ptr %invariant.gep1669, i64 %index1126
  store <4 x double> %wide.load1127, ptr %gep1670, align 8, !tbaa !92
  %index.next1128 = add nuw i64 %index1126, 4     ; 2 uses
  %i.wg = icmp eq i64 %index.next1128, %n.vec1124
  br i1 %i.wg, label %vec.epilog.middle.block1129, label %vec.epilog.vector.body1125, !llvm.loop !58

vec.epilog.middle.block1129:                      ; preds = %vec.epilog.vector.body1125
  %cmp.n1130 = icmp eq i64 %i.vo, %n.vec1124
  br i1 %cmp.n1130, label %.loopexit1582, label %vec.epilog.scalar.ph1120.preheader

vec.epilog.scalar.ph1120.preheader:               ; preds = %iter.check1118, %vector.memcheck1103, %vec.epilog.iter.check1119, %vec.epilog.middle.block1129
  %indvars.iv739.ph = phi i64 [ %i.vp, %iter.check1118 ], [ %i.vp, %vector.memcheck1103 ], [ %i.vv, %vec.epilog.iter.check1119 ], [ %i.we, %vec.epilog.middle.block1129 ] ; 2 uses
  %indvars.iv735.ph = phi i64 [ %i.vq, %iter.check1118 ], [ %i.vq, %vector.memcheck1103 ], [ %i.vw, %vec.epilog.iter.check1119 ], [ %i.wf, %vec.epilog.middle.block1129 ] ; 3 uses
  %i.wh = trunc i64 %indvars.iv735.ph to i32      ; 2 uses
  %i.wi = sub i32 %i.vr, %i.wh
  %i.wj = sub i32 %loop-unroll.iv1623, %i.wh
  %xtraiter1625 = and i32 %i.wi, 7                ; 2 uses
  %lcmp.mod1626.not = icmp eq i32 %xtraiter1625, 0
  br i1 %lcmp.mod1626.not, label %vec.epilog.scalar.ph1120.prol.loopexit, label %vec.epilog.scalar.ph1120.prol

vec.epilog.scalar.ph1120.prol:                    ; preds = %vec.epilog.scalar.ph1120.preheader, %vec.epilog.scalar.ph1120.prol
  %indvars.iv739.prol = phi i64 [ %indvars.iv.next740.prol, %vec.epilog.scalar.ph1120.prol ], [ %indvars.iv739.ph, %vec.epilog.scalar.ph1120.preheader ] ; 2 uses
  %indvars.iv735.prol = phi i64 [ %indvars.iv.next736.prol, %vec.epilog.scalar.ph1120.prol ], [ %indvars.iv735.ph, %vec.epilog.scalar.ph1120.preheader ] ; 2 uses
  %prol.iter1627 = phi i32 [ %prol.iter1627.next, %vec.epilog.scalar.ph1120.prol ], [ 0, %vec.epilog.scalar.ph1120.preheader ]
  %i.wk = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv739.prol
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !92
  %i.wm = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv735.prol
  store double %i.wl, ptr %i.wm, align 8, !tbaa !92
  %indvars.iv.next736.prol = add nsw i64 %indvars.iv735.prol, 1 ; 2 uses
  %indvars.iv.next740.prol = add nsw i64 %indvars.iv739.prol, %i.sh ; 2 uses
  %prol.iter1627.next = add i32 %prol.iter1627, 1 ; 2 uses
  %prol.iter1627.cmp.not = icmp eq i32 %prol.iter1627.next, %xtraiter1625
  br i1 %prol.iter1627.cmp.not, label %vec.epilog.scalar.ph1120.prol.loopexit, label %vec.epilog.scalar.ph1120.prol, !llvm.loop !59

vec.epilog.scalar.ph1120.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1120.prol, %vec.epilog.scalar.ph1120.preheader
  %indvars.iv739.unr = phi i64 [ %indvars.iv739.ph, %vec.epilog.scalar.ph1120.preheader ], [ %indvars.iv.next740.prol, %vec.epilog.scalar.ph1120.prol ]
  %indvars.iv735.unr = phi i64 [ %indvars.iv735.ph, %vec.epilog.scalar.ph1120.preheader ], [ %indvars.iv.next736.prol, %vec.epilog.scalar.ph1120.prol ]
  %i.wn = icmp ult i32 %i.wj, 7
  br i1 %i.wn, label %.loopexit1582, label %vec.epilog.scalar.ph1120

vec.epilog.scalar.ph1120:                         ; preds = %vec.epilog.scalar.ph1120.prol.loopexit, %vec.epilog.scalar.ph1120
  %indvars.iv739 = phi i64 [ %indvars.iv.next740.7, %vec.epilog.scalar.ph1120 ], [ %indvars.iv739.unr, %vec.epilog.scalar.ph1120.prol.loopexit ] ; 2 uses
  %indvars.iv735 = phi i64 [ %indvars.iv.next736.7, %vec.epilog.scalar.ph1120 ], [ %indvars.iv735.unr, %vec.epilog.scalar.ph1120.prol.loopexit ] ; 9 uses
  %i.wo = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv739
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !92
  %i.wq = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv735
  store double %i.wp, ptr %i.wq, align 8, !tbaa !92
  %indvars.iv.next740 = add nsw i64 %indvars.iv739, %i.sh ; 2 uses
  %i.wr = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !92
  %i.wt = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.wu = getelementptr i8, ptr %i.wt, i64 8
  store double %i.ws, ptr %i.wu, align 8, !tbaa !92
  %indvars.iv.next740.1 = add nsw i64 %indvars.iv.next740, %i.sh ; 2 uses
  %i.wv = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.1
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !92
  %i.wx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.wy = getelementptr i8, ptr %i.wx, i64 16
  store double %i.ww, ptr %i.wy, align 8, !tbaa !92
  %indvars.iv.next740.2 = add nsw i64 %indvars.iv.next740.1, %i.sh ; 2 uses
  %i.wz = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.2
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !92
  %i.xb = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xc = getelementptr i8, ptr %i.xb, i64 24
  store double %i.xa, ptr %i.xc, align 8, !tbaa !92
  %indvars.iv.next740.3 = add nsw i64 %indvars.iv.next740.2, %i.sh ; 2 uses
  %i.xd = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.3
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !92
  %i.xf = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xg = getelementptr i8, ptr %i.xf, i64 32
  store double %i.xe, ptr %i.xg, align 8, !tbaa !92
  %indvars.iv.next740.4 = add nsw i64 %indvars.iv.next740.3, %i.sh ; 2 uses
  %i.xh = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.4
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !92
  %i.xj = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xk = getelementptr i8, ptr %i.xj, i64 40
  store double %i.xi, ptr %i.xk, align 8, !tbaa !92
  %indvars.iv.next740.5 = add nsw i64 %indvars.iv.next740.4, %i.sh ; 2 uses
  %i.xl = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.5
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !92
  %i.xn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xo = getelementptr i8, ptr %i.xn, i64 48
  store double %i.xm, ptr %i.xo, align 8, !tbaa !92
  %indvars.iv.next740.6 = add nsw i64 %indvars.iv.next740.5, %i.sh ; 2 uses
  %i.xp = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.6
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !92
  %i.xr = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xs = getelementptr i8, ptr %i.xr, i64 56
  store double %i.xq, ptr %i.xs, align 8, !tbaa !92
  %indvars.iv.next736.7 = add nsw i64 %indvars.iv735, 8 ; 2 uses
  %indvars.iv.next740.7 = add nsw i64 %indvars.iv.next740.6, %i.sh
  %lftr.wideiv746.7 = trunc i64 %indvars.iv.next736.7 to i32
  %exitcond747.not.7 = icmp eq i32 %i.vr, %lftr.wideiv746.7
  br i1 %exitcond747.not.7, label %.loopexit1582, label %vec.epilog.scalar.ph1120, !llvm.loop !60

.loopexit1582:                                    ; preds = %vec.epilog.scalar.ph1120.prol.loopexit, %vec.epilog.scalar.ph1120, %vec.epilog.middle.block1129, %middle.block1116
  %indvars.iv.next745 = add nuw i32 %indvars.iv744, 1
  %exitcond748.not = icmp eq i32 %indvars.iv744, %i.q
  %indvar.next1101 = add i64 %indvar1100, 1
  %loop-unroll.iv.next1624 = add i32 %loop-unroll.iv1623, %i.vn
  br i1 %exitcond748.not, label %._crit_edge508, label %iter.check1118, !llvm.loop !61

._crit_edge508:                                   ; preds = %.loopexit1582
  %.not392.not517.not = icmp eq i32 %i.h, 0
  br i1 %.not392.not517.not, label %.loopexit, label %.lr.ph522.preheader

.lr.ph522.preheader:                              ; preds = %._crit_edge508
  %i.xt = zext nneg i32 %.0328 to i64
  %i.xu = zext nneg i32 %i.q to i64               ; 2 uses
  %wide.trip.count764 = zext nneg i32 %i.h to i64
  %i.xv = sext i32 %i.vr to i64
  %i.xw = mul nsw i64 %i.sh, -8
  %i.xx = sub i64 %i.b, %i.a
  %i.xy = add nuw nsw i64 %i.sh, 1
  br label %iter.check1155

iter.check1155:                                   ; preds = %._crit_edge515, %.lr.ph522.preheader
  %indvar1137 = phi i64 [ %indvar.next1138, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 4 uses
  %indvars.iv759 = phi i64 [ %indvars.iv.next760, %._crit_edge515 ], [ %i.xu, %.lr.ph522.preheader ] ; 2 uses
  %indvars.iv752 = phi i64 [ %indvars.iv.next753, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 9 uses
  %.22520 = phi i64 [ %indvars.iv.next751.lcssa, %._crit_edge515 ], [ %i.xv, %.lr.ph522.preheader ] ; 7 uses
  %i.xz = mul i64 %i.xy, %indvar1137
  %i.ya = add i64 %i.xz, %i.xu
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ya, i64 %indvars.iv752)
  %i.yb = mul i64 %indvar1137, %i.sh
  %reass.sub1584 = sub i64 %umax, %i.yb
  %i.yc = add i64 %reass.sub1584, 1               ; 7 uses
  %i.yd = add nuw nsw i64 %indvars.iv752, %indvars.iv759
  %min.iters.check1139 = icmp ult i64 %i.yc, 4
  br i1 %min.iters.check1139, label %.lr.ph514.preheader, label %vector.memcheck1140

vector.memcheck1140:                              ; preds = %iter.check1155
  %i.ye = mul i64 %indvar1137, %i.xw
  %i.yf = add i64 %i.xx, %i.ye
  %i.yg = shl i64 %.22520, 3
  %i.yh = add i64 %i.yf, %i.yg
  %i.yi = add i64 %i.yh, -1
  %diff.check1141 = icmp ult i64 %i.yi, 127
  br i1 %diff.check1141, label %.lr.ph514.preheader, label %vector.main.loop.iter.check1142

vector.main.loop.iter.check1142:                  ; preds = %vector.memcheck1140
  %min.iters.check1143 = icmp ult i64 %i.yc, 16
  br i1 %min.iters.check1143, label %vec.epilog.ph1159, label %vector.ph1144

vector.ph1144:                                    ; preds = %vector.main.loop.iter.check1142
  %i.yj = and i64 %i.yc, 12
  %n.vec1145 = and i64 %i.yc, -16                 ; 5 uses
  %i.yk = add i64 %indvars.iv752, %n.vec1145
  %i.yl = add i64 %.22520, %n.vec1145             ; 2 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv752
  %i.yn = getelementptr [8 x i8], ptr %4, i64 %.22520
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.ph1144, %vector.body1146
  %index1147 = phi i64 [ 0, %vector.ph1144 ], [ %index.next1152, %vector.body1146 ] ; 3 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %index1147 ; 4 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 32
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 64
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 96
  %wide.load1148 = load <4 x double>, ptr %i.yo, align 8, !tbaa !92
  %wide.load1149 = load <4 x double>, ptr %i.yp, align 8, !tbaa !92
  %wide.load1150 = load <4 x double>, ptr %i.yq, align 8, !tbaa !92
  %wide.load1151 = load <4 x double>, ptr %i.yr, align 8, !tbaa !92
  %i.ys = getelementptr [8 x i8], ptr %i.yn, i64 %index1147 ; 4 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 32
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 96
  store <4 x double> %wide.load1148, ptr %i.ys, align 8, !tbaa !92
  store <4 x double> %wide.load1149, ptr %i.yt, align 8, !tbaa !92
  store <4 x double> %wide.load1150, ptr %i.yu, align 8, !tbaa !92
  store <4 x double> %wide.load1151, ptr %i.yv, align 8, !tbaa !92
  %index.next1152 = add nuw i64 %index1147, 16    ; 2 uses
  %i.yw = icmp eq i64 %index.next1152, %n.vec1145
  br i1 %i.yw, label %middle.block1153, label %vector.body1146, !llvm.loop !62

middle.block1153:                                 ; preds = %vector.body1146
  %cmp.n1154 = icmp eq i64 %i.yc, %n.vec1145
  br i1 %cmp.n1154, label %._crit_edge515, label %vec.epilog.iter.check1156

vec.epilog.iter.check1156:                        ; preds = %middle.block1153
  %min.epilog.iters.check1158 = icmp eq i64 %i.yj, 0
  br i1 %min.epilog.iters.check1158, label %.lr.ph514.preheader, label %vec.epilog.ph1159, !prof !96

vec.epilog.ph1159:                                ; preds = %vector.main.loop.iter.check1142, %vec.epilog.iter.check1156
  %vec.epilog.resume.val1160 = phi i64 [ %n.vec1145, %vec.epilog.iter.check1156 ], [ 0, %vector.main.loop.iter.check1142 ]
  %n.vec1161 = and i64 %i.yc, -4                  ; 4 uses
  %i.yx = add i64 %indvars.iv752, %n.vec1161
  %i.yy = add i64 %.22520, %n.vec1161             ; 2 uses
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv752
  %i.za = getelementptr [8 x i8], ptr %4, i64 %.22520
  br label %vec.epilog.vector.body1162

vec.epilog.vector.body1162:                       ; preds = %vec.epilog.vector.body1162, %vec.epilog.ph1159
  %index1163 = phi i64 [ %vec.epilog.resume.val1160, %vec.epilog.ph1159 ], [ %index.next1165, %vec.epilog.vector.body1162 ] ; 3 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %index1163
  %wide.load1164 = load <4 x double>, ptr %i.zb, align 8, !tbaa !92
  %i.zc = getelementptr [8 x i8], ptr %i.za, i64 %index1163
  store <4 x double> %wide.load1164, ptr %i.zc, align 8, !tbaa !92
  %index.next1165 = add nuw i64 %index1163, 4     ; 2 uses
  %i.zd = icmp eq i64 %index.next1165, %n.vec1161
  br i1 %i.zd, label %vec.epilog.middle.block1166, label %vec.epilog.vector.body1162, !llvm.loop !63

vec.epilog.middle.block1166:                      ; preds = %vec.epilog.vector.body1162
  %cmp.n1167 = icmp eq i64 %i.yc, %n.vec1161
  br i1 %cmp.n1167, label %._crit_edge515, label %.lr.ph514.preheader

.lr.ph514.preheader:                              ; preds = %iter.check1155, %vector.memcheck1140, %vec.epilog.iter.check1156, %vec.epilog.middle.block1166
  %indvars.iv754.ph = phi i64 [ %indvars.iv752, %iter.check1155 ], [ %indvars.iv752, %vector.memcheck1140 ], [ %i.yk, %vec.epilog.iter.check1156 ], [ %i.yx, %vec.epilog.middle.block1166 ]
  %indvars.iv750.ph = phi i64 [ %.22520, %iter.check1155 ], [ %.22520, %vector.memcheck1140 ], [ %i.yl, %vec.epilog.iter.check1156 ], [ %i.yy, %vec.epilog.middle.block1166 ]
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514.preheader, %.lr.ph514
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %.lr.ph514 ], [ %indvars.iv754.ph, %.lr.ph514.preheader ] ; 3 uses
  %indvars.iv750 = phi i64 [ %indvars.iv.next751, %.lr.ph514 ], [ %indvars.iv750.ph, %.lr.ph514.preheader ] ; 2 uses
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv754
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !92
  %i.zg = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv750
  store double %i.zf, ptr %i.zg, align 8, !tbaa !92
  %indvars.iv.next751 = add nsw i64 %indvars.iv750, 1 ; 2 uses
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1
  %.not393.not = icmp samesign ult i64 %indvars.iv754, %i.yd
  br i1 %.not393.not, label %.lr.ph514, label %._crit_edge515, !llvm.loop !64

._crit_edge515:                                   ; preds = %.lr.ph514, %vec.epilog.middle.block1166, %middle.block1153
  %indvars.iv.next751.lcssa = phi i64 [ %i.yy, %vec.epilog.middle.block1166 ], [ %i.yl, %middle.block1153 ], [ %indvars.iv.next751, %.lr.ph514 ]
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, %i.xt
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %exitcond765.not = icmp eq i64 %indvars.iv.next760, %wide.trip.count764
  %indvar.next1138 = add i64 %indvar1137, 1
  br i1 %exitcond765.not, label %.loopexit, label %iter.check1155, !llvm.loop !65

bb.v:                                             ; preds = %bb.j
  br i1 %.not379, label %.lr.ph605.preheader, label %.lr.ph582

.lr.ph582:                                        ; preds = %bb.v
  %i.zh = mul nuw nsw i32 %i.s, %.0328            ; 2 uses
  %i.zi = add nuw nsw i32 %i.s, 1
  %i.zj = zext nneg i32 %i.s to i64               ; 11 uses
  %i.zk = zext nneg i32 %i.zh to i64              ; 5 uses
  %12 = tail call i64 @llvm.umax.i64(i64 %i.zj, i64 1)
  %broadcast.splatinsert1391 = insertelement <4 x i64> poison, i64 %i.zj, i64 0
  %broadcast.splat1392 = shufflevector <4 x i64> %broadcast.splatinsert1391, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zl = shl nuw nsw <4 x i64> %broadcast.splat1392, splat (i64 2) ; 5 uses
  %i.zm = mul nuw nsw <4 x i64> %broadcast.splat1392, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1688.a = add nsw <4 x i64> %i.zl, %i.zl ; 2 uses
  %invariant.op1689 = add nsw <4 x i64> %invariant.op1688.a, %i.zl ; 2 uses
  %invariant.op1692 = add nsw <4 x i64> %invariant.op1689, %i.zl
  %broadcast.splatinsert1424 = insertelement <4 x i64> poison, i64 %i.zj, i64 0
  %broadcast.splat1425 = shufflevector <4 x i64> %broadcast.splatinsert1424, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.zn = mul nuw nsw <4 x i64> %broadcast.splat1425, <i64 0, i64 1, i64 2, i64 3>
  %i.zo = shl nuw nsw i64 %i.zj, 2
  %broadcast.splatinsert1427 = insertelement <4 x i64> poison, i64 %i.zo, i64 0
  %broadcast.splat1428 = shufflevector <4 x i64> %broadcast.splatinsert1427, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.w

.loopexit427.loopexit:                            ; preds = %.lr.ph576, %vec.epilog.middle.block1436, %middle.block1412
  %indvars.iv.next821.lcssa = phi i64 [ %i.abj, %vec.epilog.middle.block1436 ], [ %i.abc, %middle.block1412 ], [ %indvars.iv.next821, %.lr.ph576 ]
  %i.zp = trunc nsw i64 %indvars.iv.next821.lcssa to i32
  br label %.loopexit427

.loopexit427:                                     ; preds = %.loopexit427.loopexit, %bb.w
  %.25.lcssa = phi i32 [ %.24580, %bb.w ], [ %i.zp, %.loopexit427.loopexit ] ; 2 uses
  %indvars.iv.next823 = add i32 %indvars.iv822, %i.zi
  %exitcond829.not = icmp eq i32 %i.zq, %i.q
  br i1 %exitcond829.not, label %.lr.ph597, label %bb.w, !llvm.loop !66

bb.w:                                             ; preds = %.lr.ph582, %.loopexit427
  %indvars.iv822 = phi i32 [ %i.s, %.lr.ph582 ], [ %indvars.iv.next823, %.loopexit427 ] ; 3 uses
  %.24580 = phi i32 [ 0, %.lr.ph582 ], [ %.25.lcssa, %.loopexit427 ] ; 2 uses
  %.8374579 = phi i32 [ 0, %.lr.ph582 ], [ %i.zq, %.loopexit427 ] ; 2 uses
  %i.zq = add nuw nsw i32 %.8374579, 1            ; 3 uses
  %i.zr = mul nuw nsw i32 %i.zq, %i.s
  %i.zs = add nuw nsw i32 %i.zr, %.8374579
  %i.zt = icmp slt i32 %i.zs, %i.zh
  br i1 %i.zt, label %iter.check1414, label %.loopexit427

iter.check1414:                                   ; preds = %bb.w
  %i.zu = sext i32 %indvars.iv822 to i64
  %i.zv = add nsw i64 %i.zj, %i.zu                ; 3 uses
  %i.zw = icmp slt i64 %i.zv, %i.zk               ; 2 uses
  %umin1381 = zext i1 %i.zw to i64
  %smax1380 = tail call i64 @llvm.smax.i64(i64 %i.zv, i64 %i.zk)
  %i.zx = add nsw i64 %i.zv, %umin1381
  %i.zy = sub i64 %smax1380, %i.zx
  %i.zz = sext i32 %indvars.iv822 to i64          ; 9 uses
  %i.aaa = sext i32 %.24580 to i64                ; 8 uses
  %i.aab = select i1 %i.zw, i64 2, i64 1
  %i.aac = udiv i64 %i.zy, %12
  %i.aad = add i64 %i.aab, %i.aac                 ; 7 uses
  %min.iters.check1382 = icmp ult i64 %i.aad, 4
  br i1 %min.iters.check1382, label %.lr.ph576.preheader, label %vector.memcheck1383

vector.memcheck1383:                              ; preds = %iter.check1414
  %i.aae = shl nsw i64 %i.aaa, 3
  %i.aaf = getelementptr i8, ptr %4, i64 %i.aae
  %i.aag = add nsw i64 %i.zj, %i.zz               ; 3 uses
  %i.aah = tail call i64 @llvm.smax.i64(i64 %i.aag, i64 %i.zk)
  %i.aai = icmp slt i64 %i.aag, %i.zk
  %i.aaj = zext i1 %i.aai to i64                  ; 2 uses
  %i.aak = add nsw i64 %i.aag, %i.aaj
  %i.aal = sub i64 %i.aah, %i.aak
  %i.aam = udiv i64 %i.aal, %i.zj
  %i.aan = add i64 %i.aam, %i.aaj                 ; 2 uses
  %i.aao = add i64 %i.aan, %i.aaa
  %i.aap = shl i64 %i.aao, 3
  %i.aaq = getelementptr i8, ptr %4, i64 %i.aap
  %i.aar = getelementptr i8, ptr %i.aaq, i64 8
  %i.aas = shl nsw i64 %i.zz, 3
  %i.aat = getelementptr i8, ptr %3, i64 %i.aas
  %i.aau = mul i64 %i.aan, %i.zj
  %i.aav = add i64 %i.aau, %i.zz
  %i.aaw = shl i64 %i.aav, 3
  %i.aax = getelementptr i8, ptr %3, i64 %i.aaw
  %i.aay = getelementptr i8, ptr %i.aax, i64 8
  %bound01384 = icmp ult ptr %i.aaf, %i.aay
  %bound11385 = icmp ult ptr %i.aat, %i.aar
  %found.conflict1386 = and i1 %bound01384, %bound11385
  br i1 %found.conflict1386, label %.lr.ph576.preheader, label %vector.main.loop.iter.check1387

vector.main.loop.iter.check1387:                  ; preds = %vector.memcheck1383
  %min.iters.check1388 = icmp ult i64 %i.aad, 16
  br i1 %min.iters.check1388, label %vec.epilog.ph1418, label %vector.ph1389

vector.ph1389:                                    ; preds = %vector.main.loop.iter.check1387
  %i.aaz = and i64 %i.aad, 12
  %n.vec1390 = and i64 %i.aad, -16                ; 5 uses
  %i.aba = mul i64 %n.vec1390, %i.zj
  %i.abb = add i64 %i.aba, %i.zz                  ; 2 uses
  %i.abc = add i64 %n.vec1390, %i.aaa             ; 2 uses
  %broadcast.splatinsert1393 = insertelement <4 x i64> poison, i64 %i.zz, i64 0
  %broadcast.splat1394 = shufflevector <4 x i64> %broadcast.splatinsert1393, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1395 = add nsw <4 x i64> %broadcast.splat1394, %i.zm
  %invariant.gep1690 = getelementptr [8 x i8], ptr %4, i64 %i.aaa
  br label %vector.body1396

vector.body1396:                                  ; preds = %vector.ph1389, %vector.body1396
  %index1397 = phi i64 [ 0, %vector.ph1389 ], [ %index.next1410, %vector.body1396 ] ; 2 uses
  %vec.ind1398 = phi <4 x i64> [ %induction1395, %vector.ph1389 ], [ %vec.ind.next1411.reass, %vector.body1396 ] ; 5 uses
  %step.add1399 = add nsw <4 x i64> %vec.ind1398, %i.zl
  %step.add.21400.reass = add nsw <4 x i64> %vec.ind1398, %invariant.op1688.a
  %step.add.31401.reass = add nsw <4 x i64> %vec.ind1398, %invariant.op1689
  %wide.gep1402 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %vec.ind1398
  %wide.gep1403 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add1399
  %wide.gep1404 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add.21400.reass
  %wide.gep1405 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add.31401.reass
  %wide.masked.gather1406 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1402, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %wide.masked.gather1407 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1403, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %wide.masked.gather1408 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1404, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %wide.masked.gather1409 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1405, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %gep1691 = getelementptr [8 x i8], ptr %invariant.gep1690, i64 %index1397 ; 4 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %gep1691, i64 32
  %i.abe = getelementptr inbounds nuw i8, ptr %gep1691, i64 64
  %i.abf = getelementptr inbounds nuw i8, ptr %gep1691, i64 96
  store <4 x double> %wide.masked.gather1406, ptr %gep1691, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  store <4 x double> %wide.masked.gather1407, ptr %i.abd, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  store <4 x double> %wide.masked.gather1408, ptr %i.abe, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  store <4 x double> %wide.masked.gather1409, ptr %i.abf, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  %index.next1410 = add nuw i64 %index1397, 16    ; 2 uses
  %vec.ind.next1411.reass = add nsw <4 x i64> %vec.ind1398, %invariant.op1692
  %i.abg = icmp eq i64 %index.next1410, %n.vec1390
  br i1 %i.abg, label %middle.block1412, label %vector.body1396, !llvm.loop !70

middle.block1412:                                 ; preds = %vector.body1396
  %cmp.n1413 = icmp eq i64 %i.aad, %n.vec1390
  br i1 %cmp.n1413, label %.loopexit427.loopexit, label %vec.epilog.iter.check1415

vec.epilog.iter.check1415:                        ; preds = %middle.block1412
  %min.epilog.iters.check1417 = icmp eq i64 %i.aaz, 0
  br i1 %min.epilog.iters.check1417, label %.lr.ph576.preheader, label %vec.epilog.ph1418, !prof !96

vec.epilog.ph1418:                                ; preds = %vector.main.loop.iter.check1387, %vec.epilog.iter.check1415
  %vec.epilog.resume.val1419 = phi i64 [ %n.vec1390, %vec.epilog.iter.check1415 ], [ 0, %vector.main.loop.iter.check1387 ]
  %bc.resume.val1420 = phi i64 [ %i.abb, %vec.epilog.iter.check1415 ], [ %i.zz, %vector.main.loop.iter.check1387 ]
  %n.vec1421 = and i64 %i.aad, -4                 ; 4 uses
  %i.abh = mul i64 %n.vec1421, %i.zj
  %i.abi = add i64 %i.abh, %i.zz
  %i.abj = add i64 %n.vec1421, %i.aaa             ; 2 uses
  %broadcast.splatinsert1422 = insertelement <4 x i64> poison, i64 %bc.resume.val1420, i64 0
  %broadcast.splat1423 = shufflevector <4 x i64> %broadcast.splatinsert1422, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1426 = add nsw <4 x i64> %broadcast.splat1423, %i.zn
  %invariant.gep1693 = getelementptr [8 x i8], ptr %4, i64 %i.aaa
  br label %vec.epilog.vector.body1429

vec.epilog.vector.body1429:                       ; preds = %vec.epilog.vector.body1429, %vec.epilog.ph1418
  %index1430 = phi i64 [ %vec.epilog.resume.val1419, %vec.epilog.ph1418 ], [ %index.next1434, %vec.epilog.vector.body1429 ] ; 2 uses
  %vec.ind1431 = phi <4 x i64> [ %induction1426, %vec.epilog.ph1418 ], [ %vec.ind.next1435, %vec.epilog.vector.body1429 ] ; 2 uses
  %wide.gep1432 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %vec.ind1431
  %wide.masked.gather1433 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1432, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %gep1694 = getelementptr [8 x i8], ptr %invariant.gep1693, i64 %index1430
  store <4 x double> %wide.masked.gather1433, ptr %gep1694, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  %index.next1434 = add nuw i64 %index1430, 4     ; 2 uses
  %vec.ind.next1435 = add nsw <4 x i64> %vec.ind1431, %broadcast.splat1428
  %i.abk = icmp eq i64 %index.next1434, %n.vec1421
  br i1 %i.abk, label %vec.epilog.middle.block1436, label %vec.epilog.vector.body1429, !llvm.loop !71

vec.epilog.middle.block1436:                      ; preds = %vec.epilog.vector.body1429
  %cmp.n1437 = icmp eq i64 %i.aad, %n.vec1421
  br i1 %cmp.n1437, label %.loopexit427.loopexit, label %.lr.ph576.preheader

.lr.ph576.preheader:                              ; preds = %iter.check1414, %vector.memcheck1383, %vec.epilog.iter.check1415, %vec.epilog.middle.block1436
  %indvars.iv824.ph = phi i64 [ %i.zz, %iter.check1414 ], [ %i.zz, %vector.memcheck1383 ], [ %i.abb, %vec.epilog.iter.check1415 ], [ %i.abi, %vec.epilog.middle.block1436 ]
  %indvars.iv820.ph = phi i64 [ %i.aaa, %iter.check1414 ], [ %i.aaa, %vector.memcheck1383 ], [ %i.abc, %vec.epilog.iter.check1415 ], [ %i.abj, %vec.epilog.middle.block1436 ]
  br label %.lr.ph576

.lr.ph576:                                        ; preds = %.lr.ph576.preheader, %.lr.ph576
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %.lr.ph576 ], [ %indvars.iv824.ph, %.lr.ph576.preheader ] ; 2 uses
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %.lr.ph576 ], [ %indvars.iv820.ph, %.lr.ph576.preheader ] ; 2 uses
  %i.abl = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv824
  %i.abm = load double, ptr %i.abl, align 8, !tbaa !92
  %i.abn = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv820
  store double %i.abm, ptr %i.abn, align 8, !tbaa !92
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, 1 ; 2 uses
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, %i.zj ; 2 uses
  %i.abo = icmp slt i64 %indvars.iv.next825, %i.zk
  br i1 %i.abo, label %.lr.ph576, label %.loopexit427.loopexit, !llvm.loop !72

.lr.ph597:                                        ; preds = %.loopexit427
  %i.abp = add nuw nsw i32 %i.s, 1
  %13 = sub i64 %i.b, %i.a
  %invariant.op1708 = add i64 %13, -1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph597, %._crit_edge590
  %indvars.iv840 = phi i32 [ %i.q, %.lr.ph597 ], [ %indvars.iv.next841, %._crit_edge590 ] ; 3 uses
  %indvars.iv833 = phi i32 [ 0, %.lr.ph597 ], [ %indvars.iv.next834, %._crit_edge590 ] ; 4 uses
  %.26595 = phi i32 [ %.25.lcssa, %.lr.ph597 ], [ %.27.lcssa, %._crit_edge590 ] ; 2 uses
  %.10364593 = phi i32 [ 0, %.lr.ph597 ], [ %i.aei, %._crit_edge590 ] ; 3 uses
  %i.abq = xor i32 %.10364593, -1
  %i.abr = add nsw i32 %i.q, %i.abq               ; 3 uses
  %i.abs = zext i32 %i.abr to i64
  %i.abt = add nuw nsw i64 %i.abs, 1              ; 5 uses
  %i.abu = xor i32 %.10364593, -1
  %i.abv = add nsw i32 %i.q, %i.abu
  %i.abw = add i32 %i.abv, %indvars.iv833         ; 2 uses
  %.not389585 = icmp sgt i32 %indvars.iv833, %i.abw
  br i1 %.not389585, label %._crit_edge590, label %iter.check1458

iter.check1458:                                   ; preds = %bb.x
  %i.abx = sext i32 %indvars.iv833 to i64         ; 7 uses
  %i.aby = sext i32 %.26595 to i64                ; 7 uses
  %min.iters.check1442 = icmp ult i32 %i.abr, 3
  br i1 %min.iters.check1442, label %.lr.ph589.preheader, label %vector.memcheck1443

vector.memcheck1443:                              ; preds = %iter.check1458
  %14 = sub nsw i64 %i.aby, %i.abx
  %i.abz = shl nsw i64 %14, 3
  %i.aca = add i64 %i.abz, %invariant.op1708
  %diff.check1444 = icmp ult i64 %i.aca, 127
  br i1 %diff.check1444, label %.lr.ph589.preheader, label %vector.main.loop.iter.check1445

vector.main.loop.iter.check1445:                  ; preds = %vector.memcheck1443
  %min.iters.check1446 = icmp ult i32 %i.abr, 15
  br i1 %min.iters.check1446, label %vec.epilog.ph1462, label %vector.ph1447

vector.ph1447:                                    ; preds = %vector.main.loop.iter.check1445
  %i.acb = and i64 %i.abt, 12
  %n.vec1448 = and i64 %i.abt, 8589934576         ; 5 uses
  %i.acc = add nsw i64 %n.vec1448, %i.abx
  %i.acd = add nsw i64 %n.vec1448, %i.aby         ; 2 uses
  %invariant.gep1695 = getelementptr [8 x i8], ptr %3, i64 %i.abx
  %invariant.gep1697 = getelementptr [8 x i8], ptr %4, i64 %i.aby
  br label %vector.body1449

vector.body1449:                                  ; preds = %vector.ph1447, %vector.body1449
  %index1450 = phi i64 [ 0, %vector.ph1447 ], [ %index.next1455, %vector.body1449 ] ; 3 uses
  %gep1696 = getelementptr [8 x i8], ptr %invariant.gep1695, i64 %index1450 ; 4 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %gep1696, i64 32
  %i.acf = getelementptr inbounds nuw i8, ptr %gep1696, i64 64
  %i.acg = getelementptr inbounds nuw i8, ptr %gep1696, i64 96
  %wide.load1451 = load <4 x double>, ptr %gep1696, align 8, !tbaa !92
  %wide.load1452 = load <4 x double>, ptr %i.ace, align 8, !tbaa !92
  %wide.load1453 = load <4 x double>, ptr %i.acf, align 8, !tbaa !92
  %wide.load1454 = load <4 x double>, ptr %i.acg, align 8, !tbaa !92
  %gep1698 = getelementptr [8 x i8], ptr %invariant.gep1697, i64 %index1450 ; 4 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %gep1698, i64 32
  %i.aci = getelementptr inbounds nuw i8, ptr %gep1698, i64 64
  %i.acj = getelementptr inbounds nuw i8, ptr %gep1698, i64 96
  store <4 x double> %wide.load1451, ptr %gep1698, align 8, !tbaa !92
  store <4 x double> %wide.load1452, ptr %i.ach, align 8, !tbaa !92
  store <4 x double> %wide.load1453, ptr %i.aci, align 8, !tbaa !92
  store <4 x double> %wide.load1454, ptr %i.acj, align 8, !tbaa !92
  %index.next1455 = add nuw i64 %index1450, 16    ; 2 uses
  %i.ack = icmp eq i64 %index.next1455, %n.vec1448
  br i1 %i.ack, label %middle.block1456, label %vector.body1449, !llvm.loop !73

middle.block1456:                                 ; preds = %vector.body1449
  %cmp.n1457 = icmp eq i64 %i.abt, %n.vec1448
  br i1 %cmp.n1457, label %._crit_edge590.loopexit, label %vec.epilog.iter.check1459

vec.epilog.iter.check1459:                        ; preds = %middle.block1456
  %min.epilog.iters.check1461 = icmp eq i64 %i.acb, 0
  br i1 %min.epilog.iters.check1461, label %.lr.ph589.preheader, label %vec.epilog.ph1462, !prof !96

vec.epilog.ph1462:                                ; preds = %vector.main.loop.iter.check1445, %vec.epilog.iter.check1459
  %vec.epilog.resume.val1463 = phi i64 [ %n.vec1448, %vec.epilog.iter.check1459 ], [ 0, %vector.main.loop.iter.check1445 ]
  %n.vec1464 = and i64 %i.abt, 8589934588         ; 4 uses
  %i.acl = add nsw i64 %n.vec1464, %i.abx
  %i.acm = add nsw i64 %n.vec1464, %i.aby         ; 2 uses
  %invariant.gep1699 = getelementptr [8 x i8], ptr %3, i64 %i.abx
  %invariant.gep1701 = getelementptr [8 x i8], ptr %4, i64 %i.aby
  br label %vec.epilog.vector.body1465

vec.epilog.vector.body1465:                       ; preds = %vec.epilog.vector.body1465, %vec.epilog.ph1462
  %index1466 = phi i64 [ %vec.epilog.resume.val1463, %vec.epilog.ph1462 ], [ %index.next1468, %vec.epilog.vector.body1465 ] ; 3 uses
  %gep1700 = getelementptr [8 x i8], ptr %invariant.gep1699, i64 %index1466
  %wide.load1467 = load <4 x double>, ptr %gep1700, align 8, !tbaa !92
  %gep1702 = getelementptr [8 x i8], ptr %invariant.gep1701, i64 %index1466
  store <4 x double> %wide.load1467, ptr %gep1702, align 8, !tbaa !92
  %index.next1468 = add nuw i64 %index1466, 4     ; 2 uses
  %i.acn = icmp eq i64 %index.next1468, %n.vec1464
  br i1 %i.acn, label %vec.epilog.middle.block1469, label %vec.epilog.vector.body1465, !llvm.loop !74

vec.epilog.middle.block1469:                      ; preds = %vec.epilog.vector.body1465
  %cmp.n1470 = icmp eq i64 %i.abt, %n.vec1464
  br i1 %cmp.n1470, label %._crit_edge590.loopexit, label %.lr.ph589.preheader

.lr.ph589.preheader:                              ; preds = %iter.check1458, %vector.memcheck1443, %vec.epilog.iter.check1459, %vec.epilog.middle.block1469
  %indvars.iv835.ph = phi i64 [ %i.abx, %iter.check1458 ], [ %i.abx, %vector.memcheck1443 ], [ %i.acc, %vec.epilog.iter.check1459 ], [ %i.acl, %vec.epilog.middle.block1469 ] ; 3 uses
  %indvars.iv831.ph = phi i64 [ %i.aby, %iter.check1458 ], [ %i.aby, %vector.memcheck1443 ], [ %i.acd, %vec.epilog.iter.check1459 ], [ %i.acm, %vec.epilog.middle.block1469 ] ; 2 uses
  %i.aco = trunc i64 %indvars.iv835.ph to i32     ; 2 uses
  %i.acp = sub i32 %indvars.iv840, %i.aco
  %i.acq = sub i32 %i.abw, %i.aco
  %xtraiter1631 = and i32 %i.acp, 7               ; 2 uses
  %lcmp.mod1632.not = icmp eq i32 %xtraiter1631, 0
  br i1 %lcmp.mod1632.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol

.lr.ph589.prol:                                   ; preds = %.lr.ph589.preheader, %.lr.ph589.prol
  %indvars.iv835.prol = phi i64 [ %indvars.iv.next836.prol, %.lr.ph589.prol ], [ %indvars.iv835.ph, %.lr.ph589.preheader ] ; 2 uses
  %indvars.iv831.prol = phi i64 [ %indvars.iv.next832.prol, %.lr.ph589.prol ], [ %indvars.iv831.ph, %.lr.ph589.preheader ] ; 2 uses
  %prol.iter1633 = phi i32 [ %prol.iter1633.next, %.lr.ph589.prol ], [ 0, %.lr.ph589.preheader ]
  %i.acr = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv835.prol
  %i.acs = load double, ptr %i.acr, align 8, !tbaa !92
  %i.act = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv831.prol
  store double %i.acs, ptr %i.act, align 8, !tbaa !92
  %indvars.iv.next832.prol = add nsw i64 %indvars.iv831.prol, 1 ; 3 uses
  %indvars.iv.next836.prol = add nsw i64 %indvars.iv835.prol, 1 ; 2 uses
  %prol.iter1633.next = add i32 %prol.iter1633, 1 ; 2 uses
  %prol.iter1633.cmp.not = icmp eq i32 %prol.iter1633.next, %xtraiter1631
  br i1 %prol.iter1633.cmp.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol, !llvm.loop !75

.lr.ph589.prol.loopexit:                          ; preds = %.lr.ph589.prol, %.lr.ph589.preheader
  %indvars.iv.next832.lcssa1593.unr = phi i64 [ poison, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %indvars.iv835.unr = phi i64 [ %indvars.iv835.ph, %.lr.ph589.preheader ], [ %indvars.iv.next836.prol, %.lr.ph589.prol ]
  %indvars.iv831.unr = phi i64 [ %indvars.iv831.ph, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %i.acu = icmp ult i32 %i.acq, 7
  br i1 %i.acu, label %._crit_edge590.loopexit, label %.lr.ph589

.lr.ph589:                                        ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589
  %indvars.iv835 = phi i64 [ %indvars.iv.next836.7, %.lr.ph589 ], [ %indvars.iv835.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %indvars.iv831 = phi i64 [ %indvars.iv.next832.7, %.lr.ph589 ], [ %indvars.iv831.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %i.acv = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv835
  %i.acw = load double, ptr %i.acv, align 8, !tbaa !92
  %i.acx = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv831
  store double %i.acw, ptr %i.acx, align 8, !tbaa !92
  %i.acy = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.acz = getelementptr i8, ptr %i.acy, i64 8
  %i.ada = load double, ptr %i.acz, align 8, !tbaa !92
  %i.adb = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adc = getelementptr i8, ptr %i.adb, i64 8
  store double %i.ada, ptr %i.adc, align 8, !tbaa !92
  %i.add = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.ade = getelementptr i8, ptr %i.add, i64 16
  %i.adf = load double, ptr %i.ade, align 8, !tbaa !92
  %i.adg = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adh = getelementptr i8, ptr %i.adg, i64 16
  store double %i.adf, ptr %i.adh, align 8, !tbaa !92
  %i.adi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.adj = getelementptr i8, ptr %i.adi, i64 24
  %i.adk = load double, ptr %i.adj, align 8, !tbaa !92
  %i.adl = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adm = getelementptr i8, ptr %i.adl, i64 24
  store double %i.adk, ptr %i.adm, align 8, !tbaa !92
  %i.adn = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.ado = getelementptr i8, ptr %i.adn, i64 32
  %i.adp = load double, ptr %i.ado, align 8, !tbaa !92
  %i.adq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adr = getelementptr i8, ptr %i.adq, i64 32
  store double %i.adp, ptr %i.adr, align 8, !tbaa !92
  %i.ads = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.adt = getelementptr i8, ptr %i.ads, i64 40
  %i.adu = load double, ptr %i.adt, align 8, !tbaa !92
  %i.adv = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adw = getelementptr i8, ptr %i.adv, i64 40
  store double %i.adu, ptr %i.adw, align 8, !tbaa !92
  %i.adx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.ady = getelementptr i8, ptr %i.adx, i64 48
  %i.adz = load double, ptr %i.ady, align 8, !tbaa !92
  %i.aea = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.aeb = getelementptr i8, ptr %i.aea, i64 48
  store double %i.adz, ptr %i.aeb, align 8, !tbaa !92
  %i.aec = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.aed = getelementptr i8, ptr %i.aec, i64 56
  %i.aee = load double, ptr %i.aed, align 8, !tbaa !92
  %i.aef = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.aeg = getelementptr i8, ptr %i.aef, i64 56
  store double %i.aee, ptr %i.aeg, align 8, !tbaa !92
  %indvars.iv.next832.7 = add nsw i64 %indvars.iv831, 8 ; 2 uses
  %indvars.iv.next836.7 = add nsw i64 %indvars.iv835, 8 ; 2 uses
  %lftr.wideiv842.7 = trunc i64 %indvars.iv.next836.7 to i32
  %exitcond843.not.7 = icmp eq i32 %indvars.iv840, %lftr.wideiv842.7
  br i1 %exitcond843.not.7, label %._crit_edge590.loopexit, label %.lr.ph589, !llvm.loop !76

._crit_edge590.loopexit:                          ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589, %vec.epilog.middle.block1469, %middle.block1456
  %indvars.iv.next832.lcssa = phi i64 [ %i.acm, %vec.epilog.middle.block1469 ], [ %i.acd, %middle.block1456 ], [ %indvars.iv.next832.lcssa1593.unr, %.lr.ph589.prol.loopexit ], [ %indvars.iv.next832.7, %.lr.ph589 ]
  %i.aeh = trunc nsw i64 %indvars.iv.next832.lcssa to i32
  br label %._crit_edge590

._crit_edge590:                                   ; preds = %._crit_edge590.loopexit, %bb.x
  %.27.lcssa = phi i32 [ %.26595, %bb.x ], [ %i.aeh, %._crit_edge590.loopexit ]
  %indvars.iv.next834 = add i32 %indvars.iv833, %i.abp
  %i.aei = add nuw nsw i32 %.10364593, 1          ; 2 uses
  %indvars.iv.next841 = add i32 %indvars.iv840, %i.s
  %exitcond844.not = icmp eq i32 %i.aei, %i.q
  br i1 %exitcond844.not, label %.loopexit, label %bb.x, !llvm.loop !77

.lr.ph605.preheader:                              ; preds = %bb.v
  %i.aej = add nuw nsw i32 %i.q, 1
  %i.aek = mul i32 %i.aej, %i.s
  %i.ael = sext i32 %i.aek to i64                 ; 4 uses
  %i.aem = zext nneg i32 %i.s to i64              ; 14 uses
  %wide.trip.count860 = zext nneg i32 %i.q to i64
  %i.aen = mul nsw i64 %i.aem, -8
  %i.aeo = shl nsw i64 %i.ael, 3
  %i.aep = add i64 %i.aeo, %i.a
  %i.aeq = sub i64 %i.b, %i.aep
  %i.aer = add nuw nsw i64 %i.aem, 1
  %i.aes = sub nsw i64 0, %i.aem                  ; 2 uses
  %invariant.op1703 = sub i64 1, %i.ael
  br label %iter.check1492

iter.check1492:                                   ; preds = %.lr.ph605.preheader, %.loopexit1580
  %indvars.iv855 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next856, %.loopexit1580 ] ; 5 uses
  %indvars.iv848 = phi i64 [ %i.ael, %.lr.ph605.preheader ], [ %indvars.iv.next849, %.loopexit1580 ] ; 9 uses
  %.28603 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next847.lcssa, %.loopexit1580 ] ; 7 uses
  %i.aet = mul i64 %i.aer, %indvars.iv855
  %i.aeu = add i64 %i.aet, %i.ael
  %smax1475 = tail call i64 @llvm.smax.i64(i64 %indvars.iv848, i64 %i.aeu)
  %i.aev = mul i64 %indvars.iv855, %i.aes
  %.reass = add i64 %i.aev, %invariant.op1703
  %i.aew = add i64 %smax1475, %.reass             ; 7 uses
  %i.aex = add nsw i64 %indvars.iv848, %indvars.iv855
  %min.iters.check1476 = icmp ult i64 %i.aew, 4
  br i1 %min.iters.check1476, label %vec.epilog.scalar.ph1494.preheader, label %vector.memcheck1477

vector.memcheck1477:                              ; preds = %iter.check1492
  %i.aey = mul i64 %indvars.iv855, %i.aen
  %i.aez = add i64 %i.aeq, %i.aey
  %i.afa = shl i64 %.28603, 3
end_hunk_2
