Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/snappy/original/snappy?download=true
inline.NumInlined: 501
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc:bb.a
  br label %.lr.ph90.i

vector.memcheck221:                               ; preds = %.lr.ph90.i.preheader
  %scevgep = getelementptr i8, ptr %.157.i, i64 16
  %i.cq = add i64 %i.ba, -17
  %i.cr = sub i64 %i.cq, %.157.i222
  %i.cs = add i64 %i.cr, %i.aq
  %i.ct = and i64 %i.cs, -16                      ; 2 uses
  %scevgep223 = getelementptr i8, ptr %scevgep, i64 %i.ct
  %scevgep224 = getelementptr i8, ptr %i.av, i64 16
  %scevgep225 = getelementptr i8, ptr %scevgep224, i64 %.2.ph107
  %scevgep226 = getelementptr i8, ptr %scevgep225, i64 %i.ct
  %bound0 = icmp ult ptr %.157.i, %scevgep226
  %bound1 = icmp ult ptr %i.aw, %scevgep223
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.preheader244, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck221
  %i.cu = and i64 %i.co, -16
  %i.cv = add i64 %i.cu, 16                       ; 2 uses
  %i.cw = getelementptr i8, ptr %i.aw, i64 %i.cv
  %i.cx = getelementptr i8, ptr %.157.i, i64 %i.cv
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next235, %vector.body230 ] ; 3 uses
  %i.cy = shl i64 %index231, 4                    ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.aw, i64 %i.cy
  %next.gep233 = getelementptr i8, ptr %.157.i, i64 %i.cy
  %wide.load234 = load <2 x i64>, ptr %next.gep232, align 1, !alias.scope !177
  store <2 x i64> %wide.load234, ptr %next.gep233, align 1, !alias.scope !178, !noalias !177
  %index.next235 = add nuw i64 %index231, 1
  %i.cz = icmp eq i64 %index231, %i.cp
  br i1 %i.cz, label %._crit_edge91.i, label %vector.body230, !llvm.loop !171

._crit_edge91.i:                                  ; preds = %vector.body230, %.lr.ph90.i, %bb.r
  %.2.lcssa.i = phi ptr [ %.157.i, %bb.r ], [ %i.dc, %.lr.ph90.i ], [ %i.cx, %vector.body230 ] ; 5 uses
  %.054.lcssa.i = phi ptr [ %i.aw, %bb.r ], [ %i.dd, %.lr.ph90.i ], [ %i.cw, %vector.body230 ] ; 3 uses
  %.not69.i = icmp ult ptr %.2.lcssa.i, %i.ay
  br i1 %.not69.i, label %bb.s, label %.thread71

.lr.ph90.i:                                       ; preds = %.lr.ph90.i.preheader244, %.lr.ph90.i
  %.05488.i = phi ptr [ %i.dd, %.lr.ph90.i ], [ %i.aw, %.lr.ph90.i.preheader244 ] ; 3 uses
  %.287.i = phi ptr [ %i.dc, %.lr.ph90.i ], [ %.157.i, %.lr.ph90.i.preheader244 ] ; 3 uses
  %.val4.i77.i = load i64, ptr %.05488.i, align 1
  store i64 %.val4.i77.i, ptr %.287.i, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.05488.i, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %.287.i, i64 8
  %.val.i78.i = load i64, ptr %i.da, align 1
  store i64 %.val.i78.i, ptr %i.db, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.287.i, i64 16 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.05488.i, i64 16 ; 2 uses
  %i.de = icmp ult ptr %i.dc, %i.ck
  br i1 %i.de, label %.lr.ph90.i, label %._crit_edge91.i, !llvm.loop !172

bb.s:                                             ; preds = %._crit_edge91.i
  %i.df = getelementptr inbounds i8, ptr %i.az, i64 -8
  %.not70.i = icmp ugt ptr %.2.lcssa.i, %i.df
  br i1 %.not70.i, label %bb.u, label %bb.t, !prof !26

bb.t:                                             ; preds = %bb.s
  %.054.val.i = load i64, ptr %.054.lcssa.i, align 1
  store i64 %.054.val.i, ptr %.2.lcssa.i, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3.i = phi ptr [ %i.dh, %bb.t ], [ %.2.lcssa.i, %bb.s ] ; 7 uses
  %.155.i = phi ptr [ %i.dg, %bb.t ], [ %.054.lcssa.i, %bb.s ] ; 6 uses
  %i.di = icmp ult ptr %.3.i, %i.ay
  br i1 %i.di, label %iter.check205, label %.thread71

iter.check205:                                    ; preds = %bb.u
  %.155.i188 = ptrtoaddr ptr %.155.i to i64
  %.3.i187 = ptrtoaddr ptr %.3.i to i64           ; 2 uses
  %i.dj = sub i64 %i.ba, %.3.i187
  %i.dk = add i64 %i.dj, %spec.select57           ; 7 uses
  %min.iters.check190 = icmp ult i64 %i.dk, 4
  %i.dl = sub i64 %.155.i188, %.3.i187
  %diff.check189 = icmp ugt i64 %i.dl, -16
  %or.cond242 = select i1 %min.iters.check190, i1 true, i1 %diff.check189
  br i1 %or.cond242, label %.lr.ph.i79.i.preheader, label %vector.main.loop.iter.check191

vector.main.loop.iter.check191:                   ; preds = %iter.check205
  %min.iters.check192 = icmp ult i64 %i.dk, 16
  br i1 %min.iters.check192, label %vec.epilog.ph209, label %vector.ph193

vector.ph193:                                     ; preds = %vector.main.loop.iter.check191
  %i.dm = and i64 %i.dk, 12
  %n.vec194 = and i64 %i.dk, -16                  ; 5 uses
  %i.dn = getelementptr i8, ptr %.155.i, i64 %n.vec194
  %i.do = getelementptr i8, ptr %.3.i, i64 %n.vec194
  br label %vector.body195

vector.body195:                                   ; preds = %vector.ph193, %vector.body195
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next200, %vector.body195 ] ; 3 uses
  %next.gep197 = getelementptr i8, ptr %.155.i, i64 %index196
  %next.gep198 = getelementptr i8, ptr %.3.i, i64 %index196
  %wide.load199 = load <16 x i8>, ptr %next.gep197, align 1, !tbaa !16
  store <16 x i8> %wide.load199, ptr %next.gep198, align 1, !tbaa !16
  %index.next200 = add nuw i64 %index196, 16      ; 2 uses
  %i.dp = icmp eq i64 %index.next200, %n.vec194
  br i1 %i.dp, label %middle.block201, label %vector.body195, !llvm.loop !173

middle.block201:                                  ; preds = %vector.body195
  %cmp.n202 = icmp eq i64 %i.dk, %n.vec194
  br i1 %cmp.n202, label %.thread71, label %vec.epilog.iter.check207

vec.epilog.iter.check207:                         ; preds = %middle.block201
  %min.epilog.iters.check208 = icmp eq i64 %i.dm, 0
  br i1 %min.epilog.iters.check208, label %.lr.ph.i79.i.preheader, label %vec.epilog.ph209, !prof !121

vec.epilog.ph209:                                 ; preds = %vector.main.loop.iter.check191, %vec.epilog.iter.check207
  %vec.epilog.resume.val203 = phi i64 [ %n.vec194, %vec.epilog.iter.check207 ], [ 0, %vector.main.loop.iter.check191 ]
  %n.vec210 = and i64 %i.dk, -4                   ; 4 uses
  %i.dq = getelementptr i8, ptr %.155.i, i64 %n.vec210
  %i.dr = getelementptr i8, ptr %.3.i, i64 %n.vec210
  br label %vec.epilog.vector.body211

vec.epilog.vector.body211:                        ; preds = %vec.epilog.vector.body211, %vec.epilog.ph209
  %index212 = phi i64 [ %vec.epilog.resume.val203, %vec.epilog.ph209 ], [ %index.next216, %vec.epilog.vector.body211 ] ; 3 uses
  %next.gep213 = getelementptr i8, ptr %.155.i, i64 %index212
  %next.gep214 = getelementptr i8, ptr %.3.i, i64 %index212
  %wide.load215 = load <4 x i8>, ptr %next.gep213, align 1, !tbaa !16
  store <4 x i8> %wide.load215, ptr %next.gep214, align 1, !tbaa !16
  %index.next216 = add nuw i64 %index212, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next216, %n.vec210
  br i1 %i.ds, label %vec.epilog.middle.block217, label %vec.epilog.vector.body211, !llvm.loop !174

vec.epilog.middle.block217:                       ; preds = %vec.epilog.vector.body211
  %cmp.n218 = icmp eq i64 %i.dk, %n.vec210
  br i1 %cmp.n218, label %.thread71, label %.lr.ph.i79.i.preheader

.lr.ph.i79.i.preheader:                           ; preds = %iter.check205, %vec.epilog.iter.check207, %vec.epilog.middle.block217
  %.08.i80.i.ph = phi ptr [ %.155.i, %iter.check205 ], [ %i.dn, %vec.epilog.iter.check207 ], [ %i.dq, %vec.epilog.middle.block217 ]
  %.057.i81.i.ph = phi ptr [ %.3.i, %iter.check205 ], [ %i.do, %vec.epilog.iter.check207 ], [ %i.dr, %vec.epilog.middle.block217 ]
  br label %.lr.ph.i79.i

.lr.ph.i79.i:                                     ; preds = %.lr.ph.i79.i.preheader, %.lr.ph.i79.i
  %.08.i80.i = phi ptr [ %i.dt, %.lr.ph.i79.i ], [ %.08.i80.i.ph, %.lr.ph.i79.i.preheader ] ; 2 uses
  %.057.i81.i = phi ptr [ %i.dv, %.lr.ph.i79.i ], [ %.057.i81.i.ph, %.lr.ph.i79.i.preheader ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.08.i80.i, i64 1
  %i.du = load i8, ptr %.08.i80.i, align 1, !tbaa !16
  %i.dv = getelementptr inbounds nuw i8, ptr %.057.i81.i, i64 1 ; 2 uses
  store i8 %i.du, ptr %.057.i81.i, align 1, !tbaa !16
  %exitcond.not.i82.i = icmp eq ptr %i.dv, %i.ay
  br i1 %exitcond.not.i82.i, label %.thread71, label %.lr.ph.i79.i, !llvm.loop !175

.thread71:                                        ; preds = %.lr.ph.i79.i, %.lr.ph.i.i, %middle.block201, %vec.epilog.middle.block217, %middle.block, %vec.epilog.middle.block, %bb.u, %._crit_edge91.i, %bb.q, %bb.p, %._crit_edge.i
  %i.dw = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %spec.select57
  store ptr %i.dx, ptr %i.t, align 8, !tbaa !61
  %i.dy = load i64, ptr %i.l, align 8, !tbaa !62
  %i.dz = sub i64 %i.dy, %spec.select57           ; 3 uses
  store i64 %i.dz, ptr %i.l, align 8, !tbaa !62
  %i.ea = add i64 %spec.select57, %.2.ph107
  %i.eb = load i64, ptr %i.b, align 8, !tbaa !63
  %i.ec = add i64 %i.eb, %spec.select57
  store i64 %i.ec, ptr %i.b, align 8, !tbaa !63
  br label %.outer

bb.v:                                             ; preds = %bb.i
  store ptr %i.at, ptr %i.h, align 8, !tbaa !57
  %i.ed = load ptr, ptr %i.at, align 8, !tbaa !59
  store ptr %i.ed, ptr %i.t, align 8, !tbaa !61
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !60 ; 4 uses
  store i64 %i.ef, ptr %i.l, align 8, !tbaa !62
  %.not53 = icmp eq ptr %.134.ph105, %i.at
  br i1 %.not53, label %.lr.ph101, label %.split.us

.outer:                                           ; preds = %.thread71, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit
  %.pre.i132 = phi i64 [ %i.dz, %.thread71 ], [ %.pre.i129, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.promoted102125 = phi i64 [ %i.dz, %.thread71 ], [ %.promoted102122, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %spec.select57.pn = phi i64 [ %spec.select57, %.thread71 ], [ %.sroa.speculated, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.336 = phi ptr [ %.134.ph105, %.thread71 ], [ %spec.select, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.5 = phi i64 [ %i.ea, %.thread71 ], [ %spec.select56, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.267 = sub i64 %.0.ph104, %spec.select57.pn    ; 2 uses
  %.not52 = icmp eq i64 %.267, 0
  br i1 %.not52, label %.thread, label %.lr.ph88.split, !llvm.loop !176

.thread:                                          ; preds = %.outer, %bb.i, %.loopexit, %bb.b, %bb.a
  %.543 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.loopexit ], [ false, %bb.i ], [ true, %.outer ]
  ret i1 %.543
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone returned captures(address, ret: address, provenance) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #18 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = icmp ult i64 %i.d, 8
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %3, i64 -11
  %.not = icmp ugt ptr %1, %i.f
  br i1 %.not, label %bb.c, label %.lr.ph, !prof !29

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.086 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %bb.b ] ; 3 uses
  %.05685 = phi ptr [ %i.g, %.lr.ph ], [ %1, %bb.b ] ; 2 uses
  %.val = load i64, ptr %0, align 1
  store i64 %.val, ptr %.05685, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %.05685, i64 %.086 ; 3 uses
  %i.h = shl nuw nsw i64 %.086, 1
  %i.i = icmp ult i64 %.086, 4
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %.lr.ph
  %.not67 = icmp ult ptr %i.g, %2
  br i1 %.not67, label %bb.d, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult ptr %1, %2
  br i1 %i.j, label %iter.check160, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check160:                                    ; preds = %bb.c
  %i.k = sub i64 %i.a, %i.b                       ; 7 uses
  %min.iters.check144 = icmp ult i64 %i.k, 4
  %i.l = add nsw i64 %i.d, -1
  %diff.check142 = icmp ult i64 %i.l, 15
  %or.cond = select i1 %min.iters.check144, i1 true, i1 %diff.check142
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check145

vector.main.loop.iter.check145:                   ; preds = %iter.check160
  %min.iters.check146 = icmp ult i64 %i.k, 16
  br i1 %min.iters.check146, label %vec.epilog.ph164, label %vector.ph147

vector.ph147:                                     ; preds = %vector.main.loop.iter.check145
  %i.m = and i64 %i.k, 12
  %n.vec148 = and i64 %i.k, -16                   ; 5 uses
  %i.n = getelementptr i8, ptr %0, i64 %n.vec148
  %i.o = getelementptr i8, ptr %1, i64 %n.vec148
  br label %vector.body149

vector.body149:                                   ; preds = %vector.ph147, %vector.body149
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next154, %vector.body149 ] ; 3 uses
  %next.gep151 = getelementptr i8, ptr %0, i64 %index150
  %next.gep152 = getelementptr i8, ptr %1, i64 %index150
  %wide.load153 = load <16 x i8>, ptr %next.gep151, align 1, !tbaa !16
  store <16 x i8> %wide.load153, ptr %next.gep152, align 1, !tbaa !16
  %index.next154 = add nuw i64 %index150, 16      ; 2 uses
  %i.p = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.p, label %middle.block155, label %vector.body149, !llvm.loop !179

middle.block155:                                  ; preds = %vector.body149
  %cmp.n156 = icmp eq i64 %i.k, %n.vec148
  br i1 %cmp.n156, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check162

vec.epilog.iter.check162:                         ; preds = %middle.block155
  %min.epilog.iters.check163 = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check163, label %.lr.ph.i.preheader, label %vec.epilog.ph164, !prof !121

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check145, %vec.epilog.iter.check162
  %vec.epilog.resume.val157 = phi i64 [ %n.vec148, %vec.epilog.iter.check162 ], [ 0, %vector.main.loop.iter.check145 ]
  %n.vec165 = and i64 %i.k, -4                    ; 4 uses
  %i.q = getelementptr i8, ptr %0, i64 %n.vec165
  %i.r = getelementptr i8, ptr %1, i64 %n.vec165
  br label %vec.epilog.vector.body166

vec.epilog.vector.body166:                        ; preds = %vec.epilog.vector.body166, %vec.epilog.ph164
  %index167 = phi i64 [ %vec.epilog.resume.val157, %vec.epilog.ph164 ], [ %index.next171, %vec.epilog.vector.body166 ] ; 3 uses
  %next.gep168 = getelementptr i8, ptr %0, i64 %index167
  %next.gep169 = getelementptr i8, ptr %1, i64 %index167
  %wide.load170 = load <4 x i8>, ptr %next.gep168, align 1, !tbaa !16
  store <4 x i8> %wide.load170, ptr %next.gep169, align 1, !tbaa !16
  %index.next171 = add nuw i64 %index167, 4       ; 2 uses
  %i.s = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.s, label %vec.epilog.middle.block172, label %vec.epilog.vector.body166, !llvm.loop !180

vec.epilog.middle.block172:                       ; preds = %vec.epilog.vector.body166
  %cmp.n173 = icmp eq i64 %i.k, %n.vec165
  br i1 %cmp.n173, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check160, %vec.epilog.iter.check162, %vec.epilog.middle.block172
  %.08.i.ph = phi ptr [ %0, %iter.check160 ], [ %i.n, %vec.epilog.iter.check162 ], [ %i.q, %vec.epilog.middle.block172 ]
  %.057.i.ph = phi ptr [ %1, %iter.check160 ], [ %i.o, %vec.epilog.iter.check162 ], [ %i.r, %vec.epilog.middle.block172 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.u = load i8, ptr %.08.i, align 1, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %.057.i, i64 1 ; 2 uses
  store i8 %i.u, ptr %.057.i, align 1, !tbaa !16
  %exitcond.not.i = icmp eq ptr %i.v, %2
  br i1 %exitcond.not.i, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i, !llvm.loop !181

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.157 = phi ptr [ %i.g, %._crit_edge ], [ %1, %bb.a ] ; 16 uses
  %i.w = getelementptr inbounds i8, ptr %3, i64 -15
  %.not68 = icmp ugt ptr %2, %i.w
  br i1 %.not68, label %bb.k, label %bb.e, !prof !29

bb.e:                                             ; preds = %bb.d
  %.val4.i = load i64, ptr %0, align 1
  store i64 %.val4.i, ptr %.157, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.157, i64 8
  %.val.i = load i64, ptr %i.x, align 1
  store i64 %.val.i, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.157, i64 16 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %2
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i71 = load i64, ptr %i.ab, align 1
  store i64 %.val4.i71, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.157, i64 24
  %.val.i72 = load i64, ptr %i.ac, align 1
  store i64 %.val.i72, ptr %i.ad, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.157, i64 32 ; 2 uses
  %i.af = icmp ult ptr %i.ae, %2
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i73 = load i64, ptr %i.ag, align 1
  store i64 %.val4.i73, ptr %i.ae, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %.157, i64 40
  %.val.i74 = load i64, ptr %i.ah, align 1
  store i64 %.val.i74, ptr %i.ai, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.157, i64 48 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %2
  br i1 %i.ak, label %bb.j, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val4.i75 = load i64, ptr %i.al, align 1
  store i64 %.val4.i75, ptr %i.aj, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %.157, i64 56
  %.val.i76 = load i64, ptr %i.am, align 1
  store i64 %.val.i76, ptr %i.an, align 1
  br label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

bb.k:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds i8, ptr %3, i64 -16 ; 2 uses
  %i.ap = icmp ult ptr %.157, %i.ao
  br i1 %i.ap, label %.lr.ph90.preheader, label %._crit_edge91

.lr.ph90.preheader:                               ; preds = %bb.k
  %4 = ptrtoaddr ptr %3 to i64
  %5 = ptrtoaddr ptr %.157 to i64
  %i.aq = add i64 %4, -17
  %i.ar = sub i64 %i.aq, %5                       ; 4 uses
  %i.as = lshr i64 %i.ar, 4
  %min.iters.check = icmp ult i64 %i.ar, 208
  br i1 %min.iters.check, label %.lr.ph90.preheader178, label %vector.memcheck

.lr.ph90.preheader178:                            ; preds = %vector.memcheck, %.lr.ph90.preheader
  br label %.lr.ph90

vector.memcheck:                                  ; preds = %.lr.ph90.preheader
  %i.at = and i64 %i.ar, -16
  %i.au = add i64 %i.at, 16                       ; 2 uses
  %scevgep = getelementptr i8, ptr %.157, i64 %i.au
  %scevgep111 = getelementptr i8, ptr %0, i64 %i.au
  %bound0 = icmp ult ptr %.157, %scevgep111
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.preheader178, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.av = and i64 %i.ar, -16
  %i.aw = add i64 %i.av, 16                       ; 2 uses
  %i.ax = getelementptr i8, ptr %0, i64 %i.aw
  %i.ay = getelementptr i8, ptr %.157, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.az
  %next.gep112 = getelementptr i8, ptr %.157, i64 %i.az
  %wide.load = load <2 x i64>, ptr %next.gep, align 1, !alias.scope !190
  store <2 x i64> %wide.load, ptr %next.gep112, align 1, !alias.scope !191, !noalias !190
  %index.next = add nuw i64 %index, 1
  %i.ba = icmp eq i64 %index, %i.as
  br i1 %i.ba, label %._crit_edge91, label %vector.body, !llvm.loop !185

._crit_edge91:                                    ; preds = %vector.body, %.lr.ph90, %bb.k
  %.2.lcssa = phi ptr [ %.157, %bb.k ], [ %i.bd, %.lr.ph90 ], [ %i.ay, %vector.body ] ; 5 uses
  %.054.lcssa = phi ptr [ %0, %bb.k ], [ %i.be, %.lr.ph90 ], [ %i.ax, %vector.body ] ; 3 uses
  %.not69 = icmp ult ptr %.2.lcssa, %2
  br i1 %.not69, label %bb.l, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

.lr.ph90:                                         ; preds = %.lr.ph90.preheader178, %.lr.ph90
  %.05488 = phi ptr [ %i.be, %.lr.ph90 ], [ %0, %.lr.ph90.preheader178 ] ; 3 uses
  %.287 = phi ptr [ %i.bd, %.lr.ph90 ], [ %.157, %.lr.ph90.preheader178 ] ; 3 uses
  %.val4.i77 = load i64, ptr %.05488, align 1
  store i64 %.val4.i77, ptr %.287, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.05488, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.287, i64 8
  %.val.i78 = load i64, ptr %i.bb, align 1
  store i64 %.val.i78, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.287, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05488, i64 16 ; 2 uses
  %i.bf = icmp ult ptr %i.bd, %i.ao
  br i1 %i.bf, label %.lr.ph90, label %._crit_edge91, !llvm.loop !186

bb.l:                                             ; preds = %._crit_edge91
  %i.bg = getelementptr inbounds i8, ptr %3, i64 -8
  %.not70 = icmp ugt ptr %.2.lcssa, %i.bg
  br i1 %.not70, label %bb.n, label %bb.m, !prof !26

bb.m:                                             ; preds = %bb.l
  %.054.val = load i64, ptr %.054.lcssa, align 1
  store i64 %.054.val, ptr %.2.lcssa, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %i.bi, %bb.m ], [ %.2.lcssa, %bb.l ] ; 7 uses
  %.155 = phi ptr [ %i.bh, %bb.m ], [ %.054.lcssa, %bb.l ] ; 6 uses
  %i.bj = icmp ult ptr %.3, %2
  br i1 %i.bj, label %iter.check, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check:                                       ; preds = %bb.n
  %.155116 = ptrtoaddr ptr %.155 to i64
  %.3115 = ptrtoaddr ptr %.3 to i64               ; 2 uses
  %i.bk = sub i64 %i.a, %.3115                    ; 7 uses
  %min.iters.check118 = icmp ult i64 %i.bk, 4
  %i.bl = sub i64 %.155116, %.3115
  %diff.check = icmp ugt i64 %i.bl, -16
  %or.cond176 = select i1 %min.iters.check118, i1 true, i1 %diff.check
  br i1 %or.cond176, label %.lr.ph.i79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i64 %i.bk, 16
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph120

vector.ph120:                                     ; preds = %vector.main.loop.iter.check
  %i.bm = and i64 %i.bk, 12
  %n.vec121 = and i64 %i.bk, -16                  ; 5 uses
  %i.bn = getelementptr i8, ptr %.155, i64 %n.vec121
  %i.bo = getelementptr i8, ptr %.3, i64 %n.vec121
  br label %vector.body122

vector.body122:                                   ; preds = %vector.ph120, %vector.body122
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body122 ] ; 3 uses
  %next.gep124 = getelementptr i8, ptr %.155, i64 %index123
  %next.gep125 = getelementptr i8, ptr %.3, i64 %index123
  %wide.load126 = load <16 x i8>, ptr %next.gep124, align 1, !tbaa !16
  store <16 x i8> %wide.load126, ptr %next.gep125, align 1, !tbaa !16
  %index.next127 = add nuw i64 %index123, 16      ; 2 uses
  %i.bp = icmp eq i64 %index.next127, %n.vec121
  br i1 %i.bp, label %middle.block128, label %vector.body122, !llvm.loop !187

middle.block128:                                  ; preds = %vector.body122
  %cmp.n129 = icmp eq i64 %i.bk, %n.vec121
  br i1 %cmp.n129, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block128
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i79.preheader, label %vec.epilog.ph, !prof !121

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec121, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec132 = and i64 %i.bk, -4                   ; 4 uses
  %i.bq = getelementptr i8, ptr %.155, i64 %n.vec132
  %i.br = getelementptr i8, ptr %.3, i64 %n.vec132
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index133 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 3 uses
  %next.gep134 = getelementptr i8, ptr %.155, i64 %index133
  %next.gep135 = getelementptr i8, ptr %.3, i64 %index133
  %wide.load136 = load <4 x i8>, ptr %next.gep134, align 1, !tbaa !16
  store <4 x i8> %wide.load136, ptr %next.gep135, align 1, !tbaa !16
  %index.next137 = add nuw i64 %index133, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !188

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n138 = icmp eq i64 %i.bk, %n.vec132
  br i1 %cmp.n138, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i80.ph = phi ptr [ %.155, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  %.057.i81.ph = phi ptr [ %.3, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %.lr.ph.i79
  %.08.i80 = phi ptr [ %i.bt, %.lr.ph.i79 ], [ %.08.i80.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %.057.i81 = phi ptr [ %i.bv, %.lr.ph.i79 ], [ %.057.i81.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i80, i64 1
  %i.bu = load i8, ptr %.08.i80, align 1, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %.057.i81, i64 1 ; 2 uses
  store i8 %i.bu, ptr %.057.i81, align 1, !tbaa !16
  %exitcond.not.i82 = icmp eq ptr %i.bv, %2
  br i1 %exitcond.not.i82, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79, !llvm.loop !189

_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit: ; preds = %.lr.ph.i79, %.lr.ph.i, %middle.block128, %vec.epilog.middle.block, %middle.block155, %vec.epilog.middle.block172, %bb.n, %bb.c, %bb.j, %bb.i, %._crit_edge91, %._crit_edge
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 4)
  %i.i = sub i64 0, %.sroa.speculated.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  %.not = icmp ult ptr %i.c, %i.j
  br i1 %.not, label %bb.d, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.n, label %bb.c, label %.thread192, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 4)
  %i.t = sub i64 0, %.sroa.speculated.i124
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.u, ptr %i.k, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.d
  %.0144 = phi i64 [ %i.m, %bb.d ], [ %.0144.be, %.loopexit.backedge ]
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %.loopexit.backedge ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.x = add i64 %.0144, -1
  %i.y = call { ptr, i64 } @_ZN6snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %.1, ptr noundef %i.w, i64 noundef %i.x, i64 noundef 1, i64 noundef 9223372036854775744) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = add i64 %i.aa, 1                        ; 9 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !114 ; 2 uses
  %.not116 = icmp ult ptr %i.z, %i.ac
  br i1 %.not116, label %bb.g, label %bb.e, !prof !26

bb.e:                                             ; preds = %.loopexit
  store ptr %i.z, ptr %i.b, align 8, !tbaa !43
end_hunk_0
