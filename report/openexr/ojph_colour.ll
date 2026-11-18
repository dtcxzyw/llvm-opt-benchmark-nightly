Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_colour?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ojph5local16gen_rct_backwardEPKNS_8line_bufES3_S3_PS1_S4_S4_j:bb.a
  br i1 %.not5970, label %.loopexit, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %bb.c
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !11 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !11 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !11 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !11 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !11 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !11 ; 4 uses
  %i.dd = zext i32 %6 to i64                      ; 2 uses
  %min.iters.check144 = icmp ult i32 %6, 10
  br i1 %min.iters.check144, label %.lr.ph78.preheader174, label %vector.memcheck145

vector.memcheck145:                               ; preds = %.lr.ph78.preheader
  %i.de = ptrtoaddr ptr %i.cw to i64              ; 2 uses
  %i.df = ptrtoaddr ptr %i.cu to i64              ; 2 uses
  %i.dg = ptrtoaddr ptr %i.cs to i64              ; 2 uses
  %i.dh = sub i64 %i.de, %i.df
  %diff.check146 = icmp ugt i64 %i.dh, -8
  %i.di = sub i64 %i.de, %i.dg
  %diff.check147 = icmp ugt i64 %i.di, -8
  %conflict.rdx148 = or i1 %diff.check146, %diff.check147
  %i.dj = sub i64 %i.df, %i.dg
  %diff.check149 = icmp ugt i64 %i.dj, -8
  %conflict.rdx150 = or i1 %conflict.rdx148, %diff.check149
  br i1 %conflict.rdx150, label %.lr.ph78.preheader174, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck145
  %n.vec152 = and i64 %i.dd, 4294967294           ; 5 uses
  %i.dk = trunc nuw i64 %n.vec152 to i32
  %i.dl = sub i32 %6, %i.dk
  %i.dm = shl nuw nsw i64 %n.vec152, 2            ; 3 uses
  %i.dn = getelementptr i8, ptr %i.cs, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.cu, i64 %i.dm
  %i.dp = getelementptr i8, ptr %i.cw, i64 %i.dm
  %i.dq = shl nuw nsw i64 %n.vec152, 3            ; 3 uses
  %i.dr = getelementptr i8, ptr %i.cy, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.da, i64 %i.dq
  %i.dt = getelementptr i8, ptr %i.dc, i64 %i.dq
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next164, %vector.body153 ] ; 3 uses
  %i.du = shl i64 %index154, 2                    ; 3 uses
  %next.gep155 = getelementptr i8, ptr %i.cs, i64 %i.du
  %next.gep156 = getelementptr i8, ptr %i.cu, i64 %i.du
  %next.gep157 = getelementptr i8, ptr %i.cw, i64 %i.du
  %i.dv = shl i64 %index154, 3                    ; 3 uses
  %next.gep158 = getelementptr i8, ptr %i.cy, i64 %i.dv
  %next.gep159 = getelementptr i8, ptr %i.da, i64 %i.dv
  %next.gep160 = getelementptr i8, ptr %i.dc, i64 %i.dv
  %wide.load161 = load <2 x i64>, ptr %next.gep160, align 8, !tbaa !16
  %wide.load162 = load <2 x i64>, ptr %next.gep159, align 8, !tbaa !16 ; 2 uses
  %wide.load163 = load <2 x i64>, ptr %next.gep158, align 8, !tbaa !16 ; 2 uses
  %i.dw = add nsw <2 x i64> %wide.load163, %wide.load162
  %i.dx = ashr <2 x i64> %i.dw, splat (i64 2)
  %i.dy = sub nsw <2 x i64> %wide.load161, %i.dx  ; 3 uses
  %i.dz = add nsw <2 x i64> %i.dy, %wide.load163
  %i.ea = trunc <2 x i64> %i.dz to <2 x i32>
  store <2 x i32> %i.ea, ptr %next.gep157, align 4, !tbaa !12
  %i.eb = trunc <2 x i64> %i.dy to <2 x i32>
  store <2 x i32> %i.eb, ptr %next.gep156, align 4, !tbaa !12
  %i.ec = add nsw <2 x i64> %i.dy, %wide.load162
  %i.ed = trunc <2 x i64> %i.ec to <2 x i32>
  store <2 x i32> %i.ed, ptr %next.gep155, align 4, !tbaa !12
  %index.next164 = add nuw i64 %index154, 2       ; 2 uses
  %i.ee = icmp eq i64 %index.next164, %n.vec152
  br i1 %i.ee, label %middle.block165, label %vector.body153, !llvm.loop !56

middle.block165:                                  ; preds = %vector.body153
  %cmp.n166 = icmp eq i64 %n.vec152, %i.dd
  br i1 %cmp.n166, label %.loopexit, label %.lr.ph78.preheader174

.lr.ph78.preheader174:                            ; preds = %vector.memcheck145, %.lr.ph78.preheader, %middle.block165
  %.04977.ph = phi i32 [ %6, %vector.memcheck145 ], [ %6, %.lr.ph78.preheader ], [ %i.dl, %middle.block165 ] ; 4 uses
  %.05076.ph = phi ptr [ %i.cs, %vector.memcheck145 ], [ %i.cs, %.lr.ph78.preheader ], [ %i.dn, %middle.block165 ] ; 3 uses
  %.05175.ph = phi ptr [ %i.cu, %vector.memcheck145 ], [ %i.cu, %.lr.ph78.preheader ], [ %i.do, %middle.block165 ] ; 3 uses
  %.05274.ph = phi ptr [ %i.cw, %vector.memcheck145 ], [ %i.cw, %.lr.ph78.preheader ], [ %i.dp, %middle.block165 ] ; 3 uses
  %.05373.ph = phi ptr [ %i.cy, %vector.memcheck145 ], [ %i.cy, %.lr.ph78.preheader ], [ %i.dr, %middle.block165 ] ; 3 uses
  %.05472.ph = phi ptr [ %i.da, %vector.memcheck145 ], [ %i.da, %.lr.ph78.preheader ], [ %i.ds, %middle.block165 ] ; 3 uses
  %.05571.ph = phi ptr [ %i.dc, %vector.memcheck145 ], [ %i.dc, %.lr.ph78.preheader ], [ %i.dt, %middle.block165 ] ; 3 uses
  %xtraiter177 = and i32 %.04977.ph, 1
  %lcmp.mod178.not = icmp eq i32 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph78.prol.loopexit, label %.lr.ph78.prol

.lr.ph78.prol:                                    ; preds = %.lr.ph78.preheader174
  %i.ef = getelementptr inbounds nuw i8, ptr %.05571.ph, i64 8
  %i.eg = load i64, ptr %.05571.ph, align 8, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %.05472.ph, i64 8
  %i.ei = load i64, ptr %.05472.ph, align 8, !tbaa !16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.05373.ph, i64 8
  %i.ek = load i64, ptr %.05373.ph, align 8, !tbaa !16 ; 2 uses
  %i.el = add nsw i64 %i.ek, %i.ei
  %i.em = ashr i64 %i.el, 2
  %i.en = sub nsw i64 %i.eg, %i.em                ; 3 uses
  %i.eo = add nsw i64 %i.en, %i.ek
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %.05274.ph, i64 4
  store i32 %i.ep, ptr %.05274.ph, align 4, !tbaa !12
  %i.er = trunc i64 %i.en to i32
  %i.es = getelementptr inbounds nuw i8, ptr %.05175.ph, i64 4
  store i32 %i.er, ptr %.05175.ph, align 4, !tbaa !12
  %i.et = add nsw i64 %i.en, %i.ei
  %i.eu = trunc i64 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %.05076.ph, i64 4
  store i32 %i.eu, ptr %.05076.ph, align 4, !tbaa !12
  %i.ew = add nsw i32 %.04977.ph, -1
  br label %.lr.ph78.prol.loopexit

.lr.ph78.prol.loopexit:                           ; preds = %.lr.ph78.prol, %.lr.ph78.preheader174
  %.04977.unr = phi i32 [ %.04977.ph, %.lr.ph78.preheader174 ], [ %i.ew, %.lr.ph78.prol ]
  %.05076.unr = phi ptr [ %.05076.ph, %.lr.ph78.preheader174 ], [ %i.ev, %.lr.ph78.prol ]
  %.05175.unr = phi ptr [ %.05175.ph, %.lr.ph78.preheader174 ], [ %i.es, %.lr.ph78.prol ]
  %.05274.unr = phi ptr [ %.05274.ph, %.lr.ph78.preheader174 ], [ %i.eq, %.lr.ph78.prol ]
  %.05373.unr = phi ptr [ %.05373.ph, %.lr.ph78.preheader174 ], [ %i.ej, %.lr.ph78.prol ]
  %.05472.unr = phi ptr [ %.05472.ph, %.lr.ph78.preheader174 ], [ %i.eh, %.lr.ph78.prol ]
  %.05571.unr = phi ptr [ %.05571.ph, %.lr.ph78.preheader174 ], [ %i.ef, %.lr.ph78.prol ]
  %i.ex = icmp eq i32 %.04977.ph, 1
  br i1 %i.ex, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.prol.loopexit, %.lr.ph78
  %.04977 = phi i32 [ %i.gg, %.lr.ph78 ], [ %.04977.unr, %.lr.ph78.prol.loopexit ]
  %.05076 = phi ptr [ %i.gf, %.lr.ph78 ], [ %.05076.unr, %.lr.ph78.prol.loopexit ] ; 3 uses
  %.05175 = phi ptr [ %i.gc, %.lr.ph78 ], [ %.05175.unr, %.lr.ph78.prol.loopexit ] ; 3 uses
  %.05274 = phi ptr [ %i.ga, %.lr.ph78 ], [ %.05274.unr, %.lr.ph78.prol.loopexit ] ; 3 uses
  %.05373 = phi ptr [ %i.ft, %.lr.ph78 ], [ %.05373.unr, %.lr.ph78.prol.loopexit ] ; 3 uses
  %.05472 = phi ptr [ %i.fr, %.lr.ph78 ], [ %.05472.unr, %.lr.ph78.prol.loopexit ] ; 3 uses
  %.05571 = phi ptr [ %i.fp, %.lr.ph78 ], [ %.05571.unr, %.lr.ph78.prol.loopexit ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.05571, i64 8
  %i.ez = load i64, ptr %.05571, align 8, !tbaa !16
  %i.fa = getelementptr inbounds nuw i8, ptr %.05472, i64 8
  %i.fb = load i64, ptr %.05472, align 8, !tbaa !16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.05373, i64 8
  %i.fd = load i64, ptr %.05373, align 8, !tbaa !16 ; 2 uses
  %i.fe = add nsw i64 %i.fd, %i.fb
  %i.ff = ashr i64 %i.fe, 2
  %i.fg = sub nsw i64 %i.ez, %i.ff                ; 3 uses
  %i.fh = add nsw i64 %i.fg, %i.fd
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %.05274, i64 4
  store i32 %i.fi, ptr %.05274, align 4, !tbaa !12
  %i.fk = trunc i64 %i.fg to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %.05175, i64 4
  store i32 %i.fk, ptr %.05175, align 4, !tbaa !12
  %i.fm = add nsw i64 %i.fg, %i.fb
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %.05076, i64 4
  store i32 %i.fn, ptr %.05076, align 4, !tbaa !12
  %i.fp = getelementptr inbounds nuw i8, ptr %.05571, i64 16
  %i.fq = load i64, ptr %i.ey, align 8, !tbaa !16
  %i.fr = getelementptr inbounds nuw i8, ptr %.05472, i64 16
  %i.fs = load i64, ptr %i.fa, align 8, !tbaa !16 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.05373, i64 16
  %i.fu = load i64, ptr %i.fc, align 8, !tbaa !16 ; 2 uses
  %i.fv = add nsw i64 %i.fu, %i.fs
  %i.fw = ashr i64 %i.fv, 2
  %i.fx = sub nsw i64 %i.fq, %i.fw                ; 3 uses
  %i.fy = add nsw i64 %i.fx, %i.fu
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %.05274, i64 8
  store i32 %i.fz, ptr %i.fj, align 4, !tbaa !12
  %i.gb = trunc i64 %i.fx to i32
  %i.gc = getelementptr inbounds nuw i8, ptr %.05175, i64 8
  store i32 %i.gb, ptr %i.fl, align 4, !tbaa !12
  %i.gd = add nsw i64 %i.fx, %i.fs
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %.05076, i64 8
  store i32 %i.ge, ptr %i.fo, align 4, !tbaa !12
  %i.gg = add i32 %.04977, -2                     ; 2 uses
  %.not59.1 = icmp eq i32 %i.gg, 0
  br i1 %.not59.1, label %.loopexit, label %.lr.ph78, !llvm.loop !57

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph78.prol.loopexit, %.lr.ph78, %middle.block, %middle.block165, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local15gen_ict_forwardEPKfS2_S2_PfS3_S3_j(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) #2 {
bb.a:
  %.not18 = icmp eq i32 %6, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %6 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %6, 20
  br i1 %min.iters.check, label %.lr.ph.preheader133, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %6, -1
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 4                  ; 6 uses
  %i.f = getelementptr i8, ptr %3, i64 %i.e       ; 5 uses
  %i.g = getelementptr i8, ptr %4, i64 %i.e       ; 5 uses
  %7 = getelementptr i8, ptr %5, i64 %i.e         ; 5 uses
  %8 = getelementptr i8, ptr %0, i64 %i.e         ; 3 uses
  %9 = getelementptr i8, ptr %1, i64 %i.e         ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 %i.e       ; 3 uses
  %bound0.a = icmp ult ptr %3, %i.g
  %bound1.a = icmp ult ptr %4, %i.f
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound074 = icmp ult ptr %3, %7
  %bound175 = icmp ult ptr %5, %i.f
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict76
  %bound077 = icmp ult ptr %3, %8
  %bound178 = icmp ult ptr %0, %i.f
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx80 = or i1 %conflict.rdx, %found.conflict79
  %bound081 = icmp ult ptr %3, %9
  %bound182 = icmp ult ptr %1, %i.f
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx84 = or i1 %conflict.rdx80, %found.conflict83
  %bound085 = icmp ult ptr %3, %i.h
  %bound186 = icmp ult ptr %2, %i.f
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84, %found.conflict87
  %bound089 = icmp ult ptr %4, %7
  %bound190 = icmp ult ptr %5, %i.g
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  %bound093 = icmp ult ptr %4, %8
  %bound194 = icmp ult ptr %0, %i.g
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %conflict.rdx92, %found.conflict95
  %bound097 = icmp ult ptr %4, %9
  %bound198 = icmp ult ptr %1, %i.g
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx100 = or i1 %conflict.rdx96, %found.conflict99
  %bound0101 = icmp ult ptr %4, %i.h
  %bound1102 = icmp ult ptr %2, %i.g
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx104 = or i1 %conflict.rdx100, %found.conflict103
  %bound0105 = icmp ult ptr %5, %8
  %bound1106 = icmp ult ptr %0, %7
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx108 = or i1 %conflict.rdx104, %found.conflict107
  %bound0109 = icmp ult ptr %5, %9
  %bound1110 = icmp ult ptr %1, %7
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx108, %found.conflict111
  %bound0113 = icmp ult ptr %5, %i.h
  %bound1114 = icmp ult ptr %2, %7
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  br i1 %conflict.rdx116, label %.lr.ph.preheader133, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 4 uses
  %i.i = trunc nuw i64 %n.vec to i32
  %i.j = sub i32 %6, %i.i
  %i.k = shl nuw nsw i64 %n.vec, 2                ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %i.m = getelementptr i8, ptr %5, i64 %i.k
  %i.n = getelementptr i8, ptr %4, i64 %i.k
  %i.o = getelementptr i8, ptr %3, i64 %i.k
  %i.p = getelementptr i8, ptr %2, i64 %i.k
  %i.q = getelementptr i8, ptr %1, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 2                        ; 6 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.r  ; 2 uses
  %next.gep117 = getelementptr i8, ptr %5, i64 %i.r
  %next.gep118 = getelementptr i8, ptr %4, i64 %i.r
  %next.gep119 = getelementptr i8, ptr %3, i64 %i.r
  %next.gep120 = getelementptr i8, ptr %2, i64 %i.r
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.r
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !18, !alias.scope !67
  %wide.load122 = load <4 x float>, ptr %next.gep121, align 4, !tbaa !18, !alias.scope !68
  %i.s = fmul <4 x float> %wide.load122, splat (float 5.870000e-01)
  %i.t = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.990000e-01), <4 x float> %i.s)
  %wide.load123 = load <4 x float>, ptr %next.gep120, align 4, !tbaa !18, !alias.scope !69 ; 2 uses
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load123, <4 x float> splat (float 1.140000e-01), <4 x float> %i.t) ; 3 uses
  store <4 x float> %i.u, ptr %next.gep119, align 4, !tbaa !18, !alias.scope !70, !noalias !71
  %i.v = fsub <4 x float> %wide.load123, %i.u
  %i.w = fmul <4 x float> %i.v, splat (float f0x3F107833)
  store <4 x float> %i.w, ptr %next.gep118, align 4, !tbaa !18, !alias.scope !72, !noalias !73
  %wide.load125 = load <4 x float>, ptr %next.gep, align 4, !tbaa !18, !alias.scope !67
  %i.x = fsub <4 x float> %wide.load125, %i.u
  %i.y = fmul <4 x float> %i.x, splat (float f0x3F3698A6)
  store <4 x float> %i.y, ptr %next.gep117, align 4, !tbaa !18, !alias.scope !74, !noalias !75
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader133

.lr.ph.preheader133:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.025.ph = phi i32 [ %6, %vector.memcheck ], [ %6, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.01224.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  %.01323.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.01422.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.01521.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.01620.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  %.01719.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader133, %.lr.ph
  %.025 = phi i32 [ %i.at, %.lr.ph ], [ %.025.ph, %.lr.ph.preheader133 ]
  %.01224 = phi ptr [ %i.am, %.lr.ph ], [ %.01224.ph, %.lr.ph.preheader133 ] ; 3 uses
  %.01323 = phi ptr [ %i.as, %.lr.ph ], [ %.01323.ph, %.lr.ph.preheader133 ] ; 2 uses
  %.01422 = phi ptr [ %i.al, %.lr.ph ], [ %.01422.ph, %.lr.ph.preheader133 ] ; 2 uses
  %.01521 = phi ptr [ %i.ao, %.lr.ph ], [ %.01521.ph, %.lr.ph.preheader133 ] ; 3 uses
  %.01620 = phi ptr [ %i.ah, %.lr.ph ], [ %.01620.ph, %.lr.ph.preheader133 ] ; 3 uses
  %.01719 = phi ptr [ %i.ab, %.lr.ph ], [ %.01719.ph, %.lr.ph.preheader133 ] ; 2 uses
  %i.aa = load float, ptr %.01224, align 4, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.01719, i64 4
  %i.ac = load float, ptr %.01719, align 4, !tbaa !18
  %i.ad = fmul float %i.ac, 5.870000e-01
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float 2.990000e-01, float %i.ad)
  %i.af = load float, ptr %.01620, align 4, !tbaa !18
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float 1.140000e-01, float %i.ae) ; 2 uses
  store float %i.ag, ptr %.01521, align 4, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.ai = load float, ptr %.01620, align 4, !tbaa !18
  %i.aj = fsub float %i.ai, %i.ag
  %i.ak = fmul float %i.aj, f0x3F107833
  %i.al = getelementptr inbounds nuw i8, ptr %.01422, i64 4
  store float %i.ak, ptr %.01422, align 4, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.01224, i64 4
  %i.an = load float, ptr %.01224, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.01521, i64 4
  %i.ap = load float, ptr %.01521, align 4, !tbaa !18
  %i.aq = fsub float %i.an, %i.ap
  %i.ar = fmul float %i.aq, f0x3F3698A6
  %i.as = getelementptr inbounds nuw i8, ptr %.01323, i64 4
  store float %i.ar, ptr %.01323, align 4, !tbaa !18
  %i.at = add i32 %.025, -1                       ; 2 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local16gen_ict_backwardEPKfS2_S2_PfS3_S3_j(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) #2 {
bb.a:
  %.not18 = icmp eq i32 %6, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %6 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %6, 20
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %6, -1
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 4                  ; 6 uses
  %i.f = getelementptr i8, ptr %4, i64 %i.e       ; 5 uses
  %i.g = getelementptr i8, ptr %3, i64 %i.e       ; 5 uses
  %7 = getelementptr i8, ptr %5, i64 %i.e         ; 5 uses
  %8 = getelementptr i8, ptr %0, i64 %i.e         ; 3 uses
  %9 = getelementptr i8, ptr %2, i64 %i.e         ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.e       ; 3 uses
  %bound0.a = icmp ult ptr %4, %i.g
  %bound1.a = icmp ult ptr %3, %i.f
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound074 = icmp ult ptr %4, %7
  %bound175 = icmp ult ptr %5, %i.f
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict76
  %bound077 = icmp ult ptr %4, %8
  %bound178 = icmp ult ptr %0, %i.f
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx80 = or i1 %conflict.rdx, %found.conflict79
  %bound081 = icmp ult ptr %4, %9
  %bound182 = icmp ult ptr %2, %i.f
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx84 = or i1 %conflict.rdx80, %found.conflict83
  %bound085 = icmp ult ptr %4, %i.h
  %bound186 = icmp ult ptr %1, %i.f
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84, %found.conflict87
  %bound089 = icmp ult ptr %3, %7
  %bound190 = icmp ult ptr %5, %i.g
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  %bound093 = icmp ult ptr %3, %8
  %bound194 = icmp ult ptr %0, %i.g
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %conflict.rdx92, %found.conflict95
  %bound097 = icmp ult ptr %3, %9
  %bound198 = icmp ult ptr %2, %i.g
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx100 = or i1 %conflict.rdx96, %found.conflict99
  %bound0101 = icmp ult ptr %3, %i.h
  %bound1102 = icmp ult ptr %1, %i.g
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx104 = or i1 %conflict.rdx100, %found.conflict103
  %bound0105 = icmp ult ptr %5, %8
  %bound1106 = icmp ult ptr %0, %7
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx108 = or i1 %conflict.rdx104, %found.conflict107
  %bound0109 = icmp ult ptr %5, %9
  %bound1110 = icmp ult ptr %2, %7
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx108, %found.conflict111
  %bound0113 = icmp ult ptr %5, %i.h
  %bound1114 = icmp ult ptr %1, %7
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  br i1 %conflict.rdx116, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 4 uses
  %i.i = trunc nuw i64 %n.vec to i32
  %i.j = sub i32 %6, %i.i
  %i.k = shl nuw nsw i64 %n.vec, 2                ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %i.m = getelementptr i8, ptr %5, i64 %i.k
  %i.n = getelementptr i8, ptr %4, i64 %i.k
  %i.o = getelementptr i8, ptr %3, i64 %i.k
  %i.p = getelementptr i8, ptr %2, i64 %i.k
  %i.q = getelementptr i8, ptr %1, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 2                        ; 6 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.r  ; 2 uses
  %next.gep117 = getelementptr i8, ptr %5, i64 %i.r
  %next.gep118 = getelementptr i8, ptr %4, i64 %i.r
  %next.gep119 = getelementptr i8, ptr %3, i64 %i.r
  %next.gep120 = getelementptr i8, ptr %2, i64 %i.r
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.r
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !18, !alias.scope !85 ; 2 uses
  %wide.load122 = load <4 x float>, ptr %next.gep120, align 4, !tbaa !18, !alias.scope !86 ; 2 uses
  %i.s = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load122, <4 x float> splat (float f0xBF36D1A2), <4 x float> %wide.load)
  %wide.load123 = load <4 x float>, ptr %next.gep121, align 4, !tbaa !18, !alias.scope !87 ; 2 uses
  %i.t = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load123, <4 x float> splat (float f0xBEB032A1), <4 x float> %i.s)
  store <4 x float> %i.t, ptr %next.gep118, align 4, !tbaa !18, !alias.scope !88, !noalias !89
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load122, <4 x float> splat (float 1.402000e+00), <4 x float> %wide.load)
  store <4 x float> %i.u, ptr %next.gep119, align 4, !tbaa !18, !alias.scope !90, !noalias !91
  %wide.load126 = load <4 x float>, ptr %next.gep, align 4, !tbaa !18, !alias.scope !85
  %i.v = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load123, <4 x float> splat (float 1.772000e+00), <4 x float> %wide.load126)
  store <4 x float> %i.v, ptr %next.gep117, align 4, !tbaa !18, !alias.scope !92, !noalias !93
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.025.ph = phi i32 [ %6, %vector.memcheck ], [ %6, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.01224.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  %.01323.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.01422.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.01521.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.01620.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  %.01719.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.025 = phi i32 [ %i.ao, %.lr.ph ], [ %.025.ph, %.lr.ph.preheader134 ]
  %.01224 = phi ptr [ %i.ai, %.lr.ph ], [ %.01224.ph, %.lr.ph.preheader134 ] ; 4 uses
  %.01323 = phi ptr [ %i.an, %.lr.ph ], [ %.01323.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.01422 = phi ptr [ %i.ac, %.lr.ph ], [ %.01422.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.01521 = phi ptr [ %i.ah, %.lr.ph ], [ %.01521.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.01620 = phi ptr [ %i.ae, %.lr.ph ], [ %.01620.ph, %.lr.ph.preheader134 ] ; 3 uses
  %.01719 = phi ptr [ %i.ak, %.lr.ph ], [ %.01719.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.x = load float, ptr %.01224, align 4, !tbaa !18
  %i.y = load float, ptr %.01620, align 4, !tbaa !18
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float f0xBF36D1A2, float %i.x)
  %i.aa = load float, ptr %.01719, align 4, !tbaa !18
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float f0xBEB032A1, float %i.z)
  %i.ac = getelementptr inbounds nuw i8, ptr %.01422, i64 4
  store float %i.ab, ptr %.01422, align 4, !tbaa !18
  %i.ad = load float, ptr %.01224, align 4, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.af = load float, ptr %.01620, align 4, !tbaa !18
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float 1.402000e+00, float %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %.01521, i64 4
  store float %i.ag, ptr %.01521, align 4, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.01224, i64 4
  %i.aj = load float, ptr %.01224, align 4, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.01719, i64 4
  %i.al = load float, ptr %.01719, align 4, !tbaa !18
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float 1.772000e+00, float %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %.01323, i64 4
  store float %i.am, ptr %.01323, align 4, !tbaa !18
  %i.ao = add i32 %.025, -1                       ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !84
}

declare noundef i32 @_ZN4ojph17get_cpu_ext_levelEv() local_unnamed_addr #3

declare void @_ZN4ojph5local15sse_ict_forwardEPKfS2_S2_PfS3_S3_j(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare void @_ZN4ojph5local16sse_ict_backwardEPKfS2_S2_PfS3_S3_j(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare void @_ZN4ojph5local16sse2_rev_convertEPKNS_8line_bufEjPS1_jlj(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) #3

declare void @_ZN4ojph5local26sse2_rev_convert_nlt_type3EPKNS_8line_bufEjPS1_jlj(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) #3

declare void @_ZN4ojph5local27sse2_irv_convert_to_integerEPKNS_8line_bufEPS1_jjbj(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) #3

declare void @_ZN4ojph5local25sse2_irv_convert_to_floatEPKNS_8line_bufEjPS1_jbj(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) #3

declare void @_ZN4ojph5local37sse2_irv_convert_to_integer_nlt_type3EPKNS_8line_bufEPS1_jjbj(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) #3

declare void @_ZN4ojph5local35sse2_irv_convert_to_float_nlt_type3EPKNS_8line_bufEjPS1_jbj(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) #3

declare void @_ZN4ojph5local16sse2_rct_forwardEPKNS_8line_bufES3_S3_PS1_S4_S4_j(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare void @_ZN4ojph5local17sse2_rct_backwardEPKNS_8line_bufES3_S3_PS1_S4_S4_j(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare void @_ZN4ojph5local15avx_ict_forwardEPKfS2_S2_PfS3_S3_j(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare void @_ZN4ojph5local16avx_ict_backwardEPKfS2_S2_PfS3_S3_j(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare void @_ZN4ojph5local16avx2_rev_convertEPKNS_8line_bufEjPS1_jlj(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) #3

declare void @_ZN4ojph5local26avx2_rev_convert_nlt_type3EPKNS_8line_bufEjPS1_jlj(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) #3

declare void @_ZN4ojph5local27avx2_irv_convert_to_integerEPKNS_8line_bufEPS1_jjbj(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) #3

declare void @_ZN4ojph5local25avx2_irv_convert_to_floatEPKNS_8line_bufEjPS1_jbj(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) #3

declare void @_ZN4ojph5local37avx2_irv_convert_to_integer_nlt_type3EPKNS_8line_bufEPS1_jjbj(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) #3

declare void @_ZN4ojph5local35avx2_irv_convert_to_float_nlt_type3EPKNS_8line_bufEjPS1_jbj(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) #3

declare void @_ZN4ojph5local16avx2_rct_forwardEPKNS_8line_bufES3_S3_PS1_S4_S4_j(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare void @_ZN4ojph5local17avx2_rct_backwardEPKNS_8line_bufES3_S3_PS1_S4_S4_j(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"_ZTSN4ojph8line_bufE", !8, i64 0, !5, i64 8, !5, i64 12, !4, i64 16}
!10 = !{!9, !5, i64 12}
!11 = !{!4, !4, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!8, !8, i64 0}
!17 = !{!"float", !4, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = distinct !{!21, !13, !14, !15}
!22 = distinct !{!22, !28}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14, !15}
!25 = distinct !{!25, !13, !15, !14}
!26 = distinct !{!26, !13, !14, !15}
!27 = distinct !{!27, !13, !15, !14}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !13, !14, !15}
!30 = distinct !{!30, !13, !14}
!31 = distinct !{!31, !13, !14, !15}
!32 = distinct !{!32, !13, !15, !14}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13, !14, !15}
!35 = distinct !{!35, !13, !15, !14}
!36 = distinct !{!36, !13, !14, !15}
!37 = distinct !{!37, !13, !15, !14}
!38 = distinct !{!38, !13, !14, !15}
!39 = distinct !{!39, !13, !15, !14}
!40 = distinct !{!40, !13, !14, !15}
!41 = distinct !{!41, !13, !15, !14}
!42 = distinct !{!42, !13, !14, !15}
!43 = distinct !{!43, !13, !15, !14}
!44 = distinct !{!44, !13, !14, !15}
!45 = distinct !{!45, !13, !15, !14}
!46 = distinct !{!46, !13, !14, !15}
!47 = distinct !{!47, !13, !15, !14}
!48 = distinct !{!48, !13, !14, !15}
!49 = distinct !{!49, !13, !15, !14}
!50 = distinct !{!50, !13, !14, !15}
end_hunk_0
