Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3SolveContacts_Mesh:bb.a
  %i.al = getelementptr inbounds [56 x i8], ptr %i.g, i64 %i.ak ; 13 uses
  br i1 %i.aj, label %.cont1255.thread, label %.else1243

.cont1255.thread:                                 ; preds = %bb.b
  %.sroa.gep11831290 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.gep11851296 = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %.sroa.gep11881306 = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  br label %.cont1242

.else1243:                                        ; preds = %bb.b
  %.sroa.0673.0.copyload.else.val = load <2 x float>, ptr %i.al, align 4
  %.sroa.gep1183 = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %.sroa.10678.0.copyload.else.val = load float, ptr %.sroa.gep1183, align 4, !tbaa !103
  %.sroa.gep1185 = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  %.sroa.0661.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1185, align 4
  %.sroa.gep1188 = getelementptr inbounds nuw i8, ptr %i.al, i64 20 ; 2 uses
  %.sroa.16670.0.copyload.else.val = load float, ptr %.sroa.gep1188, align 4, !tbaa !103
  %.sroa.gep1191 = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %.sroa.0659.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1191, align 4
  br label %.cont1242

.cont1242:                                        ; preds = %.cont1255.thread, %.else1243
  %.sroa.16670.0.copyload1327 = phi float [ 0.000000e+00, %.cont1255.thread ], [ %.sroa.16670.0.copyload.else.val, %.else1243 ] ; 2 uses
  %.sroa.gep1185130013071326 = phi ptr [ %.sroa.gep11851296, %.cont1255.thread ], [ %.sroa.gep1185, %.else1243 ]
  %.sroa.10678.0.copyload129913081325 = phi float [ 0.000000e+00, %.cont1255.thread ], [ %.sroa.10678.0.copyload.else.val, %.else1243 ] ; 2 uses
  %.sroa.0673.0.copyload1291129813091324 = phi <2 x float> [ zeroinitializer, %.cont1255.thread ], [ %.sroa.0673.0.copyload.else.val, %.else1243 ] ; 2 uses
  %.sroa.gep11831292129713101323 = phi ptr [ %.sroa.gep11831290, %.cont1255.thread ], [ %.sroa.gep1183, %.else1243 ]
  %.sroa.0661.0.copyload13111322 = phi <2 x float> [ zeroinitializer, %.cont1255.thread ], [ %.sroa.0661.0.copyload.else.val, %.else1243 ] ; 2 uses
  %.sroa.gep118813121321 = phi ptr [ %.sroa.gep11881306, %.cont1255.thread ], [ %.sroa.gep1188, %.else1243 ]
  %.sroa.0659.0.copyload = phi <2 x float> [ zeroinitializer, %.cont1255.thread ], [ %.sroa.0659.0.copyload.else.val, %.else1243 ] ; 3 uses
  %.sroa.gep1194 = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %.sroa.sel1195 = select i1 %i.aj, ptr %.sroa.17, ptr %.sroa.gep1194
  %.sroa.4660.0.copyload = load <2 x float>, ptr %.sroa.sel1195, align 4 ; 4 uses
  %i.am = icmp eq i32 %i.w, -1                    ; 2 uses
  %i.an = sext i32 %i.w to i64
  %i.ao = getelementptr inbounds [56 x i8], ptr %i.g, i64 %i.an ; 13 uses
  br i1 %i.am, label %.cont1240.cont1245.thread, label %.cont1240.else

.cont1240.cont1245.thread:                        ; preds = %.cont1242
  %.sroa.gep12061329 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.gep12091335 = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %.sroa.gep12121345 = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  br label %.cont1240.cont

.cont1240.else:                                   ; preds = %.cont1242
  %.sroa.0645.0.copyload.else.val = load <2 x float>, ptr %i.ao, align 4
  %.sroa.gep1206 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.10.0.copyload.else.val = load float, ptr %.sroa.gep1206, align 4, !tbaa !103
  %.sroa.gep1209 = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  %.sroa.0634.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1209, align 4
  %.sroa.gep1212 = getelementptr inbounds nuw i8, ptr %i.ao, i64 20 ; 2 uses
  %.sroa.16.0.copyload.else.val = load float, ptr %.sroa.gep1212, align 4, !tbaa !103
  %.sroa.gep1215 = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %.sroa.0632.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1215, align 4
  %.sroa.gep1218 = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  %.sroa.gep1221 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.0628.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep1221, align 4
  %.sroa.gep1224 = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.2629.0.copyload.else.val = load float, ptr %.sroa.gep1224, align 4
  br label %.cont1240.cont

.cont1240.cont:                                   ; preds = %.cont1240.cont1245.thread, %.cont1240.else
  %.sroa.0628.0.copyload1412 = phi <2 x float> [ zeroinitializer, %.cont1240.cont1245.thread ], [ %.sroa.0628.0.copyload.else.val, %.cont1240.else ] ; 2 uses
  %.sroa.16.0.copyload136613801411 = phi float [ 0.000000e+00, %.cont1240.cont1245.thread ], [ %.sroa.16.0.copyload.else.val, %.cont1240.else ] ; 2 uses
  %.sroa.gep120913391346136513811410 = phi ptr [ %.sroa.gep12091335, %.cont1240.cont1245.thread ], [ %.sroa.gep1209, %.cont1240.else ]
  %.sroa.10.0.copyload13381347136413821409 = phi float [ 0.000000e+00, %.cont1240.cont1245.thread ], [ %.sroa.10.0.copyload.else.val, %.cont1240.else ] ; 2 uses
  %.sroa.0645.0.copyload133013371348136313831408 = phi <2 x float> [ zeroinitializer, %.cont1240.cont1245.thread ], [ %.sroa.0645.0.copyload.else.val, %.cont1240.else ] ; 2 uses
  %.sroa.gep1206133113361349136213841407 = phi ptr [ %.sroa.gep12061329, %.cont1240.cont1245.thread ], [ %.sroa.gep1206, %.cont1240.else ]
  %.sroa.0634.0.copyload1350136113851406 = phi <2 x float> [ zeroinitializer, %.cont1240.cont1245.thread ], [ %.sroa.0634.0.copyload.else.val, %.cont1240.else ] ; 2 uses
  %.sroa.gep12121351136013861405 = phi ptr [ %.sroa.gep12121345, %.cont1240.cont1245.thread ], [ %.sroa.gep1212, %.cont1240.else ]
  %.sroa.0632.0.copyload13871404 = phi <2 x float> [ zeroinitializer, %.cont1240.cont1245.thread ], [ %.sroa.0632.0.copyload.else.val, %.cont1240.else ] ; 3 uses
  %.sroa.4633.0.copyload13881403.in = phi ptr [ %.sroa.17, %.cont1240.cont1245.thread ], [ %.sroa.gep1218, %.cont1240.else ]
  %.sroa.2629.0.copyload = phi float [ 0.000000e+00, %.cont1240.cont1245.thread ], [ %.sroa.2629.0.copyload.else.val, %.cont1240.else ]
  %.sroa.4633.0.copyload13881403 = load <2 x float>, ptr %.sroa.4633.0.copyload13881403.in, align 4 ; 4 uses
  br i1 %i.aj, label %.cont1240.cont.cont, label %.cont1240.cont.else

.cont1240.cont.else:                              ; preds = %.cont1240.cont
  %.sroa.gep119713891402 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.0626.0.copyload.else.val = load <2 x float>, ptr %.sroa.gep119713891402, align 4
  %.sroa.gep1200 = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.2627.0.copyload.else.val = load float, ptr %.sroa.gep1200, align 4
  br label %.cont1240.cont.cont

.cont1240.cont.cont:                              ; preds = %.cont1240.cont, %.cont1240.cont.else
  %.sroa.0626.0.copyload1415 = phi <2 x float> [ %.sroa.0626.0.copyload.else.val, %.cont1240.cont.else ], [ zeroinitializer, %.cont1240.cont ] ; 2 uses
  %.sroa.2627.0.copyload = phi float [ %.sroa.2627.0.copyload.else.val, %.cont1240.cont.else ], [ 0.000000e+00, %.cont1240.cont ]
  %foldExtExtBinop = fsub <2 x float> %.sroa.0628.0.copyload1412, %.sroa.0626.0.copyload1415
  %i.ap = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.aq = insertelement <2 x float> %.sroa.0628.0.copyload1412, float %.sroa.2629.0.copyload, i64 1
  %i.ar = insertelement <2 x float> %.sroa.0626.0.copyload1415, float %.sroa.2627.0.copyload, i64 1
  %i.as = fsub <2 x float> %i.aq, %i.ar
  %.sroa.4619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 108
  %.sroa.4619.0.copyload = load float, ptr %.sroa.4619.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %.sroa.6621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %.sroa.6621.0.copyload = load float, ptr %.sroa.6621.0..sroa_idx, align 8, !tbaa !103
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.au = load float, ptr %i.at, align 8, !tbaa !113 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.aw = load float, ptr %i.av, align 8, !tbaa !199 ; 2 uses
  %i.ax = icmp sgt i32 %i.s, 0
  br i1 %i.ax, label %.lr.ph1448, label %._crit_edge1449

.lr.ph1448:                                       ; preds = %.cont1240.cont.cont
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %.sroa.0618.0.copyload = load float, ptr %i.ay, align 8, !tbaa !103
  %i.az = fmul float %.sroa.0618.0.copyload, %.sroa.4619.0.copyload
  %i.ba = fcmp ogt float %i.aw, 0.000000e+00
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 116
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 124
  %.sroa.6.0..sroa_idx1113 = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 140
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 148
  %wide.trip.count1472 = zext nneg i32 %i.s to i64
  %i.bc = insertelement <2 x float> poison, float %.sroa.16.0.copyload136613801411, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %.sroa.16670.0.copyload1327, i64 1
  %i.be = insertelement <2 x float> poison, float %.sroa.35.0.copyload, i64 0 ; 2 uses
  %i.bf = insertelement <2 x float> %i.be, float %.sroa.111125.0.copyload, i64 1
  %i.bg = insertelement <2 x float> poison, float %.sroa.351179.0.copyload, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %.sroa.111155.0.copyload, i64 1
  %i.bi = extractelement <2 x float> %i.ag, i64 0
  %i.bj = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = extractelement <2 x float> %i.ab, i64 0
  %i.bm = insertelement <2 x float> poison, float %i.y, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = insertelement <2 x float> poison, float %.sroa.23.0.copyload, i64 0 ; 2 uses
  %i.bp = insertelement <2 x float> %i.bo, float %.sroa.231167.0.copyload, i64 1 ; 2 uses
  %i.bq = insertelement <2 x float> %i.be, float %.sroa.351179.0.copyload, i64 1 ; 3 uses
  %i.br = insertelement <2 x float> poison, float %.sroa.111155.0.copyload, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %.sroa.23.0.copyload, i64 1
  %i.bt = insertelement <2 x float> poison, float %.sroa.111125.0.copyload, i64 0 ; 2 uses
  %i.bu = insertelement <2 x float> %i.bt, float %.sroa.231167.0.copyload, i64 1 ; 2 uses
  %i.bv = insertelement <2 x float> %i.bo, float %.sroa.111155.0.copyload, i64 1
  %i.bw = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <2 x i32> <i32 3, i32 1>
  %i.bx = shufflevector <2 x float> %i.ai, <2 x float> %i.af, <2 x i32> <i32 1, i32 3>
  %i.by = shufflevector <2 x float> %i.ab, <2 x float> %i.aa, <2 x i32> <i32 3, i32 1>
  %i.bz = shufflevector <2 x float> %i.ah, <2 x float> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ca = insertelement <2 x float> %i.bt, float %.sroa.111155.0.copyload, i64 1
  %i.cb = shufflevector <2 x float> %.sroa.4633.0.copyload13881403, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.cc = insertelement <4 x float> %i.cb, float 1.000000e+00, i64 3
  %i.cd = shufflevector <2 x float> %.sroa.0632.0.copyload13871404, <2 x float> %.sroa.4633.0.copyload13881403, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %i.ce = insertelement <4 x float> %i.cd, float -0.000000e+00, i64 3
  %i.cf = shufflevector <2 x float> %.sroa.4633.0.copyload13881403, <2 x float> %.sroa.0632.0.copyload13871404, <4 x i32> <i32 0, i32 3, i32 2, i32 poison> ; 2 uses
  %i.cg = insertelement <4 x float> %i.cf, float 0.000000e+00, i64 3
  %i.ch = insertelement <4 x float> %i.cf, float 1.000000e+00, i64 3
  %i.ci = shufflevector <2 x float> %.sroa.0632.0.copyload13871404, <2 x float> %.sroa.4633.0.copyload13881403, <4 x i32> <i32 0, i32 2, i32 1, i32 poison>
  %i.cj = insertelement <4 x float> %i.ci, float 1.000000e+00, i64 3
  %i.ck = shufflevector <2 x float> %.sroa.4660.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.cl = insertelement <4 x float> %i.ck, float 1.000000e+00, i64 3
  %i.cm = shufflevector <2 x float> %.sroa.0659.0.copyload, <2 x float> %.sroa.4660.0.copyload, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %i.cn = insertelement <4 x float> %i.cm, float -0.000000e+00, i64 3
  %i.co = shufflevector <2 x float> %.sroa.4660.0.copyload, <2 x float> %.sroa.0659.0.copyload, <4 x i32> <i32 0, i32 3, i32 2, i32 poison> ; 2 uses
  %i.cp = insertelement <4 x float> %i.co, float 0.000000e+00, i64 3
  %i.cq = insertelement <4 x float> %i.co, float 1.000000e+00, i64 3
  %i.cr = shufflevector <2 x float> %.sroa.0659.0.copyload, <2 x float> %.sroa.4660.0.copyload, <4 x i32> <i32 0, i32 2, i32 1, i32 poison>
  %i.cs = insertelement <4 x float> %i.cr, float 1.000000e+00, i64 3
  %i.ct = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ap, i64 0
  %i.cu = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.c

._crit_edge1449.loopexit:                         ; preds = %bb.p
  %i.cw = extractelement <2 x float> %i.tb, i64 1
  %i.cx = extractelement <2 x float> %i.tb, i64 0
  br label %._crit_edge1449

._crit_edge1449:                                  ; preds = %._crit_edge1449.loopexit, %.cont1240.cont.cont
  %.sroa.0634.0.lcssa = phi <2 x float> [ %.sroa.0634.0.copyload1350136113851406, %.cont1240.cont.cont ], [ %.sroa.0634.3, %._crit_edge1449.loopexit ]
  %.sroa.16.0.lcssa = phi float [ %.sroa.16.0.copyload136613801411, %.cont1240.cont.cont ], [ %i.cx, %._crit_edge1449.loopexit ]
  %.sroa.0645.0.lcssa = phi <2 x float> [ %.sroa.0645.0.copyload133013371348136313831408, %.cont1240.cont.cont ], [ %.sroa.0645.2, %._crit_edge1449.loopexit ]
  %.sroa.10.0.lcssa = phi float [ %.sroa.10.0.copyload13381347136413821409, %.cont1240.cont.cont ], [ %.sroa.10.2, %._crit_edge1449.loopexit ]
  %.sroa.0661.0.lcssa = phi <2 x float> [ %.sroa.0661.0.copyload13111322, %.cont1240.cont.cont ], [ %.sroa.0661.3, %._crit_edge1449.loopexit ]
  %.sroa.16670.0.lcssa = phi float [ %.sroa.16670.0.copyload1327, %.cont1240.cont.cont ], [ %i.cw, %._crit_edge1449.loopexit ]
  %.sroa.0673.0.lcssa = phi <2 x float> [ %.sroa.0673.0.copyload1291129813091324, %.cont1240.cont.cont ], [ %.sroa.0673.2, %._crit_edge1449.loopexit ]
  %.sroa.10678.0.lcssa = phi float [ %.sroa.10678.0.copyload129913081325, %.cont1240.cont.cont ], [ %.sroa.10678.2, %._crit_edge1449.loopexit ]
  br i1 %i.aj, label %.cont1235.thread, label %.cont1235

.cont1235:                                        ; preds = %._crit_edge1449
  %.sroa.gep1203 = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %.else.val1238 = load i32, ptr %.sroa.gep1203, align 4, !tbaa !141
  %i.cy = and i32 %.else.val1238, 4096
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.cont1235.thread, label %.cont1252

bb.c:                                             ; preds = %.lr.ph1448, %bb.p
  %indvars.iv1469 = phi i64 [ 0, %.lr.ph1448 ], [ %indvars.iv.next1470, %bb.p ] ; 2 uses
  %.sroa.10678.01447 = phi float [ %.sroa.10678.0.copyload129913081325, %.lr.ph1448 ], [ %.sroa.10678.2, %bb.p ] ; 2 uses
  %.sroa.0673.01446 = phi <2 x float> [ %.sroa.0673.0.copyload1291129813091324, %.lr.ph1448 ], [ %.sroa.0673.2, %bb.p ] ; 2 uses
  %.sroa.0661.01444 = phi <2 x float> [ %.sroa.0661.0.copyload13111322, %.lr.ph1448 ], [ %.sroa.0661.3, %bb.p ] ; 2 uses
  %.sroa.10.01443 = phi float [ %.sroa.10.0.copyload13381347136413821409, %.lr.ph1448 ], [ %.sroa.10.2, %bb.p ] ; 2 uses
  %.sroa.0645.01442 = phi <2 x float> [ %.sroa.0645.0.copyload133013371348136313831408, %.lr.ph1448 ], [ %.sroa.0645.2, %bb.p ] ; 2 uses
  %.sroa.0634.01440 = phi <2 x float> [ %.sroa.0634.0.copyload1350136113851406, %.lr.ph1448 ], [ %.sroa.0634.3, %bb.p ] ; 2 uses
  %i.cz = phi <2 x float> [ %i.bd, %.lr.ph1448 ], [ %i.tb, %bb.p ] ; 2 uses
  %i.da = load ptr, ptr %i.q, align 8, !tbaa !114
  %i.db = getelementptr inbounds nuw [308 x i8], ptr %i.da, i64 %indvars.iv1469 ; 20 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 192
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !121 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 196 ; 2 uses
  %.sroa.6581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 204 ; 2 uses
  %.sroa.6581.0.copyload = load float, ptr %.sroa.6581.0..sroa_idx, align 4, !tbaa !103 ; 3 uses
  %i.df = icmp sgt i32 %i.dd, 0
  br i1 %i.df, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.sroa.0578.0.copyload = load <2 x float>, ptr %i.de, align 4 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.dd to i64
  %i.dg = shufflevector <2 x float> %.sroa.0578.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dh = insertelement <2 x float> %i.dg, float %.sroa.6581.0.copyload, i64 0
  %i.di = shufflevector <2 x float> %.sroa.0578.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.dj = insertelement <4 x float> %i.di, float %.sroa.6581.0.copyload, i64 2
  %shift1498 = shufflevector <2 x float> %.sroa.0578.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.d

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.sroa.0634.1.lcssa = phi <2 x float> [ %.sroa.0634.01440, %bb.c ], [ %i.iy, %bb.h ] ; 3 uses
  %.sroa.0645.1.lcssa = phi <2 x float> [ %.sroa.0645.01442, %bb.c ], [ %i.in, %bb.h ] ; 3 uses
  %.sroa.10.1.lcssa = phi float [ %.sroa.10.01443, %bb.c ], [ %i.ip, %bb.h ] ; 3 uses
  %.sroa.0661.1.lcssa = phi <2 x float> [ %.sroa.0661.01444, %bb.c ], [ %i.ig, %bb.h ] ; 3 uses
  %.sroa.0673.1.lcssa = phi <2 x float> [ %.sroa.0673.01446, %bb.c ], [ %15, %bb.h ] ; 3 uses
  %.sroa.10678.1.lcssa = phi float [ %.sroa.10678.01447, %bb.c ], [ %5, %bb.h ] ; 3 uses
  %i.dk = phi <2 x float> [ %i.cz, %bb.c ], [ %i.jb, %bb.h ] ; 5 uses
  %i.dl = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.hq, %bb.h ] ; 3 uses
  br i1 %2, label %bb.p, label %bb.i

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.sroa.10678.11429 = phi float [ %.sroa.10678.01447, %.lr.ph ], [ %5, %bb.h ] ; 2 uses
  %.sroa.0673.11428 = phi <2 x float> [ %.sroa.0673.01446, %.lr.ph ], [ %15, %bb.h ] ; 3 uses
  %.sroa.0661.11426 = phi <2 x float> [ %.sroa.0661.01444, %.lr.ph ], [ %i.ig, %bb.h ] ; 4 uses
  %.sroa.10.11425 = phi float [ %.sroa.10.01443, %.lr.ph ], [ %i.ip, %bb.h ] ; 2 uses
  %.sroa.0645.11424 = phi <2 x float> [ %.sroa.0645.01442, %.lr.ph ], [ %i.in, %bb.h ] ; 3 uses
  %.sroa.0634.11422 = phi <2 x float> [ %.sroa.0634.01440, %.lr.ph ], [ %i.iy, %bb.h ] ; 4 uses
  %i.dm = phi <2 x float> [ %i.cz, %.lr.ph ], [ %i.jb, %bb.h ] ; 5 uses
  %i.dn = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.hq, %bb.h ]
  %i.do = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %indvars.iv ; 8 uses
  %.sroa.0556.0.copyload = load <2 x float>, ptr %i.do, align 4 ; 7 uses
  %.sroa.6559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.6559.0.copyload = load float, ptr %.sroa.6559.0..sroa_idx, align 4, !tbaa !103 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %.sroa.0553.0.copyload = load <2 x float>, ptr %i.dp, align 4 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.dq = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !103 ; 3 uses
  %i.dr = shufflevector <2 x float> %.sroa.0553.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 poison, i32 1, i32 0, i32 7>
  %i.dt = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> %i.ds, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dv = fmul <4 x float> %i.ce, %i.du
  %i.dw = shufflevector <2 x float> %.sroa.0553.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.dx = insertelement <4 x float> %i.dw, float 1.000000e+00, i64 3
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> %i.dt, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.dz = fmul <4 x float> %i.cg, %i.dy
  %i.ea = fsub <4 x float> %i.dv, %i.dz
  %i.eb = shufflevector <2 x float> %.sroa.0553.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ec = insertelement <4 x float> %i.eb, float 1.000000e+00, i64 3
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> %i.dt, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ee = fmul <4 x float> %i.cc, %i.ed
  %i.ef = fadd <4 x float> %i.ee, %i.ea           ; 2 uses
  %i.eg = fmul <4 x float> %i.ef, %i.ch
  %i.eh = shufflevector <4 x float> %i.ef, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.ei = fmul <4 x float> %i.eh, %i.cj
  %i.ej = fsub <4 x float> %i.eg, %i.ei
  %i.ek = fmul <4 x float> %i.ej, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.el = fadd <4 x float> %i.dy, %i.ek
  %i.em = shufflevector <2 x float> %.sroa.0556.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.en = shufflevector <4 x float> %i.em, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 poison, i32 1, i32 0, i32 7>
  %i.eo = insertelement <4 x float> %i.en, float %.sroa.6559.0.copyload, i64 0
  %i.ep = fmul <4 x float> %i.cn, %i.eo
  %i.eq = shufflevector <2 x float> %.sroa.0556.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison> ; 2 uses
  %i.er = insertelement <4 x float> %i.eq, float 1.000000e+00, i64 3
  %i.es = insertelement <4 x float> %i.er, float %.sroa.6559.0.copyload, i64 2
  %i.et = fmul <4 x float> %i.cp, %i.es
  %i.eu = fsub <4 x float> %i.ep, %i.et
  %i.ev = shufflevector <2 x float> %.sroa.0556.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ew = insertelement <4 x float> %i.ev, float 1.000000e+00, i64 3
  %i.ex = insertelement <4 x float> %i.ew, float %.sroa.6559.0.copyload, i64 1
  %i.ey = fmul <4 x float> %i.cl, %i.ex
  %i.ez = fadd <4 x float> %i.ey, %i.eu           ; 2 uses
  %i.fa = fmul <4 x float> %i.ez, %i.cq
  %i.fb = shufflevector <4 x float> %i.ez, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.fc = fmul <4 x float> %i.fb, %i.cs
  %i.fd = fsub <4 x float> %i.fa, %i.fc
  %i.fe = fmul <4 x float> %i.fd, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.ff = insertelement <4 x float> %i.eq, float 0.000000e+00, i64 3
  %i.fg = insertelement <4 x float> %i.ff, float %.sroa.6559.0.copyload, i64 2
  %i.fh = fadd <4 x float> %i.fg, %i.fe
  %i.fi = fsub <4 x float> %i.el, %i.fh
  %i.fj = fadd <4 x float> %i.fi, %i.cv
  %i.fk = shufflevector <4 x float> %i.dj, <4 x float> %i.dt, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fl = fmul <4 x float> %i.fk, %i.fj
  %i.fm = tail call float @llvm.vector.reduce.fadd.v4f32(float -0.000000e+00, <4 x float> %i.fl) ; 3 uses
  %i.fn = fcmp ogt float %i.fm, 0.000000e+00
  br i1 %i.fn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fo = fmul float %i.j, %i.fm
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fp = fmul float %i.az, %i.fm                 ; 2 uses
  %i.fq = fcmp ogt float %i.fp, %i.n
  %i.fr = select i1 %i.fq, float %i.fp, float %i.n
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.0737 = phi float [ 0.000000e+00, %bb.e ], [ %.sroa.6621.0.copyload, %bb.g ], [ 0.000000e+00, %bb.f ]
  %.0736 = phi float [ 1.000000e+00, %bb.e ], [ %.sroa.4619.0.copyload, %bb.g ], [ 1.000000e+00, %bb.f ]
  %.0735 = phi float [ %i.fo, %bb.e ], [ %i.fr, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.fs = shufflevector <2 x float> %.sroa.0553.0.copyload, <2 x float> %.sroa.0556.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ft = fmul <2 x float> %i.dm, %i.fs
  %i.fu = shufflevector <2 x float> %.sroa.0634.11422, <2 x float> %.sroa.0661.11426, <2 x i32> <i32 0, i32 2>
  %i.fv = insertelement <2 x float> %i.dq, float %.sroa.6559.0.copyload, i64 1 ; 3 uses
  %i.fw = fmul <2 x float> %i.fu, %i.fv
  %i.fx = fsub <2 x float> %i.ft, %i.fw
  %i.fy = shufflevector <2 x float> %.sroa.0645.11424, <2 x float> %.sroa.0673.11428, <2 x i32> <i32 1, i32 3>
  %i.fz = fadd <2 x float> %i.fy, %i.fx           ; 2 uses
  %shift = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1496 = fsub <2 x float> %i.fz, %shift
  %foldExtExtBinop1499 = fmul <2 x float> %shift1498, %foldExtExtBinop1496
  %i.ga = shufflevector <2 x float> %.sroa.0556.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gb = insertelement <2 x float> %i.ga, float %.sroa.6559.0.copyload, i64 1
  %i.gc = fmul <2 x float> %.sroa.0661.11426, %i.gb
  %i.gd = shufflevector <2 x float> %.sroa.0661.11426, <2 x float> %i.dm, <2 x i32> <i32 1, i32 3>
  %i.ge = fmul <2 x float> %i.gd, %.sroa.0556.0.copyload
  %i.gf = fsub <2 x float> %i.gc, %i.ge
  %i.gg = shufflevector <2 x float> %.sroa.0673.11428, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gh = insertelement <2 x float> %i.gg, float %.sroa.10678.11429, i64 0
  %i.gi = fadd <2 x float> %i.gh, %i.gf
  %i.gj = shufflevector <2 x float> %.sroa.0553.0.copyload, <2 x float> %i.dq, <2 x i32> <i32 1, i32 2>
  %i.gk = fmul <2 x float> %.sroa.0634.11422, %i.gj
  %i.gl = shufflevector <2 x float> %.sroa.0634.11422, <2 x float> %i.dm, <2 x i32> <i32 1, i32 2>
  %i.gm = fmul <2 x float> %i.gl, %.sroa.0553.0.copyload
  %i.gn = fsub <2 x float> %i.gk, %i.gm
  %i.go = shufflevector <2 x float> %.sroa.0645.11424, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gp = insertelement <2 x float> %i.go, float %.sroa.10.11425, i64 0
  %i.gq = fadd <2 x float> %i.gp, %i.gn
  %i.gr = fsub <2 x float> %i.gq, %i.gi
  %i.gs = fmul <2 x float> %i.dh, %i.gr           ; 2 uses
  %shift1501 = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1502 = fadd <2 x float> %shift1501, %foldExtExtBinop1499
  %foldExtExtBinop1504 = fadd <2 x float> %i.gs, %foldExtExtBinop1502
  %i.gt = extractelement <2 x float> %foldExtExtBinop1504, i64 0
  %i.gu = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !129
  %i.gw = fneg float %i.gv
  %i.gx = fmul float %i.gt, %.0736
  %i.gy = fadd float %i.gx, %.0735
  %i.gz = fmul float %i.gy, %i.gw
  %i.ha = getelementptr inbounds nuw i8, ptr %i.do, i64 32 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !127 ; 3 uses
  %i.hc = fmul float %.0737, %i.hb
  %i.hd = fsub float %i.gz, %i.hc
  %i.he = fadd float %i.hb, %i.hd                 ; 2 uses
  %i.hf = fcmp ogt float %i.he, 0.000000e+00
  %i.hg = select i1 %i.hf, float %i.he, float 0.000000e+00 ; 5 uses
  %i.hh = fsub float %i.hg, %i.hb                 ; 2 uses
  store float %i.hg, ptr %i.ha, align 4, !tbaa !127
  %i.hi = getelementptr inbounds nuw i8, ptr %i.do, i64 36 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !128
  %i.hk = fadd float %i.hj, %i.hg
  store float %i.hk, ptr %i.hi, align 4, !tbaa !128
  %i.hl = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !131
  %i.hn = fmul float %i.hm, %i.hg
  %i.ho = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hp = insertelement <2 x float> %i.ho, float %i.hg, i64 1
  %i.hq = fadd <2 x float> %i.dn, %i.hp           ; 2 uses
  %3 = fmul float %.sroa.6581.0.copyload, %i.hh   ; 3 uses
  %4 = fmul float %i.y, %3
  %5 = fsub float %.sroa.10678.11429, %4          ; 2 uses
  %6 = shufflevector <2 x float> %.sroa.0553.0.copyload, <2 x float> %.sroa.0556.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %7 = insertelement <2 x float> poison, float %3, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %9 = fmul <2 x float> %6, %8
  %10 = fmul <2 x float> %i.fs, %8
  %11 = insertelement <2 x float> poison, float %i.hh, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x float> %.sroa.0578.0.copyload, %12 ; 4 uses
  %14 = fmul <2 x float> %i.bn, %13
  %15 = fsub <2 x float> %.sroa.0673.11428, %14   ; 2 uses
  %16 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hr = fmul <2 x float> %i.fv, %16
  %i.hs = fsub <2 x float> %9, %i.hr              ; 3 uses
  %17 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ht = fmul <2 x float> %i.fv, %17
  %i.hu = fsub <2 x float> %i.ht, %10             ; 3 uses
  %i.hv = fmul <2 x float> %i.fs, %16
  %i.hw = fmul <2 x float> %6, %17
  %i.hx = fsub <2 x float> %i.hv, %i.hw           ; 3 uses
  %i.hy = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hz = fmul <2 x float> %i.aa, %i.hy
  %i.ia = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ib = fmul <2 x float> %i.ab, %i.ia
  %i.ic = fadd <2 x float> %i.hz, %i.ib
  %i.id = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ie = fmul <2 x float> %i.ah, %i.id
  %i.if = fadd <2 x float> %i.ie, %i.ic
  %i.ig = fsub <2 x float> %.sroa.0661.11426, %i.if ; 2 uses
  %i.ih = fmul <2 x float> %i.ca, %i.hs
  %i.ii = fmul <2 x float> %i.bp, %i.hu
  %i.ij = fadd <2 x float> %i.ih, %i.ii
  %i.ik = fmul <2 x float> %i.bq, %i.hx
  %i.il = fadd <2 x float> %i.ik, %i.ij           ; 2 uses
  %i.im = fmul <2 x float> %i.bk, %13
  %i.in = fadd <2 x float> %.sroa.0645.11424, %i.im ; 2 uses
  %i.io = fmul float %i.ad, %3
  %i.ip = fadd float %.sroa.10.11425, %i.io       ; 2 uses
  %i.iq = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = fmul <2 x float> %i.af, %i.iq
  %i.is = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x float> %i.ag, %i.is
  %i.iu = fadd <2 x float> %i.ir, %i.it
  %i.iv = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x float> %i.ai, %i.iv
  %i.ix = fadd <2 x float> %i.iw, %i.iu
  %i.iy = fadd <2 x float> %.sroa.0634.11422, %i.ix ; 2 uses
  %i.iz = fadd <2 x float> %i.dm, %i.il
  %i.ja = fsub <2 x float> %i.dm, %i.il
  %i.jb = shufflevector <2 x float> %i.iz, <2 x float> %i.ja, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !196

bb.i:                                             ; preds = %._crit_edge
  %shift1506 = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1507 = fsub <2 x float> %i.dk, %shift1506
  %i.jc = extractelement <2 x float> %foldExtExtBinop1507, i64 0
  %.sroa.0346.0.copyload = load <2 x float>, ptr %i.de, align 4 ; 2 uses
  %.sroa.2347.0.copyload = load float, ptr %.sroa.6581.0..sroa_idx, align 4 ; 2 uses
  %i.jd = fsub <2 x float> %.sroa.0634.1.lcssa, %.sroa.0661.1.lcssa
  %i.je = fmul <2 x float> %i.jd, %.sroa.0346.0.copyload ; 2 uses
  %shift1509 = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1510 = fadd <2 x float> %i.je, %shift1509
  %i.jf = extractelement <2 x float> %foldExtExtBinop1510, i64 0
  %i.jg = fmul float %i.jc, %.sroa.2347.0.copyload
  %i.jh = fadd float %i.jg, %i.jf
  %i.ji = extractelement <2 x float> %i.dl, i64 0
  %i.jj = fmul float %i.au, %i.ji                 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.db, i64 256
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !132
  %i.jm = getelementptr inbounds nuw i8, ptr %i.db, i64 260 ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !134 ; 2 uses
  %i.jo = fmul float %i.jl, %i.jh
  %i.jp = fsub float %i.jn, %i.jo                 ; 3 uses
  %i.jq = fneg float %i.jj                        ; 2 uses
  %i.jr = fcmp olt float %i.jp, %i.jq
  %i.js = fcmp olt float %i.jj, %i.jp
  %i.jt = select i1 %i.js, float %i.jj, float %i.jp
  %i.ju = select i1 %i.jr, float %i.jq, float %i.jt ; 2 uses
  store float %i.ju, ptr %i.jm, align 4, !tbaa !134
  %i.jv = fsub float %i.ju, %i.jn                 ; 2 uses
  %i.jw = fmul float %.sroa.2347.0.copyload, %i.jv
  %i.jx = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = fmul <2 x float> %.sroa.0346.0.copyload, %i.jy ; 7 uses
  %foldExtExtBinop1512 = fmul <2 x float> %i.aa, %i.jz
  %i.ka = extractelement <2 x float> %i.jz, i64 1 ; 2 uses
  %i.kb = fmul float %i.bl, %i.ka
  %i.kc = fmul <2 x float> %i.by, %i.jz           ; 2 uses
  %i.kd = fmul <2 x float> %i.bu, %i.jz
  %i.ke = fmul <2 x float> %i.bs, %i.jz
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kg = fadd <2 x float> %i.kf, %i.kd
  %i.kh = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.kj = fmul <2 x float> %i.bq, %i.ki
  %i.kk = fadd <2 x float> %i.kj, %i.kg           ; 2 uses
  %foldExtExtBinop1514 = fmul <2 x float> %i.af, %i.jz
  %i.kl = fmul float %i.bi, %i.ka
  %i.km = fmul <2 x float> %i.bw, %i.jz           ; 2 uses
  %i.kn = fmul <2 x float> %i.ah, %i.ki
  %i.ko = fmul <2 x float> %i.ai, %i.ki
  %i.kp = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kq = shufflevector <2 x float> %foldExtExtBinop1512, <2 x float> %i.kp, <2 x i32> <i32 0, i32 3>
  %i.kr = insertelement <2 x float> %i.kc, float %i.kb, i64 0
  %i.ks = fadd <2 x float> %i.kq, %i.kr
  %i.kt = fadd <2 x float> %i.kn, %i.ks
  %i.ku = fsub <2 x float> %.sroa.0661.1.lcssa, %i.kt ; 3 uses
  %i.kv = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kw = shufflevector <2 x float> %foldExtExtBinop1514, <2 x float> %i.kv, <2 x i32> <i32 0, i32 3>
  %i.kx = insertelement <2 x float> %i.km, float %i.kl, i64 0
  %i.ky = fadd <2 x float> %i.kw, %i.kx
  %i.kz = fadd <2 x float> %i.ko, %i.ky
  %i.la = fadd <2 x float> %.sroa.0634.1.lcssa, %i.kz ; 3 uses
  %i.lb = fadd <2 x float> %i.dk, %i.kk
  %i.lc = fsub <2 x float> %i.dk, %i.kk           ; 2 uses
  %i.ld = shufflevector <2 x float> %i.lb, <2 x float> %i.lc, <2 x i32> <i32 0, i32 3> ; 4 uses
  br i1 %i.ba, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.le = fsub <2 x float> %i.la, %i.ku           ; 3 uses
  %shift1516 = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1517 = fsub <2 x float> %i.ld, %shift1516 ; 2 uses
  %i.lf = extractelement <2 x float> %foldExtExtBinop1517, i64 0
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !103
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !103
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !103
  %i.lg = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.lh = insertelement <2 x float> %i.lg, float %.sroa.8.0.copyload, i64 1
  %i.li = fmul <2 x float> %i.le, %i.lh           ; 2 uses
  %shift1519 = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1520 = fadd <2 x float> %i.li, %shift1519
  %i.lj = extractelement <2 x float> %foldExtExtBinop1520, i64 0
  %i.lk = fmul float %i.lf, %.sroa.11.0.copyload
  %i.ll = fadd float %i.lj, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.db, i64 288 ; 3 uses
  %.sroa.0254.0.copyload = load <2 x float>, ptr %i.lm, align 4 ; 2 uses
  %.sroa.5256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 296 ; 3 uses
  %.sroa.5256.0.copyload = load float, ptr %.sroa.5256.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.ln = load <2 x float>, ptr %i.bb, align 4, !tbaa !103
  %i.lo = load <2 x float>, ptr %.sroa.6.0..sroa_idx1113, align 8, !tbaa !103
  %i.lp = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !103
  %i.lq = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = fmul <2 x float> %i.lq, %i.ln
  %i.ls = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lt = fmul <2 x float> %i.ls, %i.lo
  %i.lu = fadd <2 x float> %i.lr, %i.lt
  %i.lv = shufflevector <2 x float> %foldExtExtBinop1517, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = fmul <2 x float> %i.lv, %i.lp
  %i.lx = fadd <2 x float> %i.lu, %i.lw
  %i.ly = fsub <2 x float> %.sroa.0254.0.copyload, %i.lx ; 5 uses
  %i.lz = fsub float %.sroa.5256.0.copyload, %i.ll ; 5 uses
  store <2 x float> %i.ly, ptr %i.lm, align 4
  store float %i.lz, ptr %.sroa.5256.0..sroa_idx, align 4, !tbaa !103
  %i.ma = extractelement <2 x float> %i.dl, i64 1
  %i.mb = fmul float %i.aw, %i.ma                 ; 3 uses
  %i.mc = fmul <2 x float> %i.ly, %i.ly           ; 2 uses
  %shift1522 = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1523 = fadd <2 x float> %i.mc, %shift1522
  %i.md = extractelement <2 x float> %foldExtExtBinop1523, i64 0
  %i.me = fmul float %i.lz, %i.lz
  %i.mf = fadd float %i.me, %i.md                 ; 2 uses
  %i.mg = fmul float %i.mb, %i.mb
  %i.mh = fadd float %i.mg, f0x34000000
  %i.mi = fcmp ogt float %i.mf, %i.mh
  br i1 %i.mi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %sqrt = tail call float @llvm.sqrt.f32(float %i.mf)
  %i.mj = fdiv float %i.mb, %sqrt                 ; 2 uses
  %i.mk = insertelement <2 x float> poison, float %i.mj, i64 0
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mm = fmul <2 x float> %i.ly, %i.ml           ; 2 uses
  %i.mn = fmul float %i.mj, %i.lz                 ; 2 uses
  store <2 x float> %i.mm, ptr %i.lm, align 4
  store float %i.mn, ptr %.sroa.5256.0..sroa_idx, align 4, !tbaa !103
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.2224.0.copyload = phi float [ %i.mn, %bb.k ], [ %i.lz, %bb.j ]
  %.sroa.0223.0.copyload = phi <2 x float> [ %i.mm, %bb.k ], [ %i.ly, %bb.j ]
  %i.mo = fsub float %.sroa.2224.0.copyload, %.sroa.5256.0.copyload
  %i.mp = fsub <2 x float> %.sroa.0223.0.copyload, %.sroa.0254.0.copyload ; 4 uses
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mr = insertelement <2 x float> poison, float %i.mo, i64 0
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mt = fmul <2 x float> %i.ah, %i.ms
  %i.mu = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mv = fmul <2 x float> %i.aa, %i.mu
  %i.mw = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.mx = fmul <2 x float> %i.ab, %i.mw
  %i.my = fadd <2 x float> %i.mv, %i.mx
  %i.mz = fadd <2 x float> %i.mt, %i.my
  %i.na = fsub <2 x float> %i.ku, %i.mz
  %i.nb = fmul <2 x float> %i.bu, %i.mp
  %i.nc = fmul <2 x float> %i.bv, %i.mq
  %i.nd = fadd <2 x float> %i.nc, %i.nb
  %i.ne = fmul <2 x float> %i.bq, %i.ms
  %i.nf = fadd <2 x float> %i.ne, %i.nd           ; 2 uses
  %i.ng = fmul <2 x float> %i.ai, %i.ms
  %i.nh = fmul <2 x float> %i.af, %i.mu
  %i.ni = fmul <2 x float> %i.ag, %i.mw
  %i.nj = fadd <2 x float> %i.nh, %i.ni
  %i.nk = fadd <2 x float> %i.ng, %i.nj
  %i.nl = fadd <2 x float> %i.la, %i.nk
  %i.nm = fadd <2 x float> %i.ld, %i.nf
  %i.nn = fsub <2 x float> %i.ld, %i.nf
  %i.no = shufflevector <2 x float> %i.nm, <2 x float> %i.nn, <2 x i32> <i32 0, i32 3>
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.sroa.0634.2 = phi <2 x float> [ %i.nl, %bb.l ], [ %i.la, %bb.i ] ; 4 uses
  %.sroa.0661.2 = phi <2 x float> [ %i.na, %bb.l ], [ %i.ku, %bb.i ] ; 4 uses
  %i.np = phi <2 x float> [ %i.no, %bb.l ], [ %i.ld, %bb.i ] ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.db, i64 208
  %.sroa.0178.0.copyload = load <2 x float>, ptr %i.nq, align 4 ; 4 uses
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 216
  %.sroa.5180.0.copyload = load float, ptr %.sroa.5180.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.db, i64 220
  %.sroa.0175.0.copyload = load <2 x float>, ptr %i.nr, align 4 ; 4 uses
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 228
  %.sroa.5177.0.copyload = load float, ptr %.sroa.5177.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.db, i64 232
  %.sroa.0172.0.copyload = load <2 x float>, ptr %i.ns, align 4 ; 6 uses
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 240
  %.sroa.5174.0.copyload = load float, ptr %.sroa.5174.0..sroa_idx, align 4, !tbaa !103 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.db, i64 244
  %.sroa.0169.0.copyload = load <2 x float>, ptr %i.nt, align 4 ; 6 uses
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 252
  %.sroa.5171.0.copyload = load float, ptr %.sroa.5171.0..sroa_idx, align 4, !tbaa !103 ; 3 uses
  %i.nu = shufflevector <2 x float> %.sroa.0172.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i992 = extractelement <2 x float> %.sroa.0172.0.copyload, i64 0
  %i.nv = fmul <2 x float> %.sroa.0661.2, %i.nu   ; 2 uses
  %shift1525 = shufflevector <2 x float> %i.nv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1526 = fsub <2 x float> %i.nv, %shift1525
  %i.nw = extractelement <2 x float> %foldExtExtBinop1526, i64 0
end_hunk_0
