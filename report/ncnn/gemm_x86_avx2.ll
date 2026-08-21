inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnn21pack_A_tile_int8_avx2ERKNS_3MatERS0_iiii:bb.a

.lr.ph201.i:                                      ; preds = %.lr.ph201.i.prol.loopexit, %.lr.ph201.i
  %.1200.i = phi i32 [ %i.my, %.lr.ph201.i ], [ %.1200.i.unr, %.lr.ph201.i.prol.loopexit ]
  %.1118199.i = phi ptr [ %i.mx, %.lr.ph201.i ], [ %.1118199.i.unr, %.lr.ph201.i.prol.loopexit ] ; 5 uses
  %.1120198.i = phi ptr [ %i.mw, %.lr.ph201.i ], [ %.1120198.i.unr, %.lr.ph201.i.prol.loopexit ] ; 5 uses
  %.8197.i = phi ptr [ %i.mv, %.lr.ph201.i ], [ %.8197.i.unr, %.lr.ph201.i.prol.loopexit ] ; 9 uses
  %i.ma = load i8, ptr %.1120198.i, align 1, !tbaa !17
  store i8 %i.ma, ptr %.8197.i, align 1, !tbaa !17
  %i.mb = load i8, ptr %.1118199.i, align 1, !tbaa !17
  %i.mc = getelementptr inbounds nuw i8, ptr %.8197.i, i64 1
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !17
  %i.md = getelementptr inbounds nuw i8, ptr %.8197.i, i64 2
  %i.me = getelementptr inbounds nuw i8, ptr %.1120198.i, i64 1
  %i.mf = getelementptr inbounds nuw i8, ptr %.1118199.i, i64 1
  %i.mg = load i8, ptr %i.me, align 1, !tbaa !17
  store i8 %i.mg, ptr %i.md, align 1, !tbaa !17
  %i.mh = load i8, ptr %i.mf, align 1, !tbaa !17
  %i.mi = getelementptr inbounds nuw i8, ptr %.8197.i, i64 3
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !17
  %i.mj = getelementptr inbounds nuw i8, ptr %.8197.i, i64 4
  %i.mk = getelementptr inbounds nuw i8, ptr %.1120198.i, i64 2
  %i.ml = getelementptr inbounds nuw i8, ptr %.1118199.i, i64 2
  %i.mm = load i8, ptr %i.mk, align 1, !tbaa !17
  store i8 %i.mm, ptr %i.mj, align 1, !tbaa !17
  %i.mn = load i8, ptr %i.ml, align 1, !tbaa !17
  %i.mo = getelementptr inbounds nuw i8, ptr %.8197.i, i64 5
  store i8 %i.mn, ptr %i.mo, align 1, !tbaa !17
  %i.mp = getelementptr inbounds nuw i8, ptr %.8197.i, i64 6
  %i.mq = getelementptr inbounds nuw i8, ptr %.1120198.i, i64 3
  %i.mr = getelementptr inbounds nuw i8, ptr %.1118199.i, i64 3
  %i.ms = load i8, ptr %i.mq, align 1, !tbaa !17
  store i8 %i.ms, ptr %i.mp, align 1, !tbaa !17
  %i.mt = load i8, ptr %i.mr, align 1, !tbaa !17
  %i.mu = getelementptr inbounds nuw i8, ptr %.8197.i, i64 7
  store i8 %i.mt, ptr %i.mu, align 1, !tbaa !17
  %i.mv = getelementptr inbounds nuw i8, ptr %.8197.i, i64 8 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.1120198.i, i64 4
  %i.mx = getelementptr inbounds nuw i8, ptr %.1118199.i, i64 4
  %i.my = add nuw nsw i32 %.1200.i, 4             ; 2 uses
  %exitcond240.not.i.3 = icmp eq i32 %i.my, %5
  br i1 %exitcond240.not.i.3, label %._crit_edge202.i, label %.lr.ph201.i, !llvm.loop !55

._crit_edge202.i:                                 ; preds = %.lr.ph201.i.prol.loopexit, %.lr.ph201.i, %middle.block, %vec.epilog.middle.block, %.preheader147.i
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader147.i ], [ %i.ky, %vec.epilog.middle.block ], [ %i.kq, %middle.block ], [ %.lcssa181.unr, %.lr.ph201.i.prol.loopexit ], [ %i.mv, %.lr.ph201.i ] ; 2 uses
  %indvars.iv.next242.i = add nuw nsw i64 %indvars.iv241.i, 2 ; 3 uses
  %i.mz = icmp slt i64 %indvars.iv.next242.i, %invariant.op263.i
  br i1 %i.mz, label %bb.h, label %.preheader.loopexit.i, !llvm.loop !56

iter.check160:                                    ; preds = %._crit_edge214.i, %.lr.ph213.preheader.i
  %indvars.iv245.i = phi i64 [ %i.it, %.lr.ph213.preheader.i ], [ %indvars.iv.next246.i, %._crit_edge214.i ] ; 2 uses
  %.9217.i = phi ptr [ %.6.lcssa.i, %.lr.ph213.preheader.i ], [ %.lcssa, %._crit_edge214.i ] ; 7 uses
  %i.na = add i64 %indvars.iv245.i, %i.iu
  %i.nb = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.nc = load i32, ptr %i.ip, align 4, !tbaa !15
  %i.nd = sext i32 %i.nc to i64
  %i.ne = mul i64 %i.na, %i.nd
  %i.nf = load i64, ptr %i.iq, align 8, !tbaa !16
  %i.ng = mul i64 %i.ne, %i.nf                    ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.ng
  %i.ni = getelementptr inbounds i8, ptr %i.nh, i64 %i.ir ; 6 uses
  br i1 %min.iters.check141, label %vec.epilog.scalar.ph161.preheader, label %vector.memcheck139

vector.memcheck139:                               ; preds = %iter.check160
  %i.nj = ptrtoaddr ptr %i.nb to i64
  %.9217.i140 = ptrtoaddr ptr %.9217.i to i64
  %i.nk = add i64 %i.ir, %i.nj
  %i.nl = add i64 %i.nk, %i.ng
  %i.nm = sub i64 %i.nl, %.9217.i140
  %diff.check = icmp ugt i64 %i.nm, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph161.preheader, label %vector.main.loop.iter.check142

vector.main.loop.iter.check142:                   ; preds = %vector.memcheck139
  br i1 %min.iters.check143, label %vec.epilog.ph164, label %vector.ph144

vector.ph144:                                     ; preds = %vector.main.loop.iter.check142
  %i.nn = getelementptr i8, ptr %i.ni, i64 %n.vec145
  %i.no = getelementptr i8, ptr %.9217.i, i64 %n.vec145 ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next154, %vector.body146 ] ; 3 uses
  %next.gep148 = getelementptr i8, ptr %i.ni, i64 %index147 ; 4 uses
  %next.gep149 = getelementptr i8, ptr %.9217.i, i64 %index147 ; 4 uses
  %i.np = getelementptr i8, ptr %next.gep148, i64 32
  %i.nq = getelementptr i8, ptr %next.gep148, i64 64
  %i.nr = getelementptr i8, ptr %next.gep148, i64 96
  %wide.load150 = load <32 x i8>, ptr %next.gep148, align 1, !tbaa !17
  %wide.load151 = load <32 x i8>, ptr %i.np, align 1, !tbaa !17
  %wide.load152 = load <32 x i8>, ptr %i.nq, align 1, !tbaa !17
  %wide.load153 = load <32 x i8>, ptr %i.nr, align 1, !tbaa !17
  %i.ns = getelementptr i8, ptr %next.gep149, i64 32
  %i.nt = getelementptr i8, ptr %next.gep149, i64 64
  %i.nu = getelementptr i8, ptr %next.gep149, i64 96
  store <32 x i8> %wide.load150, ptr %next.gep149, align 1, !tbaa !17
  store <32 x i8> %wide.load151, ptr %i.ns, align 1, !tbaa !17
  store <32 x i8> %wide.load152, ptr %i.nt, align 1, !tbaa !17
  store <32 x i8> %wide.load153, ptr %i.nu, align 1, !tbaa !17
  %index.next154 = add nuw i64 %index147, 128     ; 2 uses
  %i.nv = icmp eq i64 %index.next154, %n.vec145
  br i1 %i.nv, label %middle.block155, label %vector.body146, !llvm.loop !57

middle.block155:                                  ; preds = %vector.body146
  br i1 %cmp.n156, label %._crit_edge214.i, label %vec.epilog.iter.check162

vec.epilog.iter.check162:                         ; preds = %middle.block155
  br i1 %min.epilog.iters.check163, label %vec.epilog.scalar.ph161.preheader, label %vec.epilog.ph164, !prof !58

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check142, %vec.epilog.iter.check162
  %vec.epilog.resume.val157 = phi i64 [ %n.vec145, %vec.epilog.iter.check162 ], [ 0, %vector.main.loop.iter.check142 ]
  %i.nw = getelementptr i8, ptr %i.ni, i64 %n.vec165
  %i.nx = getelementptr i8, ptr %.9217.i, i64 %n.vec165 ; 2 uses
  br label %vec.epilog.vector.body166

vec.epilog.vector.body166:                        ; preds = %vec.epilog.vector.body166, %vec.epilog.ph164
  %index167 = phi i64 [ %vec.epilog.resume.val157, %vec.epilog.ph164 ], [ %index.next171, %vec.epilog.vector.body166 ] ; 3 uses
  %next.gep168 = getelementptr i8, ptr %i.ni, i64 %index167
  %next.gep169 = getelementptr i8, ptr %.9217.i, i64 %index167
  %wide.load170 = load <8 x i8>, ptr %next.gep168, align 1, !tbaa !17
  store <8 x i8> %wide.load170, ptr %next.gep169, align 1, !tbaa !17
  %index.next171 = add nuw i64 %index167, 8       ; 2 uses
  %i.ny = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.ny, label %vec.epilog.middle.block172, label %vec.epilog.vector.body166, !llvm.loop !59

vec.epilog.middle.block172:                       ; preds = %vec.epilog.vector.body166
  br i1 %cmp.n173, label %._crit_edge214.i, label %vec.epilog.scalar.ph161.preheader

vec.epilog.scalar.ph161.preheader:                ; preds = %vector.memcheck139, %iter.check160, %vec.epilog.iter.check162, %vec.epilog.middle.block172
  %.0211.i.ph = phi i32 [ 0, %iter.check160 ], [ 0, %vector.memcheck139 ], [ %i.ix, %vec.epilog.iter.check162 ], [ %i.iy, %vec.epilog.middle.block172 ] ; 4 uses
  %.0115210.i.ph = phi ptr [ %i.ni, %iter.check160 ], [ %i.ni, %vector.memcheck139 ], [ %i.nn, %vec.epilog.iter.check162 ], [ %i.nw, %vec.epilog.middle.block172 ] ; 2 uses
  %.10209.i.ph = phi ptr [ %.9217.i, %iter.check160 ], [ %.9217.i, %vector.memcheck139 ], [ %i.no, %vec.epilog.iter.check162 ], [ %i.nx, %vec.epilog.middle.block172 ] ; 2 uses
  %i.nz = sub i32 %5, %.0211.i.ph
  %xtraiter207 = and i32 %i.nz, 7                 ; 2 uses
  %lcmp.mod208.not = icmp eq i32 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %vec.epilog.scalar.ph161.prol.loopexit, label %vec.epilog.scalar.ph161.prol

vec.epilog.scalar.ph161.prol:                     ; preds = %vec.epilog.scalar.ph161.preheader, %vec.epilog.scalar.ph161.prol
  %.0211.i.prol = phi i32 [ %i.od, %vec.epilog.scalar.ph161.prol ], [ %.0211.i.ph, %vec.epilog.scalar.ph161.preheader ]
  %.0115210.i.prol = phi ptr [ %i.oc, %vec.epilog.scalar.ph161.prol ], [ %.0115210.i.ph, %vec.epilog.scalar.ph161.preheader ] ; 2 uses
  %.10209.i.prol = phi ptr [ %i.ob, %vec.epilog.scalar.ph161.prol ], [ %.10209.i.ph, %vec.epilog.scalar.ph161.preheader ] ; 2 uses
  %prol.iter209 = phi i32 [ %prol.iter209.next, %vec.epilog.scalar.ph161.prol ], [ 0, %vec.epilog.scalar.ph161.preheader ]
  %i.oa = load i8, ptr %.0115210.i.prol, align 1, !tbaa !17
  store i8 %i.oa, ptr %.10209.i.prol, align 1, !tbaa !17
  %i.ob = getelementptr inbounds nuw i8, ptr %.10209.i.prol, i64 1 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0115210.i.prol, i64 1 ; 2 uses
  %i.od = add nuw nsw i32 %.0211.i.prol, 1        ; 2 uses
  %prol.iter209.next = add i32 %prol.iter209, 1   ; 2 uses
  %prol.iter209.cmp.not = icmp eq i32 %prol.iter209.next, %xtraiter207
  br i1 %prol.iter209.cmp.not, label %vec.epilog.scalar.ph161.prol.loopexit, label %vec.epilog.scalar.ph161.prol, !llvm.loop !60

vec.epilog.scalar.ph161.prol.loopexit:            ; preds = %vec.epilog.scalar.ph161.prol, %vec.epilog.scalar.ph161.preheader
  %.lcssa177.unr = phi ptr [ poison, %vec.epilog.scalar.ph161.preheader ], [ %i.ob, %vec.epilog.scalar.ph161.prol ]
  %.0211.i.unr = phi i32 [ %.0211.i.ph, %vec.epilog.scalar.ph161.preheader ], [ %i.od, %vec.epilog.scalar.ph161.prol ]
  %.0115210.i.unr = phi ptr [ %.0115210.i.ph, %vec.epilog.scalar.ph161.preheader ], [ %i.oc, %vec.epilog.scalar.ph161.prol ]
  %.10209.i.unr = phi ptr [ %.10209.i.ph, %vec.epilog.scalar.ph161.preheader ], [ %i.ob, %vec.epilog.scalar.ph161.prol ]
  %i.oe = sub i32 %.0211.i.ph, %5
  %i.of = icmp ugt i32 %i.oe, -8
  br i1 %i.of, label %._crit_edge214.i, label %vec.epilog.scalar.ph161

vec.epilog.scalar.ph161:                          ; preds = %vec.epilog.scalar.ph161.prol.loopexit, %vec.epilog.scalar.ph161
  %.0211.i = phi i32 [ %i.pe, %vec.epilog.scalar.ph161 ], [ %.0211.i.unr, %vec.epilog.scalar.ph161.prol.loopexit ]
  %.0115210.i = phi ptr [ %i.pd, %vec.epilog.scalar.ph161 ], [ %.0115210.i.unr, %vec.epilog.scalar.ph161.prol.loopexit ] ; 9 uses
  %.10209.i = phi ptr [ %i.pc, %vec.epilog.scalar.ph161 ], [ %.10209.i.unr, %vec.epilog.scalar.ph161.prol.loopexit ] ; 9 uses
  %i.og = load i8, ptr %.0115210.i, align 1, !tbaa !17
  store i8 %i.og, ptr %.10209.i, align 1, !tbaa !17
  %i.oh = getelementptr inbounds nuw i8, ptr %.10209.i, i64 1
  %i.oi = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 1
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !17
  store i8 %i.oj, ptr %i.oh, align 1, !tbaa !17
  %i.ok = getelementptr inbounds nuw i8, ptr %.10209.i, i64 2
  %i.ol = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 2
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !17
  store i8 %i.om, ptr %i.ok, align 1, !tbaa !17
  %i.on = getelementptr inbounds nuw i8, ptr %.10209.i, i64 3
  %i.oo = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 3
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !17
  store i8 %i.op, ptr %i.on, align 1, !tbaa !17
  %i.oq = getelementptr inbounds nuw i8, ptr %.10209.i, i64 4
  %i.or = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 4
  %i.os = load i8, ptr %i.or, align 1, !tbaa !17
  store i8 %i.os, ptr %i.oq, align 1, !tbaa !17
  %i.ot = getelementptr inbounds nuw i8, ptr %.10209.i, i64 5
  %i.ou = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 5
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !17
  store i8 %i.ov, ptr %i.ot, align 1, !tbaa !17
  %i.ow = getelementptr inbounds nuw i8, ptr %.10209.i, i64 6
  %i.ox = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 6
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !17
  store i8 %i.oy, ptr %i.ow, align 1, !tbaa !17
  %i.oz = getelementptr inbounds nuw i8, ptr %.10209.i, i64 7
  %i.pa = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 7
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !17
  store i8 %i.pb, ptr %i.oz, align 1, !tbaa !17
  %i.pc = getelementptr inbounds nuw i8, ptr %.10209.i, i64 8 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 8
  %i.pe = add nuw nsw i32 %.0211.i, 8             ; 2 uses
  %exitcond244.not.i.7 = icmp eq i32 %i.pe, %5
  br i1 %exitcond244.not.i.7, label %._crit_edge214.i, label %vec.epilog.scalar.ph161, !llvm.loop !61

._crit_edge214.i:                                 ; preds = %vec.epilog.scalar.ph161.prol.loopexit, %vec.epilog.scalar.ph161, %vec.epilog.middle.block172, %middle.block155
  %.lcssa = phi ptr [ %i.nx, %vec.epilog.middle.block172 ], [ %i.no, %middle.block155 ], [ %.lcssa177.unr, %vec.epilog.scalar.ph161.prol.loopexit ], [ %i.pc, %vec.epilog.scalar.ph161 ]
  %indvars.iv.next246.i = add nsw i64 %indvars.iv245.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next246.i, %wide.trip.count.i
  br i1 %exitcond248.not.i, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check160, !llvm.loop !62

_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge214.i, %bb.b, %bb.d, %.preheader.i, %.lr.ph218.i
  ret void
}

declare noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev() local_unnamed_addr #1

declare void @_ZN4ncnn28pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv() local_unnamed_addr #1

declare void @_ZN4ncnn24pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32>, ptr, <4 x i32>, <4 x i32>, i8 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn31transpose_pack_A_tile_int8_avx2ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn38transpose_pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not155.i = icmp eq i32 %i.b, 0
  br i1 %.not155.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn34transpose_pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 7 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !9      ; 5 uses
  %i.f = icmp sgt i32 %3, 7
  br i1 %i.f, label %.lr.ph174.i, label %.preheader159.i

.lr.ph174.i:                                      ; preds = %bb.e
  %i.g = sext i32 %4 to i64                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp sgt i32 %5, 1
  %i.j = sext i32 %i.d to i64                     ; 15 uses
  %i.k = shl nsw i32 %i.d, 1
  %i.l = sext i32 %i.k to i64                     ; 5 uses
  br i1 %i.i, label %.lr.ph.us.preheader.i, label %.lr.ph174.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph174.i
  %i.m = and i32 %5, 2147483646                   ; 4 uses
  %i.n = sext i32 %2 to i64                       ; 2 uses
  %i.o = zext nneg i32 %3 to i64                  ; 2 uses
  %.not = icmp eq i32 %i.m, %5
  br i1 %.not, label %.lr.ph.us.i.us.preheader, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph.us.preheader.i
  %i.p = add nsw i32 %5, -2                       ; 2 uses
  %i.q = lshr i32 %i.p, 1                         ; 2 uses
  %i.r = add nuw i32 %i.q, 1                      ; 2 uses
  %i.s = and i32 %5, 1                            ; 2 uses
  %i.t = icmp eq i32 %i.q, 0
  %unroll_iter = and i32 %i.r, -2
  %i.u = and i32 %i.p, 2
  %lcmp.mod.not.not = icmp eq i32 %i.u, 0
  %lcmp.mod68 = trunc i32 %i.r to i1
  %lcmp.mod70.not = icmp eq i32 %i.s, 0
  %i.v = sub nsw i32 %i.m, %5
  %i.w = icmp ugt i32 %i.v, -8
  br label %.lr.ph.us.i

.lr.ph.us.i.us.preheader:                         ; preds = %.lr.ph.us.preheader.i
  %i.x = add nsw i32 %5, -2                       ; 2 uses
  %i.y = lshr i32 %i.x, 1                         ; 2 uses
  %i.z = add nuw i32 %i.y, 1                      ; 2 uses
  %i.aa = icmp eq i32 %i.y, 0
  %unroll_iter76 = and i32 %i.z, -2
  %i.ab = and i32 %i.x, 2
  %lcmp.mod73.not.not = icmp eq i32 %i.ab, 0
  %lcmp.mod75 = trunc i32 %i.z to i1
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.lr.ph.us.i.us.preheader, %..preheader160_crit_edge.us.i.us
  %indvars.iv257.i.us = phi i64 [ %indvars.iv.next258.i.us, %..preheader160_crit_edge.us.i.us ], [ 0, %.lr.ph.us.i.us.preheader ] ; 2 uses
  %.0145172.us.i.us = phi ptr [ %.lcssa60, %..preheader160_crit_edge.us.i.us ], [ %i.e, %.lr.ph.us.i.us.preheader ] ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !15
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, %i.g
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !16
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 %indvars.iv257.i.us
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.n   ; 2 uses
  br i1 %i.aa, label %.epil.preheader71, label %.lr.ph.us.i.us.new

.lr.ph.us.i.us.new:                               ; preds = %.lr.ph.us.i.us, %.lr.ph.us.i.us.new
  %.1146163.us.i.us = phi ptr [ %i.bd, %.lr.ph.us.i.us.new ], [ %.0145172.us.i.us, %.lr.ph.us.i.us ] ; 3 uses
  %.0151162.us.i.us = phi ptr [ %i.be, %.lr.ph.us.i.us.new ], [ %i.ak, %.lr.ph.us.i.us ] ; 3 uses
  %niter77 = phi i32 [ %niter77.next.1, %.lr.ph.us.i.us.new ], [ 0, %.lr.ph.us.i.us ]
  %i.al = load i64, ptr %.0151162.us.i.us, align 1, !tbaa !17
  %i.am = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.an = getelementptr inbounds i8, ptr %.0151162.us.i.us, i64 %i.j
  %i.ao = load i64, ptr %i.an, align 1, !tbaa !17
  %i.ap = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %i.aq = bitcast <2 x i64> %i.am to <16 x i8>
  %i.ar = bitcast <2 x i64> %i.ap to <16 x i8>
  %i.as = shufflevector <16 x i8> %i.aq, <16 x i8> %i.ar, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.as, ptr %.1146163.us.i.us, align 1, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %.1146163.us.i.us, i64 16
  %i.au = getelementptr inbounds i8, ptr %.0151162.us.i.us, i64 %i.l ; 3 uses
  %i.av = load i64, ptr %i.au, align 1, !tbaa !17
  %i.aw = insertelement <2 x i64> poison, i64 %i.av, i64 0
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %i.j
  %i.ay = load i64, ptr %i.ax, align 1, !tbaa !17
  %i.az = insertelement <2 x i64> poison, i64 %i.ay, i64 0
  %i.ba = bitcast <2 x i64> %i.aw to <16 x i8>
  %i.bb = bitcast <2 x i64> %i.az to <16 x i8>
  %i.bc = shufflevector <16 x i8> %i.ba, <16 x i8> %i.bb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bc, ptr %i.at, align 1, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %.1146163.us.i.us, i64 32 ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %i.au, i64 %i.l ; 2 uses
  %niter77.next.1 = add nuw nsw i32 %niter77, 2   ; 2 uses
  %niter77.ncmp.1.not = icmp eq i32 %niter77.next.1, %unroll_iter76
  br i1 %niter77.ncmp.1.not, label %..preheader160_crit_edge.us.i.us.unr-lcssa, label %.lr.ph.us.i.us.new, !llvm.loop !63

..preheader160_crit_edge.us.i.us.unr-lcssa:       ; preds = %.lr.ph.us.i.us.new
  br i1 %lcmp.mod73.not.not, label %.epil.preheader71, label %..preheader160_crit_edge.us.i.us

.epil.preheader71:                                ; preds = %..preheader160_crit_edge.us.i.us.unr-lcssa, %.lr.ph.us.i.us
  %.1146163.us.i.us.epil.init = phi ptr [ %.0145172.us.i.us, %.lr.ph.us.i.us ], [ %i.bd, %..preheader160_crit_edge.us.i.us.unr-lcssa ] ; 2 uses
  %.0151162.us.i.us.epil.init = phi ptr [ %i.ak, %.lr.ph.us.i.us ], [ %i.be, %..preheader160_crit_edge.us.i.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.bf = load i64, ptr %.0151162.us.i.us.epil.init, align 1, !tbaa !17
  %i.bg = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %i.bh = getelementptr inbounds i8, ptr %.0151162.us.i.us.epil.init, i64 %i.j
  %i.bi = load i64, ptr %i.bh, align 1, !tbaa !17
  %i.bj = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %i.bk = bitcast <2 x i64> %i.bg to <16 x i8>
  %i.bl = bitcast <2 x i64> %i.bj to <16 x i8>
  %i.bm = shufflevector <16 x i8> %i.bk, <16 x i8> %i.bl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bm, ptr %.1146163.us.i.us.epil.init, align 1, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %.1146163.us.i.us.epil.init, i64 16
  br label %..preheader160_crit_edge.us.i.us

..preheader160_crit_edge.us.i.us:                 ; preds = %..preheader160_crit_edge.us.i.us.unr-lcssa, %.epil.preheader71
  %.lcssa60 = phi ptr [ %i.bd, %..preheader160_crit_edge.us.i.us.unr-lcssa ], [ %i.bn, %.epil.preheader71 ] ; 2 uses
  %indvars.iv.next258.i.us = add nuw nsw i64 %indvars.iv257.i.us, 8 ; 3 uses
  %i.bo = or disjoint i64 %indvars.iv.next258.i.us, 7
  %i.bp = icmp samesign ult i64 %i.bo, %i.o
  br i1 %i.bp, label %.lr.ph.us.i.us, label %.preheader159.loopexit.i, !llvm.loop !64

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i.loopexit
  %indvars.iv257.i = phi i64 [ %indvars.iv.next258.i, %._crit_edge.us.i.loopexit ], [ 0, %.lr.ph.us.i.preheader ] ; 2 uses
  %.0145172.us.i = phi ptr [ %.lcssa64, %._crit_edge.us.i.loopexit ], [ %i.e, %.lr.ph.us.i.preheader ] ; 2 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !9
  %i.br = load i32, ptr %i.c, align 4, !tbaa !15
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.bs, %i.g
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !16
  %i.bv = mul i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 %indvars.iv257.i
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.n   ; 2 uses
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.1146163.us.i = phi ptr [ %i.cr, %.lr.ph.us.i.new ], [ %.0145172.us.i, %.lr.ph.us.i ] ; 3 uses
  %.0151162.us.i = phi ptr [ %i.cs, %.lr.ph.us.i.new ], [ %i.by, %.lr.ph.us.i ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.bz = load i64, ptr %.0151162.us.i, align 1, !tbaa !17
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = getelementptr inbounds i8, ptr %.0151162.us.i, i64 %i.j
  %i.cc = load i64, ptr %i.cb, align 1, !tbaa !17
  %i.cd = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %i.ce = bitcast <2 x i64> %i.ca to <16 x i8>
  %i.cf = bitcast <2 x i64> %i.cd to <16 x i8>
  %i.cg = shufflevector <16 x i8> %i.ce, <16 x i8> %i.cf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.cg, ptr %.1146163.us.i, align 1, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.1146163.us.i, i64 16
  %i.ci = getelementptr inbounds i8, ptr %.0151162.us.i, i64 %i.l ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 1, !tbaa !17
  %i.ck = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 %i.j
  %i.cm = load i64, ptr %i.cl, align 1, !tbaa !17
  %i.cn = insertelement <2 x i64> poison, i64 %i.cm, i64 0
  %i.co = bitcast <2 x i64> %i.ck to <16 x i8>
  %i.cp = bitcast <2 x i64> %i.cn to <16 x i8>
  %i.cq = shufflevector <16 x i8> %i.co, <16 x i8> %i.cp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.cq, ptr %i.ch, align 1, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %.1146163.us.i, i64 32 ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.ci, i64 %i.l ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn31transpose_pack_A_tile_int8_avx2ERKNS_3MatERS0_iiii:bb.a
  %.0138.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.fw, %.preheader156.i.loopexit.unr-lcssa ], [ %i.fw, %.lr.ph211.i.epil.preheader ] ; 5 uses
  %i.kj = icmp slt i32 %.0138.lcssa.i, %5
  br i1 %i.kj, label %.lr.ph218.i.preheader, label %._crit_edge219.i

.lr.ph218.i.preheader:                            ; preds = %.preheader156.i
  %i.kk = sub i32 %5, %.0138.lcssa.i
  %xtraiter88 = and i32 %i.kk, 3                  ; 2 uses
  %lcmp.mod89.not = icmp eq i32 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.lr.ph218.i.prol.loopexit, label %.lr.ph218.i.prol

.lr.ph218.i.prol:                                 ; preds = %.lr.ph218.i.preheader, %.lr.ph218.i.prol
  %.1217.i.prol = phi i32 [ %i.kr, %.lr.ph218.i.prol ], [ %.0138.lcssa.i, %.lr.ph218.i.preheader ]
  %.1140216.i.prol = phi ptr [ %i.kq, %.lr.ph218.i.prol ], [ %.0139.lcssa.i, %.lr.ph218.i.preheader ] ; 3 uses
  %.8215.i.prol = phi ptr [ %i.kp, %.lr.ph218.i.prol ], [ %.7.lcssa.i, %.lr.ph218.i.preheader ] ; 3 uses
  %prol.iter90 = phi i32 [ %prol.iter90.next, %.lr.ph218.i.prol ], [ 0, %.lr.ph218.i.preheader ]
  %i.kl = load i8, ptr %.1140216.i.prol, align 1, !tbaa !17
  store i8 %i.kl, ptr %.8215.i.prol, align 1, !tbaa !17
  %i.km = getelementptr inbounds nuw i8, ptr %.1140216.i.prol, i64 1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !17
  %i.ko = getelementptr inbounds nuw i8, ptr %.8215.i.prol, i64 1
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !17
  %i.kp = getelementptr inbounds nuw i8, ptr %.8215.i.prol, i64 2 ; 3 uses
  %i.kq = getelementptr inbounds i8, ptr %.1140216.i.prol, i64 %i.ft ; 2 uses
  %i.kr = add nuw nsw i32 %.1217.i.prol, 1        ; 2 uses
  %prol.iter90.next = add i32 %prol.iter90, 1     ; 2 uses
  %prol.iter90.cmp.not = icmp eq i32 %prol.iter90.next, %xtraiter88
  br i1 %prol.iter90.cmp.not, label %.lr.ph218.i.prol.loopexit, label %.lr.ph218.i.prol, !llvm.loop !70

.lr.ph218.i.prol.loopexit:                        ; preds = %.lr.ph218.i.prol, %.lr.ph218.i.preheader
  %.lcssa56.unr = phi ptr [ poison, %.lr.ph218.i.preheader ], [ %i.kp, %.lr.ph218.i.prol ]
  %.1217.i.unr = phi i32 [ %.0138.lcssa.i, %.lr.ph218.i.preheader ], [ %i.kr, %.lr.ph218.i.prol ]
  %.1140216.i.unr = phi ptr [ %.0139.lcssa.i, %.lr.ph218.i.preheader ], [ %i.kq, %.lr.ph218.i.prol ]
  %.8215.i.unr = phi ptr [ %.7.lcssa.i, %.lr.ph218.i.preheader ], [ %i.kp, %.lr.ph218.i.prol ]
  %i.ks = sub i32 %.0138.lcssa.i, %5
  %i.kt = icmp ugt i32 %i.ks, -4
  br i1 %i.kt, label %._crit_edge219.i, label %.lr.ph218.i

.lr.ph211.i:                                      ; preds = %.lr.ph211.i.preheader, %.lr.ph211.i
  %.0139208.i = phi ptr [ %i.lr, %.lr.ph211.i ], [ %i.jw, %.lr.ph211.i.preheader ] ; 4 uses
  %.7207.i = phi ptr [ %i.lq, %.lr.ph211.i ], [ %.6222.i, %.lr.ph211.i.preheader ] ; 9 uses
  %niter87 = phi i32 [ %niter87.next.1, %.lr.ph211.i ], [ 0, %.lr.ph211.i.preheader ]
  %i.ku = load i8, ptr %.0139208.i, align 1, !tbaa !17
  store i8 %i.ku, ptr %.7207.i, align 1, !tbaa !17
  %i.kv = getelementptr inbounds i8, ptr %.0139208.i, i64 %i.ft ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !17
  %i.kx = getelementptr inbounds nuw i8, ptr %.7207.i, i64 1
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !17
  %i.ky = getelementptr inbounds nuw i8, ptr %.0139208.i, i64 1
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !17
  %i.la = getelementptr inbounds nuw i8, ptr %.7207.i, i64 2
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !17
  %i.lb = getelementptr i8, ptr %i.kv, i64 1
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !17
  %i.ld = getelementptr inbounds nuw i8, ptr %.7207.i, i64 3
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !17
  %i.le = getelementptr inbounds nuw i8, ptr %.7207.i, i64 4
  %i.lf = getelementptr inbounds i8, ptr %.0139208.i, i64 %i.fv ; 4 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !17
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !17
  %i.lh = getelementptr inbounds i8, ptr %i.lf, i64 %i.ft ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !17
  %i.lj = getelementptr inbounds nuw i8, ptr %.7207.i, i64 5
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !17
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !17
  %i.lm = getelementptr inbounds nuw i8, ptr %.7207.i, i64 6
  store i8 %i.ll, ptr %i.lm, align 1, !tbaa !17
  %i.ln = getelementptr i8, ptr %i.lh, i64 1
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !17
  %i.lp = getelementptr inbounds nuw i8, ptr %.7207.i, i64 7
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !17
  %i.lq = getelementptr inbounds nuw i8, ptr %.7207.i, i64 8 ; 3 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lf, i64 %i.fv ; 3 uses
  %niter87.next.1 = add nuw nsw i32 %niter87, 2   ; 2 uses
  %niter87.ncmp.1.not = icmp eq i32 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1.not, label %.preheader156.i.loopexit.unr-lcssa, label %.lr.ph211.i, !llvm.loop !71

.lr.ph218.i:                                      ; preds = %.lr.ph218.i.prol.loopexit, %.lr.ph218.i
  %.1217.i = phi i32 [ %i.mq, %.lr.ph218.i ], [ %.1217.i.unr, %.lr.ph218.i.prol.loopexit ]
  %.1140216.i = phi ptr [ %i.mp, %.lr.ph218.i ], [ %.1140216.i.unr, %.lr.ph218.i.prol.loopexit ] ; 3 uses
  %.8215.i = phi ptr [ %i.mo, %.lr.ph218.i ], [ %.8215.i.unr, %.lr.ph218.i.prol.loopexit ] ; 9 uses
  %i.ls = load i8, ptr %.1140216.i, align 1, !tbaa !17
  store i8 %i.ls, ptr %.8215.i, align 1, !tbaa !17
  %i.lt = getelementptr inbounds nuw i8, ptr %.1140216.i, i64 1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !17
  %i.lv = getelementptr inbounds nuw i8, ptr %.8215.i, i64 1
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !17
  %i.lw = getelementptr inbounds nuw i8, ptr %.8215.i, i64 2
  %i.lx = getelementptr inbounds i8, ptr %.1140216.i, i64 %i.ft ; 3 uses
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !17
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !17
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !17
  %i.mb = getelementptr inbounds nuw i8, ptr %.8215.i, i64 3
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !17
  %i.mc = getelementptr inbounds nuw i8, ptr %.8215.i, i64 4
  %i.md = getelementptr inbounds i8, ptr %i.lx, i64 %i.ft ; 3 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !17
  store i8 %i.me, ptr %i.mc, align 1, !tbaa !17
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !17
  %i.mh = getelementptr inbounds nuw i8, ptr %.8215.i, i64 5
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !17
  %i.mi = getelementptr inbounds nuw i8, ptr %.8215.i, i64 6
  %i.mj = getelementptr inbounds i8, ptr %i.md, i64 %i.ft ; 3 uses
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !17
  store i8 %i.mk, ptr %i.mi, align 1, !tbaa !17
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !17
  %i.mn = getelementptr inbounds nuw i8, ptr %.8215.i, i64 7
  store i8 %i.mm, ptr %i.mn, align 1, !tbaa !17
  %i.mo = getelementptr inbounds nuw i8, ptr %.8215.i, i64 8 ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %i.mj, i64 %i.ft
  %i.mq = add nuw nsw i32 %.1217.i, 4             ; 2 uses
  %exitcond264.not.i.3 = icmp eq i32 %i.mq, %5
  br i1 %exitcond264.not.i.3, label %._crit_edge219.i, label %.lr.ph218.i, !llvm.loop !72

._crit_edge219.i:                                 ; preds = %.lr.ph218.i.prol.loopexit, %.lr.ph218.i, %.preheader156.i
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader156.i ], [ %.lcssa56.unr, %.lr.ph218.i.prol.loopexit ], [ %i.mo, %.lr.ph218.i ] ; 2 uses
  %indvars.iv.next266.i = add nuw nsw i64 %indvars.iv265.i, 2 ; 3 uses
  %i.mr = icmp slt i64 %indvars.iv.next266.i, %invariant.op287.i
  br i1 %i.mr, label %bb.g, label %.preheader.loopexit.i, !llvm.loop !73

.lr.ph230.i:                                      ; preds = %._crit_edge231.i, %.lr.ph230.preheader.i
  %indvars.iv269.i = phi i64 [ %i.jk, %.lr.ph230.preheader.i ], [ %indvars.iv.next270.i, %._crit_edge231.i ] ; 2 uses
  %.9234.i = phi ptr [ %.6.lcssa.i, %.lr.ph230.preheader.i ], [ %.lcssa, %._crit_edge231.i ] ; 2 uses
  %i.ms = load ptr, ptr %0, align 8, !tbaa !9
  %i.mt = load i32, ptr %i.c, align 4, !tbaa !15
  %i.mu = sext i32 %i.mt to i64
  %i.mv = mul nsw i64 %i.mu, %i.jg
  %i.mw = load i64, ptr %i.jh, align 8, !tbaa !16
  %i.mx = mul i64 %i.mv, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mx
  %i.mz = getelementptr i8, ptr %i.my, i64 %indvars.iv269.i
  %i.na = getelementptr i8, ptr %i.mz, i64 %i.jl  ; 2 uses
  br i1 %i.jn, label %.epil.preheader91, label %.lr.ph230.i.new

.lr.ph230.i.new:                                  ; preds = %.lr.ph230.i, %.lr.ph230.i.new
  %.0137227.i = phi ptr [ %i.ny, %.lr.ph230.i.new ], [ %i.na, %.lr.ph230.i ] ; 2 uses
  %.10226.i = phi ptr [ %i.nx, %.lr.ph230.i.new ], [ %.9234.i, %.lr.ph230.i ] ; 9 uses
  %niter97 = phi i32 [ %niter97.next.7, %.lr.ph230.i.new ], [ 0, %.lr.ph230.i ]
  %i.nb = load i8, ptr %.0137227.i, align 1, !tbaa !17
  store i8 %i.nb, ptr %.10226.i, align 1, !tbaa !17
  %i.nc = getelementptr inbounds nuw i8, ptr %.10226.i, i64 1
  %i.nd = getelementptr inbounds i8, ptr %.0137227.i, i64 %i.jj ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !17
  store i8 %i.ne, ptr %i.nc, align 1, !tbaa !17
  %i.nf = getelementptr inbounds nuw i8, ptr %.10226.i, i64 2
  %i.ng = getelementptr inbounds i8, ptr %i.nd, i64 %i.jj ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !17
  store i8 %i.nh, ptr %i.nf, align 1, !tbaa !17
  %i.ni = getelementptr inbounds nuw i8, ptr %.10226.i, i64 3
  %i.nj = getelementptr inbounds i8, ptr %i.ng, i64 %i.jj ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !17
  store i8 %i.nk, ptr %i.ni, align 1, !tbaa !17
  %i.nl = getelementptr inbounds nuw i8, ptr %.10226.i, i64 4
  %i.nm = getelementptr inbounds i8, ptr %i.nj, i64 %i.jj ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !17
  store i8 %i.nn, ptr %i.nl, align 1, !tbaa !17
  %i.no = getelementptr inbounds nuw i8, ptr %.10226.i, i64 5
  %i.np = getelementptr inbounds i8, ptr %i.nm, i64 %i.jj ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !17
  store i8 %i.nq, ptr %i.no, align 1, !tbaa !17
  %i.nr = getelementptr inbounds nuw i8, ptr %.10226.i, i64 6
  %i.ns = getelementptr inbounds i8, ptr %i.np, i64 %i.jj ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !17
  store i8 %i.nt, ptr %i.nr, align 1, !tbaa !17
  %i.nu = getelementptr inbounds nuw i8, ptr %.10226.i, i64 7
  %i.nv = getelementptr inbounds i8, ptr %i.ns, i64 %i.jj ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !17
  store i8 %i.nw, ptr %i.nu, align 1, !tbaa !17
  %i.nx = getelementptr inbounds nuw i8, ptr %.10226.i, i64 8 ; 3 uses
  %i.ny = getelementptr inbounds i8, ptr %i.nv, i64 %i.jj ; 2 uses
  %niter97.next.7 = add nuw nsw i32 %niter97, 8   ; 2 uses
  %niter97.ncmp.7 = icmp eq i32 %niter97.next.7, %unroll_iter96
  br i1 %niter97.ncmp.7, label %._crit_edge231.i.unr-lcssa, label %.lr.ph230.i.new, !llvm.loop !74

._crit_edge231.i.unr-lcssa:                       ; preds = %.lr.ph230.i.new
  br i1 %lcmp.mod93.not, label %._crit_edge231.i, label %.epil.preheader91

.epil.preheader91:                                ; preds = %._crit_edge231.i.unr-lcssa, %.lr.ph230.i
  %.0137227.i.epil.init = phi ptr [ %i.na, %.lr.ph230.i ], [ %i.ny, %._crit_edge231.i.unr-lcssa ]
  %.10226.i.epil.init = phi ptr [ %.9234.i, %.lr.ph230.i ], [ %i.nx, %._crit_edge231.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader91
  %.0137227.i.epil = phi ptr [ %.0137227.i.epil.init, %.epil.preheader91 ], [ %i.ob, %bb.h ] ; 2 uses
  %.10226.i.epil = phi ptr [ %.10226.i.epil.init, %.epil.preheader91 ], [ %i.oa, %bb.h ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader91 ], [ %epil.iter.next, %bb.h ]
  %i.nz = load i8, ptr %.0137227.i.epil, align 1, !tbaa !17
  store i8 %i.nz, ptr %.10226.i.epil, align 1, !tbaa !17
  %i.oa = getelementptr inbounds nuw i8, ptr %.10226.i.epil, i64 1 ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %.0137227.i.epil, i64 %i.jj
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter92
  br i1 %epil.iter.cmp.not, label %._crit_edge231.i, label %bb.h, !llvm.loop !75

._crit_edge231.i:                                 ; preds = %bb.h, %._crit_edge231.i.unr-lcssa
  %.lcssa = phi ptr [ %i.nx, %._crit_edge231.i.unr-lcssa ], [ %i.oa, %bb.h ]
  %indvars.iv.next270.i = add nsw i64 %indvars.iv269.i, 1 ; 2 uses
  %exitcond272.not.i = icmp eq i64 %indvars.iv.next270.i, %wide.trip.count.i
  br i1 %exitcond272.not.i, label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph230.i, !llvm.loop !76

_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge231.i, %bb.b, %bb.d, %.preheader.i, %.lr.ph235.i
  ret void
}

declare void @_ZN4ncnn38transpose_pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn34transpose_pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn21pack_B_tile_int8_avx2ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn28pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not135.i = icmp eq i32 %i.b, 0
  br i1 %.not135.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn24pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

bb.e:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.d = icmp sgt i32 %3, 7
  br i1 %i.d, label %.lr.ph165.i, label %.preheader150.i

.lr.ph165.i:                                      ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = sext i32 %4 to i64
  %i.h = icmp sgt i32 %5, 1
  %i.i = and i32 %5, -2                           ; 2 uses
  %i.j = zext nneg i32 %3 to i64
  %i.k = sext i32 %2 to i64
  %i.l = add i32 %5, -2                           ; 2 uses
  %i.m = lshr i32 %i.l, 1
  %i.n = add nuw i32 %i.m, 1                      ; 2 uses
  %xtraiter = and i32 %i.n, 3                     ; 3 uses
  %i.o = icmp ult i32 %i.l, 6
  %unroll_iter = and i32 %i.n, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod190 = icmp ne i32 %xtraiter, 0
  br label %bb.f

.preheader150.loopexit.i:                         ; preds = %._crit_edge.i
  %i.p = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader150.i

.preheader150.i:                                  ; preds = %.preheader150.loopexit.i, %bb.e
  %.0123.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.p, %.preheader150.loopexit.i ] ; 3 uses
  %.0121.lcssa.i = phi ptr [ %i.c, %bb.e ], [ %.2.lcssa.i, %.preheader150.loopexit.i ] ; 2 uses
  %i.q = or disjoint i32 %.0123.lcssa.i, 3
  %i.r = icmp slt i32 %i.q, %3
  br i1 %i.r, label %.lr.ph184.i, label %.preheader148.i

.lr.ph184.i:                                      ; preds = %.preheader150.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = sext i32 %4 to i64
  %i.v = icmp sgt i32 %5, 1
  %i.w = and i32 %5, -2                           ; 2 uses
  %i.x = zext nneg i32 %.0123.lcssa.i to i64
  %i.y = sext i32 %3 to i64
  %i.z = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.y, -3
  %i.aa = add i32 %5, -2                          ; 2 uses
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = add nuw i32 %i.ab, 1                    ; 2 uses
  %xtraiter193 = and i32 %i.ac, 3                 ; 3 uses
  %i.ad = icmp ult i32 %i.aa, 6
  %unroll_iter199 = and i32 %i.ac, -4
  %lcmp.mod195.not = icmp eq i32 %xtraiter193, 0
  %lcmp.mod198 = icmp ne i32 %xtraiter193, 0
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph165.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph165.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.0121163.i = phi ptr [ %i.c, %.lr.ph165.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ae = add nsw i64 %indvars.iv.i, %i.k
  %i.af = load ptr, ptr %0, align 8, !tbaa !9
  %i.ag = load i32, ptr %i.e, align 4, !tbaa !15  ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %i.ae, %i.ah
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !16
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.g ; 3 uses
  %i.an = insertelement <8 x i32> poison, i32 %i.ag, i64 0
  %i.ao = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ap = mul <8 x i32> %i.ao, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 10 uses
  br i1 %i.h, label %.lr.ph.i.preheader, label %.preheader151.i

.lr.ph.i.preheader:                               ; preds = %bb.f
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader151.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader151.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader151.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.1122154.i.epil.init = phi ptr [ %.0121163.i, %.lr.ph.i.preheader ], [ %i.cl, %.preheader151.i.loopexit.unr-lcssa ]
  %.0131153.i.epil.init = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.cm, %.preheader151.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod190)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.1122154.i.epil = phi ptr [ %i.av, %.lr.ph.i.epil ], [ %.1122154.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0131153.i.epil = phi ptr [ %i.aw, %.lr.ph.i.epil ], [ %.0131153.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.aq = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0131153.i.epil, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.ar = bitcast <8 x i32> %i.aq to <32 x i8>
  %i.as = shufflevector <32 x i8> %i.ar, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.at = bitcast <32 x i8> %i.as to <4 x i64>
  %i.au = shufflevector <4 x i64> %i.at, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.au, ptr %.1122154.i.epil, align 1, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %.1122154.i.epil, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0131153.i.epil, i64 2 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader151.i, label %.lr.ph.i.epil, !llvm.loop !77

.preheader151.i:                                  ; preds = %.preheader151.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.f
  %.0133.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.i, %.lr.ph.i.epil ], [ %i.i, %.preheader151.i.loopexit.unr-lcssa ] ; 5 uses
  %.0131.lcssa.i = phi ptr [ %i.am, %bb.f ], [ %i.cm, %.preheader151.i.loopexit.unr-lcssa ], [ %i.aw, %.lr.ph.i.epil ] ; 2 uses
  %.1122.lcssa.i = phi ptr [ %.0121163.i, %bb.f ], [ %i.cl, %.preheader151.i.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.i.epil ] ; 3 uses
  %i.ax = icmp slt i32 %.0133.lcssa.i, %5
  br i1 %i.ax, label %.lr.ph160.i.preheader, label %._crit_edge.i

.lr.ph160.i.preheader:                            ; preds = %.preheader151.i
  %i.ay = sub i32 %5, %.0133.lcssa.i
  %xtraiter191 = and i32 %i.ay, 3                 ; 2 uses
  %lcmp.mod192.not = icmp eq i32 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %.lr.ph160.i.prol.loopexit, label %.lr.ph160.i.prol

.lr.ph160.i.prol:                                 ; preds = %.lr.ph160.i.preheader, %.lr.ph160.i.prol
  %.2159.i.prol = phi ptr [ %i.bg, %.lr.ph160.i.prol ], [ %.1122.lcssa.i, %.lr.ph160.i.preheader ] ; 2 uses
  %.1132158.i.prol = phi ptr [ %i.bh, %.lr.ph160.i.prol ], [ %.0131.lcssa.i, %.lr.ph160.i.preheader ] ; 2 uses
  %.1134157.i.prol = phi i32 [ %i.bi, %.lr.ph160.i.prol ], [ %.0133.lcssa.i, %.lr.ph160.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph160.i.prol ], [ 0, %.lr.ph160.i.preheader ]
  %i.az = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.1132158.i.prol, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.ba = bitcast <8 x i32> %i.az to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bc = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bd = shufflevector <8 x i32> %i.bc, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.be = bitcast <4 x i32> %i.bd to <2 x i64>
  %i.bf = extractelement <2 x i64> %i.be, i64 0
  store i64 %i.bf, ptr %.2159.i.prol, align 1, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %.2159.i.prol, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1132158.i.prol, i64 1 ; 2 uses
  %i.bi = add nuw nsw i32 %.1134157.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter191
  br i1 %prol.iter.cmp.not, label %.lr.ph160.i.prol.loopexit, label %.lr.ph160.i.prol, !llvm.loop !78

.lr.ph160.i.prol.loopexit:                        ; preds = %.lr.ph160.i.prol, %.lr.ph160.i.preheader
  %.lcssa187.unr = phi ptr [ poison, %.lr.ph160.i.preheader ], [ %i.bg, %.lr.ph160.i.prol ]
  %.2159.i.unr = phi ptr [ %.1122.lcssa.i, %.lr.ph160.i.preheader ], [ %i.bg, %.lr.ph160.i.prol ]
  %.1132158.i.unr = phi ptr [ %.0131.lcssa.i, %.lr.ph160.i.preheader ], [ %i.bh, %.lr.ph160.i.prol ]
  %.1134157.i.unr = phi i32 [ %.0133.lcssa.i, %.lr.ph160.i.preheader ], [ %i.bi, %.lr.ph160.i.prol ]
  %i.bj = sub i32 %.0133.lcssa.i, %5
  %i.bk = icmp ugt i32 %i.bj, -4
  br i1 %i.bk, label %._crit_edge.i, label %.lr.ph160.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1122154.i = phi ptr [ %i.cl, %.lr.ph.i ], [ %.0121163.i, %.lr.ph.i.preheader ] ; 5 uses
  %.0131153.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %i.am, %.lr.ph.i.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.bl = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.0131153.i, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.bm = bitcast <8 x i32> %i.bl to <32 x i8>
  %i.bn = shufflevector <32 x i8> %i.bm, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bo = bitcast <32 x i8> %i.bn to <4 x i64>
  %i.bp = shufflevector <4 x i64> %i.bo, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bp, ptr %.1122154.i, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1122154.i, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.0131153.i, i64 2
  %i.bs = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.br, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.bt = bitcast <8 x i32> %i.bs to <32 x i8>
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bv = bitcast <32 x i8> %i.bu to <4 x i64>
  %i.bw = shufflevector <4 x i64> %i.bv, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bw, ptr %i.bq, align 1, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.1122154.i, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %.0131153.i, i64 4
  %i.bz = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.by, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.ca = bitcast <8 x i32> %i.bz to <32 x i8>
  %i.cb = shufflevector <32 x i8> %i.ca, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = bitcast <32 x i8> %i.cb to <4 x i64>
  %i.cd = shufflevector <4 x i64> %i.cc, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.cd, ptr %i.bx, align 1, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.1122154.i, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %.0131153.i, i64 6
end_hunk_1
begin_hunk_2_@_ZN4ncnn21pack_B_tile_int8_avx2ERKNS_3MatERS0_iiii:bb.a

.lr.ph201.i:                                      ; preds = %.lr.ph201.i.prol.loopexit, %.lr.ph201.i
  %.1200.i = phi i32 [ %i.my, %.lr.ph201.i ], [ %.1200.i.unr, %.lr.ph201.i.prol.loopexit ]
  %.1118199.i = phi ptr [ %i.mx, %.lr.ph201.i ], [ %.1118199.i.unr, %.lr.ph201.i.prol.loopexit ] ; 5 uses
  %.1120198.i = phi ptr [ %i.mw, %.lr.ph201.i ], [ %.1120198.i.unr, %.lr.ph201.i.prol.loopexit ] ; 5 uses
  %.8197.i = phi ptr [ %i.mv, %.lr.ph201.i ], [ %.8197.i.unr, %.lr.ph201.i.prol.loopexit ] ; 9 uses
  %i.ma = load i8, ptr %.1120198.i, align 1, !tbaa !17
  store i8 %i.ma, ptr %.8197.i, align 1, !tbaa !17
  %i.mb = load i8, ptr %.1118199.i, align 1, !tbaa !17
  %i.mc = getelementptr inbounds nuw i8, ptr %.8197.i, i64 1
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !17
  %i.md = getelementptr inbounds nuw i8, ptr %.8197.i, i64 2
  %i.me = getelementptr inbounds nuw i8, ptr %.1120198.i, i64 1
  %i.mf = getelementptr inbounds nuw i8, ptr %.1118199.i, i64 1
  %i.mg = load i8, ptr %i.me, align 1, !tbaa !17
  store i8 %i.mg, ptr %i.md, align 1, !tbaa !17
  %i.mh = load i8, ptr %i.mf, align 1, !tbaa !17
  %i.mi = getelementptr inbounds nuw i8, ptr %.8197.i, i64 3
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !17
  %i.mj = getelementptr inbounds nuw i8, ptr %.8197.i, i64 4
  %i.mk = getelementptr inbounds nuw i8, ptr %.1120198.i, i64 2
  %i.ml = getelementptr inbounds nuw i8, ptr %.1118199.i, i64 2
  %i.mm = load i8, ptr %i.mk, align 1, !tbaa !17
  store i8 %i.mm, ptr %i.mj, align 1, !tbaa !17
  %i.mn = load i8, ptr %i.ml, align 1, !tbaa !17
  %i.mo = getelementptr inbounds nuw i8, ptr %.8197.i, i64 5
  store i8 %i.mn, ptr %i.mo, align 1, !tbaa !17
  %i.mp = getelementptr inbounds nuw i8, ptr %.8197.i, i64 6
  %i.mq = getelementptr inbounds nuw i8, ptr %.1120198.i, i64 3
  %i.mr = getelementptr inbounds nuw i8, ptr %.1118199.i, i64 3
  %i.ms = load i8, ptr %i.mq, align 1, !tbaa !17
  store i8 %i.ms, ptr %i.mp, align 1, !tbaa !17
  %i.mt = load i8, ptr %i.mr, align 1, !tbaa !17
  %i.mu = getelementptr inbounds nuw i8, ptr %.8197.i, i64 7
  store i8 %i.mt, ptr %i.mu, align 1, !tbaa !17
  %i.mv = getelementptr inbounds nuw i8, ptr %.8197.i, i64 8 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.1120198.i, i64 4
  %i.mx = getelementptr inbounds nuw i8, ptr %.1118199.i, i64 4
  %i.my = add nuw nsw i32 %.1200.i, 4             ; 2 uses
  %exitcond240.not.i.3 = icmp eq i32 %i.my, %5
  br i1 %exitcond240.not.i.3, label %._crit_edge202.i, label %.lr.ph201.i, !llvm.loop !109

._crit_edge202.i:                                 ; preds = %.lr.ph201.i.prol.loopexit, %.lr.ph201.i, %middle.block, %vec.epilog.middle.block, %.preheader147.i
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader147.i ], [ %i.ky, %vec.epilog.middle.block ], [ %i.kq, %middle.block ], [ %.lcssa181.unr, %.lr.ph201.i.prol.loopexit ], [ %i.mv, %.lr.ph201.i ] ; 2 uses
  %indvars.iv.next242.i = add nuw nsw i64 %indvars.iv241.i, 2 ; 3 uses
  %i.mz = icmp slt i64 %indvars.iv.next242.i, %invariant.op263.i
  br i1 %i.mz, label %bb.h, label %.preheader.loopexit.i, !llvm.loop !110

iter.check160:                                    ; preds = %._crit_edge214.i, %.lr.ph213.preheader.i
  %indvars.iv245.i = phi i64 [ %i.it, %.lr.ph213.preheader.i ], [ %indvars.iv.next246.i, %._crit_edge214.i ] ; 2 uses
  %.9217.i = phi ptr [ %.6.lcssa.i, %.lr.ph213.preheader.i ], [ %.lcssa, %._crit_edge214.i ] ; 7 uses
  %i.na = add i64 %indvars.iv245.i, %i.iu
  %i.nb = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.nc = load i32, ptr %i.ip, align 4, !tbaa !15
  %i.nd = sext i32 %i.nc to i64
  %i.ne = mul i64 %i.na, %i.nd
  %i.nf = load i64, ptr %i.iq, align 8, !tbaa !16
  %i.ng = mul i64 %i.ne, %i.nf                    ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.ng
  %i.ni = getelementptr inbounds i8, ptr %i.nh, i64 %i.ir ; 6 uses
  br i1 %min.iters.check141, label %vec.epilog.scalar.ph161.preheader, label %vector.memcheck139

vector.memcheck139:                               ; preds = %iter.check160
  %i.nj = ptrtoaddr ptr %i.nb to i64
  %.9217.i140 = ptrtoaddr ptr %.9217.i to i64
  %i.nk = add i64 %i.ir, %i.nj
  %i.nl = add i64 %i.nk, %i.ng
  %i.nm = sub i64 %i.nl, %.9217.i140
  %diff.check = icmp ugt i64 %i.nm, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph161.preheader, label %vector.main.loop.iter.check142

vector.main.loop.iter.check142:                   ; preds = %vector.memcheck139
  br i1 %min.iters.check143, label %vec.epilog.ph164, label %vector.ph144

vector.ph144:                                     ; preds = %vector.main.loop.iter.check142
  %i.nn = getelementptr i8, ptr %i.ni, i64 %n.vec145
  %i.no = getelementptr i8, ptr %.9217.i, i64 %n.vec145 ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next154, %vector.body146 ] ; 3 uses
  %next.gep148 = getelementptr i8, ptr %i.ni, i64 %index147 ; 4 uses
  %next.gep149 = getelementptr i8, ptr %.9217.i, i64 %index147 ; 4 uses
  %i.np = getelementptr i8, ptr %next.gep148, i64 32
  %i.nq = getelementptr i8, ptr %next.gep148, i64 64
  %i.nr = getelementptr i8, ptr %next.gep148, i64 96
  %wide.load150 = load <32 x i8>, ptr %next.gep148, align 1, !tbaa !17
  %wide.load151 = load <32 x i8>, ptr %i.np, align 1, !tbaa !17
  %wide.load152 = load <32 x i8>, ptr %i.nq, align 1, !tbaa !17
  %wide.load153 = load <32 x i8>, ptr %i.nr, align 1, !tbaa !17
  %i.ns = getelementptr i8, ptr %next.gep149, i64 32
  %i.nt = getelementptr i8, ptr %next.gep149, i64 64
  %i.nu = getelementptr i8, ptr %next.gep149, i64 96
  store <32 x i8> %wide.load150, ptr %next.gep149, align 1, !tbaa !17
  store <32 x i8> %wide.load151, ptr %i.ns, align 1, !tbaa !17
  store <32 x i8> %wide.load152, ptr %i.nt, align 1, !tbaa !17
  store <32 x i8> %wide.load153, ptr %i.nu, align 1, !tbaa !17
  %index.next154 = add nuw i64 %index147, 128     ; 2 uses
  %i.nv = icmp eq i64 %index.next154, %n.vec145
  br i1 %i.nv, label %middle.block155, label %vector.body146, !llvm.loop !111

middle.block155:                                  ; preds = %vector.body146
  br i1 %cmp.n156, label %._crit_edge214.i, label %vec.epilog.iter.check162

vec.epilog.iter.check162:                         ; preds = %middle.block155
  br i1 %min.epilog.iters.check163, label %vec.epilog.scalar.ph161.preheader, label %vec.epilog.ph164, !prof !58

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check142, %vec.epilog.iter.check162
  %vec.epilog.resume.val157 = phi i64 [ %n.vec145, %vec.epilog.iter.check162 ], [ 0, %vector.main.loop.iter.check142 ]
  %i.nw = getelementptr i8, ptr %i.ni, i64 %n.vec165
  %i.nx = getelementptr i8, ptr %.9217.i, i64 %n.vec165 ; 2 uses
  br label %vec.epilog.vector.body166

vec.epilog.vector.body166:                        ; preds = %vec.epilog.vector.body166, %vec.epilog.ph164
  %index167 = phi i64 [ %vec.epilog.resume.val157, %vec.epilog.ph164 ], [ %index.next171, %vec.epilog.vector.body166 ] ; 3 uses
  %next.gep168 = getelementptr i8, ptr %i.ni, i64 %index167
  %next.gep169 = getelementptr i8, ptr %.9217.i, i64 %index167
  %wide.load170 = load <8 x i8>, ptr %next.gep168, align 1, !tbaa !17
  store <8 x i8> %wide.load170, ptr %next.gep169, align 1, !tbaa !17
  %index.next171 = add nuw i64 %index167, 8       ; 2 uses
  %i.ny = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.ny, label %vec.epilog.middle.block172, label %vec.epilog.vector.body166, !llvm.loop !112

vec.epilog.middle.block172:                       ; preds = %vec.epilog.vector.body166
  br i1 %cmp.n173, label %._crit_edge214.i, label %vec.epilog.scalar.ph161.preheader

vec.epilog.scalar.ph161.preheader:                ; preds = %vector.memcheck139, %iter.check160, %vec.epilog.iter.check162, %vec.epilog.middle.block172
  %.0211.i.ph = phi i32 [ 0, %iter.check160 ], [ 0, %vector.memcheck139 ], [ %i.ix, %vec.epilog.iter.check162 ], [ %i.iy, %vec.epilog.middle.block172 ] ; 4 uses
  %.0115210.i.ph = phi ptr [ %i.ni, %iter.check160 ], [ %i.ni, %vector.memcheck139 ], [ %i.nn, %vec.epilog.iter.check162 ], [ %i.nw, %vec.epilog.middle.block172 ] ; 2 uses
  %.10209.i.ph = phi ptr [ %.9217.i, %iter.check160 ], [ %.9217.i, %vector.memcheck139 ], [ %i.no, %vec.epilog.iter.check162 ], [ %i.nx, %vec.epilog.middle.block172 ] ; 2 uses
  %i.nz = sub i32 %5, %.0211.i.ph
  %xtraiter207 = and i32 %i.nz, 7                 ; 2 uses
  %lcmp.mod208.not = icmp eq i32 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %vec.epilog.scalar.ph161.prol.loopexit, label %vec.epilog.scalar.ph161.prol

vec.epilog.scalar.ph161.prol:                     ; preds = %vec.epilog.scalar.ph161.preheader, %vec.epilog.scalar.ph161.prol
  %.0211.i.prol = phi i32 [ %i.od, %vec.epilog.scalar.ph161.prol ], [ %.0211.i.ph, %vec.epilog.scalar.ph161.preheader ]
  %.0115210.i.prol = phi ptr [ %i.oc, %vec.epilog.scalar.ph161.prol ], [ %.0115210.i.ph, %vec.epilog.scalar.ph161.preheader ] ; 2 uses
  %.10209.i.prol = phi ptr [ %i.ob, %vec.epilog.scalar.ph161.prol ], [ %.10209.i.ph, %vec.epilog.scalar.ph161.preheader ] ; 2 uses
  %prol.iter209 = phi i32 [ %prol.iter209.next, %vec.epilog.scalar.ph161.prol ], [ 0, %vec.epilog.scalar.ph161.preheader ]
  %i.oa = load i8, ptr %.0115210.i.prol, align 1, !tbaa !17
  store i8 %i.oa, ptr %.10209.i.prol, align 1, !tbaa !17
  %i.ob = getelementptr inbounds nuw i8, ptr %.10209.i.prol, i64 1 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0115210.i.prol, i64 1 ; 2 uses
  %i.od = add nuw nsw i32 %.0211.i.prol, 1        ; 2 uses
  %prol.iter209.next = add i32 %prol.iter209, 1   ; 2 uses
  %prol.iter209.cmp.not = icmp eq i32 %prol.iter209.next, %xtraiter207
  br i1 %prol.iter209.cmp.not, label %vec.epilog.scalar.ph161.prol.loopexit, label %vec.epilog.scalar.ph161.prol, !llvm.loop !113

vec.epilog.scalar.ph161.prol.loopexit:            ; preds = %vec.epilog.scalar.ph161.prol, %vec.epilog.scalar.ph161.preheader
  %.lcssa177.unr = phi ptr [ poison, %vec.epilog.scalar.ph161.preheader ], [ %i.ob, %vec.epilog.scalar.ph161.prol ]
  %.0211.i.unr = phi i32 [ %.0211.i.ph, %vec.epilog.scalar.ph161.preheader ], [ %i.od, %vec.epilog.scalar.ph161.prol ]
  %.0115210.i.unr = phi ptr [ %.0115210.i.ph, %vec.epilog.scalar.ph161.preheader ], [ %i.oc, %vec.epilog.scalar.ph161.prol ]
  %.10209.i.unr = phi ptr [ %.10209.i.ph, %vec.epilog.scalar.ph161.preheader ], [ %i.ob, %vec.epilog.scalar.ph161.prol ]
  %i.oe = sub i32 %.0211.i.ph, %5
  %i.of = icmp ugt i32 %i.oe, -8
  br i1 %i.of, label %._crit_edge214.i, label %vec.epilog.scalar.ph161

vec.epilog.scalar.ph161:                          ; preds = %vec.epilog.scalar.ph161.prol.loopexit, %vec.epilog.scalar.ph161
  %.0211.i = phi i32 [ %i.pe, %vec.epilog.scalar.ph161 ], [ %.0211.i.unr, %vec.epilog.scalar.ph161.prol.loopexit ]
  %.0115210.i = phi ptr [ %i.pd, %vec.epilog.scalar.ph161 ], [ %.0115210.i.unr, %vec.epilog.scalar.ph161.prol.loopexit ] ; 9 uses
  %.10209.i = phi ptr [ %i.pc, %vec.epilog.scalar.ph161 ], [ %.10209.i.unr, %vec.epilog.scalar.ph161.prol.loopexit ] ; 9 uses
  %i.og = load i8, ptr %.0115210.i, align 1, !tbaa !17
  store i8 %i.og, ptr %.10209.i, align 1, !tbaa !17
  %i.oh = getelementptr inbounds nuw i8, ptr %.10209.i, i64 1
  %i.oi = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 1
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !17
  store i8 %i.oj, ptr %i.oh, align 1, !tbaa !17
  %i.ok = getelementptr inbounds nuw i8, ptr %.10209.i, i64 2
  %i.ol = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 2
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !17
  store i8 %i.om, ptr %i.ok, align 1, !tbaa !17
  %i.on = getelementptr inbounds nuw i8, ptr %.10209.i, i64 3
  %i.oo = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 3
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !17
  store i8 %i.op, ptr %i.on, align 1, !tbaa !17
  %i.oq = getelementptr inbounds nuw i8, ptr %.10209.i, i64 4
  %i.or = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 4
  %i.os = load i8, ptr %i.or, align 1, !tbaa !17
  store i8 %i.os, ptr %i.oq, align 1, !tbaa !17
  %i.ot = getelementptr inbounds nuw i8, ptr %.10209.i, i64 5
  %i.ou = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 5
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !17
  store i8 %i.ov, ptr %i.ot, align 1, !tbaa !17
  %i.ow = getelementptr inbounds nuw i8, ptr %.10209.i, i64 6
  %i.ox = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 6
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !17
  store i8 %i.oy, ptr %i.ow, align 1, !tbaa !17
  %i.oz = getelementptr inbounds nuw i8, ptr %.10209.i, i64 7
  %i.pa = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 7
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !17
  store i8 %i.pb, ptr %i.oz, align 1, !tbaa !17
  %i.pc = getelementptr inbounds nuw i8, ptr %.10209.i, i64 8 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.0115210.i, i64 8
  %i.pe = add nuw nsw i32 %.0211.i, 8             ; 2 uses
  %exitcond244.not.i.7 = icmp eq i32 %i.pe, %5
  br i1 %exitcond244.not.i.7, label %._crit_edge214.i, label %vec.epilog.scalar.ph161, !llvm.loop !114

._crit_edge214.i:                                 ; preds = %vec.epilog.scalar.ph161.prol.loopexit, %vec.epilog.scalar.ph161, %vec.epilog.middle.block172, %middle.block155
  %.lcssa = phi ptr [ %i.nx, %vec.epilog.middle.block172 ], [ %i.no, %middle.block155 ], [ %.lcssa177.unr, %vec.epilog.scalar.ph161.prol.loopexit ], [ %i.pc, %vec.epilog.scalar.ph161 ]
  %indvars.iv.next246.i = add nsw i64 %indvars.iv245.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next246.i, %wide.trip.count.i
  br i1 %exitcond248.not.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check160, !llvm.loop !115

_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge214.i, %bb.b, %bb.d, %.preheader.i, %.lr.ph218.i
  ret void
}

declare void @_ZN4ncnn28pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn24pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn31transpose_pack_B_tile_int8_avx2ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn38transpose_pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not155.i = icmp eq i32 %i.b, 0
  br i1 %.not155.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn34transpose_pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 7 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !9      ; 5 uses
  %i.f = icmp sgt i32 %3, 7
  br i1 %i.f, label %.lr.ph174.i, label %.preheader159.i

.lr.ph174.i:                                      ; preds = %bb.e
  %i.g = sext i32 %4 to i64                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp sgt i32 %5, 1
  %i.j = sext i32 %i.d to i64                     ; 15 uses
  %i.k = shl nsw i32 %i.d, 1
  %i.l = sext i32 %i.k to i64                     ; 5 uses
  br i1 %i.i, label %.lr.ph.us.preheader.i, label %.lr.ph174.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph174.i
  %i.m = and i32 %5, 2147483646                   ; 4 uses
  %i.n = sext i32 %2 to i64                       ; 2 uses
  %i.o = zext nneg i32 %3 to i64                  ; 2 uses
  %.not = icmp eq i32 %i.m, %5
  br i1 %.not, label %.lr.ph.us.i.us.preheader, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph.us.preheader.i
  %i.p = add nsw i32 %5, -2                       ; 2 uses
  %i.q = lshr i32 %i.p, 1                         ; 2 uses
  %i.r = add nuw i32 %i.q, 1                      ; 2 uses
  %i.s = and i32 %5, 1                            ; 2 uses
  %i.t = icmp eq i32 %i.q, 0
  %unroll_iter = and i32 %i.r, -2
  %i.u = and i32 %i.p, 2
  %lcmp.mod.not.not = icmp eq i32 %i.u, 0
  %lcmp.mod68 = trunc i32 %i.r to i1
  %lcmp.mod70.not = icmp eq i32 %i.s, 0
  %i.v = sub nsw i32 %i.m, %5
  %i.w = icmp ugt i32 %i.v, -8
  br label %.lr.ph.us.i

.lr.ph.us.i.us.preheader:                         ; preds = %.lr.ph.us.preheader.i
  %i.x = add nsw i32 %5, -2                       ; 2 uses
  %i.y = lshr i32 %i.x, 1                         ; 2 uses
  %i.z = add nuw i32 %i.y, 1                      ; 2 uses
  %i.aa = icmp eq i32 %i.y, 0
  %unroll_iter76 = and i32 %i.z, -2
  %i.ab = and i32 %i.x, 2
  %lcmp.mod73.not.not = icmp eq i32 %i.ab, 0
  %lcmp.mod75 = trunc i32 %i.z to i1
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.lr.ph.us.i.us.preheader, %..preheader160_crit_edge.us.i.us
  %indvars.iv257.i.us = phi i64 [ %indvars.iv.next258.i.us, %..preheader160_crit_edge.us.i.us ], [ 0, %.lr.ph.us.i.us.preheader ] ; 2 uses
  %.0145172.us.i.us = phi ptr [ %.lcssa60, %..preheader160_crit_edge.us.i.us ], [ %i.e, %.lr.ph.us.i.us.preheader ] ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !15
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, %i.g
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !16
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 %indvars.iv257.i.us
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.n   ; 2 uses
  br i1 %i.aa, label %.epil.preheader71, label %.lr.ph.us.i.us.new

.lr.ph.us.i.us.new:                               ; preds = %.lr.ph.us.i.us, %.lr.ph.us.i.us.new
  %.1146163.us.i.us = phi ptr [ %i.bd, %.lr.ph.us.i.us.new ], [ %.0145172.us.i.us, %.lr.ph.us.i.us ] ; 3 uses
  %.0151162.us.i.us = phi ptr [ %i.be, %.lr.ph.us.i.us.new ], [ %i.ak, %.lr.ph.us.i.us ] ; 3 uses
  %niter77 = phi i32 [ %niter77.next.1, %.lr.ph.us.i.us.new ], [ 0, %.lr.ph.us.i.us ]
  %i.al = load i64, ptr %.0151162.us.i.us, align 1, !tbaa !17
  %i.am = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.an = getelementptr inbounds i8, ptr %.0151162.us.i.us, i64 %i.j
  %i.ao = load i64, ptr %i.an, align 1, !tbaa !17
  %i.ap = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %i.aq = bitcast <2 x i64> %i.am to <16 x i8>
  %i.ar = bitcast <2 x i64> %i.ap to <16 x i8>
  %i.as = shufflevector <16 x i8> %i.aq, <16 x i8> %i.ar, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.as, ptr %.1146163.us.i.us, align 1, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %.1146163.us.i.us, i64 16
  %i.au = getelementptr inbounds i8, ptr %.0151162.us.i.us, i64 %i.l ; 3 uses
  %i.av = load i64, ptr %i.au, align 1, !tbaa !17
  %i.aw = insertelement <2 x i64> poison, i64 %i.av, i64 0
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %i.j
  %i.ay = load i64, ptr %i.ax, align 1, !tbaa !17
  %i.az = insertelement <2 x i64> poison, i64 %i.ay, i64 0
  %i.ba = bitcast <2 x i64> %i.aw to <16 x i8>
  %i.bb = bitcast <2 x i64> %i.az to <16 x i8>
  %i.bc = shufflevector <16 x i8> %i.ba, <16 x i8> %i.bb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bc, ptr %i.at, align 1, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %.1146163.us.i.us, i64 32 ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %i.au, i64 %i.l ; 2 uses
  %niter77.next.1 = add nuw nsw i32 %niter77, 2   ; 2 uses
  %niter77.ncmp.1.not = icmp eq i32 %niter77.next.1, %unroll_iter76
  br i1 %niter77.ncmp.1.not, label %..preheader160_crit_edge.us.i.us.unr-lcssa, label %.lr.ph.us.i.us.new, !llvm.loop !116

..preheader160_crit_edge.us.i.us.unr-lcssa:       ; preds = %.lr.ph.us.i.us.new
  br i1 %lcmp.mod73.not.not, label %.epil.preheader71, label %..preheader160_crit_edge.us.i.us

.epil.preheader71:                                ; preds = %..preheader160_crit_edge.us.i.us.unr-lcssa, %.lr.ph.us.i.us
  %.1146163.us.i.us.epil.init = phi ptr [ %.0145172.us.i.us, %.lr.ph.us.i.us ], [ %i.bd, %..preheader160_crit_edge.us.i.us.unr-lcssa ] ; 2 uses
  %.0151162.us.i.us.epil.init = phi ptr [ %i.ak, %.lr.ph.us.i.us ], [ %i.be, %..preheader160_crit_edge.us.i.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.bf = load i64, ptr %.0151162.us.i.us.epil.init, align 1, !tbaa !17
  %i.bg = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %i.bh = getelementptr inbounds i8, ptr %.0151162.us.i.us.epil.init, i64 %i.j
  %i.bi = load i64, ptr %i.bh, align 1, !tbaa !17
  %i.bj = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %i.bk = bitcast <2 x i64> %i.bg to <16 x i8>
  %i.bl = bitcast <2 x i64> %i.bj to <16 x i8>
  %i.bm = shufflevector <16 x i8> %i.bk, <16 x i8> %i.bl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bm, ptr %.1146163.us.i.us.epil.init, align 1, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %.1146163.us.i.us.epil.init, i64 16
  br label %..preheader160_crit_edge.us.i.us

..preheader160_crit_edge.us.i.us:                 ; preds = %..preheader160_crit_edge.us.i.us.unr-lcssa, %.epil.preheader71
  %.lcssa60 = phi ptr [ %i.bd, %..preheader160_crit_edge.us.i.us.unr-lcssa ], [ %i.bn, %.epil.preheader71 ] ; 2 uses
  %indvars.iv.next258.i.us = add nuw nsw i64 %indvars.iv257.i.us, 8 ; 3 uses
  %i.bo = or disjoint i64 %indvars.iv.next258.i.us, 7
  %i.bp = icmp samesign ult i64 %i.bo, %i.o
  br i1 %i.bp, label %.lr.ph.us.i.us, label %.preheader159.loopexit.i, !llvm.loop !117

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i.loopexit
  %indvars.iv257.i = phi i64 [ %indvars.iv.next258.i, %._crit_edge.us.i.loopexit ], [ 0, %.lr.ph.us.i.preheader ] ; 2 uses
  %.0145172.us.i = phi ptr [ %.lcssa64, %._crit_edge.us.i.loopexit ], [ %i.e, %.lr.ph.us.i.preheader ] ; 2 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !9
  %i.br = load i32, ptr %i.c, align 4, !tbaa !15
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.bs, %i.g
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !16
  %i.bv = mul i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 %indvars.iv257.i
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.n   ; 2 uses
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.1146163.us.i = phi ptr [ %i.cr, %.lr.ph.us.i.new ], [ %.0145172.us.i, %.lr.ph.us.i ] ; 3 uses
  %.0151162.us.i = phi ptr [ %i.cs, %.lr.ph.us.i.new ], [ %i.by, %.lr.ph.us.i ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.bz = load i64, ptr %.0151162.us.i, align 1, !tbaa !17
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = getelementptr inbounds i8, ptr %.0151162.us.i, i64 %i.j
  %i.cc = load i64, ptr %i.cb, align 1, !tbaa !17
  %i.cd = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %i.ce = bitcast <2 x i64> %i.ca to <16 x i8>
  %i.cf = bitcast <2 x i64> %i.cd to <16 x i8>
  %i.cg = shufflevector <16 x i8> %i.ce, <16 x i8> %i.cf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.cg, ptr %.1146163.us.i, align 1, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.1146163.us.i, i64 16
  %i.ci = getelementptr inbounds i8, ptr %.0151162.us.i, i64 %i.l ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 1, !tbaa !17
  %i.ck = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 %i.j
  %i.cm = load i64, ptr %i.cl, align 1, !tbaa !17
  %i.cn = insertelement <2 x i64> poison, i64 %i.cm, i64 0
  %i.co = bitcast <2 x i64> %i.ck to <16 x i8>
  %i.cp = bitcast <2 x i64> %i.cn to <16 x i8>
  %i.cq = shufflevector <16 x i8> %i.co, <16 x i8> %i.cp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.cq, ptr %i.ch, align 1, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %.1146163.us.i, i64 32 ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.ci, i64 %i.l ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.lr.ph169.us.i.preheader.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !116

.lr.ph169.us.i.preheader.unr-lcssa:               ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.lr.ph169.us.i.preheader

.epil.preheader:                                  ; preds = %.lr.ph169.us.i.preheader.unr-lcssa, %.lr.ph.us.i
  %.1146163.us.i.epil.init = phi ptr [ %.0145172.us.i, %.lr.ph.us.i ], [ %i.cr, %.lr.ph169.us.i.preheader.unr-lcssa ] ; 2 uses
  %.0151162.us.i.epil.init = phi ptr [ %i.by, %.lr.ph.us.i ], [ %i.cs, %.lr.ph169.us.i.preheader.unr-lcssa ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnn31transpose_pack_B_tile_int8_avx2ERKNS_3MatERS0_iiii:bb.a
  %.0138.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.fw, %.preheader156.i.loopexit.unr-lcssa ], [ %i.fw, %.lr.ph211.i.epil.preheader ] ; 5 uses
  %i.kj = icmp slt i32 %.0138.lcssa.i, %5
  br i1 %i.kj, label %.lr.ph218.i.preheader, label %._crit_edge219.i

.lr.ph218.i.preheader:                            ; preds = %.preheader156.i
  %i.kk = sub i32 %5, %.0138.lcssa.i
  %xtraiter88 = and i32 %i.kk, 3                  ; 2 uses
  %lcmp.mod89.not = icmp eq i32 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.lr.ph218.i.prol.loopexit, label %.lr.ph218.i.prol

.lr.ph218.i.prol:                                 ; preds = %.lr.ph218.i.preheader, %.lr.ph218.i.prol
  %.1217.i.prol = phi i32 [ %i.kr, %.lr.ph218.i.prol ], [ %.0138.lcssa.i, %.lr.ph218.i.preheader ]
  %.1140216.i.prol = phi ptr [ %i.kq, %.lr.ph218.i.prol ], [ %.0139.lcssa.i, %.lr.ph218.i.preheader ] ; 3 uses
  %.8215.i.prol = phi ptr [ %i.kp, %.lr.ph218.i.prol ], [ %.7.lcssa.i, %.lr.ph218.i.preheader ] ; 3 uses
  %prol.iter90 = phi i32 [ %prol.iter90.next, %.lr.ph218.i.prol ], [ 0, %.lr.ph218.i.preheader ]
  %i.kl = load i8, ptr %.1140216.i.prol, align 1, !tbaa !17
  store i8 %i.kl, ptr %.8215.i.prol, align 1, !tbaa !17
  %i.km = getelementptr inbounds nuw i8, ptr %.1140216.i.prol, i64 1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !17
  %i.ko = getelementptr inbounds nuw i8, ptr %.8215.i.prol, i64 1
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !17
  %i.kp = getelementptr inbounds nuw i8, ptr %.8215.i.prol, i64 2 ; 3 uses
  %i.kq = getelementptr inbounds i8, ptr %.1140216.i.prol, i64 %i.ft ; 2 uses
  %i.kr = add nuw nsw i32 %.1217.i.prol, 1        ; 2 uses
  %prol.iter90.next = add i32 %prol.iter90, 1     ; 2 uses
  %prol.iter90.cmp.not = icmp eq i32 %prol.iter90.next, %xtraiter88
  br i1 %prol.iter90.cmp.not, label %.lr.ph218.i.prol.loopexit, label %.lr.ph218.i.prol, !llvm.loop !123

.lr.ph218.i.prol.loopexit:                        ; preds = %.lr.ph218.i.prol, %.lr.ph218.i.preheader
  %.lcssa56.unr = phi ptr [ poison, %.lr.ph218.i.preheader ], [ %i.kp, %.lr.ph218.i.prol ]
  %.1217.i.unr = phi i32 [ %.0138.lcssa.i, %.lr.ph218.i.preheader ], [ %i.kr, %.lr.ph218.i.prol ]
  %.1140216.i.unr = phi ptr [ %.0139.lcssa.i, %.lr.ph218.i.preheader ], [ %i.kq, %.lr.ph218.i.prol ]
  %.8215.i.unr = phi ptr [ %.7.lcssa.i, %.lr.ph218.i.preheader ], [ %i.kp, %.lr.ph218.i.prol ]
  %i.ks = sub i32 %.0138.lcssa.i, %5
  %i.kt = icmp ugt i32 %i.ks, -4
  br i1 %i.kt, label %._crit_edge219.i, label %.lr.ph218.i

.lr.ph211.i:                                      ; preds = %.lr.ph211.i.preheader, %.lr.ph211.i
  %.0139208.i = phi ptr [ %i.lr, %.lr.ph211.i ], [ %i.jw, %.lr.ph211.i.preheader ] ; 4 uses
  %.7207.i = phi ptr [ %i.lq, %.lr.ph211.i ], [ %.6222.i, %.lr.ph211.i.preheader ] ; 9 uses
  %niter87 = phi i32 [ %niter87.next.1, %.lr.ph211.i ], [ 0, %.lr.ph211.i.preheader ]
  %i.ku = load i8, ptr %.0139208.i, align 1, !tbaa !17
  store i8 %i.ku, ptr %.7207.i, align 1, !tbaa !17
  %i.kv = getelementptr inbounds i8, ptr %.0139208.i, i64 %i.ft ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !17
  %i.kx = getelementptr inbounds nuw i8, ptr %.7207.i, i64 1
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !17
  %i.ky = getelementptr inbounds nuw i8, ptr %.0139208.i, i64 1
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !17
  %i.la = getelementptr inbounds nuw i8, ptr %.7207.i, i64 2
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !17
  %i.lb = getelementptr i8, ptr %i.kv, i64 1
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !17
  %i.ld = getelementptr inbounds nuw i8, ptr %.7207.i, i64 3
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !17
  %i.le = getelementptr inbounds nuw i8, ptr %.7207.i, i64 4
  %i.lf = getelementptr inbounds i8, ptr %.0139208.i, i64 %i.fv ; 4 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !17
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !17
  %i.lh = getelementptr inbounds i8, ptr %i.lf, i64 %i.ft ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !17
  %i.lj = getelementptr inbounds nuw i8, ptr %.7207.i, i64 5
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !17
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !17
  %i.lm = getelementptr inbounds nuw i8, ptr %.7207.i, i64 6
  store i8 %i.ll, ptr %i.lm, align 1, !tbaa !17
  %i.ln = getelementptr i8, ptr %i.lh, i64 1
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !17
  %i.lp = getelementptr inbounds nuw i8, ptr %.7207.i, i64 7
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !17
  %i.lq = getelementptr inbounds nuw i8, ptr %.7207.i, i64 8 ; 3 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lf, i64 %i.fv ; 3 uses
  %niter87.next.1 = add nuw nsw i32 %niter87, 2   ; 2 uses
  %niter87.ncmp.1.not = icmp eq i32 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1.not, label %.preheader156.i.loopexit.unr-lcssa, label %.lr.ph211.i, !llvm.loop !124

.lr.ph218.i:                                      ; preds = %.lr.ph218.i.prol.loopexit, %.lr.ph218.i
  %.1217.i = phi i32 [ %i.mq, %.lr.ph218.i ], [ %.1217.i.unr, %.lr.ph218.i.prol.loopexit ]
  %.1140216.i = phi ptr [ %i.mp, %.lr.ph218.i ], [ %.1140216.i.unr, %.lr.ph218.i.prol.loopexit ] ; 3 uses
  %.8215.i = phi ptr [ %i.mo, %.lr.ph218.i ], [ %.8215.i.unr, %.lr.ph218.i.prol.loopexit ] ; 9 uses
  %i.ls = load i8, ptr %.1140216.i, align 1, !tbaa !17
  store i8 %i.ls, ptr %.8215.i, align 1, !tbaa !17
  %i.lt = getelementptr inbounds nuw i8, ptr %.1140216.i, i64 1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !17
  %i.lv = getelementptr inbounds nuw i8, ptr %.8215.i, i64 1
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !17
  %i.lw = getelementptr inbounds nuw i8, ptr %.8215.i, i64 2
  %i.lx = getelementptr inbounds i8, ptr %.1140216.i, i64 %i.ft ; 3 uses
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !17
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !17
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !17
  %i.mb = getelementptr inbounds nuw i8, ptr %.8215.i, i64 3
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !17
  %i.mc = getelementptr inbounds nuw i8, ptr %.8215.i, i64 4
  %i.md = getelementptr inbounds i8, ptr %i.lx, i64 %i.ft ; 3 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !17
  store i8 %i.me, ptr %i.mc, align 1, !tbaa !17
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !17
  %i.mh = getelementptr inbounds nuw i8, ptr %.8215.i, i64 5
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !17
  %i.mi = getelementptr inbounds nuw i8, ptr %.8215.i, i64 6
  %i.mj = getelementptr inbounds i8, ptr %i.md, i64 %i.ft ; 3 uses
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !17
  store i8 %i.mk, ptr %i.mi, align 1, !tbaa !17
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !17
  %i.mn = getelementptr inbounds nuw i8, ptr %.8215.i, i64 7
  store i8 %i.mm, ptr %i.mn, align 1, !tbaa !17
  %i.mo = getelementptr inbounds nuw i8, ptr %.8215.i, i64 8 ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %i.mj, i64 %i.ft
  %i.mq = add nuw nsw i32 %.1217.i, 4             ; 2 uses
  %exitcond264.not.i.3 = icmp eq i32 %i.mq, %5
  br i1 %exitcond264.not.i.3, label %._crit_edge219.i, label %.lr.ph218.i, !llvm.loop !125

._crit_edge219.i:                                 ; preds = %.lr.ph218.i.prol.loopexit, %.lr.ph218.i, %.preheader156.i
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader156.i ], [ %.lcssa56.unr, %.lr.ph218.i.prol.loopexit ], [ %i.mo, %.lr.ph218.i ] ; 2 uses
  %indvars.iv.next266.i = add nuw nsw i64 %indvars.iv265.i, 2 ; 3 uses
  %i.mr = icmp slt i64 %indvars.iv.next266.i, %invariant.op287.i
  br i1 %i.mr, label %bb.g, label %.preheader.loopexit.i, !llvm.loop !126

.lr.ph230.i:                                      ; preds = %._crit_edge231.i, %.lr.ph230.preheader.i
  %indvars.iv269.i = phi i64 [ %i.jk, %.lr.ph230.preheader.i ], [ %indvars.iv.next270.i, %._crit_edge231.i ] ; 2 uses
  %.9234.i = phi ptr [ %.6.lcssa.i, %.lr.ph230.preheader.i ], [ %.lcssa, %._crit_edge231.i ] ; 2 uses
  %i.ms = load ptr, ptr %0, align 8, !tbaa !9
  %i.mt = load i32, ptr %i.c, align 4, !tbaa !15
  %i.mu = sext i32 %i.mt to i64
  %i.mv = mul nsw i64 %i.mu, %i.jg
  %i.mw = load i64, ptr %i.jh, align 8, !tbaa !16
  %i.mx = mul i64 %i.mv, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mx
  %i.mz = getelementptr i8, ptr %i.my, i64 %indvars.iv269.i
  %i.na = getelementptr i8, ptr %i.mz, i64 %i.jl  ; 2 uses
  br i1 %i.jn, label %.epil.preheader91, label %.lr.ph230.i.new

.lr.ph230.i.new:                                  ; preds = %.lr.ph230.i, %.lr.ph230.i.new
  %.0137227.i = phi ptr [ %i.ny, %.lr.ph230.i.new ], [ %i.na, %.lr.ph230.i ] ; 2 uses
  %.10226.i = phi ptr [ %i.nx, %.lr.ph230.i.new ], [ %.9234.i, %.lr.ph230.i ] ; 9 uses
  %niter97 = phi i32 [ %niter97.next.7, %.lr.ph230.i.new ], [ 0, %.lr.ph230.i ]
  %i.nb = load i8, ptr %.0137227.i, align 1, !tbaa !17
  store i8 %i.nb, ptr %.10226.i, align 1, !tbaa !17
  %i.nc = getelementptr inbounds nuw i8, ptr %.10226.i, i64 1
  %i.nd = getelementptr inbounds i8, ptr %.0137227.i, i64 %i.jj ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !17
  store i8 %i.ne, ptr %i.nc, align 1, !tbaa !17
  %i.nf = getelementptr inbounds nuw i8, ptr %.10226.i, i64 2
  %i.ng = getelementptr inbounds i8, ptr %i.nd, i64 %i.jj ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !17
  store i8 %i.nh, ptr %i.nf, align 1, !tbaa !17
  %i.ni = getelementptr inbounds nuw i8, ptr %.10226.i, i64 3
  %i.nj = getelementptr inbounds i8, ptr %i.ng, i64 %i.jj ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !17
  store i8 %i.nk, ptr %i.ni, align 1, !tbaa !17
  %i.nl = getelementptr inbounds nuw i8, ptr %.10226.i, i64 4
  %i.nm = getelementptr inbounds i8, ptr %i.nj, i64 %i.jj ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !17
  store i8 %i.nn, ptr %i.nl, align 1, !tbaa !17
  %i.no = getelementptr inbounds nuw i8, ptr %.10226.i, i64 5
  %i.np = getelementptr inbounds i8, ptr %i.nm, i64 %i.jj ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !17
  store i8 %i.nq, ptr %i.no, align 1, !tbaa !17
  %i.nr = getelementptr inbounds nuw i8, ptr %.10226.i, i64 6
  %i.ns = getelementptr inbounds i8, ptr %i.np, i64 %i.jj ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !17
  store i8 %i.nt, ptr %i.nr, align 1, !tbaa !17
  %i.nu = getelementptr inbounds nuw i8, ptr %.10226.i, i64 7
  %i.nv = getelementptr inbounds i8, ptr %i.ns, i64 %i.jj ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !17
  store i8 %i.nw, ptr %i.nu, align 1, !tbaa !17
  %i.nx = getelementptr inbounds nuw i8, ptr %.10226.i, i64 8 ; 3 uses
  %i.ny = getelementptr inbounds i8, ptr %i.nv, i64 %i.jj ; 2 uses
  %niter97.next.7 = add nuw nsw i32 %niter97, 8   ; 2 uses
  %niter97.ncmp.7 = icmp eq i32 %niter97.next.7, %unroll_iter96
  br i1 %niter97.ncmp.7, label %._crit_edge231.i.unr-lcssa, label %.lr.ph230.i.new, !llvm.loop !127

._crit_edge231.i.unr-lcssa:                       ; preds = %.lr.ph230.i.new
  br i1 %lcmp.mod93.not, label %._crit_edge231.i, label %.epil.preheader91

.epil.preheader91:                                ; preds = %._crit_edge231.i.unr-lcssa, %.lr.ph230.i
  %.0137227.i.epil.init = phi ptr [ %i.na, %.lr.ph230.i ], [ %i.ny, %._crit_edge231.i.unr-lcssa ]
  %.10226.i.epil.init = phi ptr [ %.9234.i, %.lr.ph230.i ], [ %i.nx, %._crit_edge231.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader91
  %.0137227.i.epil = phi ptr [ %.0137227.i.epil.init, %.epil.preheader91 ], [ %i.ob, %bb.h ] ; 2 uses
  %.10226.i.epil = phi ptr [ %.10226.i.epil.init, %.epil.preheader91 ], [ %i.oa, %bb.h ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader91 ], [ %epil.iter.next, %bb.h ]
  %i.nz = load i8, ptr %.0137227.i.epil, align 1, !tbaa !17
  store i8 %i.nz, ptr %.10226.i.epil, align 1, !tbaa !17
  %i.oa = getelementptr inbounds nuw i8, ptr %.10226.i.epil, i64 1 ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %.0137227.i.epil, i64 %i.jj
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter92
  br i1 %epil.iter.cmp.not, label %._crit_edge231.i, label %bb.h, !llvm.loop !128

._crit_edge231.i:                                 ; preds = %bb.h, %._crit_edge231.i.unr-lcssa
  %.lcssa = phi ptr [ %i.nx, %._crit_edge231.i.unr-lcssa ], [ %i.oa, %bb.h ]
  %indvars.iv.next270.i = add nsw i64 %indvars.iv269.i, 1 ; 2 uses
  %exitcond272.not.i = icmp eq i64 %indvars.iv.next270.i, %wide.trip.count.i
  br i1 %exitcond272.not.i, label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph230.i, !llvm.loop !129

_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge231.i, %bb.b, %bb.d, %.preheader.i, %.lr.ph235.i
  ret void
}

declare void @_ZN4ncnn38transpose_pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn34transpose_pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn29pack_A_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn36pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not313.i = icmp eq i32 %i.b, 0
  br i1 %.not313.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn32pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !130  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !131
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !132
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15
  %i.l = sext i32 %i.k to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = phi i64 [ %i.i, %bb.f ], [ %i.l, %bb.g ] ; 13 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.o = icmp sgt i32 %3, 7
  br i1 %i.o, label %.lr.ph427.i, label %.preheader379.i

.lr.ph427.i:                                      ; preds = %bb.h
  %i.p = mul nsw i32 %i.d, %4
  %i.q = sext i32 %i.p to i64
  %i.r = sext i32 %2 to i64                       ; 2 uses
  %i.s = icmp sgt i32 %5, 1                       ; 3 uses
  %.idx314.i = shl i64 %i.m, 4                    ; 2 uses
  %i.t = trunc i64 %i.m to i32
  %i.u = insertelement <8 x i32> poison, i32 %i.t, i64 0
  %i.v = shufflevector <8 x i32> %i.u, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.w = mul <8 x i32> %i.v, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.x = and i32 %5, -2                           ; 3 uses
  %i.y = zext nneg i32 %3 to i64
  br label %bb.i

.preheader379.loopexit.i:                         ; preds = %.loopexit381.i
  %i.z = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader379.i

.preheader379.i:                                  ; preds = %.preheader379.loopexit.i, %bb.h
  %.0280.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.z, %.preheader379.loopexit.i ] ; 3 uses
  %.0278.lcssa.i = phi ptr [ %i.n, %bb.h ], [ %.9.i, %.preheader379.loopexit.i ] ; 4 uses
  %i.aa = or disjoint i32 %.0280.lcssa.i, 3
  %i.ab = icmp slt i32 %i.aa, %3
  br i1 %i.ab, label %.lr.ph457.i, label %.preheader372.i

.lr.ph457.i:                                      ; preds = %.preheader379.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = mul nsw i32 %i.d, %4
  %i.ae = sext i32 %i.ad to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !9
  %i.ag = sext i32 %2 to i64                      ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = icmp sgt i32 %5, 1                      ; 2 uses
  %i.aj = trunc i64 %i.m to i32
  %i.ak = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.al = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.am = mul <4 x i32> %i.al, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.an = and i32 %5, -2                          ; 2 uses
  %i.ao = zext i32 %.0280.lcssa.i to i64          ; 5 uses
  %i.ap = sext i32 %3 to i64
  %invariant.op.i = add nsw i64 %i.ap, -3         ; 3 uses
  switch i32 %i.d, label %.loopexit374.i.preheader [
    i32 4, label %.preheader378.i.us.preheader
    i32 1, label %.preheader375.i.us.preheader
  ]

.preheader375.i.us.preheader:                     ; preds = %.lr.ph457.i
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.preheader375.i.us

.preheader378.i.us.preheader:                     ; preds = %.lr.ph457.i
  %xtraiter210 = and i32 %5, 1
  %lcmp.mod211.not = icmp eq i32 %xtraiter210, 0
  br label %.preheader378.i.us

.loopexit374.i.preheader:                         ; preds = %.lr.ph457.i
  %i.aq = add nuw nsw i64 %i.ao, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.aq)
  %i.ar = xor i64 %i.ao, -1
  %i.as = add nsw i64 %smax, %i.ar
  %i.at = and i64 %i.as, -4
  %i.au = add i64 %i.at, %i.ao
  %i.av = add i64 %i.au, 4
  br label %.preheader372.loopexit.i

.preheader378.i.us:                               ; preds = %.preheader378.i.us.preheader, %.loopexit374.i.us
  %indvars.iv542.i.us = phi i64 [ %indvars.iv.next543.i.us, %.loopexit374.i.us ], [ %i.ao, %.preheader378.i.us.preheader ] ; 3 uses
  %.10456.i.us = phi ptr [ %.16.i.us, %.loopexit374.i.us ], [ %.0278.lcssa.i, %.preheader378.i.us.preheader ] ; 2 uses
  %i.aw = add nsw i64 %indvars.iv542.i.us, %i.ag
  %i.ax = mul i64 %i.aw, %i.m
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ax ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv542.i.us
  %i.az = load <4 x float>, ptr %i.ay, align 16, !tbaa !17 ; 5 uses
  br i1 %i.ai, label %.lr.ph433.i.us, label %.preheader376.i.us

.lr.ph433.i.us:                                   ; preds = %.preheader378.i.us, %.lr.ph433.i.us
  %.11432.i.us = phi ptr [ %i.bt, %.lr.ph433.i.us ], [ %.10456.i.us, %.preheader378.i.us ] ; 2 uses
  %.0304431.i.us = phi ptr [ %i.bu, %.lr.ph433.i.us ], [ %gep.i.us, %.preheader378.i.us ] ; 3 uses
  %.0309430.i.us = phi i32 [ %i.bv, %.lr.ph433.i.us ], [ 0, %.preheader378.i.us ]
  %i.ba = load <4 x float>, ptr %.0304431.i.us, align 16, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %.0304431.i.us, i64 16
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !tbaa !17
  %i.bd = fmul fast <4 x float> %i.ba, %i.az      ; 2 uses
  %i.be = fmul fast <4 x float> %i.bc, %i.az      ; 2 uses
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bg = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bf)
  %i.bi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bg)
  %i.bj = fadd fast <4 x float> %i.bh, %i.bf
  %i.bk = fadd fast <4 x float> %i.bi, %i.bg
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bj)
  %i.bm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bk)
  %i.bn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bl, <4 x i32> %i.bm)
  %i.bo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bn, <8 x i16> splat (i16 -127))
  %i.bp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bo, <8 x i16> splat (i16 127))
  %i.bq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bp, <8 x i16> poison)
  %i.br = bitcast <16 x i8> %i.bq to <2 x i64>
  %i.bs = extractelement <2 x i64> %i.br, i64 0
  store i64 %i.bs, ptr %.11432.i.us, align 8, !tbaa !133
  %i.bt = getelementptr inbounds nuw i8, ptr %.11432.i.us, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0304431.i.us, i64 32 ; 2 uses
  %i.bv = add nuw nsw i32 %.0309430.i.us, 2       ; 2 uses
  %i.bw = or disjoint i32 %i.bv, 1
  %i.bx = icmp slt i32 %i.bw, %5
  br i1 %i.bx, label %.lr.ph433.i.us, label %.preheader376.i.us, !llvm.loop !134

.preheader376.i.us:                               ; preds = %.lr.ph433.i.us, %.preheader378.i.us
  %.0309.lcssa.i.us = phi i32 [ 0, %.preheader378.i.us ], [ %i.an, %.lr.ph433.i.us ] ; 4 uses
  %.0304.lcssa.i.us = phi ptr [ %gep.i.us, %.preheader378.i.us ], [ %i.bu, %.lr.ph433.i.us ] ; 3 uses
  %.11.lcssa.i.us = phi ptr [ %.10456.i.us, %.preheader378.i.us ], [ %i.bt, %.lr.ph433.i.us ] ; 4 uses
  %i.by = icmp slt i32 %.0309.lcssa.i.us, %5
  br i1 %i.by, label %.lr.ph440.i.us.preheader, label %.loopexit374.i.us

.lr.ph440.i.us.preheader:                         ; preds = %.preheader376.i.us
  %.neg214 = or disjoint i32 %.0309.lcssa.i.us, 1
  br i1 %lcmp.mod211.not, label %.lr.ph440.i.us.prol.loopexit, label %.lr.ph440.i.us.prol

.lr.ph440.i.us.prol:                              ; preds = %.lr.ph440.i.us.preheader
  %i.bz = load <4 x float>, ptr %.0304.lcssa.i.us, align 16, !tbaa !17
  %i.ca = fmul fast <4 x float> %i.bz, %i.az      ; 2 uses
  %i.cb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ca)
  %i.cc = fadd fast <4 x float> %i.cb, %i.ca
  %i.cd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.ce = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cd, <4 x i32> %i.cd)
  %i.cf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ce, <8 x i16> splat (i16 -127))
  %i.cg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cf, <8 x i16> splat (i16 127))
  %i.ch = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.cg, <8 x i16> poison)
  %i.ci = bitcast <16 x i8> %i.ch to <4 x i32>
  %i.cj = extractelement <4 x i32> %i.ci, i64 0
  store i32 %i.cj, ptr %.11.lcssa.i.us, align 4, !tbaa !135
  %i.ck = getelementptr inbounds nuw i8, ptr %.11.lcssa.i.us, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0304.lcssa.i.us, i64 16
  %i.cm = or disjoint i32 %.0309.lcssa.i.us, 1
  br label %.lr.ph440.i.us.prol.loopexit

.lr.ph440.i.us.prol.loopexit:                     ; preds = %.lr.ph440.i.us.prol, %.lr.ph440.i.us.preheader
  %.lcssa194.unr = phi ptr [ poison, %.lr.ph440.i.us.preheader ], [ %i.ck, %.lr.ph440.i.us.prol ]
  %.12439.i.us.unr = phi ptr [ %.11.lcssa.i.us, %.lr.ph440.i.us.preheader ], [ %i.ck, %.lr.ph440.i.us.prol ]
  %.1305438.i.us.unr = phi ptr [ %.0304.lcssa.i.us, %.lr.ph440.i.us.preheader ], [ %i.cl, %.lr.ph440.i.us.prol ]
  %.1310437.i.us.unr = phi i32 [ %.0309.lcssa.i.us, %.lr.ph440.i.us.preheader ], [ %i.cm, %.lr.ph440.i.us.prol ]
  %i.cn = icmp eq i32 %5, %.neg214
  br i1 %i.cn, label %.loopexit374.i.us, label %.lr.ph440.i.us
end_hunk_3
begin_hunk_4_@_ZN4ncnn29pack_A_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiiS2_:bb.a
  %i.rl = add i32 %5, %i.rk
  %i.rm = zext i32 %i.rl to i64                   ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.rm
  %scevgep145 = getelementptr i8, ptr %.0276.lcssa.i, i64 4
  %i.rn = shl nuw nsw i64 %i.rm, 2
  %scevgep146 = getelementptr i8, ptr %scevgep145, i64 %i.rn
  %bound0147 = icmp ult ptr %.22.lcssa.i, %scevgep146
  %bound1148 = icmp ult ptr %.0276.lcssa.i, %scevgep144
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %.lr.ph495.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck142
  %min.iters.check152 = icmp ult i32 %i.rh, 31
  br i1 %min.iters.check152, label %vec.epilog.ph, label %vector.ph153

vector.ph153:                                     ; preds = %vector.main.loop.iter.check
  %i.ro = and i64 %i.rj, 28
  %n.vec154 = and i64 %i.rj, 8589934560           ; 6 uses
  %i.rp = trunc i64 %n.vec154 to i32
  %i.rq = add i32 %.0.lcssa.i, %i.rp
  %i.rr = shl nuw nsw i64 %n.vec154, 2
  %i.rs = getelementptr i8, ptr %.0276.lcssa.i, i64 %i.rr
  %i.rt = getelementptr i8, ptr %.22.lcssa.i, i64 %n.vec154 ; 2 uses
  %broadcast.splatinsert155 = insertelement <8 x float> poison, float %i.rc, i64 0
  %broadcast.splat156 = shufflevector <8 x float> %broadcast.splatinsert155, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph153
  %index158 = phi i64 [ 0, %vector.ph153 ], [ %index.next165, %vector.body157 ] ; 3 uses
  %i.ru = shl i64 %index158, 2
  %next.gep159 = getelementptr i8, ptr %.0276.lcssa.i, i64 %i.ru ; 4 uses
  %next.gep160 = getelementptr i8, ptr %.22.lcssa.i, i64 %index158 ; 4 uses
  %i.rv = getelementptr i8, ptr %next.gep159, i64 32
  %i.rw = getelementptr i8, ptr %next.gep159, i64 64
  %i.rx = getelementptr i8, ptr %next.gep159, i64 96
  %wide.load161 = load <8 x float>, ptr %next.gep159, align 4, !tbaa !147, !alias.scope !162
  %wide.load162 = load <8 x float>, ptr %i.rv, align 4, !tbaa !147, !alias.scope !162
  %wide.load163 = load <8 x float>, ptr %i.rw, align 4, !tbaa !147, !alias.scope !162
  %wide.load164 = load <8 x float>, ptr %i.rx, align 4, !tbaa !147, !alias.scope !162
  %i.ry = fmul fast <8 x float> %wide.load161, %broadcast.splat156
  %i.rz = fmul fast <8 x float> %wide.load162, %broadcast.splat156
  %i.sa = fmul fast <8 x float> %wide.load163, %broadcast.splat156
  %i.sb = fmul fast <8 x float> %wide.load164, %broadcast.splat156
  %i.sc = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.ry)
  %i.sd = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.rz)
  %i.se = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.sa)
  %i.sf = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.sb)
  %i.sg = fptosi <8 x float> %i.sc to <8 x i32>
  %i.sh = fptosi <8 x float> %i.sd to <8 x i32>
  %i.si = fptosi <8 x float> %i.se to <8 x i32>
  %i.sj = fptosi <8 x float> %i.sf to <8 x i32>
  %i.sk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.sg, <8 x i32> splat (i32 -127))
  %i.sl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.sh, <8 x i32> splat (i32 -127))
  %i.sm = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.si, <8 x i32> splat (i32 -127))
  %i.sn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.sj, <8 x i32> splat (i32 -127))
  %i.so = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.sk, <8 x i32> splat (i32 127))
  %i.sp = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.sl, <8 x i32> splat (i32 127))
  %i.sq = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.sm, <8 x i32> splat (i32 127))
  %i.sr = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.sn, <8 x i32> splat (i32 127))
  %i.ss = trunc nsw <8 x i32> %i.so to <8 x i8>
  %i.st = trunc nsw <8 x i32> %i.sp to <8 x i8>
  %i.su = trunc nsw <8 x i32> %i.sq to <8 x i8>
  %i.sv = trunc nsw <8 x i32> %i.sr to <8 x i8>
  %i.sw = getelementptr i8, ptr %next.gep160, i64 8
  %i.sx = getelementptr i8, ptr %next.gep160, i64 16
  %i.sy = getelementptr i8, ptr %next.gep160, i64 24
  store <8 x i8> %i.ss, ptr %next.gep160, align 1, !tbaa !17, !alias.scope !165, !noalias !162
  store <8 x i8> %i.st, ptr %i.sw, align 1, !tbaa !17, !alias.scope !165, !noalias !162
  store <8 x i8> %i.su, ptr %i.sx, align 1, !tbaa !17, !alias.scope !165, !noalias !162
  store <8 x i8> %i.sv, ptr %i.sy, align 1, !tbaa !17, !alias.scope !165, !noalias !162
  %index.next165 = add nuw i64 %index158, 32      ; 2 uses
  %i.sz = icmp eq i64 %index.next165, %n.vec154
  br i1 %i.sz, label %middle.block166, label %vector.body157, !llvm.loop !167

middle.block166:                                  ; preds = %vector.body157
  %cmp.n167 = icmp eq i64 %i.rj, %n.vec154
  br i1 %cmp.n167, label %._crit_edge496.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block166
  %min.epilog.iters.check = icmp eq i64 %i.ro, 0
  br i1 %min.epilog.iters.check, label %.lr.ph495.i.preheader, label %vec.epilog.ph, !prof !168

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec154, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec171 = and i64 %i.rj, 8589934588           ; 5 uses
  %i.ta = trunc i64 %n.vec171 to i32
  %i.tb = add i32 %.0.lcssa.i, %i.ta
  %i.tc = shl nuw nsw i64 %n.vec171, 2
  %i.td = getelementptr i8, ptr %.0276.lcssa.i, i64 %i.tc
  %i.te = getelementptr i8, ptr %.22.lcssa.i, i64 %n.vec171 ; 2 uses
  %broadcast.splatinsert172 = insertelement <4 x float> poison, float %i.rc, i64 0
  %broadcast.splat173 = shufflevector <4 x float> %broadcast.splatinsert172, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index174 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next178, %vec.epilog.vector.body ] ; 3 uses
  %i.tf = shl i64 %index174, 2
  %next.gep175 = getelementptr i8, ptr %.0276.lcssa.i, i64 %i.tf
  %next.gep176 = getelementptr i8, ptr %.22.lcssa.i, i64 %index174
  %wide.load177 = load <4 x float>, ptr %next.gep175, align 4, !tbaa !147, !alias.scope !162
  %i.tg = fmul fast <4 x float> %wide.load177, %broadcast.splat173
  %i.th = tail call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.tg)
  %i.ti = fptosi <4 x float> %i.th to <4 x i32>
  %i.tj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ti, <4 x i32> splat (i32 -127))
  %i.tk = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.tj, <4 x i32> splat (i32 127))
  %i.tl = trunc nsw <4 x i32> %i.tk to <4 x i8>
  store <4 x i8> %i.tl, ptr %next.gep176, align 1, !tbaa !17, !alias.scope !165, !noalias !162
  %index.next178 = add nuw i64 %index174, 4       ; 2 uses
  %i.tm = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.tm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !169

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n179 = icmp eq i64 %i.rj, %n.vec171
  br i1 %cmp.n179, label %._crit_edge496.i, label %.lr.ph495.i.preheader

.lr.ph495.i.preheader:                            ; preds = %vector.memcheck142, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1494.i.ph = phi i32 [ %.0.lcssa.i, %iter.check ], [ %.0.lcssa.i, %vector.memcheck142 ], [ %i.rq, %vec.epilog.iter.check ], [ %i.tb, %vec.epilog.middle.block ] ; 4 uses
  %.1277493.i.ph = phi ptr [ %.0276.lcssa.i, %iter.check ], [ %.0276.lcssa.i, %vector.memcheck142 ], [ %i.rs, %vec.epilog.iter.check ], [ %i.td, %vec.epilog.middle.block ] ; 3 uses
  %.23492.i.ph = phi ptr [ %.22.lcssa.i, %iter.check ], [ %.22.lcssa.i, %vector.memcheck142 ], [ %i.rt, %vec.epilog.iter.check ], [ %i.te, %vec.epilog.middle.block ] ; 3 uses
  %i.tn = sub i32 %5, %.1494.i.ph
  %.neg215 = add i32 %.1494.i.ph, 1
  %xtraiter212 = and i32 %i.tn, 1
  %lcmp.mod213.not = icmp eq i32 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %.lr.ph495.i.prol.loopexit, label %.lr.ph495.i.prol

.lr.ph495.i.prol:                                 ; preds = %.lr.ph495.i.preheader
  %i.to = load float, ptr %.1277493.i.ph, align 4, !tbaa !147
  %i.tp = fmul fast float %i.to, %i.rc
  %i.tq = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.tp)
  %i.tr = fptosi float %i.tq to i32
  %spec.select.i363.i.prol = tail call i32 @llvm.smax.i32(i32 %i.tr, i32 -127)
  %.0.i364.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i363.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i364.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.23492.i.ph, align 1, !tbaa !17
  %i.ts = getelementptr inbounds nuw i8, ptr %.23492.i.ph, i64 1 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.1277493.i.ph, i64 4
  %i.tu = add nuw nsw i32 %.1494.i.ph, 1
  br label %.lr.ph495.i.prol.loopexit

.lr.ph495.i.prol.loopexit:                        ; preds = %.lr.ph495.i.prol, %.lr.ph495.i.preheader
  %.lcssa184.unr = phi ptr [ poison, %.lr.ph495.i.preheader ], [ %i.ts, %.lr.ph495.i.prol ]
  %.1494.i.unr = phi i32 [ %.1494.i.ph, %.lr.ph495.i.preheader ], [ %i.tu, %.lr.ph495.i.prol ]
  %.1277493.i.unr = phi ptr [ %.1277493.i.ph, %.lr.ph495.i.preheader ], [ %i.tt, %.lr.ph495.i.prol ]
  %.23492.i.unr = phi ptr [ %.23492.i.ph, %.lr.ph495.i.preheader ], [ %i.ts, %.lr.ph495.i.prol ]
  %i.tv = icmp eq i32 %5, %.neg215
  br i1 %i.tv, label %._crit_edge496.i, label %.lr.ph495.i

.lr.ph488.i:                                      ; preds = %bb.k, %.lr.ph488.i
  %.0486.i = phi i32 [ %i.uj, %.lr.ph488.i ], [ 0, %bb.k ]
  %.0276485.i = phi ptr [ %i.ui, %.lr.ph488.i ], [ %i.qz, %bb.k ] ; 2 uses
  %.22484.i = phi ptr [ %i.uh, %.lr.ph488.i ], [ %.21499.i, %bb.k ] ; 2 uses
  %i.tw = load <4 x float>, ptr %.0276485.i, align 1, !tbaa !17
  %i.tx = fmul fast <4 x float> %i.tw, %i.re      ; 2 uses
  %i.ty = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tx)
  %i.tz = fadd fast <4 x float> %i.ty, %i.tx
  %i.ua = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tz) ; 2 uses
  %i.ub = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ua, <4 x i32> %i.ua)
  %i.uc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ub, <8 x i16> splat (i16 -127))
  %i.ud = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.uc, <8 x i16> splat (i16 127))
  %i.ue = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ud, <8 x i16> poison)
  %i.uf = bitcast <16 x i8> %i.ue to <4 x i32>
  %i.ug = extractelement <4 x i32> %i.uf, i64 0
  store i32 %i.ug, ptr %.22484.i, align 4, !tbaa !135
  %i.uh = getelementptr inbounds nuw i8, ptr %.22484.i, i64 4 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.0276485.i, i64 16 ; 2 uses
  %i.uj = add nuw nsw i32 %.0486.i, 4             ; 2 uses
  %i.uk = or disjoint i32 %i.uj, 3
  %i.ul = icmp slt i32 %i.uk, %5
  br i1 %i.ul, label %.lr.ph488.i, label %.preheader.i, !llvm.loop !170

.lr.ph495.i:                                      ; preds = %.lr.ph495.i.prol.loopexit, %.lr.ph495.i
  %.1494.i = phi i32 [ %i.uy, %.lr.ph495.i ], [ %.1494.i.unr, %.lr.ph495.i.prol.loopexit ]
  %.1277493.i = phi ptr [ %i.ux, %.lr.ph495.i ], [ %.1277493.i.unr, %.lr.ph495.i.prol.loopexit ] ; 3 uses
  %.23492.i = phi ptr [ %i.uw, %.lr.ph495.i ], [ %.23492.i.unr, %.lr.ph495.i.prol.loopexit ] ; 3 uses
  %i.um = load float, ptr %.1277493.i, align 4, !tbaa !147
  %i.un = fmul fast float %i.um, %i.rc
  %i.uo = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.un)
  %i.up = fptosi float %i.uo to i32
  %spec.select.i363.i = tail call i32 @llvm.smax.i32(i32 %i.up, i32 -127)
  %.0.i364.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i363.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i364.i to i8
  store i8 %.0.i.i, ptr %.23492.i, align 1, !tbaa !17
  %i.uq = getelementptr inbounds nuw i8, ptr %.23492.i, i64 1
  %i.ur = getelementptr inbounds nuw i8, ptr %.1277493.i, i64 4
  %i.us = load float, ptr %i.ur, align 4, !tbaa !147
  %i.ut = fmul fast float %i.us, %i.rc
  %i.uu = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ut)
  %i.uv = fptosi float %i.uu to i32
  %spec.select.i363.i.1 = tail call i32 @llvm.smax.i32(i32 %i.uv, i32 -127)
  %.0.i364.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i363.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i364.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.uq, align 1, !tbaa !17
  %i.uw = getelementptr inbounds nuw i8, ptr %.23492.i, i64 2 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.1277493.i, i64 8
  %i.uy = add nuw nsw i32 %.1494.i, 2             ; 2 uses
  %exitcond549.not.i.1 = icmp eq i32 %i.uy, %5
  br i1 %exitcond549.not.i.1, label %._crit_edge496.i, label %.lr.ph495.i, !llvm.loop !171

._crit_edge496.i:                                 ; preds = %.lr.ph495.i.prol.loopexit, %.lr.ph495.i, %middle.block166, %vec.epilog.middle.block, %.preheader.i
  %.23.lcssa.i = phi ptr [ %.22.lcssa.i, %.preheader.i ], [ %i.te, %vec.epilog.middle.block ], [ %i.rt, %middle.block166 ], [ %.lcssa184.unr, %.lr.ph495.i.prol.loopexit ], [ %i.uw, %.lr.ph495.i ]
  %indvars.iv.next551.i = add nsw i64 %indvars.iv550.i, 1 ; 2 uses
  %exitcond553.not.i = icmp eq i64 %indvars.iv.next551.i, %wide.trip.count.i
  br i1 %exitcond553.not.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.k, !llvm.loop !172

_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %._crit_edge496.i, %bb.b, %bb.d, %.preheader369.i
  ret void
}

declare void @_ZN4ncnn36pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN4ncnn32pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float>, ptr, <4 x i32>, <4 x float>, i8 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smin.v16i16(<16 x i16>, <16 x i16>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16>, <16 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn39transpose_pack_A_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn46transpose_pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not487.i = icmp eq i32 %i.b, 0
  br i1 %.not487.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn42transpose_pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !130  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !131
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !132
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15
  %i.l = sext i32 %i.k to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = phi i64 [ %i.i, %bb.f ], [ %i.l, %bb.g ] ; 29 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !9      ; 5 uses
  %i.o = icmp sgt i32 %3, 7
  br i1 %i.o, label %.lr.ph668.i, label %.preheader637.i

.lr.ph668.i:                                      ; preds = %bb.h
  %i.p = sext i32 %4 to i64
  %i.q = mul i64 %i.m, %i.p                       ; 3 uses
  %i.r = sext i32 %2 to i64                       ; 5 uses
  %i.s = icmp ne i32 %i.d, 8
  %i.t = icmp slt i32 %5, 8
  %.idx501.i = shl i64 %i.m, 5
  %i.u = icmp sgt i32 %5, 3
  %.idx500.i = shl i64 %i.m, 4
  %i.v = icmp sgt i32 %5, 1
  %.idx499.i = shl i64 %i.m, 3
  %i.w = and i32 %5, -2
  %i.x = zext nneg i32 %3 to i64                  ; 4 uses
  %i.y = sext i32 %i.d to i64                     ; 3 uses
  %brmerge.i = or i1 %i.t, %i.s
  br i1 %brmerge.i, label %.lr.ph668.i.split.us, label %.lr.ph.i.preheader

.lr.ph668.i.split.us:                             ; preds = %.lr.ph668.i
  switch i32 %i.d, label %.loopexit643.i.us.preheader [
    i32 4, label %.loopexit643.i.us.us
    i32 1, label %.loopexit643.i.us.us40
  ]

.loopexit643.i.us.preheader:                      ; preds = %.lr.ph668.i.split.us
  %umax = tail call i64 @llvm.umax.i64(i64 %i.x, i64 15)
  %i.z = and i64 %umax, 2147483640
  br label %.preheader637.loopexit.i

.loopexit643.i.us.us:                             ; preds = %.lr.ph668.i.split.us, %.loopexit639.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %.loopexit639.i.us.us ], [ 0, %.lr.ph668.i.split.us ] ; 3 uses
  %.0441667.i.us.us = phi ptr [ %.7.i.us.us, %.loopexit639.i.us.us ], [ %i.n, %.lr.ph668.i.split.us ] ; 2 uses
  %i.aa = load ptr, ptr %6, align 8, !tbaa !9
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.r
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.us.us
  %i.ad = load <8 x float>, ptr %i.ac, align 32, !tbaa !17 ; 4 uses
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.af = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.ag = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5>
  %i.ah = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7>
  br i1 %i.u, label %.lr.ph651.i.us.us.preheader, label %.loopexit639.i.us.us

.lr.ph651.i.us.us.preheader:                      ; preds = %.loopexit643.i.us.us
  %i.ai = load ptr, ptr %0, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.q
  %i.ak = add nsw i64 %indvars.iv.i.us.us, %i.r
  %i.al = mul nsw i64 %i.ak, %i.y
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  br label %.lr.ph651.i.us.us

.lr.ph651.i.us.us:                                ; preds = %.lr.ph651.i.us.us.preheader, %.lr.ph651.i.us.us
  %.3650.i.us.us = phi ptr [ %i.ch, %.lr.ph651.i.us.us ], [ %.0441667.i.us.us, %.lr.ph651.i.us.us.preheader ] ; 3 uses
  %.2457649.i.us.us = phi ptr [ %i.ci, %.lr.ph651.i.us.us ], [ %i.am, %.lr.ph651.i.us.us.preheader ] ; 5 uses
  %.0462648.i.us.us = phi i32 [ %i.cj, %.lr.ph651.i.us.us ], [ 0, %.lr.ph651.i.us.us.preheader ]
  %i.an = load <8 x float>, ptr %.2457649.i.us.us, align 1, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %.2457649.i.us.us, i64 32
  %i.ap = load <8 x float>, ptr %i.ao, align 1, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %.2457649.i.us.us, i64 64
  %i.ar = load <8 x float>, ptr %i.aq, align 1, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %.2457649.i.us.us, i64 96
  %i.at = load <8 x float>, ptr %i.as, align 1, !tbaa !17
  %i.au = fmul fast <8 x float> %i.an, %i.ae      ; 2 uses
  %i.av = fmul fast <8 x float> %i.ap, %i.af      ; 2 uses
  %i.aw = fmul fast <8 x float> %i.ar, %i.ag      ; 2 uses
  %i.ax = fmul fast <8 x float> %i.at, %i.ah      ; 2 uses
  %i.ay = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.au)
  %i.az = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.av)
  %i.ba = fadd fast <8 x float> %i.ay, %i.au
  %i.bb = fadd fast <8 x float> %i.az, %i.av
  %i.bc = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ba)
  %i.bd = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bb)
  %i.be = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.bc, <8 x i32> %i.bd)
  %i.bf = bitcast <16 x i16> %i.be to <4 x i64>
  %i.bg = shufflevector <4 x i64> %i.bf, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bh = bitcast <4 x i64> %i.bg to <16 x i16>
  %i.bi = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.bh, <16 x i16> splat (i16 -127))
  %i.bj = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.bi, <16 x i16> splat (i16 127))
  %i.bk = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.bj, <16 x i16> poison)
  %i.bl = bitcast <32 x i8> %i.bk to <8 x i32>
  %i.bm = shufflevector <8 x i32> %i.bl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bn = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aw)
  %i.bo = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ax)
  %i.bp = fadd fast <8 x float> %i.bn, %i.aw
  %i.bq = fadd fast <8 x float> %i.bo, %i.ax
  %i.br = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bp)
  %i.bs = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bq)
  %i.bt = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.br, <8 x i32> %i.bs)
  %i.bu = bitcast <16 x i16> %i.bt to <4 x i64>
  %i.bv = shufflevector <4 x i64> %i.bu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bw = bitcast <4 x i64> %i.bv to <16 x i16>
  %i.bx = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.bw, <16 x i16> splat (i16 -127))
  %i.by = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.bx, <16 x i16> splat (i16 127))
  %i.bz = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.by, <16 x i16> poison)
  %i.ca = bitcast <32 x i8> %i.bz to <8 x i32>
  %i.cb = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cc = bitcast <4 x i32> %i.bm to <8 x i16>    ; 2 uses
  %i.cd = bitcast <4 x i32> %i.cb to <8 x i16>    ; 2 uses
  %i.ce = shufflevector <8 x i16> %i.cc, <8 x i16> %i.cd, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.cf = shufflevector <8 x i16> %i.cc, <8 x i16> %i.cd, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x i16> %i.ce, ptr %.3650.i.us.us, align 16, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %.3650.i.us.us, i64 16
  store <8 x i16> %i.cf, ptr %i.cg, align 16, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.3650.i.us.us, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.2457649.i.us.us, i64 %.idx500.i
  %i.cj = add nuw nsw i32 %.0462648.i.us.us, 4    ; 2 uses
  %i.ck = or disjoint i32 %i.cj, 3
end_hunk_4
begin_hunk_5_@_ZN4ncnn39transpose_pack_A_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiiS2_:bb.a
  %.23728.i = phi ptr [ %i.zl, %.lr.ph729.i ], [ %.22.lcssa.i, %.preheader627.i ] ; 3 uses
  %.2473727.i = phi i32 [ %i.zn, %.lr.ph729.i ], [ %.1472.lcssa.i, %.preheader627.i ]
  %.6483726.i = phi ptr [ %i.zm, %.lr.ph729.i ], [ %.5482.lcssa.i, %.preheader627.i ] ; 3 uses
  %i.zb = load float, ptr %.6483726.i, align 4, !tbaa !147
  %i.zc = fmul fast float %i.zb, %i.wf
  %i.zd = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.zc)
  %i.ze = fptosi float %i.zd to i32
  %spec.select.i504619.i = tail call i32 @llvm.smax.i32(i32 %i.ze, i32 -127)
  %.0.i505620.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i504619.i, i32 127)
  %.0.i505.i = trunc nsw i32 %.0.i505620.i to i8
  store i8 %.0.i505.i, ptr %.23728.i, align 1, !tbaa !17
  %i.zf = getelementptr inbounds nuw i8, ptr %.6483726.i, i64 4
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !147
  %i.zh = fmul fast float %i.zg, %i.wh
  %i.zi = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.zh)
  %i.zj = fptosi float %i.zi to i32
  %spec.select.i502621.i = tail call i32 @llvm.smax.i32(i32 %i.zj, i32 -127)
  %.0.i503622.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i502621.i, i32 127)
  %.0.i503.i = trunc nsw i32 %.0.i503622.i to i8
  %i.zk = getelementptr inbounds nuw i8, ptr %.23728.i, i64 1
  store i8 %.0.i503.i, ptr %i.zk, align 1, !tbaa !17
  %i.zl = getelementptr inbounds nuw i8, ptr %.23728.i, i64 2 ; 2 uses
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %.6483726.i, i64 %i.m
  %i.zn = add nuw nsw i32 %.2473727.i, 1          ; 2 uses
  %exitcond807.not.i = icmp eq i32 %i.zn, %5
  br i1 %exitcond807.not.i, label %.loopexit628.i, label %.lr.ph729.i, !llvm.loop !187

.loopexit628.i:                                   ; preds = %.lr.ph729.i, %.lr.ph709.i, %.lr.ph703.i, %.preheader627.i, %bb.o, %bb.n, %bb.m
  %.24.i = phi ptr [ %.16732.i, %bb.m ], [ %.22.lcssa.i, %.preheader627.i ], [ %i.ur, %.lr.ph703.i ], [ %i.vy, %.lr.ph709.i ], [ %.16732.i, %bb.o ], [ %.16732.i, %bb.n ], [ %i.zl, %.lr.ph729.i ] ; 2 uses
  %indvars.iv.next809.i = add nuw nsw i64 %indvars.iv808.i, 2 ; 3 uses
  %i.zo = icmp slt i64 %indvars.iv.next809.i, %invariant.op872.i
  br i1 %i.zo, label %bb.m, label %.preheader625.loopexit.i, !llvm.loop !188

bb.q:                                             ; preds = %.loopexit.i, %.lr.ph762.i
  %indvars.iv812.i = phi i64 [ %i.te, %.lr.ph762.i ], [ %indvars.iv.next813.i, %.loopexit.i ] ; 2 uses
  %.25761.i = phi ptr [ %.16.lcssa.i, %.lr.ph762.i ], [ %.32.i, %.loopexit.i ] ; 7 uses
  %i.zp = load ptr, ptr %0, align 8, !tbaa !9
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %i.sw
  %i.zr = add nsw i64 %indvars.iv812.i, %i.tf     ; 2 uses
  %i.zs = mul nsw i64 %i.zr, %i.tg
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.zq, i64 %i.zs ; 4 uses
  %i.zu = load ptr, ptr %6, align 8, !tbaa !9
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %i.zr
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !147 ; 6 uses
  switch i32 %i.d, label %.loopexit.i [
    i32 8, label %bb.r
    i32 4, label %bb.s
    i32 1, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.zx = insertelement <8 x float> poison, float %i.zw, i64 0
  %i.zy = shufflevector <8 x float> %i.zx, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.sx, label %.lr.ph739.i, label %.loopexit.i

.lr.ph739.i:                                      ; preds = %bb.r, %.lr.ph739.i
  %.26738.i = phi ptr [ %i.aan, %.lr.ph739.i ], [ %.25761.i, %bb.r ] ; 2 uses
  %.0448737.i = phi i32 [ %i.aap, %.lr.ph739.i ], [ 0, %bb.r ]
  %.0449736.i = phi ptr [ %i.aao, %.lr.ph739.i ], [ %i.zt, %bb.r ] ; 2 uses
  %i.zz = load <8 x float>, ptr %.0449736.i, align 32, !tbaa !17
  %i.aaa = fmul fast <8 x float> %i.zz, %i.zy     ; 2 uses
  %i.aab = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aaa)
  %i.aac = fadd fast <8 x float> %i.aab, %i.aaa
  %i.aad = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aac)
  %i.aae = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.aad, <8 x i32> poison)
  %i.aaf = bitcast <16 x i16> %i.aae to <8 x i32>
  %i.aag = shufflevector <8 x i32> %i.aaf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aah = bitcast <4 x i32> %i.aag to <8 x i16>
  %i.aai = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aah, <8 x i16> splat (i16 -127))
  %i.aaj = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aai, <8 x i16> splat (i16 127))
  %i.aak = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aaj, <8 x i16> poison)
  %i.aal = bitcast <16 x i8> %i.aak to <2 x i64>
  %i.aam = extractelement <2 x i64> %i.aal, i64 0
  store i64 %i.aam, ptr %.26738.i, align 8, !tbaa !133
  %i.aan = getelementptr inbounds nuw i8, ptr %.26738.i, i64 8 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.0449736.i, i64 %.idx489.i
  %i.aap = add nuw nsw i32 %.0448737.i, 8         ; 2 uses
  %i.aaq = or disjoint i32 %i.aap, 7
  %i.aar = icmp slt i32 %i.aaq, %5
  br i1 %i.aar, label %.lr.ph739.i, label %.loopexit.i, !llvm.loop !189

bb.s:                                             ; preds = %bb.q
  %i.aas = insertelement <4 x float> poison, float %i.zw, i64 0
  %i.aat = shufflevector <4 x float> %i.aas, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.sy, label %.lr.ph745.i, label %.loopexit.i

.lr.ph745.i:                                      ; preds = %bb.s, %.lr.ph745.i
  %.28744.i = phi ptr [ %i.abf, %.lr.ph745.i ], [ %.25761.i, %bb.s ] ; 2 uses
  %.0443743.i = phi i32 [ %i.abh, %.lr.ph745.i ], [ 0, %bb.s ]
  %.2451742.i = phi ptr [ %i.abg, %.lr.ph745.i ], [ %i.zt, %bb.s ] ; 2 uses
  %i.aau = load <4 x float>, ptr %.2451742.i, align 16, !tbaa !17
  %i.aav = fmul fast <4 x float> %i.aau, %i.aat   ; 2 uses
  %i.aaw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aav)
  %i.aax = fadd fast <4 x float> %i.aaw, %i.aav
  %i.aay = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aax) ; 2 uses
  %i.aaz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aay, <4 x i32> %i.aay)
  %i.aba = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aaz, <8 x i16> splat (i16 -127))
  %i.abb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aba, <8 x i16> splat (i16 127))
  %i.abc = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.abb, <8 x i16> poison)
  %i.abd = bitcast <16 x i8> %i.abc to <4 x i32>
  %i.abe = extractelement <4 x i32> %i.abd, i64 0
  store i32 %i.abe, ptr %.28744.i, align 4, !tbaa !135
  %i.abf = getelementptr inbounds nuw i8, ptr %.28744.i, i64 4 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.2451742.i, i64 %.idx488.i
  %i.abh = add nuw nsw i32 %.0443743.i, 4         ; 2 uses
  %i.abi = or disjoint i32 %i.abh, 3
  %i.abj = icmp slt i32 %i.abi, %5
  br i1 %i.abj, label %.lr.ph745.i, label %.loopexit.i, !llvm.loop !190

bb.t:                                             ; preds = %bb.q
  %i.abk = insertelement <4 x float> poison, float %i.zw, i64 0
  %i.abl = shufflevector <4 x float> %i.abk, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.sy, label %.lr.ph751.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph751.i, %bb.t
  %.4453.lcssa.i = phi ptr [ %i.zt, %bb.t ], [ %i.ach, %.lr.ph751.i ] ; 3 uses
  %.30.lcssa.i = phi ptr [ %.25761.i, %bb.t ], [ %i.acg, %.lr.ph751.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.t ], [ %i.td, %.lr.ph751.i ] ; 4 uses
  %i.abm = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.abm, label %.lr.ph758.i.preheader, label %.loopexit.i

.lr.ph758.i.preheader:                            ; preds = %.preheader.i
  %.neg177 = or disjoint i32 %.0.lcssa.i, 1
  br i1 %lcmp.mod176.not, label %.lr.ph758.i.prol.loopexit, label %.lr.ph758.i.prol

.lr.ph758.i.prol:                                 ; preds = %.lr.ph758.i.preheader
  %i.abn = load float, ptr %.4453.lcssa.i, align 4, !tbaa !147
  %i.abo = fmul fast float %i.abn, %i.zw
  %i.abp = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.abo)
  %i.abq = fptosi float %i.abp to i32
  %spec.select.i617.i.prol = tail call i32 @llvm.smax.i32(i32 %i.abq, i32 -127)
  %.0.i618.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i617.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i618.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.30.lcssa.i, align 1, !tbaa !17
  %i.abr = getelementptr inbounds nuw i8, ptr %.30.lcssa.i, i64 1 ; 2 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %.4453.lcssa.i, i64 %i.m
  %i.abt = or disjoint i32 %.0.lcssa.i, 1
  br label %.lr.ph758.i.prol.loopexit

.lr.ph758.i.prol.loopexit:                        ; preds = %.lr.ph758.i.prol, %.lr.ph758.i.preheader
  %.lcssa148.unr = phi ptr [ poison, %.lr.ph758.i.preheader ], [ %i.abr, %.lr.ph758.i.prol ]
  %.1757.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph758.i.preheader ], [ %i.abt, %.lr.ph758.i.prol ]
  %.31756.i.unr = phi ptr [ %.30.lcssa.i, %.lr.ph758.i.preheader ], [ %i.abr, %.lr.ph758.i.prol ]
  %.5454755.i.unr = phi ptr [ %.4453.lcssa.i, %.lr.ph758.i.preheader ], [ %i.abs, %.lr.ph758.i.prol ]
  %i.abu = icmp eq i32 %5, %.neg177
  br i1 %i.abu, label %.loopexit.i, label %.lr.ph758.i

.lr.ph751.i:                                      ; preds = %bb.t, %.lr.ph751.i
  %.0750.i = phi i32 [ %i.aci, %.lr.ph751.i ], [ 0, %bb.t ]
  %.30749.i = phi ptr [ %i.acg, %.lr.ph751.i ], [ %.25761.i, %bb.t ] ; 2 uses
  %.4453748.i = phi ptr [ %i.ach, %.lr.ph751.i ], [ %i.zt, %bb.t ] ; 2 uses
  %i.abv = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.4453748.i, <4 x i32> %i.tc, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.abw = fmul fast <4 x float> %i.abv, %i.abl   ; 2 uses
  %i.abx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.abw)
  %i.aby = fadd fast <4 x float> %i.abx, %i.abw
  %i.abz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aby) ; 2 uses
  %i.aca = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.abz, <4 x i32> %i.abz)
  %i.acb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aca, <8 x i16> splat (i16 -127))
  %i.acc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.acb, <8 x i16> splat (i16 127))
  %i.acd = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.acc, <8 x i16> poison)
  %i.ace = bitcast <16 x i8> %i.acd to <4 x i32>
  %i.acf = extractelement <4 x i32> %i.ace, i64 0
  store i32 %i.acf, ptr %.30749.i, align 4, !tbaa !135
  %i.acg = getelementptr inbounds nuw i8, ptr %.30749.i, i64 4 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %.4453748.i, i64 %.idx488.i ; 2 uses
  %i.aci = add nuw nsw i32 %.0750.i, 4            ; 2 uses
  %i.acj = or disjoint i32 %i.aci, 3
  %i.ack = icmp slt i32 %i.acj, %5
  br i1 %i.ack, label %.lr.ph751.i, label %.preheader.i, !llvm.loop !191

.lr.ph758.i:                                      ; preds = %.lr.ph758.i.prol.loopexit, %.lr.ph758.i
  %.1757.i = phi i32 [ %i.acx, %.lr.ph758.i ], [ %.1757.i.unr, %.lr.ph758.i.prol.loopexit ]
  %.31756.i = phi ptr [ %i.acv, %.lr.ph758.i ], [ %.31756.i.unr, %.lr.ph758.i.prol.loopexit ] ; 3 uses
  %.5454755.i = phi ptr [ %i.acw, %.lr.ph758.i ], [ %.5454755.i.unr, %.lr.ph758.i.prol.loopexit ] ; 2 uses
  %i.acl = load float, ptr %.5454755.i, align 4, !tbaa !147
  %i.acm = fmul fast float %i.acl, %i.zw
  %i.acn = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.acm)
  %i.aco = fptosi float %i.acn to i32
  %spec.select.i617.i = tail call i32 @llvm.smax.i32(i32 %i.aco, i32 -127)
  %.0.i618.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i617.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i618.i to i8
  store i8 %.0.i.i, ptr %.31756.i, align 1, !tbaa !17
  %i.acp = getelementptr inbounds nuw i8, ptr %.31756.i, i64 1
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %.5454755.i, i64 %i.m ; 2 uses
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !147
  %i.acs = fmul fast float %i.acr, %i.zw
  %i.act = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.acs)
  %i.acu = fptosi float %i.act to i32
  %spec.select.i617.i.1 = tail call i32 @llvm.smax.i32(i32 %i.acu, i32 -127)
  %.0.i618.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i617.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i618.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.acp, align 1, !tbaa !17
  %i.acv = getelementptr inbounds nuw i8, ptr %.31756.i, i64 2 ; 2 uses
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %i.m
  %i.acx = add nuw nsw i32 %.1757.i, 2            ; 2 uses
  %exitcond811.not.i.1 = icmp eq i32 %i.acx, %5
  br i1 %exitcond811.not.i.1, label %.loopexit.i, label %.lr.ph758.i, !llvm.loop !192

.loopexit.i:                                      ; preds = %.lr.ph758.i.prol.loopexit, %.lr.ph758.i, %.lr.ph745.i, %.lr.ph739.i, %.preheader.i, %bb.s, %bb.r, %bb.q
  %.32.i = phi ptr [ %.25761.i, %bb.q ], [ %.30.lcssa.i, %.preheader.i ], [ %i.aan, %.lr.ph739.i ], [ %i.abf, %.lr.ph745.i ], [ %.25761.i, %bb.s ], [ %.25761.i, %bb.r ], [ %.lcssa148.unr, %.lr.ph758.i.prol.loopexit ], [ %i.acv, %.lr.ph758.i ]
  %indvars.iv.next813.i = add nsw i64 %indvars.iv812.i, 1 ; 2 uses
  %exitcond815.not.i = icmp eq i64 %indvars.iv.next813.i, %wide.trip.count.i
  br i1 %exitcond815.not.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.q, !llvm.loop !193

_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %.loopexit.i, %bb.b, %bb.d, %.preheader625.i
  ret void
}

declare void @_ZN4ncnn46transpose_pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN4ncnn42transpose_pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn29pack_B_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn36pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not291.i = icmp eq i32 %i.b, 0
  br i1 %.not291.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn32pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !130  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !131
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !132
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15
  %i.l = sext i32 %i.k to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = phi i64 [ %i.i, %bb.f ], [ %i.l, %bb.g ] ; 13 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.o = icmp sgt i32 %3, 7
  br i1 %i.o, label %.lr.ph408.i, label %.preheader360.i

.lr.ph408.i:                                      ; preds = %bb.h
  %i.p = mul nsw i32 %i.d, %4
  %i.q = sext i32 %i.p to i64
  %i.r = insertelement <8 x float> poison, float %6, i64 0
  %i.s = shufflevector <8 x float> %i.r, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.t = icmp sgt i32 %5, 1                       ; 3 uses
  %.idx292.i = shl i64 %i.m, 4                    ; 2 uses
  %i.u = trunc i64 %i.m to i32
  %i.v = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %i.w = shufflevector <8 x i32> %i.v, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.x = mul <8 x i32> %i.w, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.y = and i32 %5, -2                           ; 3 uses
  %i.z = zext nneg i32 %3 to i64
  %i.aa = sext i32 %2 to i64
  br label %bb.i

.preheader360.loopexit.i:                         ; preds = %.loopexit362.i
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader360.i

.preheader360.i:                                  ; preds = %.preheader360.loopexit.i, %bb.h
  %.0258.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.ab, %.preheader360.loopexit.i ] ; 3 uses
  %.0256.lcssa.i = phi ptr [ %i.n, %bb.h ], [ %.9.i, %.preheader360.loopexit.i ] ; 4 uses
  %i.ac = or disjoint i32 %.0258.lcssa.i, 3
  %i.ad = icmp slt i32 %i.ac, %3
  br i1 %i.ad, label %.lr.ph438.i, label %.preheader353.i

.lr.ph438.i:                                      ; preds = %.preheader360.i
  %i.ae = load ptr, ptr %0, align 8, !tbaa !9
  %i.af = mul nsw i32 %i.d, %4
  %i.ag = sext i32 %i.af to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ae, i64 %i.ag ; 2 uses
  %i.ah = insertelement <4 x float> poison, float %6, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.aj = icmp sgt i32 %5, 1                      ; 2 uses
  %i.ak = trunc i64 %i.m to i32
  %i.al = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.am = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.an = mul <4 x i32> %i.am, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ao = and i32 %5, -2                          ; 2 uses
  %i.ap = zext i32 %.0258.lcssa.i to i64          ; 5 uses
  %i.aq = sext i32 %3 to i64
  %i.ar = sext i32 %2 to i64                      ; 2 uses
  %invariant.op.i = add nsw i64 %i.aq, -3         ; 3 uses
  switch i32 %i.d, label %.loopexit355.i.preheader [
    i32 4, label %.preheader359.i.us.preheader
    i32 1, label %.preheader356.i.us.preheader
  ]

.preheader356.i.us.preheader:                     ; preds = %.lr.ph438.i
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.preheader356.i.us

.preheader359.i.us.preheader:                     ; preds = %.lr.ph438.i
  %xtraiter208 = and i32 %5, 1
  %lcmp.mod209.not = icmp eq i32 %xtraiter208, 0
  br label %.preheader359.i.us

.loopexit355.i.preheader:                         ; preds = %.lr.ph438.i
  %i.as = add nuw nsw i64 %i.ap, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.as)
  %i.at = xor i64 %i.ap, -1
  %i.au = add nsw i64 %smax, %i.at
  %i.av = and i64 %i.au, -4
  %i.aw = add i64 %i.av, %i.ap
  %i.ax = add i64 %i.aw, 4
  br label %.preheader353.loopexit.i

.preheader359.i.us:                               ; preds = %.preheader359.i.us.preheader, %.loopexit355.i.us
  %indvars.iv523.i.us = phi i64 [ %indvars.iv.next524.i.us, %.loopexit355.i.us ], [ %i.ap, %.preheader359.i.us.preheader ] ; 2 uses
  %.10437.i.us = phi ptr [ %.16.i.us, %.loopexit355.i.us ], [ %.0256.lcssa.i, %.preheader359.i.us.preheader ] ; 2 uses
  %i.ay = add nsw i64 %indvars.iv523.i.us, %i.ar
  %i.az = mul i64 %i.ay, %i.m
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.az ; 2 uses
  br i1 %i.aj, label %.lr.ph414.i.us, label %.preheader357.i.us

.lr.ph414.i.us:                                   ; preds = %.preheader359.i.us, %.lr.ph414.i.us
  %.11413.i.us = phi ptr [ %i.bt, %.lr.ph414.i.us ], [ %.10437.i.us, %.preheader359.i.us ] ; 2 uses
  %.0282412.i.us = phi ptr [ %i.bu, %.lr.ph414.i.us ], [ %gep.i.us, %.preheader359.i.us ] ; 3 uses
  %.0287411.i.us = phi i32 [ %i.bv, %.lr.ph414.i.us ], [ 0, %.preheader359.i.us ]
  %i.ba = load <4 x float>, ptr %.0282412.i.us, align 16, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %.0282412.i.us, i64 16
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !tbaa !17
  %i.bd = fmul fast <4 x float> %i.ba, %i.ai      ; 2 uses
  %i.be = fmul fast <4 x float> %i.bc, %i.ai      ; 2 uses
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bg = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bf)
  %i.bi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bg)
  %i.bj = fadd fast <4 x float> %i.bh, %i.bf
  %i.bk = fadd fast <4 x float> %i.bi, %i.bg
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bj)
  %i.bm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bk)
  %i.bn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bl, <4 x i32> %i.bm)
  %i.bo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bn, <8 x i16> splat (i16 -127))
  %i.bp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bo, <8 x i16> splat (i16 127))
  %i.bq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bp, <8 x i16> poison)
  %i.br = bitcast <16 x i8> %i.bq to <2 x i64>
  %i.bs = extractelement <2 x i64> %i.br, i64 0
  store i64 %i.bs, ptr %.11413.i.us, align 8, !tbaa !133
  %i.bt = getelementptr inbounds nuw i8, ptr %.11413.i.us, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0282412.i.us, i64 32 ; 2 uses
  %i.bv = add nuw nsw i32 %.0287411.i.us, 2       ; 2 uses
  %i.bw = or disjoint i32 %i.bv, 1
  %i.bx = icmp slt i32 %i.bw, %5
  br i1 %i.bx, label %.lr.ph414.i.us, label %.preheader357.i.us, !llvm.loop !194

.preheader357.i.us:                               ; preds = %.lr.ph414.i.us, %.preheader359.i.us
  %.0287.lcssa.i.us = phi i32 [ 0, %.preheader359.i.us ], [ %i.ao, %.lr.ph414.i.us ] ; 4 uses
  %.0282.lcssa.i.us = phi ptr [ %gep.i.us, %.preheader359.i.us ], [ %i.bu, %.lr.ph414.i.us ] ; 3 uses
  %.11.lcssa.i.us = phi ptr [ %.10437.i.us, %.preheader359.i.us ], [ %i.bt, %.lr.ph414.i.us ] ; 4 uses
  %i.by = icmp slt i32 %.0287.lcssa.i.us, %5
  br i1 %i.by, label %.lr.ph421.i.us.preheader, label %.loopexit355.i.us

.lr.ph421.i.us.preheader:                         ; preds = %.preheader357.i.us
  %.neg212 = or disjoint i32 %.0287.lcssa.i.us, 1
  br i1 %lcmp.mod209.not, label %.lr.ph421.i.us.prol.loopexit, label %.lr.ph421.i.us.prol

.lr.ph421.i.us.prol:                              ; preds = %.lr.ph421.i.us.preheader
  %i.bz = load <4 x float>, ptr %.0282.lcssa.i.us, align 16, !tbaa !17
  %i.ca = fmul fast <4 x float> %i.bz, %i.ai      ; 2 uses
  %i.cb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ca)
  %i.cc = fadd fast <4 x float> %i.cb, %i.ca
  %i.cd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.ce = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cd, <4 x i32> %i.cd)
  %i.cf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ce, <8 x i16> splat (i16 -127))
  %i.cg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cf, <8 x i16> splat (i16 127))
  %i.ch = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.cg, <8 x i16> poison)
  %i.ci = bitcast <16 x i8> %i.ch to <4 x i32>
  %i.cj = extractelement <4 x i32> %i.ci, i64 0
  store i32 %i.cj, ptr %.11.lcssa.i.us, align 4, !tbaa !135
  %i.ck = getelementptr inbounds nuw i8, ptr %.11.lcssa.i.us, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0282.lcssa.i.us, i64 16
  %i.cm = or disjoint i32 %.0287.lcssa.i.us, 1
  br label %.lr.ph421.i.us.prol.loopexit

.lr.ph421.i.us.prol.loopexit:                     ; preds = %.lr.ph421.i.us.prol, %.lr.ph421.i.us.preheader
  %.lcssa192.unr = phi ptr [ poison, %.lr.ph421.i.us.preheader ], [ %i.ck, %.lr.ph421.i.us.prol ]
  %.12420.i.us.unr = phi ptr [ %.11.lcssa.i.us, %.lr.ph421.i.us.preheader ], [ %i.ck, %.lr.ph421.i.us.prol ]
  %.1283419.i.us.unr = phi ptr [ %.0282.lcssa.i.us, %.lr.ph421.i.us.preheader ], [ %i.cl, %.lr.ph421.i.us.prol ]
  %.1288418.i.us.unr = phi i32 [ %.0287.lcssa.i.us, %.lr.ph421.i.us.preheader ], [ %i.cm, %.lr.ph421.i.us.prol ]
  %i.cn = icmp eq i32 %5, %.neg212
  br i1 %i.cn, label %.loopexit355.i.us, label %.lr.ph421.i.us
end_hunk_5
begin_hunk_6_@_ZN4ncnn29pack_B_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiif:bb.a

vector.memcheck140:                               ; preds = %iter.check
  %scevgep141 = getelementptr i8, ptr %.22.lcssa.i, i64 1
  %i.qr = xor i32 %.0.lcssa.i, -1
  %i.qs = add i32 %5, %i.qr
  %i.qt = zext i32 %i.qs to i64                   ; 2 uses
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.qt
  %scevgep143 = getelementptr i8, ptr %.0254.lcssa.i, i64 4
  %i.qu = shl nuw nsw i64 %i.qt, 2
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.qu
  %bound0145 = icmp ult ptr %.22.lcssa.i, %scevgep144
  %bound1146 = icmp ult ptr %.0254.lcssa.i, %scevgep142
  %found.conflict147 = and i1 %bound0145, %bound1146
  br i1 %found.conflict147, label %.lr.ph476.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck140
  %min.iters.check150 = icmp ult i32 %i.qo, 31
  br i1 %min.iters.check150, label %vec.epilog.ph, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check
  %i.qv = and i64 %i.qq, 28
  %n.vec152 = and i64 %i.qq, 8589934560           ; 6 uses
  %i.qw = trunc i64 %n.vec152 to i32
  %i.qx = add i32 %.0.lcssa.i, %i.qw
  %i.qy = shl nuw nsw i64 %n.vec152, 2
  %i.qz = getelementptr i8, ptr %.0254.lcssa.i, i64 %i.qy
  %i.ra = getelementptr i8, ptr %.22.lcssa.i, i64 %n.vec152 ; 2 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph151
  %index156 = phi i64 [ 0, %vector.ph151 ], [ %index.next163, %vector.body155 ] ; 3 uses
  %i.rb = shl i64 %index156, 2
  %next.gep157 = getelementptr i8, ptr %.0254.lcssa.i, i64 %i.rb ; 4 uses
  %next.gep158 = getelementptr i8, ptr %.22.lcssa.i, i64 %index156 ; 4 uses
  %i.rc = getelementptr i8, ptr %next.gep157, i64 32
  %i.rd = getelementptr i8, ptr %next.gep157, i64 64
  %i.re = getelementptr i8, ptr %next.gep157, i64 96
  %wide.load159 = load <8 x float>, ptr %next.gep157, align 4, !tbaa !147, !alias.scope !219
  %wide.load160 = load <8 x float>, ptr %i.rc, align 4, !tbaa !147, !alias.scope !219
  %wide.load161 = load <8 x float>, ptr %i.rd, align 4, !tbaa !147, !alias.scope !219
  %wide.load162 = load <8 x float>, ptr %i.re, align 4, !tbaa !147, !alias.scope !219
  %i.rf = fmul fast <8 x float> %wide.load159, %broadcast.splat154
  %i.rg = fmul fast <8 x float> %wide.load160, %broadcast.splat154
  %i.rh = fmul fast <8 x float> %wide.load161, %broadcast.splat154
  %i.ri = fmul fast <8 x float> %wide.load162, %broadcast.splat154
  %i.rj = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.rf)
  %i.rk = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.rg)
  %i.rl = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.rh)
  %i.rm = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.ri)
  %i.rn = fptosi <8 x float> %i.rj to <8 x i32>
  %i.ro = fptosi <8 x float> %i.rk to <8 x i32>
  %i.rp = fptosi <8 x float> %i.rl to <8 x i32>
  %i.rq = fptosi <8 x float> %i.rm to <8 x i32>
  %i.rr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rn, <8 x i32> splat (i32 -127))
  %i.rs = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ro, <8 x i32> splat (i32 -127))
  %i.rt = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rp, <8 x i32> splat (i32 -127))
  %i.ru = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rq, <8 x i32> splat (i32 -127))
  %i.rv = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.rr, <8 x i32> splat (i32 127))
  %i.rw = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.rs, <8 x i32> splat (i32 127))
  %i.rx = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.rt, <8 x i32> splat (i32 127))
  %i.ry = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ru, <8 x i32> splat (i32 127))
  %i.rz = trunc nsw <8 x i32> %i.rv to <8 x i8>
  %i.sa = trunc nsw <8 x i32> %i.rw to <8 x i8>
  %i.sb = trunc nsw <8 x i32> %i.rx to <8 x i8>
  %i.sc = trunc nsw <8 x i32> %i.ry to <8 x i8>
  %i.sd = getelementptr i8, ptr %next.gep158, i64 8
  %i.se = getelementptr i8, ptr %next.gep158, i64 16
  %i.sf = getelementptr i8, ptr %next.gep158, i64 24
  store <8 x i8> %i.rz, ptr %next.gep158, align 1, !tbaa !17, !alias.scope !222, !noalias !219
  store <8 x i8> %i.sa, ptr %i.sd, align 1, !tbaa !17, !alias.scope !222, !noalias !219
  store <8 x i8> %i.sb, ptr %i.se, align 1, !tbaa !17, !alias.scope !222, !noalias !219
  store <8 x i8> %i.sc, ptr %i.sf, align 1, !tbaa !17, !alias.scope !222, !noalias !219
  %index.next163 = add nuw i64 %index156, 32      ; 2 uses
  %i.sg = icmp eq i64 %index.next163, %n.vec152
  br i1 %i.sg, label %middle.block164, label %vector.body155, !llvm.loop !224

middle.block164:                                  ; preds = %vector.body155
  %cmp.n165 = icmp eq i64 %i.qq, %n.vec152
  br i1 %cmp.n165, label %._crit_edge477.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block164
  %min.epilog.iters.check = icmp eq i64 %i.qv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph476.i.preheader, label %vec.epilog.ph, !prof !168

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec152, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec169 = and i64 %i.qq, 8589934588           ; 5 uses
  %i.sh = trunc i64 %n.vec169 to i32
  %i.si = add i32 %.0.lcssa.i, %i.sh
  %i.sj = shl nuw nsw i64 %n.vec169, 2
  %i.sk = getelementptr i8, ptr %.0254.lcssa.i, i64 %i.sj
  %i.sl = getelementptr i8, ptr %.22.lcssa.i, i64 %n.vec169 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index172 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next176, %vec.epilog.vector.body ] ; 3 uses
  %i.sm = shl i64 %index172, 2
  %next.gep173 = getelementptr i8, ptr %.0254.lcssa.i, i64 %i.sm
  %next.gep174 = getelementptr i8, ptr %.22.lcssa.i, i64 %index172
  %wide.load175 = load <4 x float>, ptr %next.gep173, align 4, !tbaa !147, !alias.scope !219
  %i.sn = fmul fast <4 x float> %wide.load175, %broadcast.splat171
  %i.so = tail call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.sn)
  %i.sp = fptosi <4 x float> %i.so to <4 x i32>
  %i.sq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.sp, <4 x i32> splat (i32 -127))
  %i.sr = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.sq, <4 x i32> splat (i32 127))
  %i.ss = trunc nsw <4 x i32> %i.sr to <4 x i8>
  store <4 x i8> %i.ss, ptr %next.gep174, align 1, !tbaa !17, !alias.scope !222, !noalias !219
  %index.next176 = add nuw i64 %index172, 4       ; 2 uses
  %i.st = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.st, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !225

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n177 = icmp eq i64 %i.qq, %n.vec169
  br i1 %cmp.n177, label %._crit_edge477.i, label %.lr.ph476.i.preheader

.lr.ph476.i.preheader:                            ; preds = %vector.memcheck140, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1475.i.ph = phi i32 [ %.0.lcssa.i, %iter.check ], [ %.0.lcssa.i, %vector.memcheck140 ], [ %i.qx, %vec.epilog.iter.check ], [ %i.si, %vec.epilog.middle.block ] ; 4 uses
  %.1255474.i.ph = phi ptr [ %.0254.lcssa.i, %iter.check ], [ %.0254.lcssa.i, %vector.memcheck140 ], [ %i.qz, %vec.epilog.iter.check ], [ %i.sk, %vec.epilog.middle.block ] ; 3 uses
  %.23473.i.ph = phi ptr [ %.22.lcssa.i, %iter.check ], [ %.22.lcssa.i, %vector.memcheck140 ], [ %i.ra, %vec.epilog.iter.check ], [ %i.sl, %vec.epilog.middle.block ] ; 3 uses
  %i.su = sub i32 %5, %.1475.i.ph
  %.neg213 = add i32 %.1475.i.ph, 1
  %xtraiter210 = and i32 %i.su, 1
  %lcmp.mod211.not = icmp eq i32 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %.lr.ph476.i.prol.loopexit, label %.lr.ph476.i.prol

.lr.ph476.i.prol:                                 ; preds = %.lr.ph476.i.preheader
  %i.sv = load float, ptr %.1255474.i.ph, align 4, !tbaa !147
  %i.sw = fmul fast float %i.sv, %6
  %i.sx = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.sw)
  %i.sy = fptosi float %i.sx to i32
  %spec.select.i344.i.prol = tail call i32 @llvm.smax.i32(i32 %i.sy, i32 -127)
  %.0.i345.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i344.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i345.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.23473.i.ph, align 1, !tbaa !17
  %i.sz = getelementptr inbounds nuw i8, ptr %.23473.i.ph, i64 1 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.1255474.i.ph, i64 4
  %i.tb = add nuw nsw i32 %.1475.i.ph, 1
  br label %.lr.ph476.i.prol.loopexit

.lr.ph476.i.prol.loopexit:                        ; preds = %.lr.ph476.i.prol, %.lr.ph476.i.preheader
  %.lcssa182.unr = phi ptr [ poison, %.lr.ph476.i.preheader ], [ %i.sz, %.lr.ph476.i.prol ]
  %.1475.i.unr = phi i32 [ %.1475.i.ph, %.lr.ph476.i.preheader ], [ %i.tb, %.lr.ph476.i.prol ]
  %.1255474.i.unr = phi ptr [ %.1255474.i.ph, %.lr.ph476.i.preheader ], [ %i.ta, %.lr.ph476.i.prol ]
  %.23473.i.unr = phi ptr [ %.23473.i.ph, %.lr.ph476.i.preheader ], [ %i.sz, %.lr.ph476.i.prol ]
  %i.tc = icmp eq i32 %5, %.neg213
  br i1 %i.tc, label %._crit_edge477.i, label %.lr.ph476.i

.lr.ph469.i:                                      ; preds = %bb.k, %.lr.ph469.i
  %.0467.i = phi i32 [ %i.tq, %.lr.ph469.i ], [ 0, %bb.k ]
  %.0254466.i = phi ptr [ %i.tp, %.lr.ph469.i ], [ %i.ql, %bb.k ] ; 2 uses
  %.22465.i = phi ptr [ %i.to, %.lr.ph469.i ], [ %.21480.i, %bb.k ] ; 2 uses
  %i.td = load <4 x float>, ptr %.0254466.i, align 1, !tbaa !17
  %i.te = fmul fast <4 x float> %i.td, %i.mn      ; 2 uses
  %i.tf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.te)
  %i.tg = fadd fast <4 x float> %i.tf, %i.te
  %i.th = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tg) ; 2 uses
  %i.ti = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.th, <4 x i32> %i.th)
  %i.tj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ti, <8 x i16> splat (i16 -127))
  %i.tk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.tj, <8 x i16> splat (i16 127))
  %i.tl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.tk, <8 x i16> poison)
  %i.tm = bitcast <16 x i8> %i.tl to <4 x i32>
  %i.tn = extractelement <4 x i32> %i.tm, i64 0
  store i32 %i.tn, ptr %.22465.i, align 4, !tbaa !135
  %i.to = getelementptr inbounds nuw i8, ptr %.22465.i, i64 4 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.0254466.i, i64 16 ; 2 uses
  %i.tq = add nuw nsw i32 %.0467.i, 4             ; 2 uses
  %i.tr = or disjoint i32 %i.tq, 3
  %i.ts = icmp slt i32 %i.tr, %5
  br i1 %i.ts, label %.lr.ph469.i, label %.preheader.i, !llvm.loop !226

.lr.ph476.i:                                      ; preds = %.lr.ph476.i.prol.loopexit, %.lr.ph476.i
  %.1475.i = phi i32 [ %i.uf, %.lr.ph476.i ], [ %.1475.i.unr, %.lr.ph476.i.prol.loopexit ]
  %.1255474.i = phi ptr [ %i.ue, %.lr.ph476.i ], [ %.1255474.i.unr, %.lr.ph476.i.prol.loopexit ] ; 3 uses
  %.23473.i = phi ptr [ %i.ud, %.lr.ph476.i ], [ %.23473.i.unr, %.lr.ph476.i.prol.loopexit ] ; 3 uses
  %i.tt = load float, ptr %.1255474.i, align 4, !tbaa !147
  %i.tu = fmul fast float %i.tt, %6
  %i.tv = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.tu)
  %i.tw = fptosi float %i.tv to i32
  %spec.select.i344.i = tail call i32 @llvm.smax.i32(i32 %i.tw, i32 -127)
  %.0.i345.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i344.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i345.i to i8
  store i8 %.0.i.i, ptr %.23473.i, align 1, !tbaa !17
  %i.tx = getelementptr inbounds nuw i8, ptr %.23473.i, i64 1
  %i.ty = getelementptr inbounds nuw i8, ptr %.1255474.i, i64 4
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !147
  %i.ua = fmul fast float %i.tz, %6
  %i.ub = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ua)
  %i.uc = fptosi float %i.ub to i32
  %spec.select.i344.i.1 = tail call i32 @llvm.smax.i32(i32 %i.uc, i32 -127)
  %.0.i345.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i344.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i345.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.tx, align 1, !tbaa !17
  %i.ud = getelementptr inbounds nuw i8, ptr %.23473.i, i64 2 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.1255474.i, i64 8
  %i.uf = add nuw nsw i32 %.1475.i, 2             ; 2 uses
  %exitcond530.not.i.1 = icmp eq i32 %i.uf, %5
  br i1 %exitcond530.not.i.1, label %._crit_edge477.i, label %.lr.ph476.i, !llvm.loop !227

._crit_edge477.i:                                 ; preds = %.lr.ph476.i.prol.loopexit, %.lr.ph476.i, %middle.block164, %vec.epilog.middle.block, %.preheader.i
  %.23.lcssa.i = phi ptr [ %.22.lcssa.i, %.preheader.i ], [ %i.sl, %vec.epilog.middle.block ], [ %i.ra, %middle.block164 ], [ %.lcssa182.unr, %.lr.ph476.i.prol.loopexit ], [ %i.ud, %.lr.ph476.i ]
  %indvars.iv.next532.i = add nsw i64 %indvars.iv531.i, 1 ; 2 uses
  %exitcond534.not.i = icmp eq i64 %indvars.iv.next532.i, %wide.trip.count.i
  br i1 %exitcond534.not.i, label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %bb.k, !llvm.loop !228

_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %._crit_edge477.i, %bb.b, %bb.d, %.preheader350.i
  ret void
}

declare void @_ZN4ncnn36pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

declare void @_ZN4ncnn32pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn39transpose_pack_B_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn46transpose_pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not419.i = icmp eq i32 %i.b, 0
  br i1 %.not419.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn42transpose_pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !130  ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !131
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !132
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15
  %i.l = sext i32 %i.k to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = phi i64 [ %i.i, %bb.f ], [ %i.l, %bb.g ] ; 29 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !9      ; 5 uses
  %i.o = icmp sgt i32 %3, 7
  br i1 %i.o, label %.lr.ph586.i, label %.preheader557.i

.lr.ph586.i:                                      ; preds = %bb.h
  %i.p = sext i32 %4 to i64
  %i.q = mul i64 %i.m, %i.p                       ; 3 uses
  %i.r = icmp ne i32 %i.d, 8
  %i.s = insertelement <8 x float> poison, float %6, i64 0
  %i.t = shufflevector <8 x float> %i.s, <8 x float> poison, <8 x i32> zeroinitializer ; 15 uses
  %i.u = icmp slt i32 %5, 8
  %.idx433.i = shl i64 %i.m, 5
  %.idx432.i = shl i64 %i.m, 4
  %i.v = icmp eq i32 %i.d, 1
  %i.w = icmp sgt i32 %5, 1
  %.idx431.i = shl i64 %i.m, 3
  %i.x = and i32 %5, -2
  %i.y = zext nneg i32 %3 to i64                  ; 4 uses
  %i.z = sext i32 %2 to i64                       ; 3 uses
  %i.aa = sext i32 %i.d to i64                    ; 3 uses
  %brmerge.i = or i1 %i.u, %i.r
  br i1 %brmerge.i, label %.lr.ph586.i.split.us, label %.lr.ph.i.preheader

.lr.ph586.i.split.us:                             ; preds = %.lr.ph586.i
  %i.ab = icmp slt i32 %5, 4
  %i.ac = icmp ne i32 %i.d, 4
  %brmerge685.i = or i1 %i.ab, %i.ac
  br i1 %brmerge685.i, label %.lr.ph586.i.split.us.split.us, label %.loopexit561.i.us

.lr.ph586.i.split.us.split.us:                    ; preds = %.lr.ph586.i.split.us
  br i1 %i.v, label %.loopexit561.i.us.us.us, label %.loopexit561.i.us.us.preheader

.loopexit561.i.us.us.preheader:                   ; preds = %.lr.ph586.i.split.us.split.us
  %umax = tail call i64 @llvm.umax.i64(i64 %i.y, i64 15)
  %i.ad = and i64 %umax, 2147483640
  br label %.preheader557.loopexit.i

.loopexit561.i.us.us.us:                          ; preds = %.lr.ph586.i.split.us.split.us, %.loopexit559.i.us.us.us
  %indvars.iv.i.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us, %.loopexit559.i.us.us.us ], [ 0, %.lr.ph586.i.split.us.split.us ] ; 2 uses
  %.0373585.i.us.us.us = phi ptr [ %.7.i.us.us.us, %.loopexit559.i.us.us.us ], [ %i.n, %.lr.ph586.i.split.us.split.us ] ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.q
  %i.ag = add nsw i64 %indvars.iv.i.us.us.us, %i.z
  %i.ah = mul nuw nsw i64 %i.ag, %i.aa
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  br i1 %i.w, label %.lr.ph575.i.us.us.us, label %.preheader558.i.us.us.us

.lr.ph575.i.us.us.us:                             ; preds = %.loopexit561.i.us.us.us, %.lr.ph575.i.us.us.us
  %.5574.i.us.us.us = phi ptr [ %i.bf, %.lr.ph575.i.us.us.us ], [ %.0373585.i.us.us.us, %.loopexit561.i.us.us.us ] ; 2 uses
  %.4391573.i.us.us.us = phi ptr [ %i.bg, %.lr.ph575.i.us.us.us ], [ %i.ai, %.loopexit561.i.us.us.us ] ; 3 uses
  %.0395572.i.us.us.us = phi i32 [ %i.bh, %.lr.ph575.i.us.us.us ], [ 0, %.loopexit561.i.us.us.us ]
  %i.aj = load <8 x float>, ptr %.4391573.i.us.us.us, align 1, !tbaa !17
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.4391573.i.us.us.us, i64 %i.m
  %i.al = load <8 x float>, ptr %i.ak, align 1, !tbaa !17
  %i.am = fmul fast <8 x float> %i.aj, %i.t       ; 2 uses
  %i.an = fmul fast <8 x float> %i.al, %i.t       ; 2 uses
  %i.ao = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.am)
  %i.ap = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.an)
  %i.aq = fadd fast <8 x float> %i.ao, %i.am
  %i.ar = fadd fast <8 x float> %i.ap, %i.an
  %i.as = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aq)
  %i.at = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ar)
  %i.au = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.as, <8 x i32> %i.at)
  %i.av = bitcast <16 x i16> %i.au to <4 x i64>
  %i.aw = shufflevector <4 x i64> %i.av, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ax = bitcast <4 x i64> %i.aw to <16 x i16>
  %i.ay = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ax, <16 x i16> splat (i16 -127))
  %i.az = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.ay, <16 x i16> splat (i16 127))
  %i.ba = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.az, <16 x i16> poison)
  %i.bb = bitcast <32 x i8> %i.ba to <8 x i32>
  %i.bc = shufflevector <8 x i32> %i.bb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bd = bitcast <4 x i32> %i.bc to <16 x i8>
  %i.be = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.be, ptr %.5574.i.us.us.us, align 1, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.5574.i.us.us.us, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.4391573.i.us.us.us, i64 %.idx431.i ; 2 uses
  %i.bh = add nuw nsw i32 %.0395572.i.us.us.us, 2 ; 2 uses
  %i.bi = or disjoint i32 %i.bh, 1
  %i.bj = icmp slt i32 %i.bi, %5
  br i1 %i.bj, label %.lr.ph575.i.us.us.us, label %.preheader558.i.us.us.us, !llvm.loop !229

.preheader558.i.us.us.us:                         ; preds = %.lr.ph575.i.us.us.us, %.loopexit561.i.us.us.us
  %.0395.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit561.i.us.us.us ], [ %i.x, %.lr.ph575.i.us.us.us ] ; 2 uses
  %.4391.lcssa.i.us.us.us = phi ptr [ %i.ai, %.loopexit561.i.us.us.us ], [ %i.bg, %.lr.ph575.i.us.us.us ]
  %.5.lcssa.i.us.us.us = phi ptr [ %.0373585.i.us.us.us, %.loopexit561.i.us.us.us ], [ %i.bf, %.lr.ph575.i.us.us.us ] ; 2 uses
  %i.bk = icmp slt i32 %.0395.lcssa.i.us.us.us, %5
  br i1 %i.bk, label %.lr.ph582.i.us.us.us, label %.loopexit559.i.us.us.us

.lr.ph582.i.us.us.us:                             ; preds = %.preheader558.i.us.us.us, %.lr.ph582.i.us.us.us
  %.6581.i.us.us.us = phi ptr [ %i.bz, %.lr.ph582.i.us.us.us ], [ %.5.lcssa.i.us.us.us, %.preheader558.i.us.us.us ] ; 2 uses
  %.5392580.i.us.us.us = phi ptr [ %i.ca, %.lr.ph582.i.us.us.us ], [ %.4391.lcssa.i.us.us.us, %.preheader558.i.us.us.us ] ; 2 uses
  %.1396579.i.us.us.us = phi i32 [ %i.cb, %.lr.ph582.i.us.us.us ], [ %.0395.lcssa.i.us.us.us, %.preheader558.i.us.us.us ]
  %i.bl = load <8 x float>, ptr %.5392580.i.us.us.us, align 1, !tbaa !17
  %i.bm = fmul fast <8 x float> %i.bl, %i.t       ; 2 uses
  %i.bn = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bm)
  %i.bo = fadd fast <8 x float> %i.bn, %i.bm
  %i.bp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bo)
  %i.bq = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.bp, <8 x i32> poison)
  %i.br = bitcast <16 x i16> %i.bq to <8 x i32>
  %i.bs = shufflevector <8 x i32> %i.br, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bt = bitcast <4 x i32> %i.bs to <8 x i16>
  %i.bu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bt, <8 x i16> splat (i16 -127))
  %i.bv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bu, <8 x i16> splat (i16 127))
  %i.bw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bv, <8 x i16> poison)
  %i.bx = bitcast <16 x i8> %i.bw to <2 x i64>
  %i.by = extractelement <2 x i64> %i.bx, i64 0
  store i64 %i.by, ptr %.6581.i.us.us.us, align 8, !tbaa !133
  %i.bz = getelementptr inbounds nuw i8, ptr %.6581.i.us.us.us, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.5392580.i.us.us.us, i64 %i.m
  %i.cb = add nuw nsw i32 %.1396579.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us = icmp eq i32 %i.cb, %5
  br i1 %exitcond.not.i.us.us.us, label %.loopexit559.i.us.us.us, label %.lr.ph582.i.us.us.us, !llvm.loop !230

.loopexit559.i.us.us.us:                          ; preds = %.lr.ph582.i.us.us.us, %.preheader558.i.us.us.us
  %.7.i.us.us.us = phi ptr [ %.5.lcssa.i.us.us.us, %.preheader558.i.us.us.us ], [ %i.bz, %.lr.ph582.i.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us, 8 ; 3 uses
  %i.cc = or disjoint i64 %indvars.iv.next.i.us.us.us, 7
  %i.cd = icmp samesign ult i64 %i.cc, %i.y
  br i1 %i.cd, label %.loopexit561.i.us.us.us, label %.preheader557.loopexit.i, !llvm.loop !231

.loopexit561.i.us:                                ; preds = %.lr.ph586.i.split.us, %.loopexit559.i.loopexit12.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit559.i.loopexit12.us ], [ 0, %.lr.ph586.i.split.us ] ; 2 uses
  %.0373585.i.us = phi ptr [ %i.ed, %.loopexit559.i.loopexit12.us ], [ %i.n, %.lr.ph586.i.split.us ]
  %i.ce = load ptr, ptr %0, align 8, !tbaa !9
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.q
  %i.cg = add nsw i64 %indvars.iv.i.us, %i.z
  %i.ch = mul nsw i64 %i.cg, %i.aa
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ch
  br label %.lr.ph569.i.us

.lr.ph569.i.us:                                   ; preds = %.loopexit561.i.us, %.lr.ph569.i.us
  %.3568.i.us = phi ptr [ %i.ed, %.lr.ph569.i.us ], [ %.0373585.i.us, %.loopexit561.i.us ] ; 3 uses
  %.2389567.i.us = phi ptr [ %i.ee, %.lr.ph569.i.us ], [ %i.ci, %.loopexit561.i.us ] ; 5 uses
  %.0394566.i.us = phi i32 [ %i.ef, %.lr.ph569.i.us ], [ 0, %.loopexit561.i.us ]
  %i.cj = load <8 x float>, ptr %.2389567.i.us, align 1, !tbaa !17
  %i.ck = getelementptr inbounds nuw i8, ptr %.2389567.i.us, i64 32
  %i.cl = load <8 x float>, ptr %i.ck, align 1, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %.2389567.i.us, i64 64
  %i.cn = load <8 x float>, ptr %i.cm, align 1, !tbaa !17
  %i.co = getelementptr inbounds nuw i8, ptr %.2389567.i.us, i64 96
  %i.cp = load <8 x float>, ptr %i.co, align 1, !tbaa !17
  %i.cq = fmul fast <8 x float> %i.cj, %i.t       ; 2 uses
  %i.cr = fmul fast <8 x float> %i.cl, %i.t       ; 2 uses
  %i.cs = fmul fast <8 x float> %i.cn, %i.t       ; 2 uses
  %i.ct = fmul fast <8 x float> %i.cp, %i.t       ; 2 uses
  %i.cu = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.cq)
  %i.cv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.cr)
  %i.cw = fadd fast <8 x float> %i.cu, %i.cq
end_hunk_6
begin_hunk_7_@_ZN4ncnn39transpose_pack_B_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiif:bb.a
  %i.uy = bitcast <32 x i8> %i.ux to <8 x i32>
  %i.uz = shufflevector <8 x i32> %i.uy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.va = bitcast <4 x i32> %i.uk to <8 x i16>    ; 2 uses
  %i.vb = bitcast <4 x i32> %i.uz to <8 x i16>    ; 2 uses
  %i.vc = shufflevector <8 x i16> %i.va, <8 x i16> %i.vb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vd = shufflevector <8 x i16> %i.va, <8 x i16> %i.vb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ve = bitcast <8 x i16> %i.vc to <4 x i32>    ; 2 uses
  %i.vf = bitcast <8 x i16> %i.vd to <4 x i32>    ; 2 uses
  %i.vg = shufflevector <4 x i32> %i.ve, <4 x i32> %i.vf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.vh = shufflevector <4 x i32> %i.ve, <4 x i32> %i.vf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.vg, ptr %.9591.i, align 16, !tbaa !17
  %i.vi = getelementptr inbounds nuw i8, ptr %.9591.i, i64 16
  store <4 x i32> %i.vh, ptr %i.vi, align 16, !tbaa !17
  %i.vj = getelementptr inbounds nuw i8, ptr %.9591.i, i64 32 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.0397590.i, i64 %.idx430.i
  %i.vl = add nuw nsw i32 %.0403589.i, 8          ; 2 uses
  %i.vm = or disjoint i32 %i.vl, 7
  %i.vn = icmp slt i32 %i.vm, %5
  br i1 %i.vn, label %.lr.ph592.i, label %.loopexit554.i.loopexit11, !llvm.loop !243

.loopexit554.i.loopexit11:                        ; preds = %.lr.ph592.i
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 4 ; 3 uses
  %i.vo = icmp slt i64 %indvars.iv.next744.i, %invariant.op.i
  br i1 %i.vo, label %.lr.ph592.i.preheader, label %.preheader552.loopexit.i, !llvm.loop !235

.preheader545.loopexit.i:                         ; preds = %.loopexit548.i.loopexit9, %.loopexit548.i.loopexit8.us, %.loopexit548.i.us.us.us, %.loopexit551.i.us.us.preheader
  %.us-phi47 = phi ptr [ %.8.lcssa.i, %.loopexit551.i.us.us.preheader ], [ %i.ta, %.loopexit548.i.loopexit8.us ], [ %.24.i.us.us.us, %.loopexit548.i.us.us.us ], [ %i.zu, %.loopexit548.i.loopexit9 ]
  %.us-phi48 = phi i64 [ %i.ow, %.loopexit551.i.us.us.preheader ], [ %indvars.iv.next748.i.us, %.loopexit548.i.loopexit8.us ], [ %indvars.iv.next748.i.us.us.us, %.loopexit548.i.us.us.us ], [ %indvars.iv.next748.i, %.loopexit548.i.loopexit9 ]
  %i.vp = trunc nsw i64 %.us-phi48 to i32
  br label %.preheader545.i

.preheader545.i:                                  ; preds = %.preheader545.loopexit.i, %.preheader552.i
  %.2378.lcssa.i = phi i32 [ %.1377.lcssa.i, %.preheader552.i ], [ %i.vp, %.preheader545.loopexit.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader552.i ], [ %.us-phi47, %.preheader545.loopexit.i ] ; 2 uses
  %i.vq = icmp slt i32 %.2378.lcssa.i, %3
  br i1 %i.vq, label %.lr.ph680.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph680.i:                                      ; preds = %.preheader545.i
  %i.vr = sext i32 %4 to i64
  %i.vs = mul i64 %i.m, %i.vr                     ; 2 uses
  %i.vt = icmp ne i32 %i.d, 8
  %i.vu = insertelement <8 x float> poison, float %6, i64 0
  %i.vv = shufflevector <8 x float> %i.vu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vw = icmp slt i32 %5, 8
  %.idx421.i = shl i64 %i.m, 5
  %i.vx = icmp ne i32 %i.d, 4
  %i.vy = insertelement <4 x float> poison, float %6, i64 0
  %i.vz = shufflevector <4 x float> %i.vy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wa = icmp slt i32 %5, 4
  %.idx420.i = shl i64 %i.m, 4                    ; 2 uses
  %i.wb = icmp eq i32 %i.d, 1
  %i.wc = icmp sgt i32 %5, 3
  %i.wd = trunc i64 %i.m to i32
  %i.we = insertelement <4 x i32> poison, i32 %i.wd, i64 0
  %i.wf = shufflevector <4 x i32> %i.we, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wg = mul <4 x i32> %i.wf, <i32 0, i32 1, i32 2, i32 3>
  %i.wh = and i32 %5, -4
  %i.wi = sext i32 %.2378.lcssa.i to i64          ; 2 uses
  %i.wj = sext i32 %2 to i64                      ; 2 uses
  %i.wk = sext i32 %i.d to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %3 to i64         ; 2 uses
  %brmerge700.i = or i1 %i.vw, %i.vt
  %brmerge703.i = or i1 %i.wa, %i.vx
  br i1 %brmerge700.i, label %.loopexit544.i.us.preheader, label %.lr.ph657.i.preheader.preheader

.loopexit544.i.us.preheader:                      ; preds = %.lr.ph680.i
  %xtraiter182 = and i32 %5, 1
  %lcmp.mod183.not = icmp eq i32 %xtraiter182, 0
  br label %.loopexit544.i.us

.lr.ph657.i.preheader.preheader:                  ; preds = %.lr.ph680.i
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !9
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.pre87, i64 %i.vs
  br label %.lr.ph657.i.preheader

.loopexit544.i.us:                                ; preds = %.loopexit544.i.us.preheader, %.loopexit.i.us
  %indvars.iv751.i.us = phi i64 [ %indvars.iv.next752.i.us, %.loopexit.i.us ], [ %i.wi, %.loopexit544.i.us.preheader ] ; 2 uses
  %.25679.i.us = phi ptr [ %.32.i.us, %.loopexit.i.us ], [ %.16.lcssa.i, %.loopexit544.i.us.preheader ] ; 4 uses
  %i.wm = load ptr, ptr %0, align 8, !tbaa !9
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %i.vs
  %i.wo = add nsw i64 %indvars.iv751.i.us, %i.wj
  %i.wp = mul nsw i64 %i.wo, %i.wk
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.wn, i64 %i.wp ; 3 uses
  br i1 %brmerge703.i, label %.loopexit543.i.us, label %.lr.ph663.i.us

.lr.ph663.i.us:                                   ; preds = %.loopexit544.i.us, %.lr.ph663.i.us
  %.28662.i.us = phi ptr [ %i.xc, %.lr.ph663.i.us ], [ %.25679.i.us, %.loopexit544.i.us ] ; 2 uses
  %.0375661.i.us = phi i32 [ %i.xe, %.lr.ph663.i.us ], [ 0, %.loopexit544.i.us ]
  %.2383660.i.us = phi ptr [ %i.xd, %.lr.ph663.i.us ], [ %i.wq, %.loopexit544.i.us ] ; 2 uses
  %i.wr = load <4 x float>, ptr %.2383660.i.us, align 16, !tbaa !17
  %i.ws = fmul fast <4 x float> %i.wr, %i.vz      ; 2 uses
  %i.wt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ws)
  %i.wu = fadd fast <4 x float> %i.wt, %i.ws
  %i.wv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wu) ; 2 uses
  %i.ww = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.wv, <4 x i32> %i.wv)
  %i.wx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ww, <8 x i16> splat (i16 -127))
  %i.wy = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wx, <8 x i16> splat (i16 127))
  %i.wz = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.wy, <8 x i16> poison)
  %i.xa = bitcast <16 x i8> %i.wz to <4 x i32>
  %i.xb = extractelement <4 x i32> %i.xa, i64 0
  store i32 %i.xb, ptr %.28662.i.us, align 4, !tbaa !135
  %i.xc = getelementptr inbounds nuw i8, ptr %.28662.i.us, i64 4 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.2383660.i.us, i64 %.idx420.i
  %i.xe = add nuw nsw i32 %.0375661.i.us, 4       ; 2 uses
  %i.xf = or disjoint i32 %i.xe, 3
  %i.xg = icmp slt i32 %i.xf, %5
  br i1 %i.xg, label %.lr.ph663.i.us, label %.loopexit.i.us, !llvm.loop !244

.loopexit543.i.us:                                ; preds = %.loopexit544.i.us
  br i1 %i.wb, label %bb.i, label %.loopexit.i.us

bb.i:                                             ; preds = %.loopexit543.i.us
  br i1 %i.wc, label %.lr.ph669.i.us, label %.preheader.i.us

.lr.ph669.i.us:                                   ; preds = %bb.i, %.lr.ph669.i.us
  %.0668.i.us = phi i32 [ %i.xu, %.lr.ph669.i.us ], [ 0, %bb.i ]
  %.30667.i.us = phi ptr [ %i.xs, %.lr.ph669.i.us ], [ %.25679.i.us, %bb.i ] ; 2 uses
  %.4385666.i.us = phi ptr [ %i.xt, %.lr.ph669.i.us ], [ %i.wq, %bb.i ] ; 2 uses
  %i.xh = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.4385666.i.us, <4 x i32> %i.wg, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.xi = fmul fast <4 x float> %i.xh, %i.vz      ; 2 uses
  %i.xj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xi)
  %i.xk = fadd fast <4 x float> %i.xj, %i.xi
  %i.xl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xk) ; 2 uses
  %i.xm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.xl, <4 x i32> %i.xl)
  %i.xn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xm, <8 x i16> splat (i16 -127))
  %i.xo = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.xn, <8 x i16> splat (i16 127))
  %i.xp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.xo, <8 x i16> poison)
  %i.xq = bitcast <16 x i8> %i.xp to <4 x i32>
  %i.xr = extractelement <4 x i32> %i.xq, i64 0
  store i32 %i.xr, ptr %.30667.i.us, align 4, !tbaa !135
  %i.xs = getelementptr inbounds nuw i8, ptr %.30667.i.us, i64 4 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.4385666.i.us, i64 %.idx420.i ; 2 uses
  %i.xu = add nuw nsw i32 %.0668.i.us, 4          ; 2 uses
  %i.xv = or disjoint i32 %i.xu, 3
  %i.xw = icmp slt i32 %i.xv, %5
  br i1 %i.xw, label %.lr.ph669.i.us, label %.preheader.i.us, !llvm.loop !245

.preheader.i.us:                                  ; preds = %.lr.ph669.i.us, %bb.i
  %.4385.lcssa.i.us = phi ptr [ %i.wq, %bb.i ], [ %i.xt, %.lr.ph669.i.us ] ; 3 uses
  %.30.lcssa.i.us = phi ptr [ %.25679.i.us, %bb.i ], [ %i.xs, %.lr.ph669.i.us ] ; 4 uses
  %.0.lcssa.i.us = phi i32 [ 0, %bb.i ], [ %i.wh, %.lr.ph669.i.us ] ; 4 uses
  %i.xx = icmp slt i32 %.0.lcssa.i.us, %5
  br i1 %i.xx, label %.lr.ph676.i.us.preheader, label %.loopexit.i.us

.lr.ph676.i.us.preheader:                         ; preds = %.preheader.i.us
  %.neg184 = or disjoint i32 %.0.lcssa.i.us, 1
  br i1 %lcmp.mod183.not, label %.lr.ph676.i.us.prol.loopexit, label %.lr.ph676.i.us.prol

.lr.ph676.i.us.prol:                              ; preds = %.lr.ph676.i.us.preheader
  %i.xy = load float, ptr %.4385.lcssa.i.us, align 4, !tbaa !147
  %i.xz = fmul fast float %i.xy, %6
  %i.ya = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.xz)
  %i.yb = fptosi float %i.ya to i32
  %spec.select.i537.i.us.prol = tail call i32 @llvm.smax.i32(i32 %i.yb, i32 -127)
  %.0.i538.i.us.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i537.i.us.prol, i32 127)
  %.0.i.i.us.prol = trunc nsw i32 %.0.i538.i.us.prol to i8
  store i8 %.0.i.i.us.prol, ptr %.30.lcssa.i.us, align 1, !tbaa !17
  %i.yc = getelementptr inbounds nuw i8, ptr %.30.lcssa.i.us, i64 1 ; 2 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.4385.lcssa.i.us, i64 %i.m
  %i.ye = or disjoint i32 %.0.lcssa.i.us, 1
  br label %.lr.ph676.i.us.prol.loopexit

.lr.ph676.i.us.prol.loopexit:                     ; preds = %.lr.ph676.i.us.prol, %.lr.ph676.i.us.preheader
  %.lcssa155.unr = phi ptr [ poison, %.lr.ph676.i.us.preheader ], [ %i.yc, %.lr.ph676.i.us.prol ]
  %.1675.i.us.unr = phi i32 [ %.0.lcssa.i.us, %.lr.ph676.i.us.preheader ], [ %i.ye, %.lr.ph676.i.us.prol ]
  %.31674.i.us.unr = phi ptr [ %.30.lcssa.i.us, %.lr.ph676.i.us.preheader ], [ %i.yc, %.lr.ph676.i.us.prol ]
  %.5386673.i.us.unr = phi ptr [ %.4385.lcssa.i.us, %.lr.ph676.i.us.preheader ], [ %i.yd, %.lr.ph676.i.us.prol ]
  %i.yf = icmp eq i32 %5, %.neg184
  br i1 %i.yf, label %.loopexit.i.us, label %.lr.ph676.i.us

.lr.ph676.i.us:                                   ; preds = %.lr.ph676.i.us.prol.loopexit, %.lr.ph676.i.us
  %.1675.i.us = phi i32 [ %i.ys, %.lr.ph676.i.us ], [ %.1675.i.us.unr, %.lr.ph676.i.us.prol.loopexit ]
  %.31674.i.us = phi ptr [ %i.yq, %.lr.ph676.i.us ], [ %.31674.i.us.unr, %.lr.ph676.i.us.prol.loopexit ] ; 3 uses
  %.5386673.i.us = phi ptr [ %i.yr, %.lr.ph676.i.us ], [ %.5386673.i.us.unr, %.lr.ph676.i.us.prol.loopexit ] ; 2 uses
  %i.yg = load float, ptr %.5386673.i.us, align 4, !tbaa !147
  %i.yh = fmul fast float %i.yg, %6
  %i.yi = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.yh)
  %i.yj = fptosi float %i.yi to i32
  %spec.select.i537.i.us = tail call i32 @llvm.smax.i32(i32 %i.yj, i32 -127)
  %.0.i538.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i537.i.us, i32 127)
  %.0.i.i.us = trunc nsw i32 %.0.i538.i.us to i8
  store i8 %.0.i.i.us, ptr %.31674.i.us, align 1, !tbaa !17
  %i.yk = getelementptr inbounds nuw i8, ptr %.31674.i.us, i64 1
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %.5386673.i.us, i64 %i.m ; 2 uses
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !147
  %i.yn = fmul fast float %i.ym, %6
  %i.yo = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.yn)
  %i.yp = fptosi float %i.yo to i32
  %spec.select.i537.i.us.1 = tail call i32 @llvm.smax.i32(i32 %i.yp, i32 -127)
  %.0.i538.i.us.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i537.i.us.1, i32 127)
  %.0.i.i.us.1 = trunc nsw i32 %.0.i538.i.us.1 to i8
  store i8 %.0.i.i.us.1, ptr %i.yk, align 1, !tbaa !17
  %i.yq = getelementptr inbounds nuw i8, ptr %.31674.i.us, i64 2 ; 2 uses
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %i.m
  %i.ys = add nuw nsw i32 %.1675.i.us, 2          ; 2 uses
  %exitcond750.not.i.us.1 = icmp eq i32 %i.ys, %5
  br i1 %exitcond750.not.i.us.1, label %.loopexit.i.us, label %.lr.ph676.i.us, !llvm.loop !246

.loopexit.i.us:                                   ; preds = %.lr.ph663.i.us, %.lr.ph676.i.us.prol.loopexit, %.lr.ph676.i.us, %.preheader.i.us, %.loopexit543.i.us
  %.32.i.us = phi ptr [ %.25679.i.us, %.loopexit543.i.us ], [ %.30.lcssa.i.us, %.preheader.i.us ], [ %i.yq, %.lr.ph676.i.us ], [ %.lcssa155.unr, %.lr.ph676.i.us.prol.loopexit ], [ %i.xc, %.lr.ph663.i.us ]
  %indvars.iv.next752.i.us = add nsw i64 %indvars.iv751.i.us, 1 ; 2 uses
  %exitcond754.not.i.us = icmp eq i64 %indvars.iv.next752.i.us, %wide.trip.count.i
  br i1 %exitcond754.not.i.us, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.loopexit544.i.us, !llvm.loop !247

.lr.ph621.i.preheader:                            ; preds = %.lr.ph651.i, %.loopexit548.i.loopexit9
  %indvars.iv747.i = phi i64 [ %indvars.iv.next748.i, %.loopexit548.i.loopexit9 ], [ %i.ok, %.lr.ph651.i ] ; 2 uses
  %.16650.i = phi ptr [ %i.zu, %.loopexit548.i.loopexit9 ], [ %.8.lcssa.i, %.lr.ph651.i ]
  %i.yt = load ptr, ptr %0, align 8, !tbaa !9
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %i.oa
  %i.yv = add nsw i64 %indvars.iv747.i, %i.om
  %i.yw = mul nsw i64 %i.yv, %i.on
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.yu, i64 %i.yw
  br label %.lr.ph621.i

.lr.ph621.i:                                      ; preds = %.lr.ph621.i.preheader, %.lr.ph621.i
  %.17620.i = phi ptr [ %i.zu, %.lr.ph621.i ], [ %.16650.i, %.lr.ph621.i.preheader ] ; 2 uses
  %.0411619.i = phi i32 [ %i.zw, %.lr.ph621.i ], [ 0, %.lr.ph621.i.preheader ]
  %.0412618.i = phi ptr [ %i.zv, %.lr.ph621.i ], [ %i.yx, %.lr.ph621.i.preheader ] ; 3 uses
  %i.yy = load <8 x float>, ptr %.0412618.i, align 32, !tbaa !17
  %i.yz = getelementptr inbounds nuw i8, ptr %.0412618.i, i64 32
  %i.za = load <8 x float>, ptr %i.yz, align 32, !tbaa !17
  %i.zb = fmul fast <8 x float> %i.yy, %i.od      ; 2 uses
  %i.zc = fmul fast <8 x float> %i.za, %i.od      ; 2 uses
  %i.zd = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.zb)
  %i.ze = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.zc)
  %i.zf = fadd fast <8 x float> %i.zd, %i.zb
  %i.zg = fadd fast <8 x float> %i.ze, %i.zc
  %i.zh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zf)
  %i.zi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zg)
  %i.zj = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.zh, <8 x i32> %i.zi)
  %i.zk = bitcast <16 x i16> %i.zj to <4 x i64>
  %i.zl = shufflevector <4 x i64> %i.zk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.zm = bitcast <4 x i64> %i.zl to <16 x i16>
  %i.zn = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.zm, <16 x i16> splat (i16 -127))
  %i.zo = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.zn, <16 x i16> splat (i16 127))
  %i.zp = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.zo, <16 x i16> poison)
  %i.zq = bitcast <32 x i8> %i.zp to <8 x i32>
  %i.zr = shufflevector <8 x i32> %i.zq, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.zs = bitcast <4 x i32> %i.zr to <8 x i16>
  %i.zt = shufflevector <8 x i16> %i.zs, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.zt, ptr %.17620.i, align 16, !tbaa !17
  %i.zu = getelementptr inbounds nuw i8, ptr %.17620.i, i64 16 ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %.0412618.i, i64 %.idx427.i
  %i.zw = add nuw nsw i32 %.0411619.i, 8          ; 2 uses
  %i.zx = or disjoint i32 %i.zw, 7
  %i.zy = icmp slt i32 %i.zx, %5
  br i1 %i.zy, label %.lr.ph621.i, label %.loopexit548.i.loopexit9, !llvm.loop !248

.loopexit548.i.loopexit9:                         ; preds = %.lr.ph621.i
  %indvars.iv.next748.i = add nuw nsw i64 %indvars.iv747.i, 2 ; 3 uses
  %i.zz = icmp slt i64 %indvars.iv.next748.i, %invariant.op815.i
  br i1 %i.zz, label %.lr.ph621.i.preheader, label %.preheader545.loopexit.i, !llvm.loop !241

.lr.ph657.i.preheader:                            ; preds = %.lr.ph657.i.preheader.preheader, %.loopexit.i.loopexit7
  %indvars.iv751.i = phi i64 [ %indvars.iv.next752.i, %.loopexit.i.loopexit7 ], [ %i.wi, %.lr.ph657.i.preheader.preheader ] ; 2 uses
  %.25679.i = phi ptr [ %i.aar, %.loopexit.i.loopexit7 ], [ %.16.lcssa.i, %.lr.ph657.i.preheader.preheader ]
  %i.aaa = add nsw i64 %indvars.iv751.i, %i.wj
  %i.aab = mul nsw i64 %i.aaa, %i.wk
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.wl, i64 %i.aab
  br label %.lr.ph657.i

.lr.ph657.i:                                      ; preds = %.lr.ph657.i.preheader, %.lr.ph657.i
  %.26656.i = phi ptr [ %i.aar, %.lr.ph657.i ], [ %.25679.i, %.lr.ph657.i.preheader ] ; 2 uses
  %.0380655.i = phi i32 [ %i.aat, %.lr.ph657.i ], [ 0, %.lr.ph657.i.preheader ]
  %.0381654.i = phi ptr [ %i.aas, %.lr.ph657.i ], [ %i.aac, %.lr.ph657.i.preheader ] ; 2 uses
  %i.aad = load <8 x float>, ptr %.0381654.i, align 32, !tbaa !17
  %i.aae = fmul fast <8 x float> %i.aad, %i.vv    ; 2 uses
  %i.aaf = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aae)
  %i.aag = fadd fast <8 x float> %i.aaf, %i.aae
  %i.aah = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aag)
  %i.aai = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.aah, <8 x i32> poison)
  %i.aaj = bitcast <16 x i16> %i.aai to <8 x i32>
  %i.aak = shufflevector <8 x i32> %i.aaj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aal = bitcast <4 x i32> %i.aak to <8 x i16>
  %i.aam = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aal, <8 x i16> splat (i16 -127))
  %i.aan = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aam, <8 x i16> splat (i16 127))
  %i.aao = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aan, <8 x i16> poison)
  %i.aap = bitcast <16 x i8> %i.aao to <2 x i64>
  %i.aaq = extractelement <2 x i64> %i.aap, i64 0
  store i64 %i.aaq, ptr %.26656.i, align 8, !tbaa !133
  %i.aar = getelementptr inbounds nuw i8, ptr %.26656.i, i64 8 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %.0381654.i, i64 %.idx421.i
  %i.aat = add nuw nsw i32 %.0380655.i, 8         ; 2 uses
  %i.aau = or disjoint i32 %i.aat, 7
  %i.aav = icmp slt i32 %i.aau, %5
  br i1 %i.aav, label %.lr.ph657.i, label %.loopexit.i.loopexit7, !llvm.loop !249

.loopexit.i.loopexit7:                            ; preds = %.lr.ph657.i
  %indvars.iv.next752.i = add nsw i64 %indvars.iv751.i, 1 ; 2 uses
  %exitcond754.not.i = icmp eq i64 %indvars.iv.next752.i, %wide.trip.count.i
  br i1 %exitcond754.not.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.lr.ph657.i.preheader, !llvm.loop !247

_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %.loopexit.i.loopexit7, %.loopexit.i.us, %bb.b, %bb.d, %.preheader545.i
  ret void
}

declare void @_ZN4ncnn46transpose_pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

declare void @_ZN4ncnn42transpose_pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn37unpack_output_tile_int32_to_fp32_avx2ERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, float noundef nofpclass(nan inf) %9, float noundef nofpclass(nan inf) %10, i32 noundef %11) local_unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !130  ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 64 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !131
  %i.n = icmp eq i32 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = select i1 %i.n, i64 %i.p, i64 %i.s       ; 24 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !130  ; 7 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.x = icmp sgt i32 %5, 7
  br i1 %i.x, label %.lr.ph1602.i, label %.preheader1555.i

.lr.ph1602.i:                                     ; preds = %bb.a
  %.not1992.i = icmp eq i32 %11, 0                ; 5 uses
  %i.y = sext i32 %6 to i64                       ; 2 uses
  %i.z = mul i64 %i.k, %i.y
  %i.aa = mul nsw i32 %i.b, %6
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sext i32 %4 to i64                      ; 5 uses
  %i.ad = icmp eq i32 %3, 0                       ; 5 uses
  %i.ae = add i32 %3, -1
  %or.cond.i = icmp ult i32 %i.ae, 2              ; 5 uses
  %i.af = mul nsw i32 %i.v, %6
  %i.ag = sext i32 %i.af to i64
  %i.ah = insertelement <8 x float> poison, float %10, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.aj = icmp sgt i32 %7, 7
  %.idx2032.i = shl i64 %i.t, 4                   ; 6 uses
  %.idx2026.i = shl i64 %i.t, 3                   ; 2 uses
  %.idx2027.i = mul i64 %i.t, 12                  ; 2 uses
  %.idx2029.i = mul i64 %i.t, 20                  ; 2 uses
  %.idx2030.i = mul i64 %i.t, 24                  ; 2 uses
  %.idx2031.i = mul i64 %i.t, 28                  ; 2 uses
  %i.ak = fcmp fast oeq float %10, 1.000000e+00   ; 3 uses
  %i.al = fcmp fast une float %9, 1.000000e+00    ; 3 uses
  %i.am = insertelement <8 x float> poison, float %9, i64 0
  %i.an = shufflevector <8 x float> %i.am, <8 x float> poison, <8 x i32> zeroinitializer ; 14 uses
  %.idx2041.i = shl i64 %i.k, 3                   ; 7 uses
  %.idx2042.i = mul i64 %i.k, 12                  ; 6 uses
  %.idx2043.i = shl i64 %i.k, 4                   ; 11 uses
  %.idx2044.i = mul i64 %i.k, 20                  ; 5 uses
  %.idx2045.i = mul i64 %i.k, 24                  ; 5 uses
  %.idx2046.i = mul i64 %i.k, 28                  ; 5 uses
  %.idx2047.i = shl i64 %i.k, 5
  %i.ao = trunc i64 %i.t to i32
  %i.ap = insertelement <8 x i32> poison, i32 %i.ao, i64 0
  %i.aq = shufflevector <8 x i32> %i.ap, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ar = mul <8 x i32> %i.aq, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.as = and i32 %7, -8
  %i.at = zext nneg i32 %5 to i64
  %i.au = sext i32 %i.b to i64
  %i.av = select ninf nsz i1 %i.al, <8 x float> %i.an, <8 x float> splat (float 1.000000e+00) ; 2 uses
  %i.aw = insertelement <8 x float> poison, float %10, i64 0
  %i.ax = shufflevector <8 x float> %i.aw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ay = insertelement <4 x float> poison, float %10, i64 0
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ba = insertelement <2 x float> poison, float %10, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

.preheader1555.loopexit.i:                        ; preds = %._crit_edge.i
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader1555.i

.preheader1555.i:                                 ; preds = %.preheader1555.loopexit.i, %bb.a
  %.01850.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.bc, %.preheader1555.loopexit.i ] ; 3 uses
  %.01830.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.41834.lcssa.i, %.preheader1555.loopexit.i ] ; 2 uses
  %.01821.lcssa.i = phi ptr [ %i.w, %bb.a ], [ %.16.lcssa.i, %.preheader1555.loopexit.i ] ; 2 uses
  %i.bd = or disjoint i32 %.01850.lcssa.i, 3
  %i.be = icmp slt i32 %i.bd, %5
  br i1 %i.be, label %.lr.ph1651.i, label %.preheader1551.i

.lr.ph1651.i:                                     ; preds = %.preheader1555.i
  %.not1960.i = icmp eq i32 %11, 0                ; 5 uses
  %i.bf = sext i32 %6 to i64                      ; 2 uses
  %i.bg = mul i64 %i.k, %i.bf
  %i.bh = mul nsw i32 %i.b, %6
  %i.bi = sext i32 %i.bh to i64
  %i.bj = sext i32 %4 to i64                      ; 5 uses
  %i.bk = icmp eq i32 %3, 0                       ; 5 uses
  %i.bl = add i32 %3, -1
  %or.cond11.i = icmp ult i32 %i.bl, 2            ; 5 uses
  %i.bm = mul nsw i32 %i.v, %6
  %i.bn = sext i32 %i.bm to i64
  %i.bo = insertelement <4 x float> poison, float %10, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  %i.bq = icmp sgt i32 %7, 7
  %i.br = icmp eq i32 %i.v, 4                     ; 5 uses
  %.idx1978.i = shl i64 %i.t, 3                   ; 5 uses
  %.idx1979.i = mul i64 %i.t, 12                  ; 5 uses
  %i.bs = fcmp fast oeq float %10, 1.000000e+00   ; 4 uses
  %i.bt = fcmp fast une float %9, 1.000000e+00    ; 3 uses
  %i.bu = insertelement <4 x float> poison, float %9, i64 0
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> zeroinitializer ; 14 uses
  %.idx1985.i = shl i64 %i.k, 3                   ; 7 uses
  %.idx1986.i = mul i64 %i.k, 12                  ; 6 uses
  %.idx1987.i = shl i64 %i.k, 4                   ; 3 uses
  %.idx1988.i = mul i64 %i.k, 20
  %.idx1989.i = mul i64 %i.k, 24
  %.idx1990.i = mul i64 %i.k, 28
  %.idx1991.i = shl i64 %i.k, 5
  %i.bw = select ninf nsz i1 %i.bt, <4 x float> %i.bv, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.bx = and i32 %7, -8
  %i.by = zext nneg i32 %.01850.lcssa.i to i64
  %i.bz = sext i32 %5 to i64
  %i.ca = sext i32 %i.b to i64
  %invariant.op1849.i = add nsw i64 %i.bz, -3
  %i.cb = insertelement <8 x float> poison, float %10, i64 0
  %i.cc = shufflevector <8 x float> %i.cb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cd = insertelement <4 x float> poison, float %10, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = insertelement <2 x float> poison, float %10, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cg

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph1602.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph1602.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 6 uses
  %.018211600.i = phi ptr [ %i.w, %.lr.ph1602.i ], [ %.16.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.018301599.i = phi ptr [ %.val, %.lr.ph1602.i ], [ %.41834.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ch = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  br i1 %.not1992.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.z
  %i.cj = add nsw i64 %indvars.iv.i, %i.ac
  %i.ck = mul nsw i64 %i.cj, %i.au
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ck
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.cm = add nsw i64 %indvars.iv.i, %i.ac
  %i.cn = mul i64 %i.cm, %i.k
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cn
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.01854.i = phi ptr [ %i.cl, %bb.c ], [ %i.cp, %bb.d ] ; 2 uses
  %i.cq = load ptr, ptr %8, align 8, !tbaa !9
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.ac
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.ct = load <8 x float>, ptr %i.cs, align 32, !tbaa !17 ; 15 uses
  %.not1993.i = icmp eq ptr %.018211600.i, null
  br i1 %.not1993.i, label %.thread1226.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ad, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.cu = load float, ptr %.018211600.i, align 4, !tbaa !147
  %i.cv = fmul fast float %i.cu, %10
  %i.cw = insertelement <8 x float> poison, float %i.cv, i64 0
  %i.cx = shufflevector <8 x float> %i.cw, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.thread1226.i

bb.g:                                             ; preds = %bb.f
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cy = load ptr, ptr %1, align 8, !tbaa !9
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.ac
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i ; 2 uses
  %i.db = load <8 x float>, ptr %i.da, align 1, !tbaa !17
  %i.dc = fmul fast <8 x float> %i.db, %i.ai
  br label %.thread1226.i

bb.i:                                             ; preds = %bb.g
  switch i32 %3, label %.thread1226.i [
    i32 3, label %bb.j
    i32 4, label %bb.k
  ]
end_hunk_7
begin_hunk_8_@_ZN4ncnn37unpack_output_tile_int32_to_fp32_avx2ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  %i.bil = icmp slt i32 %i.bik, %7
  br i1 %i.bil, label %.lr.ph1709.i, label %.preheader1546.i, !llvm.loop !265

.preheader1545.i:                                 ; preds = %bb.is, %.preheader1546.i
  %.171847.lcssa.i = phi ptr [ %.161846.lcssa.i, %.preheader1546.i ], [ %i.bjf, %bb.is ] ; 2 uses
  %.62.lcssa.i = phi ptr [ %.60.lcssa.i, %.preheader1546.i ], [ %.63.i, %bb.is ] ; 2 uses
  %.31796.lcssa.i = phi ptr [ %.11794.lcssa.i, %.preheader1546.i ], [ %i.bje, %bb.is ] ; 2 uses
  %.11789.lcssa.i = phi i32 [ %.01788.lcssa.i, %.preheader1546.i ], [ %i.bjg, %bb.is ] ; 3 uses
  %i.bim = or disjoint i32 %.11789.lcssa.i, 1
  %i.bin = icmp slt i32 %i.bim, %7
  br i1 %i.bin, label %.lr.ph1729.i, label %.preheader.i

.lr.ph1729.i:                                     ; preds = %.preheader1545.i
  %i.bio = select ninf nsz i1 %or.cond31.i, float %.21792.i, float 0.000000e+00
  %i.bip = insertelement <2 x float> poison, float %i.bgl, i64 0
  %i.biq = shufflevector <2 x float> %i.bip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bir = insertelement <2 x float> poison, float %i.bio, i64 0
  %i.bis = shufflevector <2 x float> %i.bir, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.it

.lr.ph1720.i:                                     ; preds = %.preheader1546.i, %bb.is
  %.117891719.i = phi i32 [ %i.bjg, %bb.is ], [ %.01788.lcssa.i, %.preheader1546.i ]
  %.317961718.i = phi ptr [ %i.bje, %bb.is ], [ %.11794.lcssa.i, %.preheader1546.i ] ; 8 uses
  %.621717.i = phi ptr [ %.63.i, %bb.is ], [ %.60.lcssa.i, %.preheader1546.i ] ; 5 uses
  %.1718471716.i = phi ptr [ %i.bjf, %bb.is ], [ %.161846.lcssa.i, %.preheader1546.i ] ; 2 uses
  %.59841715.i = phi <4 x float> [ %.6985.i, %bb.is ], [ %.3982.lcssa.i, %.preheader1546.i ] ; 4 uses
  %i.bit = load <4 x i32>, ptr %.1718471716.i, align 1, !tbaa !17
  %i.biu = sitofp fast <4 x i32> %i.bit to <4 x float>
  %i.biv = fmul fast <4 x float> %i.bgn, %i.biu   ; 4 uses
  %.not1937.i = icmp eq ptr %.621717.i, null
  br i1 %.not1937.i, label %bb.il, label %bb.ii

bb.ii:                                            ; preds = %.lr.ph1720.i
  br i1 %or.cond31.i, label %.thread1524.i, label %bb.ij

.thread1524.i:                                    ; preds = %bb.ii
  %i.biw = fadd fast <4 x float> %i.biv, %.59841715.i
  br label %bb.il

bb.ij:                                            ; preds = %bb.ii
  br i1 %or.cond37.i, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.bix = load <4 x float>, ptr %.621717.i, align 1, !tbaa !17 ; 2 uses
  %i.biy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bix, <4 x float> nofpclass(nan inf) %i.avz, <4 x float> nofpclass(nan inf) %i.biv)
  %i.biz = getelementptr inbounds nuw i8, ptr %.621717.i, i64 16
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij, %.thread1524.i, %.lr.ph1720.i
  %.6985.i = phi nsz <4 x float> [ %.59841715.i, %.lr.ph1720.i ], [ %i.bix, %bb.ik ], [ %.59841715.i, %bb.ij ], [ %.59841715.i, %.thread1524.i ]
  %.1942.i = phi nsz <4 x float> [ %i.biv, %.lr.ph1720.i ], [ %i.biy, %bb.ik ], [ %i.biv, %bb.ij ], [ %i.biw, %.thread1524.i ]
  %.63.i = phi ptr [ null, %.lr.ph1720.i ], [ %i.biz, %bb.ik ], [ %.621717.i, %bb.ij ], [ %.621717.i, %.thread1524.i ] ; 2 uses
  %i.bja = fmul fast <4 x float> %.1942.i, %i.awc ; 7 uses
  br i1 %.not.i, label %bb.ir, label %bb.im

bb.im:                                            ; preds = %bb.il
  br i1 %i.awe, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  store <4 x float> %i.bja, ptr %.317961718.i, align 1, !tbaa !17
  br label %bb.is

bb.io:                                            ; preds = %bb.im
  switch i32 %i.b, label %bb.is [
    i32 4, label %bb.ip
    i32 1, label %bb.iq
  ]

bb.ip:                                            ; preds = %bb.io
  store <4 x float> %i.bja, ptr %.317961718.i, align 1, !tbaa !17
  br label %bb.is

bb.iq:                                            ; preds = %bb.io
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.bja, i64 0
  store float %.sroa.0.0.vec.extract.i, ptr %.317961718.i, align 4, !tbaa !147
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.bja, i64 1
  %i.bjb = getelementptr inbounds nuw [4 x i8], ptr %.317961718.i, i64 %i.k
  store float %.sroa.0.4.vec.extract.i, ptr %i.bjb, align 4, !tbaa !147
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.bja, i64 2
  %i.bjc = getelementptr inbounds nuw i8, ptr %.317961718.i, i64 %.idx1943.i
  store float %.sroa.0.8.vec.extract.i, ptr %i.bjc, align 4, !tbaa !147
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.bja, i64 3
  %i.bjd = getelementptr inbounds nuw i8, ptr %.317961718.i, i64 %.idx1944.i
  store float %.sroa.0.12.vec.extract.i, ptr %i.bjd, align 4, !tbaa !147
  br label %bb.is

bb.ir:                                            ; preds = %bb.il
  store <4 x float> %i.bja, ptr %.317961718.i, align 1, !tbaa !17
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in
  %.sink1870.i = phi i64 [ 16, %bb.ir ], [ %.idx1945.i, %bb.ip ], [ %.idx1945.i, %bb.io ], [ %.idx1945.i, %bb.iq ], [ 16, %bb.in ]
  %i.bje = getelementptr inbounds nuw i8, ptr %.317961718.i, i64 %.sink1870.i ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %.1718471716.i, i64 16 ; 2 uses
  %i.bjg = add nuw nsw i32 %.117891719.i, 4       ; 3 uses
  %i.bjh = or disjoint i32 %i.bjg, 3
  %i.bji = icmp slt i32 %i.bjh, %7
  br i1 %i.bji, label %.lr.ph1720.i, label %.preheader1545.i, !llvm.loop !266

.preheader.i:                                     ; preds = %bb.iz, %.preheader1545.i
  %.181848.lcssa.i = phi ptr [ %.171847.lcssa.i, %.preheader1545.i ], [ %i.bkb, %bb.iz ] ; 2 uses
  %.64.lcssa.i = phi ptr [ %.62.lcssa.i, %.preheader1545.i ], [ %.65.i, %bb.iz ] ; 2 uses
  %.5.lcssa.i = phi ptr [ %.31796.lcssa.i, %.preheader1545.i ], [ %i.bka, %bb.iz ]
  %.2.lcssa.i = phi i32 [ %.11789.lcssa.i, %.preheader1545.i ], [ %i.bkc, %bb.iz ] ; 2 uses
  %i.bjj = icmp slt i32 %.2.lcssa.i, %7
  br i1 %i.bjj, label %.lr.ph1738.i, label %._crit_edge1739.i

.lr.ph1738.i:                                     ; preds = %.preheader.i
  %i.bjk = select ninf i1 %or.cond31.i, float %.21792.i, float -0.000000e+00
  br label %bb.ja

bb.it:                                            ; preds = %bb.iz, %.lr.ph1729.i
  %.21728.i = phi i32 [ %.11789.lcssa.i, %.lr.ph1729.i ], [ %i.bkc, %bb.iz ]
  %.51727.i = phi ptr [ %.31796.lcssa.i, %.lr.ph1729.i ], [ %i.bka, %bb.iz ] ; 4 uses
  %.641726.i = phi ptr [ %.62.lcssa.i, %.lr.ph1729.i ], [ %.65.i, %bb.iz ] ; 4 uses
  %.1818481725.i = phi ptr [ %.171847.lcssa.i, %.lr.ph1729.i ], [ %i.bkb, %bb.iz ] ; 2 uses
  %i.bjl = load <2 x i32>, ptr %.1818481725.i, align 4, !tbaa !135
  %i.bjm = sitofp <2 x i32> %i.bjl to <2 x float>
  %i.bjn = fmul fast <2 x float> %i.biq, %i.bjm   ; 3 uses
  %.not1936.i = icmp eq ptr %.641726.i, null
  br i1 %.not1936.i, label %bb.iw, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.bjo = fadd fast <2 x float> %i.bjn, %i.bis
  br i1 %or.cond37.i, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.bjp = load <2 x float>, ptr %.641726.i, align 4, !tbaa !147
  %i.bjq = fmul fast <2 x float> %i.bjp, %i.awj
  %i.bjr = fadd fast <2 x float> %i.bjq, %i.bjn
  %i.bjs = getelementptr inbounds nuw i8, ptr %.641726.i, i64 8
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu, %bb.it
  %.65.i = phi ptr [ %i.bjs, %bb.iv ], [ %.641726.i, %bb.iu ], [ null, %bb.it ] ; 2 uses
  %i.bjt = phi <2 x float> [ %i.bjr, %bb.iv ], [ %i.bjo, %bb.iu ], [ %i.bjn, %bb.it ] ; 2 uses
  %i.bju = extractelement <2 x float> %i.bjt, i64 0
  %i.bjv = fmul fast float %i.bju, %9
  %i.bjw = extractelement <2 x float> %i.bjt, i64 1
  %i.bjx = fmul fast float %i.bjw, %9             ; 2 uses
  store float %i.bjv, ptr %.51727.i, align 4, !tbaa !147
  br i1 %.not.i, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %.51727.i, i64 %i.k
  store float %i.bjx, ptr %i.bjy, align 4, !tbaa !147
  br label %bb.iz

bb.iy:                                            ; preds = %bb.iw
  %i.bjz = getelementptr inbounds nuw i8, ptr %.51727.i, i64 4
  store float %i.bjx, ptr %i.bjz, align 4, !tbaa !147
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.sink1871.i = phi i64 [ 8, %bb.iy ], [ %.idx1943.i, %bb.ix ]
  %i.bka = getelementptr inbounds nuw i8, ptr %.51727.i, i64 %.sink1871.i ; 2 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %.1818481725.i, i64 8 ; 2 uses
  %i.bkc = add nuw nsw i32 %.21728.i, 2           ; 3 uses
  %i.bkd = or disjoint i32 %i.bkc, 1
  %i.bke = icmp slt i32 %i.bkd, %7
  br i1 %i.bke, label %bb.it, label %.preheader.i, !llvm.loop !267

bb.ja:                                            ; preds = %bb.jd, %.lr.ph1738.i
  %.31737.i = phi i32 [ %.2.lcssa.i, %.lr.ph1738.i ], [ %i.bkq, %bb.jd ]
  %.71736.i = phi ptr [ %.5.lcssa.i, %.lr.ph1738.i ], [ %.8.i, %bb.jd ] ; 3 uses
  %.661735.i = phi ptr [ %.64.lcssa.i, %.lr.ph1738.i ], [ %.67.i, %bb.jd ] ; 4 uses
  %.1918491734.i = phi ptr [ %.181848.lcssa.i, %.lr.ph1738.i ], [ %i.bkp, %bb.jd ] ; 2 uses
  %i.bkf = load i32, ptr %.1918491734.i, align 4, !tbaa !135
  %i.bkg = sitofp fast i32 %i.bkf to float
  %i.bkh = fmul fast float %i.bgl, %i.bkg         ; 3 uses
  %.not1935.i = icmp eq ptr %.661735.i, null
  br i1 %.not1935.i, label %bb.jd, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %spec.select.i = fadd reassoc nnan ninf arcp contract afn float %i.bjk, %i.bkh
  br i1 %or.cond37.i, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.bki = load float, ptr %.661735.i, align 4, !tbaa !147
  %i.bkj = fmul fast float %i.bki, %10
  %i.bkk = fadd fast float %i.bkj, %i.bkh
  %i.bkl = getelementptr inbounds nuw i8, ptr %.661735.i, i64 4
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb, %bb.ja
  %.67.i = phi ptr [ %i.bkl, %bb.jc ], [ %.661735.i, %bb.jb ], [ null, %bb.ja ] ; 2 uses
  %.1.i = phi nsz float [ %i.bkk, %bb.jc ], [ %spec.select.i, %bb.jb ], [ %i.bkh, %bb.ja ]
  %i.bkm = fmul fast float %.1.i, %9
  store float %i.bkm, ptr %.71736.i, align 4, !tbaa !147
  %i.bkn = getelementptr inbounds nuw [4 x i8], ptr %.71736.i, i64 %i.k
  %i.bko = getelementptr inbounds nuw i8, ptr %.71736.i, i64 4
  %.8.i = select i1 %.not.i, ptr %i.bko, ptr %i.bkn
  %i.bkp = getelementptr inbounds nuw i8, ptr %.1918491734.i, i64 4 ; 2 uses
  %i.bkq = add nuw nsw i32 %.31737.i, 1           ; 2 uses
  %exitcond1786.not.i = icmp eq i32 %i.bkq, %7
  br i1 %exitcond1786.not.i, label %._crit_edge1739.i, label %bb.ja, !llvm.loop !268

._crit_edge1739.i:                                ; preds = %bb.jd, %.preheader.i
  %.191849.lcssa.i = phi ptr [ %.181848.lcssa.i, %.preheader.i ], [ %i.bkp, %bb.jd ]
  %.66.lcssa.i = phi ptr [ %.64.lcssa.i, %.preheader.i ], [ %.67.i, %bb.jd ]
  %indvars.iv.next1788.i = add nsw i64 %indvars.iv1787.i, 1 ; 2 uses
  %exitcond1790.not.i = icmp eq i64 %indvars.iv.next1788.i, %wide.trip.count.i
  br i1 %exitcond1790.not.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit, label %bb.hm, !llvm.loop !269

_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit: ; preds = %._crit_edge1739.i, %.preheader1547.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn33gemm_transB_packed_tile_int8_avx2ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not928.i = icmp eq i32 %i.b, 0
  br i1 %.not928.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

bb.e:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !9      ; 8 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %4, 7
  br i1 %i.f, label %.preheader1246.lr.ph.i, label %.preheader1238.i

.preheader1246.lr.ph.i:                           ; preds = %bb.e
  %i.g = icmp sgt i32 %6, 7
  %i.h = icmp eq i32 %7, 0                        ; 4 uses
  %i.i = icmp sgt i32 %8, 1                       ; 4 uses
  %i.j = shl i32 %8, 3
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = add i32 %8, -2                           ; 5 uses
  %i.m = and i32 %i.l, -2
  %i.n = add i32 %i.m, 2                          ; 4 uses
  %i.o = and i32 %6, -8
  %i.p = zext i32 %i.l to i64                     ; 2 uses
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.t = getelementptr i8, ptr %i.c, i64 %i.s
  %scevgep1987.i = getelementptr i8, ptr %i.t, i64 16
  %i.u = shl nuw nsw i64 %i.q, 2
  %i.v = and i64 %i.p, 4294967294
  %i.w = lshr i32 %i.l, 1                         ; 3 uses
  %i.x = add nuw i32 %i.w, 1                      ; 4 uses
  %i.y = icmp eq i32 %i.w, 0
  %unroll_iter = and i32 %i.x, -2
  %i.z = and i32 %i.l, 2
  %lcmp.mod.not.not = icmp eq i32 %i.z, 0
  %lcmp.mod1253 = trunc i32 %i.x to i1
  %i.aa = icmp eq i32 %i.w, 0
  %unroll_iter1264 = and i32 %i.x, -2
  %i.ab = and i32 %i.l, 2
  %lcmp.mod1261.not.not = icmp eq i32 %i.ab, 0
  %lcmp.mod1263 = trunc i32 %i.x to i1
  br label %.preheader1246.i

.preheader1246.i:                                 ; preds = %._crit_edge1417.i, %.preheader1246.lr.ph.i
  %indvars.iv.i = phi ptr [ %scevgep1987.i, %.preheader1246.lr.ph.i ], [ %scevgep1988.i, %._crit_edge1417.i ] ; 4 uses
  %.07761421.i = phi ptr [ %i.c, %.preheader1246.lr.ph.i ], [ %i.pt, %._crit_edge1417.i ] ; 11 uses
  %.07791420.i = phi ptr [ %i.e, %.preheader1246.lr.ph.i ], [ %.4.lcssa.i, %._crit_edge1417.i ] ; 2 uses
  %.07831419.i = phi i32 [ 0, %.preheader1246.lr.ph.i ], [ %i.pu, %._crit_edge1417.i ]
  br i1 %i.g, label %.lr.ph1339.i, label %.preheader1245.i

.preheader1238.loopexit.i:                        ; preds = %._crit_edge1417.i
  %i.ac = and i32 %4, 2147483640
  br label %.preheader1238.i

.preheader1238.i:                                 ; preds = %.preheader1238.loopexit.i, %bb.e
  %.0783.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.ac, %.preheader1238.loopexit.i ] ; 3 uses
  %.0779.lcssa.i = phi ptr [ %i.e, %bb.e ], [ %.4.lcssa.i, %.preheader1238.loopexit.i ] ; 2 uses
  %.0776.lcssa.i = phi ptr [ %i.c, %bb.e ], [ %i.pt, %.preheader1238.loopexit.i ] ; 3 uses
  %i.ad = or disjoint i32 %.0783.lcssa.i, 3
  %i.ae = icmp slt i32 %i.ad, %4
  br i1 %i.ae, label %.preheader1237.lr.ph.i, label %.preheader1229.i

.preheader1237.lr.ph.i:                           ; preds = %.preheader1238.i
  %i.af = icmp sgt i32 %6, 7
  %i.ag = icmp eq i32 %7, 0                       ; 4 uses
  %i.ah = icmp sgt i32 %8, 1                      ; 4 uses
  %i.ai = shl i32 %8, 2
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = add i32 %8, -2                          ; 5 uses
  %i.al = and i32 %i.ak, -2
  %i.am = add i32 %i.al, 2                        ; 4 uses
  %i.an = and i32 %6, -8
  %i.ao = zext i32 %i.ak to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 1                       ; 3 uses
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 8                ; 2 uses
  %scevgep1997.i = getelementptr i8, ptr %.0776.lcssa.i, i64 %i.ar
  %i.as = shl nuw nsw i64 %i.ap, 2
  %i.at = and i64 %i.ao, 4294967294
  %i.au = shl nuw nsw i64 %i.ap, 4
  %i.av = lshr i32 %i.ak, 1                       ; 3 uses
  %i.aw = add nuw i32 %i.av, 1                    ; 4 uses
  %i.ax = icmp eq i32 %i.av, 0
  %unroll_iter1278 = and i32 %i.aw, -2
  %i.ay = and i32 %i.ak, 2
  %lcmp.mod1274.not.not = icmp eq i32 %i.ay, 0
  %lcmp.mod1277 = trunc i32 %i.aw to i1
  %i.az = icmp eq i32 %i.av, 0
  %unroll_iter1286 = and i32 %i.aw, -2
  %i.ba = and i32 %i.ak, 2
  %lcmp.mod1283.not.not = icmp eq i32 %i.ba, 0
  %lcmp.mod1285 = trunc i32 %i.aw to i1
  br label %.preheader1237.i

.preheader1245.i:                                 ; preds = %._crit_edge.i, %.preheader1246.i
  %.0799.lcssa.i = phi i32 [ 0, %.preheader1246.i ], [ %i.o, %._crit_edge.i ] ; 3 uses
  %.0787.lcssa.i = phi ptr [ %i.d, %.preheader1246.i ], [ %.2789.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.1780.lcssa.i = phi ptr [ %.07791420.i, %.preheader1246.i ], [ %i.fo, %._crit_edge.i ] ; 2 uses
  %i.bb = or disjoint i32 %.0799.lcssa.i, 3
  %i.bc = icmp slt i32 %i.bb, %6
  br i1 %i.bc, label %.lr.ph1368.i, label %.preheader1244.i

.lr.ph1339.i:                                     ; preds = %.preheader1246.i, %._crit_edge.i
  %.17801338.i = phi ptr [ %i.fo, %._crit_edge.i ], [ %.07791420.i, %.preheader1246.i ] ; 17 uses
  %.07871337.i = phi ptr [ %.2789.lcssa.i, %._crit_edge.i ], [ %i.d, %.preheader1246.i ] ; 3 uses
  %.07991336.i = phi i32 [ %i.fp, %._crit_edge.i ], [ 0, %.preheader1246.i ]
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph1339.i
  %i.bd = load <8 x i32>, ptr %.17801338.i, align 32, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.17801338.i, i64 32
  %i.bf = load <8 x i32>, ptr %i.be, align 32, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %.17801338.i, i64 64
  %i.bh = load <8 x i32>, ptr %i.bg, align 32, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.17801338.i, i64 96
  %i.bj = load <8 x i32>, ptr %i.bi, align 32, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %.17801338.i, i64 128
  %i.bl = load <8 x i32>, ptr %i.bk, align 32, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.17801338.i, i64 160
  %i.bn = load <8 x i32>, ptr %i.bm, align 32, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %.17801338.i, i64 192
  %i.bp = load <8 x i32>, ptr %i.bo, align 32, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.17801338.i, i64 224
  %i.br = load <8 x i32>, ptr %i.bq, align 32, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph1339.i
  %i.bs = phi <8 x i32> [ %i.bp, %bb.f ], [ zeroinitializer, %.lr.ph1339.i ] ; 2 uses
  %i.bt = phi <8 x i32> [ %i.bn, %bb.f ], [ zeroinitializer, %.lr.ph1339.i ] ; 2 uses
  %i.bu = phi <8 x i32> [ %i.bl, %bb.f ], [ zeroinitializer, %.lr.ph1339.i ] ; 2 uses
  %i.bv = phi <8 x i32> [ %i.bj, %bb.f ], [ zeroinitializer, %.lr.ph1339.i ] ; 2 uses
  %i.bw = phi <8 x i32> [ %i.bh, %bb.f ], [ zeroinitializer, %.lr.ph1339.i ] ; 2 uses
  %i.bx = phi <8 x i32> [ %i.bf, %bb.f ], [ zeroinitializer, %.lr.ph1339.i ] ; 2 uses
  %i.by = phi <8 x i32> [ %i.bd, %bb.f ], [ zeroinitializer, %.lr.ph1339.i ] ; 2 uses
  %i.bz = phi <8 x i32> [ %i.br, %bb.f ], [ zeroinitializer, %.lr.ph1339.i ] ; 2 uses
  br i1 %i.i, label %.lr.ph.i, label %.preheader1242.i

.preheader1242.i.loopexit:                        ; preds = %.lr.ph.i
  %i.ca = getelementptr i8, ptr %.07871337.i, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.ca, i64 16
  br label %.preheader1242.i

.preheader1242.i:                                 ; preds = %.preheader1242.i.loopexit, %bb.g
  %.lcssa1287.i = phi <8 x i32> [ %i.bz, %bb.g ], [ %i.dk, %.preheader1242.i.loopexit ] ; 2 uses
  %.lcssa1286.i = phi <8 x i32> [ %i.bs, %bb.g ], [ %i.di, %.preheader1242.i.loopexit ] ; 2 uses
  %.lcssa1285.i = phi <8 x i32> [ %i.bt, %bb.g ], [ %i.dg, %.preheader1242.i.loopexit ] ; 2 uses
  %.lcssa1284.i = phi <8 x i32> [ %i.bu, %bb.g ], [ %i.dc, %.preheader1242.i.loopexit ] ; 2 uses
  %.lcssa1283.i = phi <8 x i32> [ %i.bv, %bb.g ], [ %i.cz, %.preheader1242.i.loopexit ] ; 2 uses
  %.lcssa1282.i = phi <8 x i32> [ %i.bw, %bb.g ], [ %i.cx, %.preheader1242.i.loopexit ] ; 2 uses
  %.lcssa1281.i = phi <8 x i32> [ %i.bx, %bb.g ], [ %i.cu, %.preheader1242.i.loopexit ] ; 2 uses
  %.lcssa1280.i = phi <8 x i32> [ %i.by, %bb.g ], [ %i.cr, %.preheader1242.i.loopexit ] ; 2 uses
  %.0809.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.n, %.preheader1242.i.loopexit ] ; 2 uses
  %.0807.lcssa.i = phi ptr [ %.07761421.i, %bb.g ], [ %i.dl, %.preheader1242.i.loopexit ]
  %.1788.lcssa.i = phi ptr [ %.07871337.i, %bb.g ], [ %scevgep, %.preheader1242.i.loopexit ] ; 2 uses
  %i.cb = icmp slt i32 %.0809.lcssa.i, %8
  br i1 %i.cb, label %.lr.ph1326.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.17881312.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %.07871337.i, %bb.g ] ; 2 uses
  %.08071311.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.07761421.i, %bb.g ] ; 2 uses
  %.08091310.i = phi i32 [ %i.dn, %.lr.ph.i ], [ 0, %bb.g ]
  %i.cc = phi <8 x i32> [ %i.cr, %.lr.ph.i ], [ %i.by, %bb.g ]
  %i.cd = phi <8 x i32> [ %i.cu, %.lr.ph.i ], [ %i.bx, %bb.g ]
  %i.ce = phi <8 x i32> [ %i.cx, %.lr.ph.i ], [ %i.bw, %bb.g ]
  %i.cf = phi <8 x i32> [ %i.cz, %.lr.ph.i ], [ %i.bv, %bb.g ]
  %i.cg = phi <8 x i32> [ %i.dc, %.lr.ph.i ], [ %i.bu, %bb.g ]
  %i.ch = phi <8 x i32> [ %i.dg, %.lr.ph.i ], [ %i.bt, %bb.g ]
  %i.ci = phi <8 x i32> [ %i.di, %.lr.ph.i ], [ %i.bs, %bb.g ]
  %i.cj = phi <8 x i32> [ %i.dk, %.lr.ph.i ], [ %i.bz, %bb.g ]
  %i.ck = load <16 x i8>, ptr %.08071311.i, align 1, !tbaa !17
  %i.cl = load <16 x i8>, ptr %.17881312.i, align 1, !tbaa !17
end_hunk_8
