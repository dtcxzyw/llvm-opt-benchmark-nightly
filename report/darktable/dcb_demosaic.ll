Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dcb_demosaic?download=true
inline.NumInlined: 49
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6LibRaw14dcb_color_fullEv:bb.a
  %i.bh = sub nsw i64 28, %i.ai
  %scevgep3967 = getelementptr i8, ptr %i.k, i64 %i.bh
  %i.bi = getelementptr i8, ptr %i.k, i64 %i.an
  %scevgep3969 = getelementptr i8, ptr %i.bi, i64 -8
  %i.bj = getelementptr i8, ptr %i.k, i64 %i.an
  %scevgep3971 = getelementptr i8, ptr %i.bj, i64 -4
  %i.bk = getelementptr i8, ptr %i.k, i64 %i.ai
  %scevgep3973 = getelementptr i8, ptr %i.bk, i64 -24
  %i.bl = getelementptr i8, ptr %i.k, i64 %i.ai
  %scevgep3975 = getelementptr i8, ptr %i.bl, i64 -20
  %i.bm = getelementptr i8, ptr %i.k, i64 %i.an
  %scevgep3977 = getelementptr i8, ptr %i.bm, i64 8
  %i.bn = getelementptr i8, ptr %i.k, i64 %i.an
  %scevgep3979 = getelementptr i8, ptr %i.bn, i64 12
  %i.bo = getelementptr i8, ptr %i.k, i64 %i.ai
  %scevgep3981 = getelementptr i8, ptr %i.bo, i64 24
  %i.bp = getelementptr i8, ptr %i.k, i64 %i.ai
  %scevgep3983 = getelementptr i8, ptr %i.bp, i64 28
  %i.bq = add nsw i32 %i.d, -7
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph3687, %._crit_edge
  %indvars.iv = phi i32 [ %i.t, %.lr.ph3687 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.031003685 = phi i32 [ 1, %.lr.ph3687 ], [ %i.dm, %._crit_edge ] ; 3 uses
  %i.br = shl nuw nsw i32 %.031003685, 1
  %i.bs = and i32 %i.br, 14                       ; 2 uses
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = or disjoint i32 %i.bt, 2
  %i.bv = lshr i32 %i.p, %i.bu
  %i.bw = and i32 %i.bv, 1                        ; 3 uses
  %i.bx = add nuw nsw i32 %i.bw, 1                ; 4 uses
  %i.by = icmp slt i32 %i.bx, %i.s
  br i1 %i.by, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.bz = and i32 %i.bx, 1
  %i.ca = or disjoint i32 %i.bz, %i.bs
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = lshr i32 %i.p, %i.cb
  %i.cd = and i32 %i.cc, 3                        ; 2 uses
  %.cmp = icmp samesign ugt i32 %i.cd, 1
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %i.cf = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.cg = zext i1 %.cmp to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cg ; 2 uses
  %i.ch = add i32 %indvars.iv, %i.bw
  %i.ci = zext i32 %i.ch to i64                   ; 4 uses
  %i.cj = sub nsw i32 %i.v, %i.bw                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.cj, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.ck = lshr i32 %i.cj, 1
  %narrow = add nuw i32 %i.ck, 1
  %i.cl = zext i32 %narrow to i64                 ; 2 uses
  %i.cm = and i64 %i.cl, 7                        ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = select i1 %i.cn, i64 8, i64 %i.cm
  %n.vec = sub nsw i64 %i.cl, %i.co               ; 3 uses
  %i.cp = shl nsw i64 %n.vec, 1
  %i.cq = add nsw i64 %i.cp, %i.ci
  %i.cr = trunc i64 %n.vec to i32
  %i.cs = shl i32 %i.cr, 1
  %i.ct = add i32 %i.bx, %i.cs
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4347 = getelementptr [8 x i8], ptr %i.ce, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %gep4348 = getelementptr i8, ptr %invariant.gep4347, i64 %.idx ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %gep4348, i64 %i.cf
  %wide.vec = load <64 x i16>, ptr %i.cu, align 2, !tbaa !82
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cv = zext <8 x i16> %strided.vec to <8 x i32>
  %i.cw = getelementptr inbounds nuw i8, ptr %gep4348, i64 2
  %wide.vec3916 = load <64 x i16>, ptr %i.cw, align 2, !tbaa !82
  %strided.vec3917 = shufflevector <64 x i16> %wide.vec3916, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cx = zext <8 x i16> %strided.vec3917 to <8 x i32>
  %i.cy = sub nsw <8 x i32> %i.cv, %i.cx
  %i.cz = sitofp reassoc nsz arcp contract afn <8 x i32> %i.cy to <8 x float>
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, <8 x i64> %vec.ind
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cz, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %scalar.ph.preheader, label %vector.body, !llvm.loop !215

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv3714.ph = phi i64 [ %i.ci, %.lr.ph ], [ %i.cq, %vector.body ]
  %.030963683.ph = phi i32 [ %i.bx, %.lr.ph ], [ %i.ct, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv3714 = phi i64 [ %indvars.iv.next3715, %scalar.ph ], [ %indvars.iv3714.ph, %scalar.ph.preheader ] ; 3 uses
  %.030963683 = phi i32 [ %i.dk, %scalar.ph ], [ %.030963683.ph, %scalar.ph.preheader ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv3714 ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.cf
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !82
  %i.de = zext i16 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !82
  %i.dh = zext i16 %i.dg to i32
  %i.di = sub nsw i32 %i.de, %i.dh
  %i.dj = sitofp reassoc nsz arcp contract afn i32 %i.di to float
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv3714
  store float %i.dj, ptr %gep, align 4, !tbaa !83
  %i.dk = add nuw nsw i32 %.030963683, 2          ; 2 uses
  %indvars.iv.next3715 = add nuw nsw i64 %indvars.iv3714, 2
  %i.dl = icmp slt i32 %i.dk, %i.s
  br i1 %i.dl, label %scalar.ph, label %._crit_edge, !llvm.loop !216

._crit_edge:                                      ; preds = %scalar.ph, %bb.b
  %i.dm = add nuw nsw i32 %.031003685, 1
  %indvars.iv.next = add nuw i32 %indvars.iv, %i.r
  %exitcond.not = icmp eq i32 %.031003685, %i.u
  br i1 %exitcond.not, label %.preheader3681, label %bb.b, !llvm.loop !217

.lr.ph3705:                                       ; preds = %._crit_edge3692
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !81 ; 2 uses
  %i.dp = load i16, ptr %i.b, align 2, !tbaa !79
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %i.dr = add nsw i32 %i.d, -3                    ; 2 uses
  %i.ds = mul nuw nsw i32 %i.dq, 3
  %i.dt = add nuw nsw i32 %i.ds, 3
  %i.du = zext nneg i32 %i.e to i64               ; 3 uses
  %i.dv = zext i16 %i.c to i64                    ; 3 uses
  %invariant.gep3875 = getelementptr [8 x i8], ptr %i.k, i64 %i.dv ; 2 uses
  %invariant.gep3877 = getelementptr [8 x i8], ptr %i.k, i64 %i.du ; 2 uses
  %scevgep4094 = getelementptr i8, ptr %i.k, i64 4
  %i.dw = add nsw i32 %i.d, -7
  %scevgep4097 = getelementptr i8, ptr %i.k, i64 4
  %i.dx = mul nsw i64 %i.ag, -8                   ; 2 uses
  %scevgep4099 = getelementptr i8, ptr %i.k, i64 %i.dx
  %i.dy = shl nuw nsw i64 %i.ag, 3                ; 4 uses
  %i.dz = sub nsw i64 4, %i.dy                    ; 2 uses
  %scevgep4101 = getelementptr i8, ptr %i.k, i64 %i.dz
  %scevgep4103 = getelementptr i8, ptr %i.k, i64 %i.dy
  %i.ea = or disjoint i64 %i.dy, 4                ; 2 uses
  %scevgep4105 = getelementptr i8, ptr %i.k, i64 %i.ea
  %i.eb = mul nsw i64 %i.ag, -24                  ; 2 uses
  %scevgep4107 = getelementptr i8, ptr %i.k, i64 %i.eb
  %i.ec = mul nuw nsw i64 %i.ag, 24               ; 4 uses
  %i.ed = sub nsw i64 4, %i.ec                    ; 2 uses
  %scevgep4109 = getelementptr i8, ptr %i.k, i64 %i.ed
  %scevgep4111 = getelementptr i8, ptr %i.k, i64 8
  %scevgep4113 = getelementptr i8, ptr %i.k, i64 12
  %scevgep4115 = getelementptr i8, ptr %i.k, i64 -8
  %scevgep4117 = getelementptr i8, ptr %i.k, i64 -4
  %scevgep4119 = getelementptr i8, ptr %i.k, i64 24
  %scevgep4121 = getelementptr i8, ptr %i.k, i64 28
  %scevgep4123 = getelementptr i8, ptr %i.k, i64 -24
  %scevgep4125 = getelementptr i8, ptr %i.k, i64 -20
  %scevgep4127 = getelementptr i8, ptr %i.k, i64 %i.ec
  %i.ee = or disjoint i64 %i.ec, 4                ; 2 uses
  %scevgep4129 = getelementptr i8, ptr %i.k, i64 %i.ee
  %scevgep4131 = getelementptr i8, ptr %i.k, i64 %i.dx
  %scevgep4133 = getelementptr i8, ptr %i.k, i64 %i.dz
  %scevgep4135 = getelementptr i8, ptr %i.k, i64 %i.dy
  %scevgep4137 = getelementptr i8, ptr %i.k, i64 %i.ea
  %scevgep4139 = getelementptr i8, ptr %i.k, i64 %i.eb
  %scevgep4141 = getelementptr i8, ptr %i.k, i64 %i.ed
  %scevgep4143 = getelementptr i8, ptr %i.k, i64 8
  %scevgep4145 = getelementptr i8, ptr %i.k, i64 12
  %scevgep4147 = getelementptr i8, ptr %i.k, i64 -8
  %scevgep4149 = getelementptr i8, ptr %i.k, i64 -4
  %scevgep4151 = getelementptr i8, ptr %i.k, i64 24
  %scevgep4153 = getelementptr i8, ptr %i.k, i64 28
  %scevgep4155 = getelementptr i8, ptr %i.k, i64 -24
  %scevgep4157 = getelementptr i8, ptr %i.k, i64 -20
  %scevgep4159 = getelementptr i8, ptr %i.k, i64 %i.ec
  %scevgep4161 = getelementptr i8, ptr %i.k, i64 %i.ee
  %i.ef = add nsw i32 %i.d, -7
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph3696, %._crit_edge3692
  %indvars.iv3717 = phi i32 [ %i.ae, %.lr.ph3696 ], [ %indvars.iv.next3718, %._crit_edge3692 ] ; 2 uses
  %.131013695 = phi i32 [ 3, %.lr.ph3696 ], [ %i.lo, %._crit_edge3692 ] ; 2 uses
  %i.eg = shl nuw nsw i32 %.131013695, 1
  %i.eh = and i32 %i.eg, 14                       ; 2 uses
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = or disjoint i32 %i.ei, 2
  %i.ek = lshr i32 %i.z, %i.ej
  %i.el = and i32 %i.ek, 1                        ; 4 uses
  %i.em = add nuw nsw i32 %i.el, 3                ; 5 uses
  %i.en = icmp slt i32 %i.em, %i.ac
  br i1 %i.en, label %.lr.ph3691, label %._crit_edge3692

.lr.ph3691:                                       ; preds = %bb.c
  %i.eo = and i32 %i.em, 1
  %i.ep = or disjoint i32 %i.eo, %i.eh
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = shl nuw i32 2, %i.eq
  %i.es = and i32 %i.er, %i.z
  %.neg3499.cmp.not = icmp eq i32 %i.es, 0        ; 2 uses
  %i.et = zext i1 %.neg3499.cmp.not to i64        ; 33 uses
  %invariant.gep3693 = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.et ; 2 uses
  %i.eu = add i32 %indvars.iv3717, %i.el
  %i.ev = sext i32 %i.eu to i64                   ; 6 uses
  %i.ew = sub nsw i32 %i.bq, %i.el                ; 2 uses
  %i.ex = lshr i32 %i.ew, 1
  %narrow4344 = add nuw i32 %i.ex, 1
  %i.ey = zext i32 %narrow4344 to i64             ; 2 uses
  %min.iters.check4045 = icmp ult i32 %i.ew, 16
  br i1 %min.iters.check4045, label %scalar.ph4044.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph3691
  %i.ez = shl nsw i64 %i.ev, 3                    ; 2 uses
  %i.fa = select i1 %.neg3499.cmp.not, i64 4, i64 0 ; 2 uses
  %i.fb = or disjoint i64 %i.ez, %i.fa            ; 17 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.fb ; 16 uses
  %i.fc = sub nsw i32 %i.ah, %i.el
  %i.fd = lshr i32 %i.fc, 1
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 4
  %i.fg = add nsw i64 %i.ff, %i.ez
  %i.fh = or disjoint i64 %i.fg, %i.fa            ; 17 uses
  %scevgep3920 = getelementptr i8, ptr %scevgep3919, i64 %i.fh ; 16 uses
  %scevgep3922 = getelementptr i8, ptr %scevgep3921, i64 %i.fb
  %scevgep3924 = getelementptr i8, ptr %scevgep3923, i64 %i.fh
  %scevgep3926 = getelementptr i8, ptr %scevgep3925, i64 %i.fb
  %scevgep3928 = getelementptr i8, ptr %scevgep3927, i64 %i.fh
  %scevgep3930 = getelementptr i8, ptr %scevgep3929, i64 %i.fb
  %scevgep3932 = getelementptr i8, ptr %scevgep3931, i64 %i.fh
  %scevgep3934 = getelementptr i8, ptr %scevgep3933, i64 %i.fb
  %scevgep3936 = getelementptr i8, ptr %scevgep3935, i64 %i.fh
  %scevgep3938 = getelementptr i8, ptr %scevgep3937, i64 %i.fb
  %scevgep3940 = getelementptr i8, ptr %scevgep3939, i64 %i.fh
  %scevgep3942 = getelementptr i8, ptr %scevgep3941, i64 %i.fb
  %scevgep3944 = getelementptr i8, ptr %scevgep3943, i64 %i.fh
  %scevgep3946 = getelementptr i8, ptr %scevgep3945, i64 %i.fb
  %scevgep3948 = getelementptr i8, ptr %scevgep3947, i64 %i.fh
  %scevgep3950 = getelementptr i8, ptr %scevgep3949, i64 %i.fb
  %scevgep3952 = getelementptr i8, ptr %scevgep3951, i64 %i.fh
  %scevgep3954 = getelementptr i8, ptr %scevgep3953, i64 %i.fb
  %scevgep3956 = getelementptr i8, ptr %scevgep3955, i64 %i.fh
  %scevgep3958 = getelementptr i8, ptr %scevgep3957, i64 %i.fb
  %scevgep3960 = getelementptr i8, ptr %scevgep3959, i64 %i.fh
  %scevgep3962 = getelementptr i8, ptr %scevgep3961, i64 %i.fb
  %scevgep3964 = getelementptr i8, ptr %scevgep3963, i64 %i.fh
  %scevgep3966 = getelementptr i8, ptr %scevgep3965, i64 %i.fb
  %scevgep3968 = getelementptr i8, ptr %scevgep3967, i64 %i.fh
  %scevgep3970 = getelementptr i8, ptr %scevgep3969, i64 %i.fb
  %scevgep3972 = getelementptr i8, ptr %scevgep3971, i64 %i.fh
  %scevgep3974 = getelementptr i8, ptr %scevgep3973, i64 %i.fb
  %scevgep3976 = getelementptr i8, ptr %scevgep3975, i64 %i.fh
  %scevgep3978 = getelementptr i8, ptr %scevgep3977, i64 %i.fb
  %scevgep3980 = getelementptr i8, ptr %scevgep3979, i64 %i.fh
  %scevgep3982 = getelementptr i8, ptr %scevgep3981, i64 %i.fb
  %scevgep3984 = getelementptr i8, ptr %scevgep3983, i64 %i.fh
  %bound0 = icmp ult ptr %scevgep, %scevgep3924
  %bound1 = icmp ult ptr %scevgep3922, %scevgep3920
  %found.conflict = and i1 %bound0, %bound1
  %bound03985 = icmp ult ptr %scevgep, %scevgep3928
  %bound13986 = icmp ult ptr %scevgep3926, %scevgep3920
  %found.conflict3987 = and i1 %bound03985, %bound13986
  %conflict.rdx = or i1 %found.conflict, %found.conflict3987
  %bound03988 = icmp ult ptr %scevgep, %scevgep3932
  %bound13989 = icmp ult ptr %scevgep3930, %scevgep3920
  %found.conflict3990 = and i1 %bound03988, %bound13989
  %conflict.rdx3991 = or i1 %conflict.rdx, %found.conflict3990
  %bound03992 = icmp ult ptr %scevgep, %scevgep3936
  %bound13993 = icmp ult ptr %scevgep3934, %scevgep3920
  %found.conflict3994 = and i1 %bound03992, %bound13993
  %conflict.rdx3995 = or i1 %conflict.rdx3991, %found.conflict3994
  %bound03996 = icmp ult ptr %scevgep, %scevgep3940
  %bound13997 = icmp ult ptr %scevgep3938, %scevgep3920
  %found.conflict3998 = and i1 %bound03996, %bound13997
  %conflict.rdx3999 = or i1 %conflict.rdx3995, %found.conflict3998
  %bound04000 = icmp ult ptr %scevgep, %scevgep3944
  %bound14001 = icmp ult ptr %scevgep3942, %scevgep3920
  %found.conflict4002 = and i1 %bound04000, %bound14001
  %conflict.rdx4003 = or i1 %conflict.rdx3999, %found.conflict4002
  %bound04004 = icmp ult ptr %scevgep, %scevgep3948
  %bound14005 = icmp ult ptr %scevgep3946, %scevgep3920
  %found.conflict4006 = and i1 %bound04004, %bound14005
  %conflict.rdx4007 = or i1 %conflict.rdx4003, %found.conflict4006
  %bound04008 = icmp ult ptr %scevgep, %scevgep3952
  %bound14009 = icmp ult ptr %scevgep3950, %scevgep3920
  %found.conflict4010 = and i1 %bound04008, %bound14009
  %conflict.rdx4011 = or i1 %conflict.rdx4007, %found.conflict4010
  %bound04012 = icmp ult ptr %scevgep, %scevgep3956
  %bound14013 = icmp ult ptr %scevgep3954, %scevgep3920
  %found.conflict4014 = and i1 %bound04012, %bound14013
  %conflict.rdx4015 = or i1 %conflict.rdx4011, %found.conflict4014
  %bound04016 = icmp ult ptr %scevgep, %scevgep3960
  %bound14017 = icmp ult ptr %scevgep3958, %scevgep3920
  %found.conflict4018 = and i1 %bound04016, %bound14017
  %conflict.rdx4019 = or i1 %conflict.rdx4015, %found.conflict4018
  %bound04020 = icmp ult ptr %scevgep, %scevgep3964
  %bound14021 = icmp ult ptr %scevgep3962, %scevgep3920
  %found.conflict4022 = and i1 %bound04020, %bound14021
  %conflict.rdx4023 = or i1 %conflict.rdx4019, %found.conflict4022
  %bound04024 = icmp ult ptr %scevgep, %scevgep3968
  %bound14025 = icmp ult ptr %scevgep3966, %scevgep3920
  %found.conflict4026 = and i1 %bound04024, %bound14025
  %conflict.rdx4027 = or i1 %conflict.rdx4023, %found.conflict4026
  %bound04028 = icmp ult ptr %scevgep, %scevgep3972
  %bound14029 = icmp ult ptr %scevgep3970, %scevgep3920
  %found.conflict4030 = and i1 %bound04028, %bound14029
  %conflict.rdx4031 = or i1 %conflict.rdx4027, %found.conflict4030
  %bound04032 = icmp ult ptr %scevgep, %scevgep3976
  %bound14033 = icmp ult ptr %scevgep3974, %scevgep3920
  %found.conflict4034 = and i1 %bound04032, %bound14033
  %conflict.rdx4035 = or i1 %conflict.rdx4031, %found.conflict4034
  %bound04036 = icmp ult ptr %scevgep, %scevgep3980
  %bound14037 = icmp ult ptr %scevgep3978, %scevgep3920
  %found.conflict4038 = and i1 %bound04036, %bound14037
  %conflict.rdx4039 = or i1 %conflict.rdx4035, %found.conflict4038
  %bound04040 = icmp ult ptr %scevgep, %scevgep3984
  %bound14041 = icmp ult ptr %scevgep3982, %scevgep3920
  %found.conflict4042 = and i1 %bound04040, %bound14041
  %conflict.rdx4043 = or i1 %conflict.rdx4039, %found.conflict4042
  br i1 %conflict.rdx4043, label %scalar.ph4044.preheader, label %vector.ph4046

vector.ph4046:                                    ; preds = %vector.memcheck
  %i.fi = and i64 %i.ey, 7                        ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  %i.fk = select i1 %i.fj, i64 8, i64 %i.fi
  %n.vec4047 = sub nsw i64 %i.ey, %i.fk           ; 3 uses
  %i.fl = shl nsw i64 %n.vec4047, 1
  %i.fm = add nsw i64 %i.fl, %i.ev
  %i.fn = trunc i64 %n.vec4047 to i32
  %i.fo = shl i32 %i.fn, 1
  %i.fp = add i32 %i.em, %i.fo
  %broadcast.splatinsert4048 = insertelement <8 x i64> poison, i64 %i.ev, i64 0
  %broadcast.splat4049 = shufflevector <8 x i64> %broadcast.splatinsert4048, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4050 = add nuw nsw <8 x i64> %broadcast.splat4049, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body4051

vector.body4051:                                  ; preds = %vector.body4051, %vector.ph4046
  %index4052 = phi i64 [ 0, %vector.ph4046 ], [ %index.next4087, %vector.body4051 ] ; 2 uses
  %vec.ind4053 = phi <8 x i64> [ %induction4050, %vector.ph4046 ], [ %vec.ind.next4088, %vector.body4051 ] ; 2 uses
  %i.fq = shl nuw i64 %index4052, 1
  %i.fr = add nuw i64 %i.fq, %i.ev                ; 4 uses
  %i.fs = sub nsw i64 %i.fr, %i.ag
  %i.ft = getelementptr [8 x i8], ptr %i.k, i64 %i.fs ; 4 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %wide.vec4054 = load <32 x float>, ptr %i.fv, align 4, !tbaa !83, !alias.scope !263
  %strided.vec4055 = shufflevector <32 x float> %wide.vec4054, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %i.fw = getelementptr [8 x i8], ptr %invariant.gep3871, i64 %i.fr ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.et
  %wide.vec4056 = load <32 x float>, ptr %i.fy, align 4, !tbaa !83, !alias.scope !264
  %strided.vec4057 = shufflevector <32 x float> %wide.vec4056, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %i.fz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4055, %strided.vec4057
  %i.ga = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fz)
  %i.gb = fpext reassoc nsz arcp contract afn <8 x float> %i.ga to <8 x double>
  %i.gc = fadd reassoc nsz arcp contract afn <8 x double> %i.gb, splat (double 1.000000e+00)
  %i.gd = sub nsw i64 %i.fr, %i.af
  %i.ge = getelementptr [8 x i8], ptr %i.k, i64 %i.gd ; 4 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 -24
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.et
  %wide.vec4058 = load <32 x float>, ptr %i.gg, align 4, !tbaa !83, !alias.scope !265
  %strided.vec4059 = shufflevector <32 x float> %wide.vec4058, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %i.gh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4055, %strided.vec4059
  %i.gi = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gh)
  %i.gj = fpext reassoc nsz arcp contract afn <8 x float> %i.gi to <8 x double>
  %i.gk = fadd reassoc nsz arcp contract afn <8 x double> %i.gc, %i.gj
  %i.gl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4057, %strided.vec4059
  %i.gm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gl)
  %i.gn = fpext reassoc nsz arcp contract afn <8 x float> %i.gm to <8 x double>
  %i.go = fadd reassoc nsz arcp contract afn <8 x double> %i.gk, %i.gn
  %i.gp = fptrunc reassoc nsz arcp contract afn <8 x double> %i.go to <8 x float>
  %i.gq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.gp ; 2 uses
  %i.gr = getelementptr i8, ptr %i.ft, i64 8
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.et
  %wide.vec4060 = load <32 x float>, ptr %i.gs, align 4, !tbaa !83, !alias.scope !266
  %strided.vec4061 = shufflevector <32 x float> %wide.vec4060, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %i.gt = getelementptr i8, ptr %i.fw, i64 -8
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.et
  %wide.vec4062 = load <32 x float>, ptr %i.gu, align 4, !tbaa !83, !alias.scope !267
  %strided.vec4063 = shufflevector <32 x float> %wide.vec4062, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %i.gv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4061, %strided.vec4063
  %i.gw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gv)
  %i.gx = fpext reassoc nsz arcp contract afn <8 x float> %i.gw to <8 x double>
  %i.gy = fadd reassoc nsz arcp contract afn <8 x double> %i.gx, splat (double 1.000000e+00)
  %i.gz = getelementptr i8, ptr %i.ge, i64 24
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.et
  %wide.vec4064 = load <32 x float>, ptr %i.ha, align 4, !tbaa !83, !alias.scope !268
  %strided.vec4065 = shufflevector <32 x float> %wide.vec4064, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %i.hb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4061, %strided.vec4065
  %i.hc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hb)
  %i.hd = fpext reassoc nsz arcp contract afn <8 x float> %i.hc to <8 x double>
  %i.he = fadd reassoc nsz arcp contract afn <8 x double> %i.gy, %i.hd
  %i.hf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4063, %strided.vec4065
  %i.hg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hf)
  %i.hh = fpext reassoc nsz arcp contract afn <8 x float> %i.hg to <8 x double>
  %i.hi = fadd reassoc nsz arcp contract afn <8 x double> %i.he, %i.hh
  %i.hj = fptrunc reassoc nsz arcp contract afn <8 x double> %i.hi to <8 x float>
  %i.hk = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.hj ; 2 uses
  %i.hl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4063, %strided.vec4061
  %i.hm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hl)
  %i.hn = fpext reassoc nsz arcp contract afn <8 x float> %i.hm to <8 x double>
  %i.ho = fadd reassoc nsz arcp contract afn <8 x double> %i.hn, splat (double 1.000000e+00)
  %i.hp = getelementptr [8 x i8], ptr %invariant.gep3873, i64 %i.fr ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.et
  %wide.vec4066 = load <32 x float>, ptr %i.hr, align 4, !tbaa !83, !alias.scope !269
  %strided.vec4067 = shufflevector <32 x float> %wide.vec4066, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %i.hs = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4063, %strided.vec4067
  %i.ht = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hs)
  %i.hu = fpext reassoc nsz arcp contract afn <8 x float> %i.ht to <8 x double>
  %i.hv = fadd reassoc nsz arcp contract afn <8 x double> %i.ho, %i.hu
  %i.hw = getelementptr i8, ptr %i.hp, i64 -24
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.et
  %wide.vec4068 = load <32 x float>, ptr %i.hx, align 4, !tbaa !83, !alias.scope !270
  %strided.vec4069 = shufflevector <32 x float> %wide.vec4068, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %i.hy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4061, %strided.vec4069
  %i.hz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hy)
  %i.ia = fpext reassoc nsz arcp contract afn <8 x float> %i.hz to <8 x double>
  %i.ib = fadd reassoc nsz arcp contract afn <8 x double> %i.hv, %i.ia
  %i.ic = fptrunc reassoc nsz arcp contract afn <8 x double> %i.ib to <8 x float>
  %i.id = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ic ; 2 uses
  %i.ie = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4057, %strided.vec4055
  %i.if = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ie)
  %i.ig = fpext reassoc nsz arcp contract afn <8 x float> %i.if to <8 x double>
  %i.ih = fadd reassoc nsz arcp contract afn <8 x double> %i.ig, splat (double 1.000000e+00)
  %i.ii = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4057, %strided.vec4069
  %i.ij = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ii)
  %i.ik = fpext reassoc nsz arcp contract afn <8 x float> %i.ij to <8 x double>
  %i.il = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4055, %strided.vec4067
  %i.im = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.il)
  %i.in = fpext reassoc nsz arcp contract afn <8 x float> %i.im to <8 x double>
  %i.io = fadd reassoc nsz arcp contract afn <8 x double> %i.ih, %i.in
  %i.ip = fadd reassoc nsz arcp contract afn <8 x double> %i.io, %i.ik
  %i.iq = fptrunc reassoc nsz arcp contract afn <8 x double> %i.ip to <8 x float>
  %i.ir = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.iq ; 2 uses
  %i.is = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4055, splat (float 1.325000e+00)
  %i.it = getelementptr i8, ptr %i.ge, i64 -8
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.et
  %wide.vec4070 = load <32 x float>, ptr %i.iu, align 4, !tbaa !83, !alias.scope !271
  %strided.vec4071 = shufflevector <32 x float> %wide.vec4070, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.iv = getelementptr i8, ptr %i.ft, i64 -24
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.et
  %wide.vec4072 = load <32 x float>, ptr %i.iw, align 4, !tbaa !83, !alias.scope !272
  %strided.vec4073 = shufflevector <32 x float> %wide.vec4072, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ix = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4059, splat (float -1.750000e-01)
  %i.iy = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4073, %strided.vec4071
  %i.iz = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, splat (float -7.500000e-02)
  %i.ja = fadd reassoc nsz arcp contract afn <8 x float> %i.ix, %i.is
  %i.jb = fadd reassoc nsz arcp contract afn <8 x float> %i.ja, %i.iz
  %i.jc = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4061, splat (float 1.325000e+00)
  %i.jd = getelementptr i8, ptr %i.ge, i64 8
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.et
  %wide.vec4074 = load <32 x float>, ptr %i.je, align 4, !tbaa !83, !alias.scope !273
  %strided.vec4075 = shufflevector <32 x float> %wide.vec4074, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jf = getelementptr i8, ptr %i.ft, i64 24
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.et
  %wide.vec4076 = load <32 x float>, ptr %i.jg, align 4, !tbaa !83, !alias.scope !274
  %strided.vec4077 = shufflevector <32 x float> %wide.vec4076, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4065, splat (float -1.750000e-01)
  %i.ji = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4077, %strided.vec4075
  %i.jj = fmul reassoc nsz arcp contract afn <8 x float> %i.ji, splat (float -7.500000e-02)
  %i.jk = fadd reassoc nsz arcp contract afn <8 x float> %i.jh, %i.jc
  %i.jl = fadd reassoc nsz arcp contract afn <8 x float> %i.jk, %i.jj
  %i.jm = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4063, splat (float 1.325000e+00)
  %i.jn = getelementptr i8, ptr %i.hp, i64 -8
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.et
  %wide.vec4078 = load <32 x float>, ptr %i.jo, align 4, !tbaa !83, !alias.scope !275
  %strided.vec4079 = shufflevector <32 x float> %wide.vec4078, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jp = getelementptr i8, ptr %i.fw, i64 -24
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.et
  %wide.vec4080 = load <32 x float>, ptr %i.jq, align 4, !tbaa !83, !alias.scope !276
  %strided.vec4081 = shufflevector <32 x float> %wide.vec4080, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4069, splat (float -1.750000e-01)
  %i.js = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4081, %strided.vec4079
  %i.jt = fmul reassoc nsz arcp contract afn <8 x float> %i.js, splat (float -7.500000e-02)
  %i.ju = fadd reassoc nsz arcp contract afn <8 x float> %i.jr, %i.jm
  %i.jv = fadd reassoc nsz arcp contract afn <8 x float> %i.ju, %i.jt
  %i.jw = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4057, splat (float 1.325000e+00)
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.et
  %wide.vec4082 = load <32 x float>, ptr %i.jy, align 4, !tbaa !83, !alias.scope !277
  %strided.vec4083 = shufflevector <32 x float> %wide.vec4082, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jz = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.et
  %wide.vec4084 = load <32 x float>, ptr %i.ka, align 4, !tbaa !83, !alias.scope !278
  %strided.vec4085 = shufflevector <32 x float> %wide.vec4084, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.kb = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4067, splat (float -1.750000e-01)
  %i.kc = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4085, %strided.vec4083
  %i.kd = fmul reassoc nsz arcp contract afn <8 x float> %i.kc, splat (float -7.500000e-02)
  %i.ke = fadd reassoc nsz arcp contract afn <8 x float> %i.kb, %i.jw
  %i.kf = fadd reassoc nsz arcp contract afn <8 x float> %i.ke, %i.kd
  %i.kg = fmul reassoc nsz arcp contract afn <8 x float> %i.jb, %i.gq
  %i.kh = fmul reassoc nsz arcp contract afn <8 x float> %i.jl, %i.hk
  %i.ki = fadd reassoc nsz arcp contract afn <8 x float> %i.kh, %i.kg
  %i.kj = fmul reassoc nsz arcp contract afn <8 x float> %i.jv, %i.id
  %i.kk = fadd reassoc nsz arcp contract afn <8 x float> %i.ki, %i.kj
  %i.kl = fmul reassoc nsz arcp contract afn <8 x float> %i.kf, %i.ir
  %i.km = fadd reassoc nsz arcp contract afn <8 x float> %i.kk, %i.kl
  %i.kn = fadd reassoc nsz arcp contract afn <8 x float> %i.hk, %i.gq
  %i.ko = fadd reassoc nsz arcp contract afn <8 x float> %i.kn, %i.id
  %i.kp = fadd reassoc nsz arcp contract afn <8 x float> %i.ko, %i.ir
  %i.kq = fdiv reassoc nsz arcp contract afn <8 x float> %i.km, %i.kp
  %wide.gep4086 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep3693, <8 x i64> %vec.ind4053
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kq, <8 x ptr> align 4 %wide.gep4086, <8 x i1> splat (i1 true)), !tbaa !83, !alias.scope !279, !noalias !280
  %index.next4087 = add nuw i64 %index4052, 8     ; 2 uses
  %vec.ind.next4088 = add nuw nsw <8 x i64> %vec.ind4053, splat (i64 16)
  %i.kr = icmp eq i64 %index.next4087, %n.vec4047
  br i1 %i.kr, label %scalar.ph4044.preheader, label %vector.body4051, !llvm.loop !236

scalar.ph4044.preheader:                          ; preds = %vector.body4051, %vector.memcheck, %.lr.ph3691
  %indvars.iv3719.ph = phi i64 [ %i.ev, %vector.memcheck ], [ %i.ev, %.lr.ph3691 ], [ %i.fm, %vector.body4051 ]
  %.130973688.ph = phi i32 [ %i.em, %vector.memcheck ], [ %i.em, %.lr.ph3691 ], [ %i.fp, %vector.body4051 ]
  br label %scalar.ph4044

scalar.ph4044:                                    ; preds = %scalar.ph4044.preheader, %scalar.ph4044
  %indvars.iv3719 = phi i64 [ %indvars.iv.next3720, %scalar.ph4044 ], [ %indvars.iv3719.ph, %scalar.ph4044.preheader ] ; 6 uses
  %.130973688 = phi i32 [ %i.lm, %scalar.ph4044 ], [ %.130973688.ph, %scalar.ph4044.preheader ]
  %i.ks = sub nsw i64 %indvars.iv3719, %i.ag
  %i.kt = getelementptr [8 x i8], ptr %i.k, i64 %i.ks ; 4 uses
  %gep3872 = getelementptr [8 x i8], ptr %invariant.gep3871, i64 %indvars.iv3719 ; 4 uses
  %i.ku = sub nsw i64 %indvars.iv3719, %i.af
  %i.kv = getelementptr [8 x i8], ptr %i.k, i64 %i.ku ; 4 uses
  %gep3874 = getelementptr [8 x i8], ptr %invariant.gep3873, i64 %indvars.iv3719 ; 4 uses
  %1 = getelementptr i8, ptr %i.kt, i64 -8
  %2 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.et
  %3 = load float, ptr %2, align 4, !tbaa !83     ; 5 uses
  %4 = getelementptr inbounds nuw i8, ptr %gep3872, i64 8
  %5 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.et
  %6 = load float, ptr %5, align 4, !tbaa !83     ; 5 uses
  %7 = fsub reassoc nsz arcp contract afn float %3, %6
  %8 = getelementptr i8, ptr %i.kv, i64 -24
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.et
  %10 = load float, ptr %9, align 4, !tbaa !83    ; 3 uses
  %11 = fsub reassoc nsz arcp contract afn float %3, %10
  %12 = fsub reassoc nsz arcp contract afn float %6, %10
  %13 = getelementptr i8, ptr %i.kt, i64 8
  %14 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %i.et
  %15 = load float, ptr %14, align 4, !tbaa !83   ; 5 uses
  %16 = getelementptr i8, ptr %gep3872, i64 -8
  %17 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %i.et
  %18 = load float, ptr %17, align 4, !tbaa !83   ; 5 uses
  %19 = fsub reassoc nsz arcp contract afn float %15, %18
  %20 = getelementptr i8, ptr %i.kv, i64 24
  %21 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %i.et
  %22 = load float, ptr %21, align 4, !tbaa !83   ; 3 uses
  %23 = fsub reassoc nsz arcp contract afn float %15, %22
  %24 = fsub reassoc nsz arcp contract afn float %18, %22
  %25 = fsub reassoc nsz arcp contract afn float %18, %15
  %26 = getelementptr inbounds nuw i8, ptr %gep3874, i64 24
  %27 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %i.et
  %28 = load float, ptr %27, align 4, !tbaa !83   ; 3 uses
  %29 = fsub reassoc nsz arcp contract afn float %18, %28
  %30 = getelementptr i8, ptr %gep3874, i64 -24
  %31 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %i.et
  %32 = load float, ptr %31, align 4, !tbaa !83   ; 3 uses
  %33 = fsub reassoc nsz arcp contract afn float %15, %32
  %34 = fsub reassoc nsz arcp contract afn float %6, %3
  %35 = insertelement <4 x float> poison, float %19, i64 0
  %36 = insertelement <4 x float> %35, float %7, i64 1
  %37 = insertelement <4 x float> %36, float %25, i64 2
  %38 = insertelement <4 x float> %37, float %34, i64 3
  %i.kw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %38)
  %i.kx = fpext <4 x float> %i.kw to <4 x double>
  %i.ky = fadd reassoc nsz arcp contract afn <4 x double> %i.kx, splat (double 1.000000e+00)
  %i.kz = shufflevector <4 x double> %i.ky, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %39 = fsub reassoc nsz arcp contract afn float %6, %32
  %40 = insertelement <4 x float> poison, float %33, i64 0
  %41 = insertelement <4 x float> %40, float %39, i64 1
  %42 = insertelement <4 x float> %41, float %24, i64 2
  %43 = insertelement <4 x float> %42, float %12, i64 3
  %i.la = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %43)
  %i.lb = fpext <4 x float> %i.la to <4 x double>
  %44 = fsub reassoc nsz arcp contract afn float %3, %28
  %45 = insertelement <4 x float> poison, float %29, i64 0
  %46 = insertelement <4 x float> %45, float %44, i64 1
  %47 = insertelement <4 x float> %46, float %23, i64 2
  %48 = insertelement <4 x float> %47, float %11, i64 3
  %i.lc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %48)
  %i.ld = fpext <4 x float> %i.lc to <4 x double>
  %i.le = fadd reassoc nsz arcp contract afn <4 x double> %i.kz, %i.ld
  %i.lf = fadd reassoc nsz arcp contract afn <4 x double> %i.le, %i.lb
  %i.lg = fptrunc <4 x double> %i.lf to <4 x float>
  %i.lh = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.lg ; 2 uses
  %49 = fmul reassoc nsz arcp contract afn float %3, 1.325000e+00
  %50 = getelementptr i8, ptr %i.kv, i64 -8
  %51 = getelementptr inbounds nuw [4 x i8], ptr %50, i64 %i.et
  %52 = load float, ptr %51, align 4, !tbaa !83
  %53 = getelementptr i8, ptr %i.kt, i64 -24
  %54 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %i.et
  %55 = load float, ptr %54, align 4, !tbaa !83
  %.neg = fmul reassoc nsz arcp contract afn float %10, -1.750000e-01
  %reass.add = fadd reassoc nsz arcp contract afn float %55, %52
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, -7.500000e-02
  %.neg3657 = fadd reassoc nsz arcp contract afn float %.neg, %49
  %56 = fadd reassoc nsz arcp contract afn float %.neg3657, %reass.mul
  %57 = fmul reassoc nsz arcp contract afn float %15, 1.325000e+00
  %58 = getelementptr i8, ptr %i.kv, i64 8
  %59 = getelementptr inbounds nuw [4 x i8], ptr %58, i64 %i.et
  %60 = load float, ptr %59, align 4, !tbaa !83
  %61 = getelementptr i8, ptr %i.kt, i64 24
  %62 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %i.et
  %63 = load float, ptr %62, align 4, !tbaa !83
  %.neg3658 = fmul reassoc nsz arcp contract afn float %22, -1.750000e-01
  %reass.add3673 = fadd reassoc nsz arcp contract afn float %63, %60
  %reass.mul3674 = fmul reassoc nsz arcp contract afn float %reass.add3673, -7.500000e-02
  %.neg3662 = fadd reassoc nsz arcp contract afn float %.neg3658, %57
  %64 = fadd reassoc nsz arcp contract afn float %.neg3662, %reass.mul3674
  %65 = fmul reassoc nsz arcp contract afn float %18, 1.325000e+00
  %66 = getelementptr i8, ptr %gep3874, i64 -8
  %67 = getelementptr inbounds nuw [4 x i8], ptr %66, i64 %i.et
  %68 = load float, ptr %67, align 4, !tbaa !83
  %69 = getelementptr i8, ptr %gep3872, i64 -24
  %70 = getelementptr inbounds nuw [4 x i8], ptr %69, i64 %i.et
  %71 = load float, ptr %70, align 4, !tbaa !83
  %.neg3663 = fmul reassoc nsz arcp contract afn float %32, -1.750000e-01
  %reass.add3675 = fadd reassoc nsz arcp contract afn float %71, %68
  %reass.mul3676 = fmul reassoc nsz arcp contract afn float %reass.add3675, -7.500000e-02
  %.neg3667 = fadd reassoc nsz arcp contract afn float %.neg3663, %65
  %72 = fadd reassoc nsz arcp contract afn float %.neg3667, %reass.mul3676
  %73 = fmul reassoc nsz arcp contract afn float %6, 1.325000e+00
  %74 = getelementptr inbounds nuw i8, ptr %gep3874, i64 8
  %75 = getelementptr inbounds nuw [4 x i8], ptr %74, i64 %i.et
  %76 = load float, ptr %75, align 4, !tbaa !83
  %77 = getelementptr inbounds nuw i8, ptr %gep3872, i64 24
  %78 = getelementptr inbounds nuw [4 x i8], ptr %77, i64 %i.et
  %79 = load float, ptr %78, align 4, !tbaa !83
  %.neg3668 = fmul reassoc nsz arcp contract afn float %28, -1.750000e-01
  %reass.add3677 = fadd reassoc nsz arcp contract afn float %79, %76
  %reass.mul3678 = fmul reassoc nsz arcp contract afn float %reass.add3677, -7.500000e-02
  %.neg3672 = fadd reassoc nsz arcp contract afn float %.neg3668, %73
  %80 = fadd reassoc nsz arcp contract afn float %.neg3672, %reass.mul3678
  %81 = insertelement <4 x float> poison, float %72, i64 0
  %82 = insertelement <4 x float> %81, float %80, i64 1
  %83 = insertelement <4 x float> %82, float %64, i64 2
  %84 = insertelement <4 x float> %83, float %56, i64 3
  %i.li = fmul reassoc nsz arcp contract afn <4 x float> %84, %i.lh
  %i.lj = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.li)
  %i.lk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.lh)
  %i.ll = fdiv reassoc nsz arcp contract afn float %i.lj, %i.lk
  %gep3694 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep3693, i64 %indvars.iv3719
  store float %i.ll, ptr %gep3694, align 4, !tbaa !83
  %i.lm = add nuw nsw i32 %.130973688, 2          ; 2 uses
  %indvars.iv.next3720 = add nuw nsw i64 %indvars.iv3719, 2
  %i.ln = icmp slt i32 %i.lm, %i.ac
  br i1 %i.ln, label %scalar.ph4044, label %._crit_edge3692, !llvm.loop !237

._crit_edge3692:                                  ; preds = %scalar.ph4044, %bb.c
  %i.lo = add nuw nsw i32 %.131013695, 1          ; 2 uses
  %indvars.iv.next3718 = add nuw i32 %indvars.iv3717, %i.ab
  %exitcond3722.not = icmp eq i32 %i.lo, %i.w
  br i1 %exitcond3722.not, label %.lr.ph3705, label %bb.c, !llvm.loop !238

.preheader:                                       ; preds = %._crit_edge3703, %.preheader3681
  %.pr = load i16, ptr %i.f, align 4, !tbaa !80   ; 2 uses
  %i.lp = icmp ugt i16 %.pr, 12
  br i1 %i.lp, label %.lr.ph3712.preheader, label %._crit_edge3713

.lr.ph3712.preheader:                             ; preds = %.preheader
  %i.lq = zext i16 %i.c to i64                    ; 6 uses
  %.pre = load i16, ptr %i.b, align 2, !tbaa !79
  br label %.lr.ph3712

bb.d:                                             ; preds = %.lr.ph3705, %._crit_edge3703
  %indvars.iv3723 = phi i32 [ %i.dt, %.lr.ph3705 ], [ %indvars.iv.next3724, %._crit_edge3703 ] ; 2 uses
  %.231023704 = phi i32 [ 3, %.lr.ph3705 ], [ %i.abe, %._crit_edge3703 ] ; 2 uses
  %i.lr = shl nuw nsw i32 %.231023704, 1
  %i.ls = and i32 %i.lr, 14                       ; 2 uses
  %i.lt = shl nuw nsw i32 %i.ls, 1
  %i.lu = lshr i32 %i.do, %i.lt
  %i.lv = and i32 %i.lu, 1                        ; 5 uses
  %i.lw = add nuw nsw i32 %i.lv, 3                ; 4 uses
  %i.lx = icmp slt i32 %i.lw, %i.dr
  br i1 %i.lx, label %.preheader3679.preheader, label %._crit_edge3703

.preheader3679.preheader:                         ; preds = %bb.d
  %i.ly = or disjoint i32 %i.lv, %i.ls
  %i.lz = shl nuw nsw i32 %i.ly, 1
  %i.ma = shl nuw i32 2, %i.lz
  %i.mb = and i32 %i.ma, %i.do
  %.cmp3500 = icmp ne i32 %i.mb, 0                ; 4 uses
  %i.mc = zext i1 %.cmp3500 to i64                ; 18 uses
  %i.md = add i32 %indvars.iv3723, %i.lv
  %i.me = sext i32 %i.md to i64                   ; 6 uses
  %not..cmp3500 = xor i1 %.cmp3500, true
  %i.mf = zext i1 %not..cmp3500 to i64            ; 18 uses
  %i.mg = sub nsw i32 %i.ef, %i.lv                ; 2 uses
  %i.mh = lshr i32 %i.mg, 1
  %narrow4345 = add nuw i32 %i.mh, 1
  %i.mi = zext i32 %narrow4345 to i64             ; 2 uses
  %min.iters.check4295 = icmp ult i32 %i.mg, 16
  br i1 %min.iters.check4295, label %.preheader3679.preheader4346, label %vector.memcheck4092

vector.memcheck4092:                              ; preds = %.preheader3679.preheader
  %i.mj = shl nsw i64 %i.me, 3                    ; 3 uses
  %i.mk = select i1 %.cmp3500, i64 4, i64 0       ; 2 uses
  %i.ml = or disjoint i64 %i.mj, %i.mk            ; 9 uses
  %scevgep4093 = getelementptr i8, ptr %i.k, i64 %i.ml ; 17 uses
  %i.mm = sub nsw i32 %i.dw, %i.lv
  %i.mn = lshr i32 %i.mm, 1
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = shl nuw nsw i64 %i.mo, 4
  %i.mq = add nsw i64 %i.mp, %i.mj                ; 2 uses
  %i.mr = or disjoint i64 %i.mq, %i.mk            ; 9 uses
  %scevgep4095 = getelementptr i8, ptr %scevgep4094, i64 %i.mr ; 17 uses
  %i.ms = select i1 %.cmp3500, i64 0, i64 4       ; 2 uses
  %i.mt = or disjoint i64 %i.mj, %i.ms            ; 9 uses
  %scevgep4096 = getelementptr i8, ptr %i.k, i64 %i.mt ; 17 uses
  %i.mu = or disjoint i64 %i.mq, %i.ms            ; 9 uses
  %scevgep4098 = getelementptr i8, ptr %scevgep4097, i64 %i.mu ; 17 uses
  %scevgep4100 = getelementptr i8, ptr %scevgep4099, i64 %i.ml ; 2 uses
  %scevgep4102 = getelementptr i8, ptr %scevgep4101, i64 %i.mr ; 2 uses
  %scevgep4104 = getelementptr i8, ptr %scevgep4103, i64 %i.ml ; 2 uses
  %scevgep4106 = getelementptr i8, ptr %scevgep4105, i64 %i.mr ; 2 uses
  %scevgep4108 = getelementptr i8, ptr %scevgep4107, i64 %i.ml ; 2 uses
  %scevgep4110 = getelementptr i8, ptr %scevgep4109, i64 %i.mr ; 2 uses
  %scevgep4112 = getelementptr i8, ptr %scevgep4111, i64 %i.ml ; 2 uses
  %scevgep4114 = getelementptr i8, ptr %scevgep4113, i64 %i.mr ; 2 uses
  %scevgep4116 = getelementptr i8, ptr %scevgep4115, i64 %i.ml ; 2 uses
  %scevgep4118 = getelementptr i8, ptr %scevgep4117, i64 %i.mr ; 2 uses
  %scevgep4120 = getelementptr i8, ptr %scevgep4119, i64 %i.ml ; 2 uses
  %scevgep4122 = getelementptr i8, ptr %scevgep4121, i64 %i.mr ; 2 uses
  %scevgep4124 = getelementptr i8, ptr %scevgep4123, i64 %i.ml ; 2 uses
  %scevgep4126 = getelementptr i8, ptr %scevgep4125, i64 %i.mr ; 2 uses
  %scevgep4128 = getelementptr i8, ptr %scevgep4127, i64 %i.ml ; 2 uses
  %scevgep4130 = getelementptr i8, ptr %scevgep4129, i64 %i.mr ; 2 uses
  %scevgep4132 = getelementptr i8, ptr %scevgep4131, i64 %i.mt ; 2 uses
  %scevgep4134 = getelementptr i8, ptr %scevgep4133, i64 %i.mu ; 2 uses
  %scevgep4136 = getelementptr i8, ptr %scevgep4135, i64 %i.mt ; 2 uses
  %scevgep4138 = getelementptr i8, ptr %scevgep4137, i64 %i.mu ; 2 uses
  %scevgep4140 = getelementptr i8, ptr %scevgep4139, i64 %i.mt ; 2 uses
  %scevgep4142 = getelementptr i8, ptr %scevgep4141, i64 %i.mu ; 2 uses
  %scevgep4144 = getelementptr i8, ptr %scevgep4143, i64 %i.mt ; 2 uses
  %scevgep4146 = getelementptr i8, ptr %scevgep4145, i64 %i.mu ; 2 uses
  %scevgep4148 = getelementptr i8, ptr %scevgep4147, i64 %i.mt ; 2 uses
  %scevgep4150 = getelementptr i8, ptr %scevgep4149, i64 %i.mu ; 2 uses
  %scevgep4152 = getelementptr i8, ptr %scevgep4151, i64 %i.mt ; 2 uses
  %scevgep4154 = getelementptr i8, ptr %scevgep4153, i64 %i.mu ; 2 uses
  %scevgep4156 = getelementptr i8, ptr %scevgep4155, i64 %i.mt ; 2 uses
  %scevgep4158 = getelementptr i8, ptr %scevgep4157, i64 %i.mu ; 2 uses
  %scevgep4160 = getelementptr i8, ptr %scevgep4159, i64 %i.mt ; 2 uses
  %scevgep4162 = getelementptr i8, ptr %scevgep4161, i64 %i.mu ; 2 uses
  %bound04163 = icmp ult ptr %scevgep4093, %scevgep4098
  %bound14164 = icmp ult ptr %scevgep4096, %scevgep4095
  %found.conflict4165 = and i1 %bound04163, %bound14164
  %bound04166 = icmp ult ptr %scevgep4093, %scevgep4102
  %bound14167 = icmp ult ptr %scevgep4100, %scevgep4095
  %found.conflict4168 = and i1 %bound04166, %bound14167
  %conflict.rdx4169 = or i1 %found.conflict4165, %found.conflict4168
  %bound04170 = icmp ult ptr %scevgep4093, %scevgep4106
  %bound14171 = icmp ult ptr %scevgep4104, %scevgep4095
  %found.conflict4172 = and i1 %bound04170, %bound14171
  %conflict.rdx4173 = or i1 %conflict.rdx4169, %found.conflict4172
  %bound04174 = icmp ult ptr %scevgep4093, %scevgep4110
  %bound14175 = icmp ult ptr %scevgep4108, %scevgep4095
  %found.conflict4176 = and i1 %bound04174, %bound14175
  %conflict.rdx4177 = or i1 %conflict.rdx4173, %found.conflict4176
  %bound04178 = icmp ult ptr %scevgep4093, %scevgep4114
  %bound14179 = icmp ult ptr %scevgep4112, %scevgep4095
  %found.conflict4180 = and i1 %bound04178, %bound14179
  %conflict.rdx4181 = or i1 %conflict.rdx4177, %found.conflict4180
  %bound04182 = icmp ult ptr %scevgep4093, %scevgep4118
  %bound14183 = icmp ult ptr %scevgep4116, %scevgep4095
  %found.conflict4184 = and i1 %bound04182, %bound14183
  %conflict.rdx4185 = or i1 %conflict.rdx4181, %found.conflict4184
  %bound04186 = icmp ult ptr %scevgep4093, %scevgep4122
  %bound14187 = icmp ult ptr %scevgep4120, %scevgep4095
  %found.conflict4188 = and i1 %bound04186, %bound14187
  %conflict.rdx4189 = or i1 %conflict.rdx4185, %found.conflict4188
  %bound04190 = icmp ult ptr %scevgep4093, %scevgep4126
  %bound14191 = icmp ult ptr %scevgep4124, %scevgep4095
  %found.conflict4192 = and i1 %bound04190, %bound14191
  %conflict.rdx4193 = or i1 %conflict.rdx4189, %found.conflict4192
  %bound04194 = icmp ult ptr %scevgep4093, %scevgep4130
  %bound14195 = icmp ult ptr %scevgep4128, %scevgep4095
  %found.conflict4196 = and i1 %bound04194, %bound14195
  %conflict.rdx4197 = or i1 %conflict.rdx4193, %found.conflict4196
  %bound04198 = icmp ult ptr %scevgep4093, %scevgep4134
  %bound14199 = icmp ult ptr %scevgep4132, %scevgep4095
  %found.conflict4200 = and i1 %bound04198, %bound14199
  %conflict.rdx4201 = or i1 %conflict.rdx4197, %found.conflict4200
  %bound04202 = icmp ult ptr %scevgep4093, %scevgep4138
  %bound14203 = icmp ult ptr %scevgep4136, %scevgep4095
  %found.conflict4204 = and i1 %bound04202, %bound14203
  %conflict.rdx4205 = or i1 %conflict.rdx4201, %found.conflict4204
  %bound04206 = icmp ult ptr %scevgep4093, %scevgep4142
  %bound14207 = icmp ult ptr %scevgep4140, %scevgep4095
  %found.conflict4208 = and i1 %bound04206, %bound14207
  %conflict.rdx4209 = or i1 %conflict.rdx4205, %found.conflict4208
  %bound04210 = icmp ult ptr %scevgep4093, %scevgep4146
  %bound14211 = icmp ult ptr %scevgep4144, %scevgep4095
  %found.conflict4212 = and i1 %bound04210, %bound14211
  %conflict.rdx4213 = or i1 %conflict.rdx4209, %found.conflict4212
  %bound04214 = icmp ult ptr %scevgep4093, %scevgep4150
  %bound14215 = icmp ult ptr %scevgep4148, %scevgep4095
  %found.conflict4216 = and i1 %bound04214, %bound14215
  %conflict.rdx4217 = or i1 %conflict.rdx4213, %found.conflict4216
  %bound04218 = icmp ult ptr %scevgep4093, %scevgep4154
  %bound14219 = icmp ult ptr %scevgep4152, %scevgep4095
  %found.conflict4220 = and i1 %bound04218, %bound14219
  %conflict.rdx4221 = or i1 %conflict.rdx4217, %found.conflict4220
  %bound04222 = icmp ult ptr %scevgep4093, %scevgep4158
  %bound14223 = icmp ult ptr %scevgep4156, %scevgep4095
  %found.conflict4224 = and i1 %bound04222, %bound14223
  %conflict.rdx4225 = or i1 %conflict.rdx4221, %found.conflict4224
  %bound04226 = icmp ult ptr %scevgep4093, %scevgep4162
  %bound14227 = icmp ult ptr %scevgep4160, %scevgep4095
  %found.conflict4228 = and i1 %bound04226, %bound14227
  %conflict.rdx4229 = or i1 %conflict.rdx4225, %found.conflict4228
  %bound04230 = icmp ult ptr %scevgep4096, %scevgep4102
  %bound14231 = icmp ult ptr %scevgep4100, %scevgep4098
  %found.conflict4232 = and i1 %bound04230, %bound14231
  %conflict.rdx4233 = or i1 %conflict.rdx4229, %found.conflict4232
  %bound04234 = icmp ult ptr %scevgep4096, %scevgep4106
  %bound14235 = icmp ult ptr %scevgep4104, %scevgep4098
  %found.conflict4236 = and i1 %bound04234, %bound14235
  %conflict.rdx4237 = or i1 %conflict.rdx4233, %found.conflict4236
  %bound04238 = icmp ult ptr %scevgep4096, %scevgep4110
  %bound14239 = icmp ult ptr %scevgep4108, %scevgep4098
  %found.conflict4240 = and i1 %bound04238, %bound14239
  %conflict.rdx4241 = or i1 %conflict.rdx4237, %found.conflict4240
  %bound04242 = icmp ult ptr %scevgep4096, %scevgep4114
  %bound14243 = icmp ult ptr %scevgep4112, %scevgep4098
  %found.conflict4244 = and i1 %bound04242, %bound14243
  %conflict.rdx4245 = or i1 %conflict.rdx4241, %found.conflict4244
  %bound04246 = icmp ult ptr %scevgep4096, %scevgep4118
  %bound14247 = icmp ult ptr %scevgep4116, %scevgep4098
  %found.conflict4248 = and i1 %bound04246, %bound14247
  %conflict.rdx4249 = or i1 %conflict.rdx4245, %found.conflict4248
  %bound04250 = icmp ult ptr %scevgep4096, %scevgep4122
  %bound14251 = icmp ult ptr %scevgep4120, %scevgep4098
  %found.conflict4252 = and i1 %bound04250, %bound14251
  %conflict.rdx4253 = or i1 %conflict.rdx4249, %found.conflict4252
  %bound04254 = icmp ult ptr %scevgep4096, %scevgep4126
  %bound14255 = icmp ult ptr %scevgep4124, %scevgep4098
  %found.conflict4256 = and i1 %bound04254, %bound14255
  %conflict.rdx4257 = or i1 %conflict.rdx4253, %found.conflict4256
end_hunk_0
begin_hunk_1_@_ZN6LibRaw3dcbEii:bb.a
  %i.rj = zext i16 %.pre to i64                   ; 2 uses
  %invariant.gep.i114 = getelementptr [8 x i8], ptr %i.ri, i64 %i.rj
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i116, %.lr.ph59.i113
  %i.rk = phi i16 [ %i.rf, %.lr.ph59.i113 ], [ %i.th, %._crit_edge.i116 ]
  %i.rl = phi i16 [ %.pre, %.lr.ph59.i113 ], [ %i.ti, %._crit_edge.i116 ] ; 3 uses
  %.05357.i115 = phi i32 [ 1, %.lr.ph59.i113 ], [ %i.tj, %._crit_edge.i116 ] ; 2 uses
  %i.rm = icmp ugt i16 %i.rl, 2
  br i1 %i.rm, label %.lr.ph.preheader.i117, label %._crit_edge.i116

.lr.ph.preheader.i117:                            ; preds = %bb.y
  %i.rn = zext i16 %i.rl to i32
  %i.ro = mul i32 %.05357.i115, %i.rn
  %i.rp = add nuw i32 %i.ro, 1
  %i.rq = sext i32 %i.rp to i64                   ; 2 uses
  %.phi.trans.insert.i118 = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.rq
  %.phi.trans.insert62.i119 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i118, i64 2
  %.pre.i120 = load i16, ptr %.phi.trans.insert62.i119, align 2, !tbaa !82
  br label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %bb.ab, %.lr.ph.preheader.i117
  %i.rr = phi i16 [ %.pre.i120, %.lr.ph.preheader.i117 ], [ %i.rz, %bb.ab ]
  %indvars.iv.i122 = phi i64 [ %i.rq, %.lr.ph.preheader.i117 ], [ %indvars.iv.next.i124, %bb.ab ] ; 4 uses
  %.05255.i123 = phi i32 [ 1, %.lr.ph.preheader.i117 ], [ %i.tc, %bb.ab ]
  %i.rs = getelementptr [8 x i8], ptr %i.ri, i64 %indvars.iv.i122 ; 2 uses
  %i.rt = uitofp i16 %i.rr to double
  %i.ru = getelementptr i8, ptr %i.rs, i64 -6
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !82 ; 3 uses
  %i.rw = zext i16 %i.rv to i32
  %indvars.iv.next.i124 = add nuw nsw i64 %indvars.iv.i122, 1 ; 2 uses
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %indvars.iv.next.i124
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 2
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !82 ; 4 uses
  %i.sa = zext i16 %i.rz to i32
  %i.sb = add nuw nsw i32 %i.sa, %i.rw            ; 3 uses
  %i.sc = sub nsw i64 %indvars.iv.i122, %i.rj
  %i.sd = getelementptr inbounds [8 x i8], ptr %i.ri, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 2
  %i.sf = load i16, ptr %i.se, align 2, !tbaa !82 ; 3 uses
  %i.sg = zext i16 %i.sf to i32
  %gep.i125 = getelementptr [8 x i8], ptr %invariant.gep.i114, i64 %indvars.iv.i122
  %i.sh = getelementptr inbounds nuw i8, ptr %gep.i125, i64 2
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !82 ; 3 uses
  %i.sj = zext i16 %i.si to i32
  %i.sk = add nuw nsw i32 %i.sj, %i.sg            ; 3 uses
  %i.sl = add nuw nsw i32 %i.sk, %i.sb
  %i.sm = uitofp nneg i32 %i.sl to double
  %i.sn = fmul reassoc nnan nsz arcp contract afn double %i.sm, 2.500000e-01
  %i.so = fcmp reassoc nsz arcp contract afn olt double %i.sn, %i.rt
  br i1 %i.so, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i121
  %..i131 = tail call i16 @llvm.umin.i16(i16 %i.rv, i16 %i.rz)
  %i.sp = zext i16 %..i131 to i32
  %i.sq = add nuw nsw i32 %i.sb, %i.sp
  %i.sr = tail call i16 @llvm.umin.i16(i16 %i.sf, i16 %i.si)
  %i.ss = zext i16 %i.sr to i32
  %i.st = add nuw nsw i32 %i.sk, %i.ss
  %i.su = icmp samesign ult i32 %i.sq, %i.st
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i121
  %.54.i126 = tail call i16 @llvm.umax.i16(i16 %i.rv, i16 %i.rz)
  %i.sv = zext i16 %.54.i126 to i32
  %i.sw = add nuw nsw i32 %i.sb, %i.sv
  %i.sx = tail call i16 @llvm.umax.i16(i16 %i.sf, i16 %i.si)
  %i.sy = zext i16 %i.sx to i32
  %i.sz = add nuw nsw i32 %i.sk, %i.sy
  %i.ta = icmp samesign ugt i32 %i.sw, %i.sz
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink.in.i127 = phi i1 [ %i.su, %bb.z ], [ %i.ta, %bb.aa ]
  %.sink.i128 = zext i1 %.sink.in.i127 to i16
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rs, i64 6
  store i16 %.sink.i128, ptr %i.tb, align 2, !tbaa !82
  %i.tc = add nuw nsw i32 %.05255.i123, 1         ; 2 uses
  %i.td = load i16, ptr %i.a, align 2, !tbaa !79  ; 2 uses
  %i.te = zext i16 %i.td to i32
  %i.tf = add nsw i32 %i.te, -1
  %i.tg = icmp slt i32 %i.tc, %i.tf
  br i1 %i.tg, label %.lr.ph.i121, label %._crit_edge.loopexit.i129, !llvm.loop !3

._crit_edge.loopexit.i129:                        ; preds = %bb.ab
  %.pre63.i130 = load i16, ptr %i.d, align 4, !tbaa !80
  br label %._crit_edge.i116

._crit_edge.i116:                                 ; preds = %._crit_edge.loopexit.i129, %bb.y
  %i.th = phi i16 [ %.pre63.i130, %._crit_edge.loopexit.i129 ], [ %i.rk, %bb.y ] ; 2 uses
  %i.ti = phi i16 [ %i.td, %._crit_edge.loopexit.i129 ], [ %i.rl, %bb.y ] ; 2 uses
  %i.tj = add nuw nsw i32 %.05357.i115, 1         ; 2 uses
  %i.tk = zext i16 %i.th to i32                   ; 2 uses
  %i.tl = add nsw i32 %i.tk, -1
  %i.tm = icmp slt i32 %i.tj, %i.tl
  br i1 %i.tm, label %bb.y, label %_ZN6LibRaw7dcb_mapEv.exit132, !llvm.loop !4

_ZN6LibRaw7dcb_mapEv.exit132:                     ; preds = %._crit_edge.i116, %_ZN6LibRaw7dcb_mapEv.exit112._ZN6LibRaw7dcb_mapEv.exit132_crit_edge
  %.pre-phi = phi i32 [ %.pre150, %_ZN6LibRaw7dcb_mapEv.exit112._ZN6LibRaw7dcb_mapEv.exit132_crit_edge ], [ %i.tk, %._crit_edge.i116 ]
  %i.tn = phi i16 [ %.pre, %_ZN6LibRaw7dcb_mapEv.exit112._ZN6LibRaw7dcb_mapEv.exit132_crit_edge ], [ %i.ti, %._crit_edge.i116 ]
  %i.to = zext i16 %i.tn to i32
  %i.tp = mul nuw nsw i32 %.pre-phi, %i.to
  %.not.i133 = icmp eq i32 %i.tp, 0
  br i1 %.not.i133, label %_ZN6LibRaw23dcb_restore_from_bufferEPA3_f.exit, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %_ZN6LibRaw7dcb_mapEv.exit132
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !87
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i134
  %indvars.iv.i135 = phi i64 [ 0, %.lr.ph.i134 ], [ %indvars.iv.next.i136, %bb.ac ] ; 3 uses
  %i.ts = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv.i135 ; 2 uses
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !83
  %i.tu = fptoui float %i.tt to i16
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv.i135 ; 2 uses
  store i16 %i.tu, ptr %i.tv, align 2, !tbaa !82
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !83
  %i.ty = fptoui float %i.tx to i16
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 4
  store i16 %i.ty, ptr %i.tz, align 2, !tbaa !82
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i135, 1 ; 2 uses
  %i.ua = load i16, ptr %i.d, align 4, !tbaa !80
  %i.ub = zext i16 %i.ua to i64
  %i.uc = load i16, ptr %i.a, align 2, !tbaa !79
  %i.ud = zext i16 %i.uc to i64
  %i.ue = mul nuw nsw i64 %i.ud, %i.ub
  %i.uf = icmp samesign ult i64 %indvars.iv.next.i136, %i.ue
  br i1 %i.uf, label %bb.ac, label %_ZN6LibRaw23dcb_restore_from_bufferEPA3_f.exit, !llvm.loop !2

_ZN6LibRaw23dcb_restore_from_bufferEPA3_f.exit:   ; preds = %bb.ac, %_ZN6LibRaw7dcb_mapEv.exit132
  tail call void @_ZN6LibRaw9dcb_colorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.not14 = icmp eq i32 %2, 0
  br i1 %.not14, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN6LibRaw23dcb_restore_from_bufferEPA3_f.exit
  tail call void @_ZN6LibRaw14dcb_refinementEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  tail call void @_ZN6LibRaw14dcb_color_fullEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN6LibRaw23dcb_restore_from_bufferEPA3_f.exit
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.h)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }

!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !84}
!1 = distinct !{!1, !84}
!2 = distinct !{!2, !84}
!3 = distinct !{!3, !84}
!4 = distinct !{!4, !84}
!5 = distinct !{!5, !84}
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 short", !17, i64 0}
!19 = !{!"short", !13, i64 0}
!20 = !{!"double", !13, i64 0}
!21 = !{!"_ZTS20libraw_image_sizes_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !19, i64 12, !19, i64 14, !14, i64 16, !20, i64 24, !14, i64 32, !13, i64 36, !19, i64 164, !13, i64 166}
!22 = !{!"p1 omnipotent char", !17, i64 0}
!23 = !{!"_ZTS16libraw_iparams_t", !13, i64 0, !13, i64 4, !13, i64 68, !13, i64 132, !13, i64 196, !13, i64 260, !14, i64 324, !14, i64 328, !14, i64 332, !14, i64 336, !14, i64 340, !14, i64 344, !13, i64 348, !13, i64 384, !13, i64 420, !14, i64 428, !22, i64 432}
!24 = !{!"float", !13, i64 0}
!25 = !{!"_ZTS18libraw_nikonlens_t", !24, i64 0, !13, i64 4, !13, i64 5, !13, i64 6, !13, i64 7}
!26 = !{!"_ZTS16libraw_dnglens_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!27 = !{!"long long", !13, i64 0}
!28 = !{!"_ZTS24libraw_makernotes_lens_t", !27, i64 0, !13, i64 8, !19, i64 136, !19, i64 138, !27, i64 144, !19, i64 152, !19, i64 154, !13, i64 156, !19, i64 220, !13, i64 222, !13, i64 238, !24, i64 256, !24, i64 260, !24, i64 264, !24, i64 268, !24, i64 272, !24, i64 276, !24, i64 280, !24, i64 284, !24, i64 288, !24, i64 292, !24, i64 296, !24, i64 300, !24, i64 304, !24, i64 308, !24, i64 312, !27, i64 320, !13, i64 328, !27, i64 456, !13, i64 464, !27, i64 592, !13, i64 600, !19, i64 728, !24, i64 732}
!29 = !{!"_ZTS17libraw_lensinfo_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !13, i64 20, !13, i64 148, !13, i64 276, !13, i64 404, !19, i64 532, !25, i64 536, !26, i64 544, !28, i64 560}
!30 = !{!"_ZTS13libraw_area_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6}
!31 = !{!"_ZTS25libraw_canon_makernotes_t", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !13, i64 16, !14, i64 32, !13, i64 36, !19, i64 52, !19, i64 54, !13, i64 56, !19, i64 58, !19, i64 60, !19, i64 62, !19, i64 64, !19, i64 66, !19, i64 68, !19, i64 70, !19, i64 72, !19, i64 74, !19, i64 76, !19, i64 78, !19, i64 80, !19, i64 82, !14, i64 84, !24, i64 88, !19, i64 92, !19, i64 94, !19, i64 96, !19, i64 98, !14, i64 100, !19, i64 104, !14, i64 108, !14, i64 112, !19, i64 116, !14, i64 120, !30, i64 124, !30, i64 132, !30, i64 140, !30, i64 148, !30, i64 156, !13, i64 164}
!32 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6}
!33 = !{!"_ZTS25libraw_nikon_makernotes_t", !20, i64 0, !19, i64 8, !19, i64 10, !13, i64 12, !13, i64 19, !13, i64 20, !13, i64 21, !13, i64 34, !13, i64 54, !13, i64 58, !13, i64 62, !13, i64 66, !13, i64 67, !13, i64 68, !13, i64 69, !13, i64 70, !13, i64 71, !13, i64 73, !13, i64 74, !13, i64 75, !13, i64 76, !13, i64 77, !13, i64 78, !13, i64 82, !13, i64 86, !19, i64 88, !14, i64 92, !14, i64 96, !14, i64 100, !14, i64 104, !13, i64 112, !13, i64 144, !13, i64 145, !13, i64 146, !14, i64 148, !14, i64 152, !14, i64 156, !13, i64 160, !13, i64 162, !19, i64 170, !32, i64 172, !19, i64 180, !19, i64 182, !19, i64 184, !14, i64 188, !13, i64 192, !13, i64 212, !14, i64 232, !13, i64 236, !14, i64 248, !22, i64 256, !19, i64 264, !19, i64 266, !13, i64 268, !19, i64 270, !20, i64 272, !20, i64 280, !20, i64 288}
!34 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !14, i64 0, !20, i64 8, !13, i64 16, !13, i64 24, !13, i64 88, !14, i64 152, !14, i64 156, !14, i64 160, !14, i64 164, !13, i64 168, !13, i64 200, !14, i64 264, !13, i64 268, !13, i64 276, !13, i64 288}
!35 = !{!"_ZTS18libraw_fuji_info_t", !24, i64 0, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !19, i64 12, !19, i64 14, !19, i64 16, !19, i64 18, !13, i64 20, !13, i64 53, !24, i64 88, !19, i64 92, !19, i64 94, !13, i64 96, !19, i64 100, !14, i64 104, !14, i64 108, !19, i64 112, !13, i64 114, !19, i64 120, !19, i64 122, !19, i64 124, !19, i64 126, !19, i64 128, !14, i64 132, !19, i64 136, !13, i64 138, !13, i64 151, !13, i64 156, !14, i64 164, !19, i64 168, !14, i64 172, !19, i64 176, !13, i64 178, !13, i64 196, !14, i64 324, !14, i64 328, !14, i64 332, !13, i64 336, !14, i64 344}
!36 = !{!"_ZTS27libraw_olympus_makernotes_t", !13, i64 0, !19, i64 6, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !13, i64 64, !13, i64 72, !19, i64 82, !13, i64 84, !19, i64 88, !19, i64 90, !13, i64 92, !13, i64 352, !19, i64 392, !13, i64 394, !13, i64 396, !13, i64 404, !19, i64 416, !19, i64 418, !19, i64 420, !19, i64 422, !20, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !14, i64 452, !19, i64 456, !19, i64 458}
!37 = !{!"_ZTS18libraw_sony_info_t", !19, i64 0, !13, i64 2, !13, i64 3, !14, i64 4, !13, i64 8, !14, i64 12, !13, i64 16, !13, i64 17, !19, i64 18, !13, i64 20, !13, i64 24, !13, i64 25, !19, i64 26, !13, i64 28, !13, i64 38, !13, i64 39, !13, i64 40, !19, i64 48, !13, i64 50, !13, i64 51, !13, i64 52, !19, i64 54, !14, i64 56, !19, i64 60, !13, i64 62, !19, i64 66, !19, i64 68, !19, i64 70, !19, i64 72, !19, i64 74, !19, i64 76, !19, i64 78, !14, i64 80, !24, i64 84, !19, i64 88, !14, i64 92, !14, i64 96, !19, i64 100, !13, i64 102, !14, i64 124, !19, i64 128, !14, i64 132, !13, i64 136, !13, i64 137, !19, i64 138, !19, i64 140, !19, i64 142, !19, i64 144, !19, i64 146, !19, i64 148, !19, i64 150, !19, i64 152, !19, i64 154, !14, i64 156, !19, i64 160, !13, i64 162, !24, i64 180}
!38 = !{!"_ZTS25libraw_kodak_makernotes_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !13, i64 12, !13, i64 48, !13, i64 84, !13, i64 120, !13, i64 156, !13, i64 192, !19, i64 228, !19, i64 230, !19, i64 232, !19, i64 234, !24, i64 236, !24, i64 240}
!39 = !{!"_ZTS29libraw_panasonic_makernotes_t", !19, i64 0, !19, i64 2, !13, i64 4, !14, i64 36, !24, i64 40, !13, i64 44, !19, i64 56, !19, i64 58, !14, i64 60, !14, i64 64}
!40 = !{!"_ZTS26libraw_pentax_makernotes_t", !13, i64 0, !13, i64 4, !13, i64 8, !19, i64 12, !14, i64 16, !14, i64 20, !19, i64 24, !13, i64 26, !19, i64 30, !13, i64 32, !13, i64 33, !19, i64 34}
!41 = !{!"_ZTS22libraw_p1_makernotes_t", !13, i64 0, !13, i64 64, !13, i64 128, !13, i64 384}
!42 = !{!"_ZTS25libraw_ricoh_makernotes_t", !19, i64 0, !13, i64 4, !13, i64 12, !19, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !19, i64 40, !19, i64 42, !19, i64 44, !19, i64 46, !19, i64 48, !19, i64 50, !20, i64 56, !20, i64 64}
!43 = !{!"_ZTS27libraw_samsung_makernotes_t", !13, i64 0, !13, i64 16, !13, i64 32, !13, i64 40, !20, i64 88, !14, i64 96, !13, i64 100}
!44 = !{!"_ZTS24libraw_metadata_common_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36, !24, i64 40, !24, i64 44, !24, i64 48, !24, i64 52, !24, i64 56, !24, i64 60, !19, i64 64, !13, i64 66, !24, i64 196, !13, i64 200, !14, i64 296}
!45 = !{!"_ZTS19libraw_makernotes_t", !31, i64 0, !33, i64 168, !34, i64 464, !35, i64 848, !36, i64 1200, !37, i64 1664, !38, i64 1848, !39, i64 2092, !40, i64 2160, !41, i64 2196, !42, i64 2648, !43, i64 2720, !44, i64 2856}
!46 = !{!"_ZTS21libraw_shootinginfo_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !19, i64 12, !13, i64 14, !13, i64 78}
!47 = !{!"_ZTS22libraw_output_params_t", !13, i64 0, !13, i64 16, !13, i64 32, !13, i64 64, !13, i64 112, !24, i64 128, !24, i64 132, !14, i64 136, !14, i64 140, !14, i64 144, !14, i64 148, !14, i64 152, !14, i64 156, !14, i64 160, !22, i64 168, !22, i64 176, !22, i64 184, !22, i64 192, !14, i64 200, !14, i64 204, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !13, i64 224, !14, i64 240, !14, i64 244, !24, i64 248, !24, i64 252, !14, i64 256, !14, i64 260, !14, i64 264, !14, i64 268, !14, i64 272, !14, i64 276, !14, i64 280, !14, i64 284, !24, i64 288, !24, i64 292, !14, i64 296, !14, i64 300}
!48 = !{!"any p2 pointer", !17, i64 0}
!49 = !{!"p2 omnipotent char", !48, i64 0}
!50 = !{!"_ZTS26libraw_raw_unpack_params_t", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !24, i64 28, !13, i64 32, !49, i64 40}
!51 = !{!"_ZTS5ph1_t", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !24, i64 32}
!52 = !{!"_ZTS19libraw_dng_levels_t", !14, i64 0, !13, i64 4, !14, i64 16420, !13, i64 16424, !24, i64 32840, !13, i64 32844, !13, i64 32860, !13, i64 32868, !14, i64 32884, !13, i64 32888, !13, i64 32904, !24, i64 32920, !24, i64 32924, !13, i64 32928}
!53 = !{!"_ZTS18libraw_colordata_t", !13, i64 0, !13, i64 131072, !14, i64 147488, !14, i64 147492, !14, i64 147496, !13, i64 147500, !24, i64 147516, !24, i64 147520, !13, i64 147524, !13, i64 147652, !13, i64 147668, !13, i64 147684, !13, i64 147732, !13, i64 147780, !13, i64 147828, !51, i64 147876, !24, i64 147912, !24, i64 147916, !13, i64 147920, !13, i64 147984, !13, i64 148048, !13, i64 148112, !13, i64 148176, !13, i64 148193, !17, i64 148264, !14, i64 148272, !13, i64 148276, !13, i64 148308, !52, i64 148648, !13, i64 181624, !13, i64 185720, !14, i64 187000, !13, i64 187004, !14, i64 187076, !14, i64 187080}
!54 = !{!"long", !13, i64 0}
!55 = !{!"_ZTS17libraw_gps_info_t", !13, i64 0, !13, i64 12, !13, i64 24, !24, i64 36, !13, i64 40, !13, i64 41, !13, i64 42, !13, i64 43, !13, i64 44}
!56 = !{!"_ZTS17libraw_imgother_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !54, i64 16, !14, i64 24, !13, i64 28, !55, i64 156, !13, i64 204, !13, i64 716, !13, i64 780}
!57 = !{!"_ZTS24LibRaw_thumbnail_formats", !13, i64 0}
!58 = !{!"_ZTS18libraw_thumbnail_t", !57, i64 0, !19, i64 4, !19, i64 6, !14, i64 8, !14, i64 12, !22, i64 16}
!59 = !{!"_ZTS23libraw_thumbnail_list_t", !14, i64 0, !13, i64 8}
!60 = !{!"p1 float", !17, i64 0}
!61 = !{!"_ZTS31libraw_internal_output_params_t", !14, i64 0, !14, i64 4, !14, i64 8, !19, i64 12, !19, i64 14}
!62 = !{!"_ZTS16libraw_rawdata_t", !17, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !18, i64 56, !18, i64 64, !23, i64 72, !21, i64 512, !61, i64 696, !53, i64 712}
!63 = !{!"_ZTS13libraw_data_t", !18, i64 0, !21, i64 8, !23, i64 192, !29, i64 632, !45, i64 1928, !46, i64 5088, !47, i64 5232, !50, i64 5536, !14, i64 5584, !14, i64 5588, !53, i64 5592, !56, i64 192680, !58, i64 193480, !59, i64 193504, !62, i64 193768, !17, i64 381568}
!64 = !{!"p1 _ZTS10LibRaw_TLS", !17, i64 0}
!65 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !17, i64 0}
!66 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!67 = !{!"_ZTS15internal_data_t", !65, i64 0, !66, i64 8, !14, i64 16, !22, i64 24, !27, i64 32, !27, i64 40, !13, i64 48}
!68 = !{!"p1 int", !17, i64 0}
!69 = !{!"_ZTS13output_data_t", !68, i64 0, !68, i64 8}
!70 = !{!"_ZTS15identify_data_t", !14, i64 0, !27, i64 8, !27, i64 16, !14, i64 24, !14, i64 28, !14, i64 32}
!71 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !13, i64 0}
!72 = !{!"_ZTS12pana8_tags_t", !13, i64 0, !13, i64 24, !19, i64 36, !13, i64 38, !13, i64 46, !13, i64 80, !13, i64 114, !19, i64 148, !19, i64 150, !13, i64 152, !13, i64 192, !13, i64 204, !13, i64 224, !13, i64 234}
!73 = !{!"_ZTS15unpacker_data_t", !19, i64 0, !13, i64 2, !13, i64 10, !14, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !27, i64 72, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !71, i64 96, !14, i64 100, !14, i64 104, !14, i64 108, !14, i64 112, !14, i64 116, !14, i64 120, !14, i64 124, !14, i64 128, !14, i64 132, !14, i64 136, !14, i64 140, !27, i64 144, !14, i64 152, !14, i64 156, !14, i64 160, !14, i64 164, !14, i64 168, !14, i64 172, !14, i64 176, !14, i64 180, !14, i64 184, !72, i64 192, !13, i64 440, !14, i64 2488, !14, i64 2492, !19, i64 2496, !19, i64 2498, !14, i64 2500, !14, i64 2504, !14, i64 2508, !14, i64 2512, !14, i64 2516, !14, i64 2520, !14, i64 2524, !13, i64 2528, !19, i64 2608}
!74 = !{!"_ZTS22libraw_internal_data_t", !67, i64 0, !61, i64 64, !69, i64 80, !70, i64 96, !73, i64 136}
!75 = !{!"p1 _ZTS6decode", !17, i64 0}
!76 = !{!"_ZTS13libraw_memmgr", !48, i64 0, !14, i64 8}
!77 = !{!"_ZTS18libraw_callbacks_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144}
!78 = !{!"_ZTS6LibRaw", !63, i64 8, !64, i64 381584, !74, i64 381592, !13, i64 384344, !75, i64 433496, !75, i64 433504, !13, i64 433512, !76, i64 768232, !77, i64 768248, !13, i64 768400, !13, i64 768416, !13, i64 768432, !17, i64 768448, !17, i64 768456, !17, i64 768464, !54, i64 768472, !17, i64 768480, !17, i64 768488, !17, i64 768496, !17, i64 768504}
!79 = !{!78, !19, i64 22}
!80 = !{!78, !19, i64 20}
!81 = !{!78, !14, i64 544}
!82 = !{!19, !19, i64 0}
!83 = !{!24, !24, i64 0}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = !{!78, !18, i64 8}
!88 = !{!20, !20, i64 0}
!89 = distinct !{!89, !84, !85, !86}
!90 = distinct !{!90, !84, !86, !85}
!91 = distinct !{!91, !84, !85, !86}
!92 = distinct !{!92, !84, !86, !85}
!93 = distinct !{!93, i1 false, !"LVerDomain"}
!94 = distinct !{!94, !93}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !93}
!97 = distinct !{!97, !93}
!98 = distinct !{!98, !93}
!99 = distinct !{!99, !93}
!100 = distinct !{!100, !93}
!101 = distinct !{!101, !93}
!102 = distinct !{!102, !93}
!103 = distinct !{!103, !93}
!104 = distinct !{!104, !84, !85, !86}
!105 = distinct !{!105, !84, !85}
!106 = distinct !{!106, !84}
!107 = distinct !{!107, !84}
!108 = distinct !{!108, !84}
!109 = !{!94}
!110 = !{!95}
!111 = !{!96}
!112 = !{!97}
!113 = !{!98}
!114 = !{!99}
!115 = !{!100}
!116 = !{!101}
!117 = !{!102}
!118 = !{!103}
!119 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102}
!120 = distinct !{!120, i1 false, !"LVerDomain"}
!121 = distinct !{!121, !120}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !120}
!124 = distinct !{!124, !120}
!125 = distinct !{!125, !120}
!126 = distinct !{!126, !120}
!127 = distinct !{!127, !84, !85, !86}
!128 = distinct !{!128, !84, !85}
!129 = distinct !{!129, !84}
!130 = distinct !{!130, i1 false, !"LVerDomain"}
!131 = distinct !{!131, !130}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !130}
!134 = distinct !{!134, !130}
!135 = distinct !{!135, !130}
!136 = distinct !{!136, !84, !85, !86}
!137 = distinct !{!137, !84, !85}
!138 = distinct !{!138, !84}
!139 = !{!121}
!140 = !{!122}
!141 = !{!123}
!142 = !{!124}
!143 = !{!125}
!144 = !{!126}
!145 = !{!121, !122, !123, !124, !125}
!146 = !{!131}
!147 = !{!135, !134, !133, !132}
!148 = !{!134}
!149 = !{!133}
!150 = !{!132}
!151 = !{!135}
!152 = !{!134, !133, !132}
!153 = distinct !{!153, i1 false, !"LVerDomain"}
!154 = distinct !{!154, !153}
!155 = distinct !{!155, !153}
!156 = distinct !{!156, !153}
!157 = distinct !{!157, !153}
!158 = distinct !{!158, !153}
!159 = distinct !{!159, !153}
!160 = distinct !{!160, !84, !85, !86}
!161 = distinct !{!161, !84, !85}
!162 = distinct !{!162, !84}
!163 = distinct !{!163, i1 false, !"LVerDomain"}
!164 = distinct !{!164, !163}
!165 = distinct !{!165, !163}
!166 = distinct !{!166, !163}
!167 = distinct !{!167, !163}
!168 = distinct !{!168, !163}
!169 = distinct !{!169, !84, !85, !86}
!170 = distinct !{!170, !84, !85}
!171 = distinct !{!171, !84}
!172 = !{!154}
!173 = !{!155}
!174 = !{!156}
!175 = !{!157}
end_hunk_1
