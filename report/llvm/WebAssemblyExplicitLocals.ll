Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WebAssemblyExplicitLocals?download=true
inline.NumInlined: 920
inline.NumDeleted: 491
begin_hunk_0_@_ZNSt6vectorIN4llvm3MVTESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.br = shl i64 %index123, 1
  %next.gep124 = getelementptr i8, ptr %i.d, i64 %i.br
  store <4 x i16> %broadcast.splat122, ptr %next.gep124, align 2, !tbaa !135
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next125, %n.vec120
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !543

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %i.bg, %n.vec120
  br i1 %cmp.n126, label %_ZSt24__uninitialized_fill_n_aIPN4llvm3MVTEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.068.i.i.i.i.ph = phi i64 [ %i.bg, %iter.check ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  store i16 %i.i, ptr %.09.i.i.i.i, align 2, !tbaa !135
  %i.bt = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN4llvm3MVTEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !544

_ZSt24__uninitialized_fill_n_aIPN4llvm3MVTEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %.0.lcssa.i.i.i.i = phi ptr [ %i.d, %bb.h ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %i.bu, %.lr.ph.i.i.i.i ] ; 8 uses
  %.not7.i.i.i.i.i50 = icmp eq ptr %1, %i.d
  br i1 %.not7.i.i.i.i.i50, label %_ZSt22__uninitialized_move_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit56.thread, label %iter.check145

iter.check145:                                    ; preds = %_ZSt24__uninitialized_fill_n_aIPN4llvm3MVTEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %.0.lcssa.i.i.i.i129 = ptrtoaddr ptr %.0.lcssa.i.i.i.i to i64
  %i.bv = add i64 %i.f, -2
  %i.bw = sub i64 %i.bv, %i.j                     ; 3 uses
  %i.bx = lshr i64 %i.bw, 1
  %i.by = add nuw i64 %i.bx, 1                    ; 5 uses
  %min.iters.check130 = icmp ult i64 %i.bw, 6
  %i.bz = sub i64 %i.j, %.0.lcssa.i.i.i.i129
  %diff.check = icmp ugt i64 %i.bz, -32
  %or.cond = select i1 %min.iters.check130, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i51.preheader, label %vector.main.loop.iter.check131

vector.main.loop.iter.check131:                   ; preds = %iter.check145
  %min.iters.check132 = icmp ult i64 %i.bw, 30
  br i1 %min.iters.check132, label %vec.epilog.ph149, label %vector.ph133

vector.ph133:                                     ; preds = %vector.main.loop.iter.check131
  %i.ca = and i64 %i.by, 12
  %n.vec134 = and i64 %i.by, -16                  ; 4 uses
  %i.cb = shl i64 %n.vec134, 1                    ; 2 uses
  %i.cc = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.cb
  %i.cd = getelementptr i8, ptr %1, i64 %i.cb
  br label %vector.body135

vector.body135:                                   ; preds = %vector.ph133, %vector.body135
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next140, %vector.body135 ] ; 2 uses
  %i.ce = shl i64 %index136, 1                    ; 2 uses
  %next.gep137 = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.ce ; 2 uses
  %next.gep138 = getelementptr i8, ptr %1, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep138, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep138, align 2, !tbaa !135
  %wide.load139 = load <8 x i16>, ptr %i.cf, align 2, !tbaa !135
  %i.cg = getelementptr i8, ptr %next.gep137, i64 16
  store <8 x i16> %wide.load, ptr %next.gep137, align 2, !tbaa !135
  store <8 x i16> %wide.load139, ptr %i.cg, align 2, !tbaa !135
  %index.next140 = add nuw i64 %index136, 16      ; 2 uses
  %i.ch = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.ch, label %middle.block141, label %vector.body135, !llvm.loop !545

middle.block141:                                  ; preds = %vector.body135
  %cmp.n142 = icmp eq i64 %i.by, %n.vec134
  br i1 %cmp.n142, label %iter.check175, label %vec.epilog.iter.check147

vec.epilog.iter.check147:                         ; preds = %middle.block141
  %min.epilog.iters.check148 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check148, label %.lr.ph.i.i.i.i.i51.preheader, label %vec.epilog.ph149, !prof !563

vec.epilog.ph149:                                 ; preds = %vector.main.loop.iter.check131, %vec.epilog.iter.check147
  %vec.epilog.resume.val143 = phi i64 [ %n.vec134, %vec.epilog.iter.check147 ], [ 0, %vector.main.loop.iter.check131 ]
  %n.vec150 = and i64 %i.by, -4                   ; 3 uses
  %i.ci = shl i64 %n.vec150, 1                    ; 2 uses
  %i.cj = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.ci
  %i.ck = getelementptr i8, ptr %1, i64 %i.ci
  br label %vec.epilog.vector.body151

vec.epilog.vector.body151:                        ; preds = %vec.epilog.vector.body151, %vec.epilog.ph149
  %index152 = phi i64 [ %vec.epilog.resume.val143, %vec.epilog.ph149 ], [ %index.next156, %vec.epilog.vector.body151 ] ; 2 uses
  %i.cl = shl i64 %index152, 1                    ; 2 uses
  %next.gep153 = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.cl
  %next.gep154 = getelementptr i8, ptr %1, i64 %i.cl
  %wide.load155 = load <4 x i16>, ptr %next.gep154, align 2, !tbaa !135
  store <4 x i16> %wide.load155, ptr %next.gep153, align 2, !tbaa !135
  %index.next156 = add nuw i64 %index152, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next156, %n.vec150
  br i1 %i.cm, label %vec.epilog.middle.block157, label %vec.epilog.vector.body151, !llvm.loop !546

vec.epilog.middle.block157:                       ; preds = %vec.epilog.vector.body151
  %cmp.n158 = icmp eq i64 %i.by, %n.vec150
  br i1 %cmp.n158, label %iter.check175, label %.lr.ph.i.i.i.i.i51.preheader

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %iter.check145, %vec.epilog.iter.check147, %vec.epilog.middle.block157
  %.09.i.i.i.i.i52.ph = phi ptr [ %.0.lcssa.i.i.i.i, %iter.check145 ], [ %i.cc, %vec.epilog.iter.check147 ], [ %i.cj, %vec.epilog.middle.block157 ]
  %.sroa.04.08.i.i.i.i.i53.ph = phi ptr [ %1, %iter.check145 ], [ %i.cd, %vec.epilog.iter.check147 ], [ %i.ck, %vec.epilog.middle.block157 ]
  br label %.lr.ph.i.i.i.i.i51

_ZSt22__uninitialized_move_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit56.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN4llvm3MVTEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.k
  store ptr %i.cn, ptr %i.c, align 8, !tbaa !69
  br label %_ZSt4fillIPN4llvm3MVTES1_EvT_S3_RKT0_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader, %.lr.ph.i.i.i.i.i51
  %.09.i.i.i.i.i52 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i51 ], [ %.09.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i51.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i53 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i51 ], [ %.sroa.04.08.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i51.preheader ] ; 2 uses
  %i.co = load i16, ptr %.sroa.04.08.i.i.i.i.i53, align 2, !tbaa !135
  store i16 %i.co, ptr %.09.i.i.i.i.i52, align 2, !tbaa !135
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i53, i64 2 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i52, i64 2
  %.not.i.i.i.i.i54 = icmp eq ptr %i.cp, %i.d
  br i1 %.not.i.i.i.i.i54, label %iter.check175, label %.lr.ph.i.i.i.i.i51, !llvm.loop !547

iter.check175:                                    ; preds = %.lr.ph.i.i.i.i.i51, %vec.epilog.middle.block157, %middle.block141
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.k
  store ptr %i.cr, ptr %i.c, align 8, !tbaa !69
  %i.cs = add i64 %i.f, -2
  %i.ct = sub i64 %i.cs, %i.j                     ; 3 uses
  %i.cu = lshr i64 %i.ct, 1
  %i.cv = add nuw i64 %i.cu, 1                    ; 5 uses
  %min.iters.check161 = icmp ult i64 %i.ct, 6
  br i1 %min.iters.check161, label %.lr.ph.i.i.i60.preheader, label %vector.main.loop.iter.check162

vector.main.loop.iter.check162:                   ; preds = %iter.check175
  %min.iters.check163 = icmp ult i64 %i.ct, 30
  br i1 %min.iters.check163, label %vec.epilog.ph179, label %vector.ph164

vector.ph164:                                     ; preds = %vector.main.loop.iter.check162
  %i.cw = and i64 %i.cv, 12
  %n.vec165 = and i64 %i.cv, -16                  ; 4 uses
  %i.cx = shl i64 %n.vec165, 1
  %i.cy = getelementptr i8, ptr %1, i64 %i.cx
  %broadcast.splatinsert166 = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat167 = shufflevector <8 x i16> %broadcast.splatinsert166, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.ph164, %vector.body168
  %index169 = phi i64 [ 0, %vector.ph164 ], [ %index.next171, %vector.body168 ] ; 2 uses
  %i.cz = shl i64 %index169, 1
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep170, i64 16
  store <8 x i16> %broadcast.splat167, ptr %next.gep170, align 2, !tbaa !135
  store <8 x i16> %broadcast.splat167, ptr %i.da, align 2, !tbaa !135
  %index.next171 = add nuw i64 %index169, 16      ; 2 uses
  %i.db = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.db, label %middle.block172, label %vector.body168, !llvm.loop !548

middle.block172:                                  ; preds = %vector.body168
  %cmp.n173 = icmp eq i64 %i.cv, %n.vec165
  br i1 %cmp.n173, label %_ZSt4fillIPN4llvm3MVTES1_EvT_S3_RKT0_.exit, label %vec.epilog.iter.check177

vec.epilog.iter.check177:                         ; preds = %middle.block172
  %min.epilog.iters.check178 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check178, label %.lr.ph.i.i.i60.preheader, label %vec.epilog.ph179, !prof !563

vec.epilog.ph179:                                 ; preds = %vector.main.loop.iter.check162, %vec.epilog.iter.check177
  %vec.epilog.resume.val174 = phi i64 [ %n.vec165, %vec.epilog.iter.check177 ], [ 0, %vector.main.loop.iter.check162 ]
  %n.vec180 = and i64 %i.cv, -4                   ; 3 uses
  %i.dc = shl i64 %n.vec180, 1
  %i.dd = getelementptr i8, ptr %1, i64 %i.dc
  %broadcast.splatinsert181 = insertelement <4 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat182 = shufflevector <4 x i16> %broadcast.splatinsert181, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body183

vec.epilog.vector.body183:                        ; preds = %vec.epilog.vector.body183, %vec.epilog.ph179
  %index184 = phi i64 [ %vec.epilog.resume.val174, %vec.epilog.ph179 ], [ %index.next186, %vec.epilog.vector.body183 ] ; 2 uses
  %i.de = shl i64 %index184, 1
  %next.gep185 = getelementptr i8, ptr %1, i64 %i.de
  store <4 x i16> %broadcast.splat182, ptr %next.gep185, align 2, !tbaa !135
  %index.next186 = add nuw i64 %index184, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next186, %n.vec180
  br i1 %i.df, label %vec.epilog.middle.block187, label %vec.epilog.vector.body183, !llvm.loop !549

vec.epilog.middle.block187:                       ; preds = %vec.epilog.vector.body183
  %cmp.n188 = icmp eq i64 %i.cv, %n.vec180
  br i1 %cmp.n188, label %_ZSt4fillIPN4llvm3MVTES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i60.preheader

.lr.ph.i.i.i60.preheader:                         ; preds = %iter.check175, %vec.epilog.iter.check177, %vec.epilog.middle.block187
  %.06.i.i.i61.ph = phi ptr [ %1, %iter.check175 ], [ %i.cy, %vec.epilog.iter.check177 ], [ %i.dd, %vec.epilog.middle.block187 ]
  br label %.lr.ph.i.i.i60

.lr.ph.i.i.i60:                                   ; preds = %.lr.ph.i.i.i60.preheader, %.lr.ph.i.i.i60
  %.06.i.i.i61 = phi ptr [ %i.dg, %.lr.ph.i.i.i60 ], [ %.06.i.i.i61.ph, %.lr.ph.i.i.i60.preheader ] ; 2 uses
  store i16 %i.i, ptr %.06.i.i.i61, align 2, !tbaa !135
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i.i.i61, i64 2 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.dg, %i.d
  br i1 %.not.i.i.i62, label %_ZSt4fillIPN4llvm3MVTES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i60, !llvm.loop !550

bb.i:                                             ; preds = %bb.b
  %i.dh = load ptr, ptr %0, align 8, !tbaa !70    ; 9 uses
  %i.di = ptrtoint ptr %i.dh to i64               ; 5 uses
  %i.dj = sub i64 %i.f, %i.di
  %i.dk = ashr exact i64 %i.dj, 1                 ; 4 uses
  %i.dl = sub nsw i64 4611686018427387903, %i.dk
  %i.dm = icmp ult i64 %i.dl, %2
  br i1 %i.dm, label %bb.j, label %_ZNKSt6vectorIN4llvm3MVTESaIS1_EE12_M_check_lenEmPKc.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
  unreachable

_ZNKSt6vectorIN4llvm3MVTESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.i
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 %2)
  %i.dn = add i64 %.sroa.speculated.i, %i.dk      ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dk
  %i.dp = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 4611686018427387903)
  %i.dq = select i1 %i.do, i64 4611686018427387903, i64 %i.dp ; 3 uses
  %i.dr = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ds = sub i64 %i.dr, %i.di
  %.not.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i, label %iter.check266, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIN4llvm3MVTESaIS1_EE12_M_check_lenEmPKc.exit
  %i.dt = shl nuw nsw i64 %i.dq, 1
  %i.du = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #17
  br label %iter.check266

iter.check266:                                    ; preds = %bb.k, %_ZNKSt6vectorIN4llvm3MVTESaIS1_EE12_M_check_lenEmPKc.exit
  %i.dv = phi ptr [ %i.du, %bb.k ], [ null, %_ZNKSt6vectorIN4llvm3MVTESaIS1_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  %4 = ptrtoaddr ptr %i.dv to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ds ; 5 uses
  %.pre.i.i.i.i66 = load i16, ptr %3, align 2, !tbaa !135 ; 3 uses
  %min.iters.check251 = icmp ult i64 %2, 4
  br i1 %min.iters.check251, label %.lr.ph.i.i.i.i67.preheader, label %vector.main.loop.iter.check252

vector.main.loop.iter.check252:                   ; preds = %iter.check266
  %min.iters.check253 = icmp ult i64 %2, 16
  br i1 %min.iters.check253, label %vec.epilog.ph270, label %vector.ph254

vector.ph254:                                     ; preds = %vector.main.loop.iter.check252
  %i.dx = and i64 %2, 12
  %n.vec255 = and i64 %2, -16                     ; 4 uses
  %i.dy = shl i64 %n.vec255, 1
  %i.dz = getelementptr i8, ptr %i.dw, i64 %i.dy
  %i.ea = and i64 %2, 15
  %broadcast.splatinsert256 = insertelement <8 x i16> poison, i16 %.pre.i.i.i.i66, i64 0
  %broadcast.splat257 = shufflevector <8 x i16> %broadcast.splatinsert256, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.ph254, %vector.body258
  %index259 = phi i64 [ 0, %vector.ph254 ], [ %index.next261, %vector.body258 ] ; 2 uses
  %i.eb = shl i64 %index259, 1
  %next.gep260 = getelementptr i8, ptr %i.dw, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep260, i64 16
  store <8 x i16> %broadcast.splat257, ptr %next.gep260, align 2, !tbaa !135
  store <8 x i16> %broadcast.splat257, ptr %i.ec, align 2, !tbaa !135
  %index.next261 = add nuw i64 %index259, 16      ; 2 uses
  %i.ed = icmp eq i64 %index.next261, %n.vec255
  br i1 %i.ed, label %middle.block262, label %vector.body258, !llvm.loop !551

middle.block262:                                  ; preds = %vector.body258
  %cmp.n263 = icmp eq i64 %2, %n.vec255
  br i1 %cmp.n263, label %_ZSt24__uninitialized_fill_n_aIPN4llvm3MVTEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit72, label %vec.epilog.iter.check268

vec.epilog.iter.check268:                         ; preds = %middle.block262
  %min.epilog.iters.check269 = icmp eq i64 %i.dx, 0
  br i1 %min.epilog.iters.check269, label %.lr.ph.i.i.i.i67.preheader, label %vec.epilog.ph270, !prof !563

vec.epilog.ph270:                                 ; preds = %vector.main.loop.iter.check252, %vec.epilog.iter.check268
  %vec.epilog.resume.val264 = phi i64 [ %n.vec255, %vec.epilog.iter.check268 ], [ 0, %vector.main.loop.iter.check252 ]
  %n.vec271 = and i64 %2, -4                      ; 3 uses
  %i.ee = shl i64 %n.vec271, 1
  %i.ef = getelementptr i8, ptr %i.dw, i64 %i.ee
  %i.eg = and i64 %2, 3
  %broadcast.splatinsert272 = insertelement <4 x i16> poison, i16 %.pre.i.i.i.i66, i64 0
  %broadcast.splat273 = shufflevector <4 x i16> %broadcast.splatinsert272, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body274

vec.epilog.vector.body274:                        ; preds = %vec.epilog.vector.body274, %vec.epilog.ph270
  %index275 = phi i64 [ %vec.epilog.resume.val264, %vec.epilog.ph270 ], [ %index.next277, %vec.epilog.vector.body274 ] ; 2 uses
  %i.eh = shl i64 %index275, 1
  %next.gep276 = getelementptr i8, ptr %i.dw, i64 %i.eh
  store <4 x i16> %broadcast.splat273, ptr %next.gep276, align 2, !tbaa !135
  %index.next277 = add nuw i64 %index275, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next277, %n.vec271
  br i1 %i.ei, label %vec.epilog.middle.block278, label %vec.epilog.vector.body274, !llvm.loop !552

vec.epilog.middle.block278:                       ; preds = %vec.epilog.vector.body274
  %cmp.n279 = icmp eq i64 %2, %n.vec271
  br i1 %cmp.n279, label %_ZSt24__uninitialized_fill_n_aIPN4llvm3MVTEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit72, label %.lr.ph.i.i.i.i67.preheader

.lr.ph.i.i.i.i67.preheader:                       ; preds = %iter.check266, %vec.epilog.iter.check268, %vec.epilog.middle.block278
  %.09.i.i.i.i68.ph = phi ptr [ %i.dw, %iter.check266 ], [ %i.dz, %vec.epilog.iter.check268 ], [ %i.ef, %vec.epilog.middle.block278 ]
  %.068.i.i.i.i69.ph = phi i64 [ %2, %iter.check266 ], [ %i.ea, %vec.epilog.iter.check268 ], [ %i.eg, %vec.epilog.middle.block278 ]
  br label %.lr.ph.i.i.i.i67

.lr.ph.i.i.i.i67:                                 ; preds = %.lr.ph.i.i.i.i67.preheader, %.lr.ph.i.i.i.i67
  %.09.i.i.i.i68 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i67 ], [ %.09.i.i.i.i68.ph, %.lr.ph.i.i.i.i67.preheader ] ; 2 uses
  %.068.i.i.i.i69 = phi i64 [ %i.ej, %.lr.ph.i.i.i.i67 ], [ %.068.i.i.i.i69.ph, %.lr.ph.i.i.i.i67.preheader ]
  store i16 %.pre.i.i.i.i66, ptr %.09.i.i.i.i68, align 2, !tbaa !135
  %i.ej = add i64 %.068.i.i.i.i69, -1             ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i68, i64 2
  %.not.i.i.i.i70 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i70, label %_ZSt24__uninitialized_fill_n_aIPN4llvm3MVTEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit72, label %.lr.ph.i.i.i.i67, !llvm.loop !553

_ZSt24__uninitialized_fill_n_aIPN4llvm3MVTEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit72: ; preds = %.lr.ph.i.i.i.i67, %vec.epilog.middle.block278, %middle.block262
  %.not7.i.i.i.i.i73 = icmp eq ptr %i.dh, %1
  br i1 %.not7.i.i.i.i.i73, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %iter.check300

iter.check300:                                    ; preds = %_ZSt24__uninitialized_fill_n_aIPN4llvm3MVTEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit72
  %i.el = add i64 %i.dr, -2
  %i.em = sub i64 %i.el, %i.di                    ; 3 uses
  %i.en = lshr i64 %i.em, 1
  %i.eo = add nuw i64 %i.en, 1                    ; 5 uses
  %min.iters.check284.a = icmp ult i64 %i.em, 6
  %5 = sub i64 %i.di, %4
  %diff.check283 = icmp ugt i64 %5, -32
  %or.cond351 = or i1 %min.iters.check284.a, %diff.check283
  br i1 %or.cond351, label %.lr.ph.i.i.i.i.i74.preheader, label %vector.main.loop.iter.check285

vector.main.loop.iter.check285:                   ; preds = %iter.check300
  %min.iters.check286 = icmp ult i64 %i.em, 30
  br i1 %min.iters.check286, label %vec.epilog.ph304, label %vector.ph287

vector.ph287:                                     ; preds = %vector.main.loop.iter.check285
  %i.ep = and i64 %i.eo, 12
  %n.vec288 = and i64 %i.eo, -16                  ; 4 uses
  %i.eq = shl i64 %n.vec288, 1                    ; 2 uses
  %i.er = getelementptr i8, ptr %i.dv, i64 %i.eq  ; 2 uses
  %i.es = getelementptr i8, ptr %i.dh, i64 %i.eq
  br label %vector.body289

vector.body289:                                   ; preds = %vector.ph287, %vector.body289
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next295, %vector.body289 ] ; 2 uses
  %i.et = shl i64 %index290, 1                    ; 2 uses
  %next.gep291 = getelementptr i8, ptr %i.dv, i64 %i.et ; 2 uses
  %next.gep292 = getelementptr i8, ptr %i.dh, i64 %i.et ; 2 uses
  %i.eu = getelementptr i8, ptr %next.gep292, i64 16
  %wide.load293 = load <8 x i16>, ptr %next.gep292, align 2, !tbaa !135
  %wide.load294 = load <8 x i16>, ptr %i.eu, align 2, !tbaa !135
  %i.ev = getelementptr i8, ptr %next.gep291, i64 16
  store <8 x i16> %wide.load293, ptr %next.gep291, align 2, !tbaa !135
  store <8 x i16> %wide.load294, ptr %i.ev, align 2, !tbaa !135
  %index.next295 = add nuw i64 %index290, 16      ; 2 uses
  %i.ew = icmp eq i64 %index.next295, %n.vec288
  br i1 %i.ew, label %middle.block296, label %vector.body289, !llvm.loop !554

middle.block296:                                  ; preds = %vector.body289
  %cmp.n297 = icmp eq i64 %i.eo, %n.vec288
  br i1 %cmp.n297, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %vec.epilog.iter.check302

vec.epilog.iter.check302:                         ; preds = %middle.block296
  %min.epilog.iters.check303 = icmp eq i64 %i.ep, 0
  br i1 %min.epilog.iters.check303, label %.lr.ph.i.i.i.i.i74.preheader, label %vec.epilog.ph304, !prof !563

vec.epilog.ph304:                                 ; preds = %vector.main.loop.iter.check285, %vec.epilog.iter.check302
  %vec.epilog.resume.val298 = phi i64 [ %n.vec288, %vec.epilog.iter.check302 ], [ 0, %vector.main.loop.iter.check285 ]
  %n.vec305 = and i64 %i.eo, -4                   ; 3 uses
  %i.ex = shl i64 %n.vec305, 1                    ; 2 uses
  %i.ey = getelementptr i8, ptr %i.dv, i64 %i.ex  ; 2 uses
  %i.ez = getelementptr i8, ptr %i.dh, i64 %i.ex
  br label %vec.epilog.vector.body306

vec.epilog.vector.body306:                        ; preds = %vec.epilog.vector.body306, %vec.epilog.ph304
  %index307 = phi i64 [ %vec.epilog.resume.val298, %vec.epilog.ph304 ], [ %index.next311, %vec.epilog.vector.body306 ] ; 2 uses
  %i.fa = shl i64 %index307, 1                    ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.dv, i64 %i.fa
  %next.gep309 = getelementptr i8, ptr %i.dh, i64 %i.fa
  %wide.load310 = load <4 x i16>, ptr %next.gep309, align 2, !tbaa !135
  store <4 x i16> %wide.load310, ptr %next.gep308, align 2, !tbaa !135
  %index.next311 = add nuw i64 %index307, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next311, %n.vec305
  br i1 %i.fb, label %vec.epilog.middle.block312, label %vec.epilog.vector.body306, !llvm.loop !555

vec.epilog.middle.block312:                       ; preds = %vec.epilog.vector.body306
  %cmp.n313 = icmp eq i64 %i.eo, %n.vec305
  br i1 %cmp.n313, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i74.preheader

.lr.ph.i.i.i.i.i74.preheader:                     ; preds = %iter.check300, %vec.epilog.iter.check302, %vec.epilog.middle.block312
  %.09.i.i.i.i.i75.ph = phi ptr [ %i.dv, %iter.check300 ], [ %i.er, %vec.epilog.iter.check302 ], [ %i.ey, %vec.epilog.middle.block312 ]
  %.sroa.04.08.i.i.i.i.i76.ph = phi ptr [ %i.dh, %iter.check300 ], [ %i.es, %vec.epilog.iter.check302 ], [ %i.ez, %vec.epilog.middle.block312 ]
  br label %.lr.ph.i.i.i.i.i74

.lr.ph.i.i.i.i.i74:                               ; preds = %.lr.ph.i.i.i.i.i74.preheader, %.lr.ph.i.i.i.i.i74
  %.09.i.i.i.i.i75 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i74 ], [ %.09.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i74.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i76 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i74 ], [ %.sroa.04.08.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i74.preheader ] ; 2 uses
  %i.fc = load i16, ptr %.sroa.04.08.i.i.i.i.i76, align 2, !tbaa !135
  store i16 %i.fc, ptr %.09.i.i.i.i.i75, align 2, !tbaa !135
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i76, i64 2 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i75, i64 2 ; 2 uses
  %.not.i.i.i.i.i77 = icmp eq ptr %i.fd, %1
  br i1 %.not.i.i.i.i.i77, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i74, !llvm.loop !556

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i74, %middle.block296, %vec.epilog.middle.block312, %_ZSt24__uninitialized_fill_n_aIPN4llvm3MVTEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit72
  %.0.lcssa.i.i.i.i.i78 = phi ptr [ %i.dv, %_ZSt24__uninitialized_fill_n_aIPN4llvm3MVTEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit72 ], [ %i.ey, %vec.epilog.middle.block312 ], [ %i.er, %middle.block296 ], [ %i.fe, %.lr.ph.i.i.i.i.i74 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i78317 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i78 to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa.i.i.i.i.i78, i64 %2 ; 7 uses
  %.not7.i.i.i.i.i79 = icmp eq ptr %1, %i.d
  br i1 %.not7.i.i.i.i.i79, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit85, label %iter.check335

iter.check335:                                    ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.fg = add i64 %i.f, -2
  %i.fh = sub i64 %i.fg, %i.dr                    ; 3 uses
  %i.fi = lshr i64 %i.fh, 1
  %i.fj = add nuw i64 %i.fi, 1                    ; 5 uses
  %min.iters.check319.a = icmp ult i64 %i.fh, 6
  br i1 %min.iters.check319.a, label %.lr.ph.i.i.i.i.i80.preheader, label %vector.memcheck316

vector.memcheck316:                               ; preds = %iter.check335
  %i.fk = shl i64 %2, 1
  %i.fl = add i64 %i.fk, %.0.lcssa.i.i.i.i.i78317
  %i.fm = sub i64 %i.dr, %i.fl
  %diff.check318 = icmp ugt i64 %i.fm, -32
  br i1 %diff.check318, label %.lr.ph.i.i.i.i.i80.preheader, label %vector.main.loop.iter.check320

vector.main.loop.iter.check320:                   ; preds = %vector.memcheck316
  %min.iters.check321 = icmp ult i64 %i.fh, 30
  br i1 %min.iters.check321, label %vec.epilog.ph339, label %vector.ph322

vector.ph322:                                     ; preds = %vector.main.loop.iter.check320
  %i.fn = and i64 %i.fj, 12
  %n.vec323 = and i64 %i.fj, -16                  ; 4 uses
  %i.fo = shl i64 %n.vec323, 1                    ; 2 uses
  %i.fp = getelementptr i8, ptr %i.ff, i64 %i.fo  ; 2 uses
  %i.fq = getelementptr i8, ptr %1, i64 %i.fo
  br label %vector.body324

vector.body324:                                   ; preds = %vector.ph322, %vector.body324
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next330, %vector.body324 ] ; 2 uses
  %i.fr = shl i64 %index325, 1                    ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.ff, i64 %i.fr ; 2 uses
  %next.gep327 = getelementptr i8, ptr %1, i64 %i.fr ; 2 uses
  %i.fs = getelementptr i8, ptr %next.gep327, i64 16
  %wide.load328 = load <8 x i16>, ptr %next.gep327, align 2, !tbaa !135
  %wide.load329 = load <8 x i16>, ptr %i.fs, align 2, !tbaa !135
  %i.ft = getelementptr i8, ptr %next.gep326, i64 16
  store <8 x i16> %wide.load328, ptr %next.gep326, align 2, !tbaa !135
  store <8 x i16> %wide.load329, ptr %i.ft, align 2, !tbaa !135
  %index.next330 = add nuw i64 %index325, 16      ; 2 uses
  %i.fu = icmp eq i64 %index.next330, %n.vec323
  br i1 %i.fu, label %middle.block331, label %vector.body324, !llvm.loop !557

middle.block331:                                  ; preds = %vector.body324
  %cmp.n332 = icmp eq i64 %i.fj, %n.vec323
  br i1 %cmp.n332, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit85, label %vec.epilog.iter.check337

vec.epilog.iter.check337:                         ; preds = %middle.block331
  %min.epilog.iters.check338 = icmp eq i64 %i.fn, 0
  br i1 %min.epilog.iters.check338, label %.lr.ph.i.i.i.i.i80.preheader, label %vec.epilog.ph339, !prof !563

vec.epilog.ph339:                                 ; preds = %vector.main.loop.iter.check320, %vec.epilog.iter.check337
  %vec.epilog.resume.val333 = phi i64 [ %n.vec323, %vec.epilog.iter.check337 ], [ 0, %vector.main.loop.iter.check320 ]
  %n.vec340 = and i64 %i.fj, -4                   ; 3 uses
  %i.fv = shl i64 %n.vec340, 1                    ; 2 uses
  %i.fw = getelementptr i8, ptr %i.ff, i64 %i.fv  ; 2 uses
  %i.fx = getelementptr i8, ptr %1, i64 %i.fv
  br label %vec.epilog.vector.body341

vec.epilog.vector.body341:                        ; preds = %vec.epilog.vector.body341, %vec.epilog.ph339
  %index342 = phi i64 [ %vec.epilog.resume.val333, %vec.epilog.ph339 ], [ %index.next346, %vec.epilog.vector.body341 ] ; 2 uses
  %i.fy = shl i64 %index342, 1                    ; 2 uses
  %next.gep343 = getelementptr i8, ptr %i.ff, i64 %i.fy
  %next.gep344 = getelementptr i8, ptr %1, i64 %i.fy
  %wide.load345 = load <4 x i16>, ptr %next.gep344, align 2, !tbaa !135
  store <4 x i16> %wide.load345, ptr %next.gep343, align 2, !tbaa !135
  %index.next346 = add nuw i64 %index342, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next346, %n.vec340
  br i1 %i.fz, label %vec.epilog.middle.block347, label %vec.epilog.vector.body341, !llvm.loop !558

vec.epilog.middle.block347:                       ; preds = %vec.epilog.vector.body341
  %cmp.n348 = icmp eq i64 %i.fj, %n.vec340
  br i1 %cmp.n348, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit85, label %.lr.ph.i.i.i.i.i80.preheader

.lr.ph.i.i.i.i.i80.preheader:                     ; preds = %iter.check335, %vector.memcheck316, %vec.epilog.iter.check337, %vec.epilog.middle.block347
  %.09.i.i.i.i.i81.ph = phi ptr [ %i.ff, %iter.check335 ], [ %i.ff, %vector.memcheck316 ], [ %i.fp, %vec.epilog.iter.check337 ], [ %i.fw, %vec.epilog.middle.block347 ]
  %.sroa.04.08.i.i.i.i.i82.ph = phi ptr [ %1, %iter.check335 ], [ %1, %vector.memcheck316 ], [ %i.fq, %vec.epilog.iter.check337 ], [ %i.fx, %vec.epilog.middle.block347 ]
  br label %.lr.ph.i.i.i.i.i80

.lr.ph.i.i.i.i.i80:                               ; preds = %.lr.ph.i.i.i.i.i80.preheader, %.lr.ph.i.i.i.i.i80
  %.09.i.i.i.i.i81 = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i80 ], [ %.09.i.i.i.i.i81.ph, %.lr.ph.i.i.i.i.i80.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i82 = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i80 ], [ %.sroa.04.08.i.i.i.i.i82.ph, %.lr.ph.i.i.i.i.i80.preheader ] ; 2 uses
  %i.ga = load i16, ptr %.sroa.04.08.i.i.i.i.i82, align 2, !tbaa !135
  store i16 %i.ga, ptr %.09.i.i.i.i.i81, align 2, !tbaa !135
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i82, i64 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i81, i64 2 ; 2 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.gb, %i.d
  br i1 %.not.i.i.i.i.i83, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit85, label %.lr.ph.i.i.i.i.i80, !llvm.loop !559

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit85: ; preds = %.lr.ph.i.i.i.i.i80, %middle.block331, %vec.epilog.middle.block347, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i84 = phi ptr [ %i.ff, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.fw, %vec.epilog.middle.block347 ], [ %i.fp, %middle.block331 ], [ %i.gc, %.lr.ph.i.i.i.i.i80 ]
  %.not.i86 = icmp eq ptr %i.dh, null
  br i1 %.not.i86, label %_ZNSt12_Vector_baseIN4llvm3MVTESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit85
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !560
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = sub i64 %i.ge, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.gf) #18
  br label %_ZNSt12_Vector_baseIN4llvm3MVTESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4llvm3MVTESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit85, %bb.l
  store ptr %i.dv, ptr %0, align 8, !tbaa !70
  store ptr %.0.lcssa.i.i.i.i.i84, ptr %i.c, align 8, !tbaa !69
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.dq
  store ptr %i.gg, ptr %i.a, align 8, !tbaa !560
  br label %_ZSt4fillIPN4llvm3MVTES1_EvT_S3_RKT0_.exit

_ZSt4fillIPN4llvm3MVTES1_EvT_S3_RKT0_.exit:       ; preds = %.lr.ph.i.i.i60, %.lr.ph.i.i.i, %middle.block172, %vec.epilog.middle.block187, %middle.block233, %vec.epilog.middle.block248, %_ZSt22__uninitialized_move_aIPN4llvm3MVTES2_SaIS1_EET0_T_S5_S4_RT1_.exit56.thread, %_ZNSt12_Vector_baseIN4llvm3MVTESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

declare void @__once_proxy() #3

end_hunk_0
begin_hunk_1_@llvm.umax.i64
!356 = !{!355, !72, i64 0}
!357 = !{!156, !154, !152, !150}
!358 = !{!160, !158}
!359 = !{!"_ZTSSt4pairIjjE", !6, i64 0, !6, i64 4}
!360 = !{!359, !6, i64 4}
!361 = !{!"p1 short", !9, i64 0}
!362 = !{!"short", !5, i64 0}
!363 = !{!"_ZTSN4llvm11MCInstrInfoE", !48, i64 0, !36, i64 8, !12, i64 16, !12, i64 24, !9, i64 32, !6, i64 40, !361, i64 48, !362, i64 56}
!364 = !{!363, !48, i64 0}
!365 = !{!162}
!366 = !{!170, !168, !166, !164}
!367 = !{!166, !164}
!368 = !{!174, !172, !166, !164}
!369 = !{!176}
!370 = !{!178}
!371 = !{!180}
!372 = !{!340, !232, i64 0}
!373 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!374 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !373, i64 0, !13, i64 8, !5, i64 16}
!375 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !5, i64 0}
!376 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !5, i64 0}
!377 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !5, i64 0}
!378 = !{!"_ZTSN4llvm6Triple6OSTypeE", !5, i64 0}
!379 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !5, i64 0}
!380 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !5, i64 0}
!381 = !{!"_ZTSN4llvm6TripleE", !374, i64 0, !375, i64 32, !376, i64 36, !377, i64 40, !378, i64 44, !379, i64 48, !380, i64 52}
!382 = !{!"_ZTSN4llvm11StringTableE", !15, i64 0}
!383 = !{!"p1 _ZTSN4llvm18SubtargetFeatureKVE", !9, i64 0}
!384 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetFeatureKVEEE", !383, i64 0, !13, i64 8}
!385 = !{!"p1 _ZTSN4llvm18SubtargetSubTypeKVE", !9, i64 0}
!386 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetSubTypeKVEEE", !385, i64 0, !13, i64 8}
!387 = !{!"p1 _ZTSN4llvm12MCSchedModelE", !9, i64 0}
!388 = !{!"p1 _ZTSN4llvm19MCWriteProcResEntryE", !9, i64 0}
!389 = !{!"p1 _ZTSN4llvm19MCWriteLatencyEntryE", !9, i64 0}
!390 = !{!"p1 _ZTSN4llvm18MCReadAdvanceEntryE", !9, i64 0}
!391 = !{!"p1 _ZTSN4llvm10InstrStageE", !9, i64 0}
!392 = !{!"_ZTSSt5arrayImLm6EE", !5, i64 0}
!393 = !{!"_ZTSN4llvm13FeatureBitsetE", !392, i64 0}
!394 = !{!"_ZTSN4llvm15MCSubtargetInfoE", !381, i64 8, !374, i64 64, !374, i64 96, !382, i64 128, !384, i64 144, !386, i64 160, !387, i64 176, !388, i64 184, !389, i64 192, !390, i64 200, !387, i64 208, !391, i64 216, !36, i64 224, !36, i64 232, !393, i64 240, !374, i64 288}
!395 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjbEE", !9, i64 0}
!396 = !{!"_ZTSN4llvm8DenseMapIjbNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjbEEEE", !395, i64 0, !36, i64 8, !6, i64 16, !6, i64 20}
!397 = !{!"_ZTSN4llvm19TargetSubtargetInfoE", !394, i64 0, !396, i64 320}
!398 = !{!"_ZTSN4llvm27WebAssemblyGenSubtargetInfoE", !397, i64 0}
!399 = !{!"_ZTSN4llvm20WebAssemblySubtarget8SIMDEnumE", !5, i64 0}
!400 = !{!"_ZTSN4llvm19TargetFrameLowering14StackDirectionE", !5, i64 0}
!401 = !{!"_ZTSN4llvm19TargetFrameLoweringE", !400, i64 8, !35, i64 12, !35, i64 13, !6, i64 16, !16, i64 20}
!402 = !{!"_ZTSN4llvm24WebAssemblyFrameLoweringE", !401, i64 0}
!403 = !{!"p1 _ZTSN4llvm18TargetRegisterInfoE", !9, i64 0}
!404 = !{!"p1 _ZTSN4llvm12MIRFormatterE", !9, i64 0}
!405 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12MIRFormatterELb0EE", !404, i64 0}
!406 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12MIRFormatterESt14default_deleteIS1_EEE", !405, i64 0}
!407 = !{!"_ZTSSt5tupleIJPN4llvm12MIRFormatterESt14default_deleteIS1_EEE", !406, i64 0}
!408 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12MIRFormatterESt14default_deleteIS1_EE", !407, i64 0}
!409 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12MIRFormatterESt14default_deleteIS1_ELb1ELb1EE", !408, i64 0}
!410 = !{!"_ZTSSt10unique_ptrIN4llvm12MIRFormatterESt14default_deleteIS1_EE", !409, i64 0}
!411 = !{!"_ZTSN4llvm15TargetInstrInfoE", !363, i64 8, !403, i64 72, !361, i64 80, !410, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108}
!412 = !{!"_ZTSN4llvm23WebAssemblyGenInstrInfoE", !411, i64 0}
!413 = !{!"p1 _ZTSN4llvm14MCRegisterDescE", !9, i64 0}
!414 = !{!"_ZTSN4llvm10MCRegisterE", !6, i64 0}
!415 = !{!"p1 _ZTSN4llvm15MCRegisterClassE", !9, i64 0}
!416 = !{!"p1 _ZTSN4llvm11LaneBitmaskE", !9, i64 0}
!417 = !{!"p1 _ZTSN4llvm14MCRegisterInfo16DwarfLLVMRegPairE", !9, i64 0}
!418 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10MCRegisterEiEE", !9, i64 0}
!419 = !{!"_ZTSN4llvm8DenseMapINS_10MCRegisterEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEEEE", !418, i64 0, !36, i64 8, !6, i64 16, !6, i64 20}
!420 = !{!"p1 _ZTSSt6vectorItSaItEE", !9, i64 0}
!421 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE17_Vector_impl_dataE", !420, i64 0, !420, i64 8, !420, i64 16}
!422 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE12_Vector_implE", !421, i64 0}
!423 = !{!"_ZTSSt12_Vector_baseISt6vectorItSaItEESaIS2_EE", !422, i64 0}
!424 = !{!"_ZTSSt6vectorIS_ItSaItEESaIS1_EE", !423, i64 0}
!425 = !{!"_ZTSN4llvm14MCRegisterInfoE", !413, i64 8, !6, i64 16, !414, i64 20, !414, i64 24, !415, i64 32, !6, i64 40, !6, i64 44, !361, i64 48, !361, i64 56, !416, i64 64, !12, i64 72, !12, i64 80, !361, i64 88, !6, i64 96, !361, i64 104, !36, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !417, i64 136, !417, i64 144, !417, i64 152, !417, i64 160, !419, i64 168, !419, i64 192, !424, i64 216}
!426 = !{!"p1 _ZTSN4llvm22TargetRegisterInfoDescE", !9, i64 0}
!427 = !{!"_ZTSN4llvm8ArrayRefIjEE", !36, i64 0, !13, i64 8}
!428 = !{!"p1 _ZTSN4llvm18TargetRegisterInfo17SubRegCoveredBitsE", !9, i64 0}
!429 = !{!"_ZTSN4llvm11LaneBitmaskE", !13, i64 0}
!430 = !{!"p1 _ZTSN4llvm18TargetRegisterInfo12RegClassInfoE", !9, i64 0}
!431 = !{!"_ZTSN4llvm18TargetRegisterInfoE", !425, i64 0, !426, i64 240, !12, i64 248, !427, i64 256, !428, i64 272, !416, i64 280, !429, i64 288, !430, i64 296, !9, i64 304, !6, i64 312}
!432 = !{!"_ZTSN4llvm26WebAssemblyGenRegisterInfoE", !431, i64 0}
!433 = !{!"p1 _ZTSN4llvm6TripleE", !9, i64 0}
!434 = !{!"_ZTSN4llvm23WebAssemblyRegisterInfoE", !432, i64 0, !433, i64 320}
!435 = !{!"_ZTSN4llvm20WebAssemblyInstrInfoE", !412, i64 0, !434, i64 112}
!436 = !{!"_ZTSN4llvm22SelectionDAGTargetInfoE"}
!437 = !{!"p1 _ZTSN4llvm10SDNodeInfoE", !9, i64 0}
!438 = !{!"_ZTSN4llvm25SelectionDAGGenTargetInfoE", !436, i64 0, !437, i64 8}
!439 = !{!"_ZTSN4llvm27WebAssemblySelectionDAGInfoE", !438, i64 0}
!440 = !{!"_ZTSN4llvm18TargetLoweringBase14BooleanContentE", !5, i64 0}
!441 = !{!"_ZTSN4llvm5Sched10PreferenceE", !5, i64 0}
!442 = !{!"_ZTSN4llvm8RegisterE", !6, i64 0}
!443 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionEEE", !9, i64 0}
!444 = !{!"_ZTSN4llvm8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES3_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEE", !443, i64 0, !36, i64 8, !6, i64 16, !6, i64 20}
!445 = !{!"_ZTSN4llvm18TargetLoweringBase19ValueTypeActionImplE", !5, i64 0}
!446 = !{!"_ZTSSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEE"}
!447 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEE", !446, i64 0}
!448 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!449 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!450 = !{!"_ZTSSt18_Rb_tree_node_base", !448, i64 0, !449, i64 8, !449, i64 16, !449, i64 24}
!451 = !{!"_ZTSSt15_Rb_tree_header", !450, i64 0, !13, i64 32}
!452 = !{!"_ZTSNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !447, i64 0, !451, i64 8}
!453 = !{!"_ZTSSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE", !452, i64 0}
!454 = !{!"_ZTSSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE", !453, i64 0}
!455 = !{!"_ZTSSt5arrayImLm47EE", !5, i64 0}
!456 = !{!"_ZTSN4llvm6BitsetILj3008EEE", !455, i64 0}
!457 = !{!"_ZTSN4llvm5RTLIB17LibcallImplBitsetE", !456, i64 0}
!458 = !{!"_ZTSN4llvm5RTLIB19RuntimeLibcallsInfoE", !457, i64 0, !5, i64 376}
!459 = !{!"p1 _ZTSN4llvm5RTLIB19RuntimeLibcallsInfoE", !9, i64 0}
!460 = !{!"_ZTSN4llvm19LibcallLoweringInfoE", !459, i64 0, !5, i64 8}
!461 = !{!"_ZTSN4llvm18TargetLoweringBaseE", !233, i64 8, !16, i64 16, !74, i64 24, !16, i64 48, !440, i64 52, !440, i64 56, !440, i64 60, !441, i64 64, !35, i64 65, !35, i64 66, !35, i64 67, !35, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !16, i64 100, !442, i64 104, !5, i64 112, !5, i64 2224, !5, i64 2752, !5, i64 3280, !5, i64 5392, !5, i64 5656, !5, i64 6184, !5, i64 147952, !5, i64 287344, !5, i64 426736, !5, i64 496432, !5, i64 499072, !444, i64 502240, !445, i64 502264, !5, i64 502528, !454, i64 502600, !458, i64 502648, !460, i64 515056, !6, i64 518392, !6, i64 518396, !6, i64 518400, !6, i64 518404, !6, i64 518408, !6, i64 518412, !6, i64 518416, !6, i64 518420, !6, i64 518424, !6, i64 518428, !16, i64 518432, !16, i64 518433, !16, i64 518434}
!462 = !{!"_ZTSN4llvm14TargetLoweringE", !461, i64 0}
!463 = !{!"p1 _ZTSN4llvm20WebAssemblySubtargetE", !9, i64 0}
!464 = !{!"_ZTSN4llvm25WebAssemblyTargetLoweringE", !462, i64 0, !463, i64 518440}
!465 = !{!"p1 _ZTSN4llvm12CallLoweringE", !9, i64 0}
!466 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12CallLoweringELb0EE", !465, i64 0}
!467 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12CallLoweringESt14default_deleteIS1_EEE", !466, i64 0}
!468 = !{!"_ZTSSt5tupleIJPN4llvm12CallLoweringESt14default_deleteIS1_EEE", !467, i64 0}
!469 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12CallLoweringESt14default_deleteIS1_EE", !468, i64 0}
!470 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12CallLoweringESt14default_deleteIS1_ELb1ELb1EE", !469, i64 0}
!471 = !{!"_ZTSSt10unique_ptrIN4llvm12CallLoweringESt14default_deleteIS1_EE", !470, i64 0}
!472 = !{!"p1 _ZTSN4llvm19InstructionSelectorE", !9, i64 0}
!473 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm19InstructionSelectorELb0EE", !472, i64 0}
!474 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm19InstructionSelectorESt14default_deleteIS1_EEE", !473, i64 0}
!475 = !{!"_ZTSSt5tupleIJPN4llvm19InstructionSelectorESt14default_deleteIS1_EEE", !474, i64 0}
!476 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm19InstructionSelectorESt14default_deleteIS1_EE", !475, i64 0}
!477 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm19InstructionSelectorESt14default_deleteIS1_ELb1ELb1EE", !476, i64 0}
!478 = !{!"_ZTSSt10unique_ptrIN4llvm19InstructionSelectorESt14default_deleteIS1_EE", !477, i64 0}
!479 = !{!"p1 _ZTSN4llvm13LegalizerInfoE", !9, i64 0}
!480 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm13LegalizerInfoELb0EE", !479, i64 0}
!481 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm13LegalizerInfoESt14default_deleteIS1_EEE", !480, i64 0}
!482 = !{!"_ZTSSt5tupleIJPN4llvm13LegalizerInfoESt14default_deleteIS1_EEE", !481, i64 0}
!483 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm13LegalizerInfoESt14default_deleteIS1_EE", !482, i64 0}
!484 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm13LegalizerInfoESt14default_deleteIS1_ELb1ELb1EE", !483, i64 0}
!485 = !{!"_ZTSSt10unique_ptrIN4llvm13LegalizerInfoESt14default_deleteIS1_EE", !484, i64 0}
!486 = !{!"p1 _ZTSN4llvm16RegisterBankInfoE", !9, i64 0}
!487 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm16RegisterBankInfoELb0EE", !486, i64 0}
!488 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm16RegisterBankInfoESt14default_deleteIS1_EEE", !487, i64 0}
!489 = !{!"_ZTSSt5tupleIJPN4llvm16RegisterBankInfoESt14default_deleteIS1_EEE", !488, i64 0}
!490 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm16RegisterBankInfoESt14default_deleteIS1_EE", !489, i64 0}
!491 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm16RegisterBankInfoESt14default_deleteIS1_ELb1ELb1EE", !490, i64 0}
!492 = !{!"_ZTSSt10unique_ptrIN4llvm16RegisterBankInfoESt14default_deleteIS1_EE", !491, i64 0}
!493 = !{!"_ZTSN4llvm20WebAssemblySubtargetE", !398, i64 0, !399, i64 344, !16, i64 348, !16, i64 349, !16, i64 350, !16, i64 351, !16, i64 352, !16, i64 353, !16, i64 354, !16, i64 355, !16, i64 356, !16, i64 357, !16, i64 358, !16, i64 359, !16, i64 360, !16, i64 361, !16, i64 362, !16, i64 363, !16, i64 364, !16, i64 365, !16, i64 366, !16, i64 367, !381, i64 368, !402, i64 424, !435, i64 448, !439, i64 888, !464, i64 904, !471, i64 519352, !478, i64 519360, !485, i64 519368, !492, i64 519376}
!494 = !{!493, !16, i64 358}
!495 = !{i8 0, i8 2}
!496 = !{!182}
!497 = !{!190, !188, !186, !184}
!498 = !{!186, !184}
!499 = !{!194, !192, !186, !184}
!500 = !{!196}
!501 = !{!198}
!502 = !{!206, !204, !202, !200}
!503 = !{!202, !200}
!504 = !{!210, !208, !202, !200}
!505 = !{!214, !212}
!506 = !{!218, !216, !214, !212}
!507 = !{!222, !220}
!508 = !{!226, !224, !222, !220}
!509 = !{!228}
!510 = !{!230}
!511 = !{!152, !150}
!512 = distinct !{!512, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E6getRepEv"}
!513 = distinct !{!513, !512, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E6getRepEv: argument 0"}
!514 = distinct !{!514, !"_ZNK4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE6getRepEv"}
!515 = distinct !{!515, !514, !"_ZNK4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE6getRepEv: argument 0"}
!516 = !{!515, !513}
!517 = distinct !{!517, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E6getRepEv"}
!518 = distinct !{!518, !517, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E6getRepEv: argument 0"}
!519 = distinct !{!519, !"_ZNK4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE6getRepEv"}
!520 = distinct !{!520, !519, !"_ZNK4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE6getRepEv: argument 0"}
!521 = !{!520, !518}
!522 = distinct !{!522, !28}
!523 = distinct !{!523, !28}
!524 = distinct !{!524, !28}
!525 = distinct !{!525, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E6getRepEv"}
!526 = distinct !{!526, !525, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E6getRepEv: argument 0"}
!527 = distinct !{!527, !"_ZNK4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE6getRepEv"}
!528 = distinct !{!528, !527, !"_ZNK4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE6getRepEv: argument 0"}
!529 = !{!528, !526}
!530 = distinct !{!530, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!531 = distinct !{!531, !530, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!532 = !{!531}
!533 = distinct !{!533, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!534 = distinct !{!534, !533, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!535 = !{!534}
!536 = distinct !{!536, !28, !561, !562}
!537 = distinct !{!537, !28, !561, !562}
!538 = distinct !{!538, !28, !562, !561}
!539 = distinct !{!539, !28, !561, !562}
!540 = distinct !{!540, !28, !561, !562}
!541 = distinct !{!541, !28, !562, !561}
!542 = distinct !{!542, !28, !561, !562}
!543 = distinct !{!543, !28, !561, !562}
!544 = distinct !{!544, !28, !562, !561}
!545 = distinct !{!545, !28, !561, !562}
!546 = distinct !{!546, !28, !561, !562}
!547 = distinct !{!547, !28, !561}
!548 = distinct !{!548, !28, !561, !562}
!549 = distinct !{!549, !28, !561, !562}
!550 = distinct !{!550, !28, !562, !561}
!551 = distinct !{!551, !28, !561, !562}
!552 = distinct !{!552, !28, !561, !562}
!553 = distinct !{!553, !28, !562, !561}
!554 = distinct !{!554, !28, !561, !562}
!555 = distinct !{!555, !28, !561, !562}
!556 = distinct !{!556, !28, !561}
!557 = distinct !{!557, !28, !561, !562}
!558 = distinct !{!558, !28, !561, !562}
!559 = distinct !{!559, !28, !561}
!560 = !{!62, !61, i64 16}
!561 = !{!"llvm.loop.isvectorized", i32 1}
!562 = !{!"llvm.loop.unroll.runtime.disable"}
!563 = !{!"branch_weights", i32 4, i32 12}
!564 = distinct !{null, null, null, null}
!565 = !{!"_ZTSZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS1_EEEvRSt9once_flagOT_DpOT0_EUlvE_", !9, i64 0, !11, i64 8}
!566 = !{!565, !9, i64 0}
!567 = !{!565, !11, i64 8}
!568 = !{!"p1 _ZTSN4llvm12PassRegistryE", !9, i64 0}
!569 = !{!"_ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !568, i64 0}
!570 = !{!569, !568, i64 0}
end_hunk_1
