Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 174
begin_hunk_0_@JS_NewContextRaw:bb.a

find_hashed_shape_proto.exit.i.i:                 ; preds = %bb.w
  %i.gw = getelementptr inbounds i8, ptr %.03.i.i.i, i64 -4 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !8
  %i.gy = add nsw i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !8
  br label %bb.y

.loopexit.i.i:                                    ; preds = %bb.x, %bb.u
  %i.gz = tail call fastcc ptr @js_new_shape2(ptr noundef nonnull %i.l, ptr noundef %.0.i5.i.i, i32 noundef 2) #51 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not12.i.i.i, label %JS_NewObjectProto.exit.i, label %bb.y

bb.y:                                             ; preds = %.loopexit.i.i, %find_hashed_shape_proto.exit.i.i
  %.0.i.i.i = phi ptr [ %.03.i.i.i, %find_hashed_shape_proto.exit.i.i ], [ %i.gz, %.loopexit.i.i ]
  %i.ha = tail call fastcc { i64, i64 } @JS_NewObjectFromShape(ptr noundef nonnull %i.l, ptr noundef nonnull %.0.i.i.i, i32 noundef 1, ptr noundef null) #51, !inline_history !254 ; 2 uses
  %i.hb = extractvalue { i64, i64 } %i.ha, 0
  %i.hc = extractvalue { i64, i64 } %i.ha, 1
  br label %JS_NewObjectProto.exit.i

JS_NewObjectProto.exit.i:                         ; preds = %bb.y, %.loopexit.i.i
  %.sroa.4.0.i.i.i = phi i64 [ %i.hc, %bb.y ], [ 6, %.loopexit.i.i ] ; 3 uses
  %.sroa.09.0.insert.insert.i.i.i = phi i64 [ %i.hb, %bb.y ], [ 0, %.loopexit.i.i ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr @native_error_name, i64 %indvars.iv.i
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !255
  %i.hf = tail call { i64, i64 } @JS_NewAtomString(ptr noundef nonnull %i.l, ptr noundef %i.he) ; 2 uses
  %i.hg = extractvalue { i64, i64 } %i.hf, 0      ; 3 uses
  %i.hh = extractvalue { i64, i64 } %i.hf, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 0, ptr %3, align 8, !tbaa !35
  store i32 0, ptr %i.fg, align 4
  store i64 3, ptr %i.fh, align 8, !tbaa !256
  store i32 0, ptr %4, align 8, !tbaa !35
  store i32 0, ptr %i.fi, align 4
  store i64 3, ptr %i.fj, align 8, !tbaa !256
  %i.hi = tail call i32 @JS_DefineProperty(ptr noundef nonnull %i.l, i64 %.sroa.09.0.insert.insert.i.i.i, i64 %.sroa.4.0.i.i.i, i32 noundef 58, i64 %i.hg, i64 %i.hh, ptr noundef nonnull byval(%struct.JSValue) align 8 %3, ptr noundef nonnull byval(%struct.JSValue) align 8 %4, i32 noundef 9987) #51, !inline_history !257 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.hj = load ptr, ptr %i.br, align 8, !tbaa !50 ; 3 uses
  %i.hk = trunc i64 %i.hh to i32
  %i.hl = icmp ugt i32 %i.hk, -10
  br i1 %i.hl, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %JS_NewObjectProto.exit.i
  %i.hm = inttoptr i64 %i.hg to ptr
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -4 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !8  ; 2 uses
  %i.hp = add nsw i32 %i.ho, -1
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !8
  %i.hq = icmp slt i32 %i.ho, 2
  br i1 %i.hq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @js_free_value_rt(ptr noundef %i.hj, i64 %i.hg, i64 %i.hh) #51, !inline_history !258
  %.pre.i = load ptr, ptr %i.br, align 8, !tbaa !50
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %JS_NewObjectProto.exit.i
  %i.hr = phi ptr [ %.pre.i, %bb.aa ], [ %i.hj, %bb.z ], [ %i.hj, %JS_NewObjectProto.exit.i ]
  %i.hs = getelementptr i8, ptr %i.hr, i64 1104
  %.val.i = load ptr, ptr %i.hs, align 8, !tbaa !154
  %i.ht = getelementptr i8, ptr %.val.i, i64 384
  %.val.val.i = load ptr, ptr %i.ht, align 8, !tbaa !155 ; 2 uses
  %i.hu = ptrtoint ptr %.val.val.i to i64         ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %.val.val.i, i64 -4 ; 4 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !8
  %i.hx = add nsw i32 %i.hw, 1
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 0, ptr %1, align 8, !tbaa !35
  store i32 0, ptr %i.fk, align 4
  store i64 3, ptr %i.fl, align 8, !tbaa !256
  store i32 0, ptr %2, align 8, !tbaa !35
  store i32 0, ptr %i.fm, align 4
  store i64 3, ptr %i.fn, align 8, !tbaa !256
  %i.hy = tail call i32 @JS_DefineProperty(ptr noundef nonnull %i.l, i64 %.sroa.09.0.insert.insert.i.i.i, i64 %.sroa.4.0.i.i.i, i32 noundef 52, i64 %i.hu, i64 -7, ptr noundef nonnull byval(%struct.JSValue) align 8 %1, ptr noundef nonnull byval(%struct.JSValue) align 8 %2, i32 noundef 9987) #51, !inline_history !257 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.hz = load ptr, ptr %i.br, align 8, !tbaa !50
  %i.ia = load i32, ptr %i.hv, align 4, !tbaa !8  ; 2 uses
  %i.ib = add nsw i32 %i.ia, -1
  store i32 %i.ib, ptr %i.hv, align 4, !tbaa !8
  %i.ic = icmp slt i32 %i.ia, 2
  br i1 %i.ic, label %bb.ac, label %JS_DefinePropertyValue.exit74.i

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @js_free_value_rt(ptr noundef %i.hz, i64 %i.hu, i64 -7) #51, !inline_history !258
  br label %JS_DefinePropertyValue.exit74.i

JS_DefinePropertyValue.exit74.i:                  ; preds = %bb.ac, %bb.ab
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %indvars.iv.i ; 2 uses
  store i64 %.sroa.09.0.insert.insert.i.i.i, ptr %i.id, align 8, !tbaa !35
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i64 %.sroa.4.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 9
  br i1 %exitcond.not.i, label %bb.ad, label %bb.u, !llvm.loop !259

bb.ad:                                            ; preds = %JS_DefinePropertyValue.exit74.i
  %i.ie = load ptr, ptr %i.bq, align 8, !tbaa !230 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ih = load i64, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = and i64 %i.ij, 4294967295
  %i.il = icmp eq i64 %i.ik, 4294967295
  %i.im = inttoptr i64 %i.ih to ptr
  %.0.i.i75.i = select i1 %i.il, ptr %i.im, ptr null ; 3 uses
  %i.in = load ptr, ptr %i.br, align 8, !tbaa !50 ; 2 uses
  %i.io = getelementptr i8, ptr %i.in, i64 1436
  %.val.i.i = load i32, ptr %i.io, align 4, !tbaa !93
  %i.ip = getelementptr i8, ptr %i.in, i64 1448
  %.val13.i.i = load ptr, ptr %i.ip, align 8, !tbaa !97
  %i.iq = ptrtoint ptr %.0.i.i75.i to i64         ; 2 uses
  %i.ir = trunc i64 %i.iq to i32
  %i.is = mul i32 %i.ir, 1640531527
  %i.it = add i32 %i.is, 1640531527
  %i.iu = lshr i64 %i.iq, 32
  %i.iv = trunc nuw i64 %i.iu to i32
  %i.iw = add i32 %i.it, %i.iv
  %i.ix = mul i32 %i.iw, 1640531527               ; 2 uses
  %i.iy = sub nsw i32 32, %.val.i.i
  %i.iz = lshr i32 %i.ix, %i.iy
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.val13.i.i, i64 %i.ja
  %.01.i.i76.i = load ptr, ptr %i.jb, align 8, !tbaa !252 ; 2 uses
  %.not2.i.i77.i = icmp eq ptr %.01.i.i76.i, null
  br i1 %.not2.i.i77.i, label %.loopexit.i80.i, label %.lr.ph.i.i78.i

.lr.ph.i.i78.i:                                   ; preds = %bb.ad, %bb.ag
  %.03.i.i79.i = phi ptr [ %.0.i14.i.i, %bb.ag ], [ %.01.i.i76.i, %bb.ad ] ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.03.i.i79.i, i64 20
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !8
  %i.je = icmp eq i32 %i.jd, %i.ix
  br i1 %i.je, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.lr.ph.i.i78.i
  %i.jf = getelementptr inbounds nuw i8, ptr %.03.i.i79.i, i64 48
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !212
  %i.jh = icmp eq ptr %i.jg, %.0.i.i75.i
  br i1 %i.jh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ji = getelementptr inbounds nuw i8, ptr %.03.i.i79.i, i64 32
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !8
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %find_hashed_shape_proto.exit.i81.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph.i.i78.i
  %i.jl = getelementptr inbounds nuw i8, ptr %.03.i.i79.i, i64 40
  %.0.i14.i.i = load ptr, ptr %i.jl, align 8, !tbaa !252 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i14.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i80.i, label %.lr.ph.i.i78.i, !llvm.loop !253

find_hashed_shape_proto.exit.i81.i:               ; preds = %bb.af
  %i.jm = getelementptr inbounds i8, ptr %.03.i.i79.i, i64 -4 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !8
  %i.jo = add nsw i32 %i.jn, 1
  store i32 %i.jo, ptr %i.jm, align 4, !tbaa !8
  br label %bb.ah

.loopexit.i80.i:                                  ; preds = %bb.ag, %bb.ad
  %i.jp = tail call fastcc ptr @js_new_shape2(ptr noundef nonnull %i.l, ptr noundef %.0.i.i75.i, i32 noundef 2) ; 2 uses
  %.not12.i.i = icmp eq ptr %i.jp, null
  br i1 %.not12.i.i, label %JS_NewObjectProtoClass.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.loopexit.i80.i, %find_hashed_shape_proto.exit.i81.i
  %.0.i.i68 = phi ptr [ %.03.i.i79.i, %find_hashed_shape_proto.exit.i81.i ], [ %i.jp, %.loopexit.i80.i ]
  %i.jq = tail call fastcc { i64, i64 } @JS_NewObjectFromShape(ptr noundef nonnull %i.l, ptr noundef nonnull %.0.i.i68, i32 noundef 2, ptr noundef null), !inline_history !260 ; 2 uses
  %i.jr = extractvalue { i64, i64 } %i.jq, 0
  %i.js = extractvalue { i64, i64 } %i.jq, 1
  br label %JS_NewObjectProtoClass.exit.i

JS_NewObjectProtoClass.exit.i:                    ; preds = %bb.ah, %.loopexit.i80.i
  %.sroa.4.0.i.i = phi i64 [ %i.js, %bb.ah ], [ 6, %.loopexit.i80.i ]
  %.sroa.09.0.insert.insert.i.i = phi i64 [ %i.jr, %bb.ah ], [ 0, %.loopexit.i80.i ]
  store i64 %.sroa.09.0.insert.insert.i.i, ptr %i.if, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  store i64 %.sroa.4.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !72
  %i.jt = getelementptr inbounds nuw i8, ptr %i.l, i64 44 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4
  %i.jv = or i32 %i.ju, -2147483648
  store i32 %i.jv, ptr %i.jt, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.jx = load ptr, ptr %i.bq, align 8, !tbaa !230 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.jz = load i64, ptr %i.jy, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = and i64 %i.kb, 4294967295
  %i.kd = icmp eq i64 %i.kc, 4294967295
  %i.ke = inttoptr i64 %i.jz to ptr
  %.0.i.i82.i = select i1 %i.kd, ptr %i.ke, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.kf = tail call fastcc ptr @js_new_shape2(ptr noundef nonnull %i.l, ptr noundef %.0.i.i82.i, i32 noundef range(i32 1, 5) 1) ; 2 uses
  store ptr %i.kf, ptr %i.b, align 8, !tbaa !252
  %.not.i.i83.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i83.i, label %js_new_shape_with.exit.thread.i, label %js_new_shape_with.exit.i

.preheader.i.i.preheader.i:                       ; preds = %js_new_shape_with.exit.i
  %.pre.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !252 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  store ptr %.pre.i.i.i, ptr %i.jw, align 8, !tbaa !252
  %.not13.i.i.i.a = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not13.i.i.i.a, label %JS_AddIntrinsicBasicObjects.exit.thread, label %bb.ak

js_new_shape_with.exit.i:                         ; preds = %JS_NewObjectProtoClass.exit.i
  %6 = call fastcc i32 @add_shape_property(ptr noundef nonnull %i.l, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 51, i32 noundef 10)
  %.not.i.not.i = icmp eq i32 %6, 0
  br i1 %.not.i.not.i, label %.preheader.i.i.preheader.i, label %bb.ai

bb.ai:                                            ; preds = %js_new_shape_with.exit.i
  %i.kg = load ptr, ptr %i.br, align 8, !tbaa !50
  %i.kh = load ptr, ptr %i.b, align 8, !tbaa !252 ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -4 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !8  ; 2 uses
  %i.kk = add nsw i32 %i.kj, -1
  store i32 %i.kk, ptr %i.ki, align 4, !tbaa !8
  %i.kl = icmp slt i32 %i.kj, 2
  br i1 %i.kl, label %bb.aj, label %js_new_shape_with.exit.thread.i, !prof !9

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @js_free_shape0(ptr noundef %i.kg, ptr noundef nonnull %i.kh), !inline_history !261
  br label %js_new_shape_with.exit.thread.i

js_new_shape_with.exit.thread.i:                  ; preds = %bb.aj, %bb.ai, %JS_NewObjectProtoClass.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  store ptr null, ptr %i.jw, align 8, !tbaa !252
  br label %JS_AddIntrinsicBasicObjects.exit.thread

bb.ak:                                            ; preds = %.preheader.i.i.preheader.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.kn = load ptr, ptr %i.bq, align 8, !tbaa !230 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kr = load i64, ptr %i.kq, align 8
  %i.ks = and i64 %i.kr, 4294967295
  %i.kt = icmp eq i64 %i.ks, 4294967295
  %i.ku = inttoptr i64 %i.kp to ptr
  %.0.i.i84.i = select i1 %i.kt, ptr %i.ku, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.kv = tail call fastcc ptr @js_new_shape2(ptr noundef nonnull %i.l, ptr noundef %.0.i.i84.i, i32 noundef range(i32 1, 5) 3) ; 2 uses
  store ptr %i.kv, ptr %i.a, align 8, !tbaa !252
  %.not.i.i85.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i85.i, label %js_new_shape_with.exit97.thread.i, label %.preheader.i.i87.preheader.i

.preheader.i.i87.preheader.i:                     ; preds = %bb.ak
  %i.kw = call fastcc i32 @add_shape_property(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 51, i32 noundef 3)
  %.not13.i.i89.i = icmp eq i32 %i.kw, 0
  br i1 %.not13.i.i89.i, label %.preheader.i.i87.1.i, label %bb.al

.preheader.i.i87.1.i:                             ; preds = %.preheader.i.i87.preheader.i
  %i.kx = call fastcc i32 @add_shape_property(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 228, i32 noundef 3)
  %.not13.i.i89.1.i = icmp eq i32 %i.kx, 0
  br i1 %.not13.i.i89.1.i, label %.preheader.i.i87.2.i, label %bb.al

.preheader.i.i87.2.i:                             ; preds = %.preheader.i.i87.1.i
  %i.ky = call fastcc i32 @add_shape_property(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 82, i32 noundef 16)
  %.not13.i.i89.2.i = icmp eq i32 %i.ky, 0
  br i1 %.not13.i.i89.2.i, label %js_new_shape_with.exit97.i, label %bb.al

js_new_shape_with.exit97.i:                       ; preds = %.preheader.i.i87.2.i
  %.pre.i.i96.i = load ptr, ptr %i.a, align 8, !tbaa !252 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  store ptr %.pre.i.i96.i, ptr %i.km, align 8, !tbaa !252
  %.not.i91.not.i = icmp eq ptr %.pre.i.i96.i, null
  br i1 %.not.i91.not.i, label %JS_AddIntrinsicBasicObjects.exit.thread, label %JS_AddIntrinsicBasicObjects.exit

bb.al:                                            ; preds = %.preheader.i.i87.2.i, %.preheader.i.i87.1.i, %.preheader.i.i87.preheader.i
  %i.kz = load ptr, ptr %i.br, align 8, !tbaa !50
  %i.la = load ptr, ptr %i.a, align 8, !tbaa !252 ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 -4 ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !8  ; 2 uses
  %i.ld = add nsw i32 %i.lc, -1
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !8
  %i.le = icmp slt i32 %i.lc, 2
  br i1 %i.le, label %bb.am, label %js_new_shape_with.exit97.thread.i, !prof !9

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @js_free_shape0(ptr noundef %i.kz, ptr noundef nonnull %i.la), !inline_history !261
  br label %js_new_shape_with.exit97.thread.i

js_new_shape_with.exit97.thread.i:                ; preds = %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  store ptr null, ptr %i.km, align 8, !tbaa !252
  br label %JS_AddIntrinsicBasicObjects.exit.thread

JS_AddIntrinsicBasicObjects.exit:                 ; preds = %js_new_shape_with.exit97.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.lg = load ptr, ptr %i.bq, align 8, !tbaa !230 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load i64, ptr %i.lh, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.lk = load i64, ptr %i.lj, align 8
  %i.ll = tail call fastcc i32 @js_new_shape_with(ptr noundef nonnull %i.l, ptr noundef nonnull %i.lf, i64 %i.li, i64 %i.lk, i32 noundef 3, ptr noundef nonnull @JS_AddIntrinsicBasicObjects.mapped_arguments_props)
  %.not71.i.not = icmp eq i32 %i.ll, 0
  br i1 %.not71.i.not, label %js_mallocz_rt.exit.thread, label %JS_AddIntrinsicBasicObjects.exit.thread

JS_AddIntrinsicBasicObjects.exit.thread:          ; preds = %js_new_shape_with.exit97.thread.i, %js_new_shape_with.exit.thread.i, %.preheader.i.i.preheader.i, %bb.s, %js_dup.exit.i, %bb.p, %._crit_edge, %js_new_shape_with.exit97.i, %JS_AddIntrinsicBasicObjects.exit
  tail call void @JS_FreeContext(ptr noundef nonnull %i.l)
  br label %js_mallocz_rt.exit.thread

js_mallocz_rt.exit.thread:                        ; preds = %bb.b, %bb.a, %JS_AddIntrinsicBasicObjects.exit, %JS_AddIntrinsicBasicObjects.exit.thread, %bb.n
  %.0 = phi ptr [ null, %JS_AddIntrinsicBasicObjects.exit.thread ], [ %i.l, %JS_AddIntrinsicBasicObjects.exit ], [ null, %bb.n ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @JS_FreeContext(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 34 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !8
  %i.f = icmp sgt i32 %i.d, 1
  br i1 %i.f, label %bb.bp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !262  ; 2 uses
  %.not.i94 = icmp eq ptr %i.i, %i.g
  br i1 %.not.i94, label %js_free_modules.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.011.i95 = phi ptr [ %.0.i, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.011.i95, i64 8
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !40 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.011.i95, i64 -8
  tail call fastcc void @js_free_module_def(ptr noundef nonnull %0, ptr noundef nonnull %i.j), !inline_history !263
  %.not.i = icmp eq ptr %.0.i, %i.g
  br i1 %.not.i, label %js_free_modules.exit.loopexit, label %.lr.ph, !llvm.loop !264

js_free_modules.exit.loopexit:                    ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %js_free_modules.exit

js_free_modules.exit:                             ; preds = %js_free_modules.exit.loopexit, %bb.b
  %i.k = phi ptr [ %.pre, %js_free_modules.exit.loopexit ], [ %i.b, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp ugt i32 %i.p, -10
  br i1 %i.q, label %bb.c, label %JS_FreeValueRT.exit

bb.c:                                             ; preds = %js_free_modules.exit
  %i.r = inttoptr i64 %i.m to ptr
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !8
  %i.v = icmp slt i32 %i.t, 2
  br i1 %i.v, label %bb.d, label %JS_FreeValueRT.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @js_free_value_rt(ptr noundef %i.k, i64 %i.m, i64 %i.o), !inline_history !265
  %.pre101 = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %js_free_modules.exit, %bb.c, %bb.d
  %i.w = phi ptr [ %i.k, %js_free_modules.exit ], [ %i.k, %bb.c ], [ %.pre101, %bb.d ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = icmp ugt i32 %i.ab, -10
  br i1 %i.ac, label %bb.e, label %JS_FreeValueRT.exit72

bb.e:                                             ; preds = %JS_FreeValueRT.exit
  %i.ad = inttoptr i64 %i.y to ptr
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8  ; 2 uses
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !8
  %i.ah = icmp slt i32 %i.af, 2
  br i1 %i.ah, label %bb.f, label %JS_FreeValueRT.exit72

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @js_free_value_rt(ptr noundef %i.w, i64 %i.y, i64 %i.aa), !inline_history !265
  %.pre102 = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %JS_FreeValueRT.exit72

JS_FreeValueRT.exit72:                            ; preds = %JS_FreeValueRT.exit, %bb.e, %bb.f
  %i.ai = phi ptr [ %i.w, %JS_FreeValueRT.exit ], [ %i.w, %bb.e ], [ %.pre102, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = trunc i64 %i.am to i32
  %i.ao = icmp ugt i32 %i.an, -10
  br i1 %i.ao, label %bb.g, label %JS_FreeValueRT.exit73

bb.g:                                             ; preds = %JS_FreeValueRT.exit72
  %i.ap = inttoptr i64 %i.ak to ptr
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8  ; 2 uses
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !8
  %i.at = icmp slt i32 %i.ar, 2
  br i1 %i.at, label %bb.h, label %JS_FreeValueRT.exit73

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ai, i64 %i.ak, i64 %i.am), !inline_history !265
  %.pre103 = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %JS_FreeValueRT.exit73

JS_FreeValueRT.exit73:                            ; preds = %JS_FreeValueRT.exit72, %bb.g, %bb.h
  %i.au = phi ptr [ %i.ai, %JS_FreeValueRT.exit72 ], [ %i.ai, %bb.g ], [ %.pre103, %bb.h ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp ugt i32 %i.az, -10
  br i1 %i.ba, label %bb.i, label %JS_FreeValueRT.exit74

bb.i:                                             ; preds = %JS_FreeValueRT.exit73
  %i.bb = inttoptr i64 %i.aw to ptr
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8  ; 2 uses
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !8
  %i.bf = icmp slt i32 %i.bd, 2
  br i1 %i.bf, label %bb.j, label %JS_FreeValueRT.exit74

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @js_free_value_rt(ptr noundef %i.au, i64 %i.aw, i64 %i.ay), !inline_history !265
  %.pre104 = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %JS_FreeValueRT.exit74

JS_FreeValueRT.exit74:                            ; preds = %JS_FreeValueRT.exit73, %bb.i, %bb.j
  %i.bg = phi ptr [ %i.au, %JS_FreeValueRT.exit73 ], [ %i.au, %bb.i ], [ %.pre104, %bb.j ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp ugt i32 %i.bl, -10
  br i1 %i.bm, label %bb.k, label %JS_FreeValueRT.exit75

bb.k:                                             ; preds = %JS_FreeValueRT.exit74
  %i.bn = inttoptr i64 %i.bi to ptr
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8  ; 2 uses
  %i.bq = add nsw i32 %i.bp, -1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !8
  %i.br = icmp slt i32 %i.bp, 2
  br i1 %i.br, label %bb.l, label %JS_FreeValueRT.exit75

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bg, i64 %i.bi, i64 %i.bk), !inline_history !265
  %.pre105 = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %JS_FreeValueRT.exit75

JS_FreeValueRT.exit75:                            ; preds = %JS_FreeValueRT.exit74, %bb.k, %bb.l
  %i.bs = phi ptr [ %i.bg, %JS_FreeValueRT.exit74 ], [ %i.bg, %bb.k ], [ %.pre105, %bb.l ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = icmp ugt i32 %i.bx, -10
  br i1 %i.by, label %bb.m, label %JS_FreeValueRT.exit76

bb.m:                                             ; preds = %JS_FreeValueRT.exit75
  %i.bz = inttoptr i64 %i.bu to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8  ; 2 uses
  %i.cc = add nsw i32 %i.cb, -1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !8
  %i.cd = icmp slt i32 %i.cb, 2
  br i1 %i.cd, label %bb.n, label %JS_FreeValueRT.exit76

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bs, i64 %i.bu, i64 %i.bw), !inline_history !265
  %.pre106 = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %JS_FreeValueRT.exit76

JS_FreeValueRT.exit76:                            ; preds = %JS_FreeValueRT.exit75, %bb.m, %bb.n
  %i.ce = phi ptr [ %i.bs, %JS_FreeValueRT.exit75 ], [ %i.bs, %bb.m ], [ %.pre106, %bb.n ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = icmp ugt i32 %i.cj, -10
  br i1 %i.ck, label %bb.o, label %JS_FreeValueRT.exit76.1

bb.o:                                             ; preds = %JS_FreeValueRT.exit76
  %i.cl = inttoptr i64 %i.cg to ptr
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !8  ; 2 uses
  %i.co = add nsw i32 %i.cn, -1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !8
end_hunk_0
begin_hunk_1_@JS_AddIntrinsicBaseObjects:bb.a
  %i.qn = load i64, ptr %i.qm, align 8
  %i.qo = load i64, ptr %i.qk, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 792
  %i.qq = load i64, ptr %i.qp, align 8
  %i.qr = tail call fastcc i32 @JS_SetConstructor2(ptr noundef nonnull %0, i64 %i.ql, i64 %i.qn, i64 %i.qo, i64 %i.qq, i32 noundef 1, i32 noundef 1)
  %.not251 = icmp eq i32 %i.qr, 0
  br i1 %.not251, label %bb.bt, label %.critedge

bb.bt:                                            ; preds = %JS_FreeValue.exit277
  %i.qs = load ptr, ptr %i.bl, align 8, !tbaa !230 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 800
  %i.qu = tail call { i64, i64 } @JS_NewObject(ptr noundef nonnull %0) ; 2 uses
  %i.qv = extractvalue { i64, i64 } %i.qu, 0
  %i.qw = extractvalue { i64, i64 } %i.qu, 1
  store i64 %i.qv, ptr %i.qt, align 8, !tbaa !35
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qs, i64 808
  store i64 %i.qw, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !72
  %i.qx = load ptr, ptr %i.bl, align 8, !tbaa !230 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 800
  %i.qz = load i64, ptr %i.qy, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 808
  %i.rb = load i64, ptr %i.ra, align 8
  %i.rc = tail call i32 @JS_SetPropertyFunctionList(ptr noundef nonnull %0, i64 %i.qz, i64 %i.rb, ptr noundef nonnull @js_disposable_stack_proto_funcs, i32 noundef 8) ; 0 uses
  %i.rd = load ptr, ptr %i.bl, align 8, !tbaa !230 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 800
  %i.rf = load i64, ptr %i.re, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 808
  %i.rh = load i64, ptr %i.rg, align 8
  tail call fastcc void @JS_NewGlobalCConstructorMagic(ptr noundef nonnull %0, ptr noundef nonnull @.str.77, i64 %i.rf, i64 %i.rh, i32 noundef 50)
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.rj = load i64, ptr %i.lb, align 8            ; 2 uses
  %i.rk = load i64, ptr %i.ld, align 8            ; 2 uses
  %i.rl = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %i.rj, i64 %i.rk, i32 noundef 62, i64 %i.rj, i64 %i.rk, i1 noundef zeroext false), !inline_history !272 ; 2 uses
  %i.rm = extractvalue { i64, i64 } %i.rl, 0
  %i.rn = extractvalue { i64, i64 } %i.rl, 1      ; 2 uses
  store i64 %i.rm, ptr %i.ri, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %i.rn, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !72
  %i.ro = and i64 %i.rn, 4294967295
  %i.rp = icmp eq i64 %i.ro, 6
  br i1 %i.rp, label %.critedge, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.rq = load i64, ptr %i.lb, align 8            ; 3 uses
  %i.rr = load i64, ptr %i.ld, align 8            ; 3 uses
  %i.rs = trunc i64 %i.rr to i32
  %i.rt = icmp ugt i32 %i.rs, -10
  br i1 %i.rt, label %bb.bv, label %js_dup.exit280

bb.bv:                                            ; preds = %bb.bu
  %i.ru = inttoptr i64 %i.rq to ptr
  %i.rv = getelementptr inbounds i8, ptr %i.ru, i64 -4 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !8
  %i.rx = add nsw i32 %i.rw, 1
  store i32 %i.rx, ptr %i.rv, align 4, !tbaa !8
  %.pre284 = load i64, ptr %i.lb, align 8
  %.pre285 = load i64, ptr %i.ld, align 8
  br label %js_dup.exit280

js_dup.exit280:                                   ; preds = %bb.bu, %bb.bv
  %i.ry = phi i64 [ %i.rr, %bb.bu ], [ %.pre285, %bb.bv ]
  %i.rz = phi i64 [ %i.rq, %bb.bu ], [ %.pre284, %bb.bv ]
  %i.sa = tail call i32 @JS_DefinePropertyValue(ptr noundef nonnull %0, i64 %i.rz, i64 %i.ry, i32 noundef 149, i64 %i.rq, i64 %i.rr, i32 noundef 3)
  %i.sb = icmp slt i32 %i.sa, 0
  br i1 %i.sb, label %.critedge, label %bb.bw

bb.bw:                                            ; preds = %js_dup.exit280
  %i.sc = tail call i32 @JS_AddIntrinsicBigInt(ptr noundef nonnull %0)
  %.not252 = icmp ne i32 %i.sc, 0
  %. = sext i1 %.not252 to i32
  br label %.critedge

.critedge257.sink.split:                          ; preds = %bb.ak, %bb.ac, %bb.x
  %.sink = phi ptr [ %i.gf, %bb.ac ], [ %i.fm, %bb.x ], [ %i.hn, %bb.ak ]
  tail call fastcc void @js_free_value_rt(ptr noundef %.sink, i64 %i.fb, i64 %i.fc)
  br label %.critedge257

.critedge257:                                     ; preds = %.critedge257.sink.split, %bb.ak, %JS_FreeValue.exit266, %bb.ac, %JS_FreeValue.exit260, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.bw, %js_dup.exit280, %bb.bt, %JS_FreeValue.exit277, %bb.bp, %JS_FreeValue.exit276, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %JS_FreeValue.exit275, %bb.be, %JS_FreeValue.exit274, %bb.ba, %JS_FreeValue.exit273, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %js_dup.exit272, %JS_FreeValue.exit269, %.critedge257, %bb.u, %.critedge255, %js_dup.exit, %bb.j, %JS_FreeValue.exit258, %JS_FreeValue.exit, %bb.c, %bb.b, %bb.a
  %.4 = phi i32 [ -1, %.critedge257 ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %JS_FreeValue.exit ], [ -1, %JS_FreeValue.exit258 ], [ -1, %bb.j ], [ -1, %js_dup.exit ], [ -1, %.critedge255 ], [ -1, %bb.u ], [ -1, %JS_FreeValue.exit269 ], [ -1, %js_dup.exit272 ], [ -1, %bb.as ], [ -1, %bb.at ], [ -1, %bb.au ], [ -1, %bb.av ], [ -1, %bb.aw ], [ -1, %JS_FreeValue.exit273 ], [ -1, %bb.ba ], [ -1, %JS_FreeValue.exit274 ], [ -1, %bb.be ], [ -1, %JS_FreeValue.exit275 ], [ -1, %bb.bi ], [ -1, %bb.bj ], [ -1, %bb.bk ], [ -1, %bb.bl ], [ -1, %JS_FreeValue.exit276 ], [ -1, %bb.bp ], [ -1, %JS_FreeValue.exit277 ], [ -1, %bb.bt ], [ %., %bb.bw ], [ -1, %js_dup.exit280 ], [ -1, %bb.t ], [ -1, %bb.s ], [ -1, %bb.r ], [ -1, %bb.q ], [ -1, %bb.p ], [ -1, %bb.o ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @JS_AddIntrinsicDate(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.JSValue, align 8            ; 4 uses
  store i32 0, ptr %1, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !256
  %i.c = tail call fastcc { i64, i64 } @JS_NewCConstructor(ptr noundef %0, i32 noundef 10, ptr noundef nonnull @.str.65, ptr noundef nonnull @js_date_constructor, i32 noundef 7, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%struct.JSValue) align 8 %1, ptr noundef nonnull @js_date_funcs, i32 noundef 3, ptr noundef nonnull @js_date_proto_funcs, i32 noundef 47, i32 noundef 0) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 3 uses
  %i.f = and i64 %i.e, 4294967295
  %i.g = icmp eq i64 %i.f, 6
  br i1 %i.g, label %JS_FreeValue.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = trunc i64 %i.e to i32
  %i.k = icmp ugt i32 %i.j, -10
  br i1 %i.k, label %bb.c, label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.b
  %i.l = inttoptr i64 %i.d to ptr
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8    ; 2 uses
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !8
  %i.p = icmp slt i32 %i.n, 2
  br i1 %i.p, label %bb.d, label %JS_FreeValue.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @js_free_value_rt(ptr noundef %i.i, i64 %i.d, i64 %i.e), !inline_history !143
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @JS_AddIntrinsicEval(ptr nofree noundef writeonly captures(none) initializes((576, 584)) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr @__JS_EvalInternal, ptr %i.a, align 8, !tbaa !268
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @JS_AddIntrinsicRegExp(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !230  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.e = tail call { i64, i64 } @JS_NewObject(ptr noundef %0) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 4 uses
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 4 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !35
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  store i64 %i.g, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !72
  %i.h = and i64 %i.g, 4294967295                 ; 2 uses
  %i.i = icmp eq i64 %i.h, 6
  br i1 %i.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @JS_SetPropertyFunctionList(ptr noundef nonnull %0, i64 %i.f, i64 %i.g, ptr noundef nonnull @js_regexp_proto_funcs, i32 noundef 19)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = tail call { i64, i64 } @JS_NewCFunction3(ptr noundef nonnull %0, ptr noundef nonnull @js_regexp_constructor, ptr noundef nonnull @.str.58, i32 noundef 2, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%struct.JSValue) align 8 %i.k, i32 noundef 0), !inline_history !273 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 4 uses
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 5 uses
  tail call fastcc void @JS_NewGlobalCConstructor2(ptr noundef nonnull %0, i64 %i.m, i64 %i.n, ptr noundef nonnull @.str.58, i64 %i.f, i64 range(i64 -1, 7) %i.g)
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp eq i64 %i.o, 6
  br i1 %i.p, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = trunc i64 %i.n to i32
  %i.s = icmp ugt i32 %i.r, -10
  br i1 %i.s, label %bb.e, label %js_dup.exit

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.m to ptr
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !8
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.d, %bb.e
  store i64 %i.m, ptr %i.q, align 8, !tbaa !35
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.n, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !72
  %i.x = tail call i32 @JS_SetPropertyFunctionList(ptr noundef nonnull %0, i64 %i.m, i64 %i.n, ptr noundef nonnull @js_regexp_funcs, i32 noundef 2)
  %.not40 = icmp eq i32 %i.x, 0
  br i1 %.not40, label %bb.f, label %bb.m

bb.f:                                             ; preds = %js_dup.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.z = icmp eq i64 %i.h, 4294967295
  %i.aa = inttoptr i64 %i.f to ptr
  %.0.i.i = select i1 %i.z, ptr %i.aa, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.ab = tail call fastcc ptr @js_new_shape2(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef range(i32 1, 5) 1) ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !252
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %js_new_shape_with.exit.thread, label %js_new_shape_with.exit

.preheader.i.i.preheader:                         ; preds = %js_new_shape_with.exit
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !252 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  store ptr %.pre.i.i, ptr %i.y, align 8, !tbaa !252
  %.not13.i.i.a = icmp eq ptr %.pre.i.i, null
  br i1 %.not13.i.i.a, label %bb.m, label %bb.i

js_new_shape_with.exit:                           ; preds = %bb.f
  %1 = call fastcc i32 @add_shape_property(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 93, i32 noundef 2)
  %.not.i.not = icmp eq i32 %1, 0
  br i1 %.not.i.not, label %.preheader.i.i.preheader, label %bb.g

bb.g:                                             ; preds = %js_new_shape_with.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !252 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8  ; 2 uses
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !8
  %i.ai = icmp slt i32 %i.ag, 2
  br i1 %i.ai, label %bb.h, label %js_new_shape_with.exit.thread, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_shape0(ptr noundef %i.ad, ptr noundef nonnull %i.ae), !inline_history !261
  br label %js_new_shape_with.exit.thread

js_new_shape_with.exit.thread:                    ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  store ptr null, ptr %i.y, align 8, !tbaa !252
  br label %bb.m

bb.i:                                             ; preds = %.preheader.i.i.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !230 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = tail call fastcc i32 @js_new_shape_with(ptr noundef nonnull %0, ptr noundef nonnull %i.aj, i64 %i.am, i64 %i.ao, i32 noundef 4, ptr noundef nonnull @JS_AddIntrinsicRegExp.regexp_result_props)
  %.not42 = icmp eq i32 %i.ap, 0
  br i1 %.not42, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !230 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 768
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 640
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 648
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = tail call { i64, i64 } @JS_NewObjectProto(ptr noundef nonnull %0, i64 %i.at, i64 %i.av) ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.aw, 0
  %i.ay = extractvalue { i64, i64 } %i.aw, 1      ; 2 uses
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 776
  store i64 %i.ay, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !72
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = icmp eq i64 %i.az, 6
  br i1 %i.ba, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !230 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 768
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 776
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = tail call i32 @JS_SetPropertyFunctionList(ptr noundef nonnull %0, i64 %i.bd, i64 %i.bf, ptr noundef nonnull @js_regexp_string_iterator_proto_funcs, i32 noundef 2)
  %.not43 = icmp eq i32 %i.bg, 0
  br i1 %.not43, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @js_compile_regexp, ptr %i.bh, align 8, !tbaa !274
  br label %bb.m

bb.m:                                             ; preds = %js_new_shape_with.exit.thread, %bb.k, %bb.j, %bb.i, %.preheader.i.i.preheader, %js_dup.exit, %bb.c, %bb.b, %bb.a, %bb.l
  %.0 = phi i32 [ 0, %bb.l ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %js_dup.exit ], [ -1, %.preheader.i.i.preheader ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.k ], [ -1, %js_new_shape_with.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @JS_AddIntrinsicJSON(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.JSClassDef, align 8         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !150
  %i.e = icmp ugt i32 %i.d, 66
  br i1 %i.e, label %JS_IsRegisteredClass.exit, label %JS_IsRegisteredClass.exit.thread

JS_IsRegisteredClass.exit:                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2640
  %i.i = load i32, ptr %i.h, align 8, !tbaa !151
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %JS_IsRegisteredClass.exit.thread, label %init_class_range.exit

JS_IsRegisteredClass.exit.thread:                 ; preds = %bb.a, %JS_IsRegisteredClass.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.j = call fastcc i32 @JS_NewClass1(ptr noundef nonnull %i.b, i32 noundef 66, ptr noundef nonnull %1, i32 noundef 158)
  %i.k = icmp slt i32 %i.j, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  br i1 %i.k, label %init_class_range.exit.thread, label %init_class_range.exit

init_class_range.exit:                            ; preds = %JS_IsRegisteredClass.exit.thread, %JS_IsRegisteredClass.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.o = load i64, ptr %i.n, align 8
  %i.p = tail call i32 @JS_SetPropertyFunctionList(ptr noundef nonnull %0, i64 %i.m, i64 %i.o, ptr noundef nonnull @js_json_obj, i32 noundef 1)
  br label %init_class_range.exit.thread

init_class_range.exit.thread:                     ; preds = %JS_IsRegisteredClass.exit.thread, %init_class_range.exit
  %.0 = phi i32 [ %i.p, %init_class_range.exit ], [ -1, %JS_IsRegisteredClass.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @JS_AddIntrinsicProxy(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.JSClassDef, align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !150
  %i.e = icmp ugt i32 %i.d, 51
  br i1 %i.e, label %JS_IsRegisteredClass.exit, label %JS_IsRegisteredClass.exit.thread

JS_IsRegisteredClass.exit:                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2040
  %i.i = load i32, ptr %i.h, align 8, !tbaa !151
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %JS_IsRegisteredClass.exit.thread, label %bb.c

JS_IsRegisteredClass.exit.thread:                 ; preds = %bb.a, %JS_IsRegisteredClass.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  store ptr @js_proxy_finalizer, ptr %i.j, align 8, !tbaa !275
  store ptr @js_proxy_mark, ptr %i.k, align 8, !tbaa !277
  %i.l = call fastcc i32 @JS_NewClass1(ptr noundef nonnull %i.b, i32 noundef 51, ptr noundef nonnull %1, i32 noundef 158)
  %i.m = icmp slt i32 %i.l, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  br i1 %i.m, label %JS_FreeValue.exit, label %bb.b

bb.b:                                             ; preds = %JS_IsRegisteredClass.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2072
  store ptr @js_proxy_exotic_methods, ptr %i.p, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 2064
  store ptr @js_proxy_call, ptr %i.q, align 8, !tbaa !92
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %JS_IsRegisteredClass.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = tail call { i64, i64 } @JS_NewCFunction3(ptr noundef nonnull %0, ptr noundef nonnull @js_proxy_constructor, ptr noundef nonnull @.str.60, i32 noundef 2, i32 noundef 2, i32 noundef 0, ptr noundef nonnull byval(%struct.JSValue) align 8 %i.r, i32 noundef 3) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 5 uses
  %i.u = extractvalue { i64, i64 } %i.s, 1        ; 4 uses
  %trunc = trunc i64 %i.u to i32                  ; 2 uses
  switch i32 %trunc, label %JS_SetConstructorBit.exit [
    i32 6, label %JS_FreeValue.exit
    i32 -1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = inttoptr i64 %i.t to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i16, ptr %i.w, align 8
  %i.y = or i16 %i.x, 32
  store i16 %i.y, ptr %i.w, align 8
  br label %JS_SetConstructorBit.exit

JS_SetConstructorBit.exit:                        ; preds = %bb.c, %bb.d
  %i.z = tail call i32 @JS_SetPropertyFunctionList(ptr noundef nonnull %0, i64 %i.t, i64 %i.u, ptr noundef nonnull @js_proxy_funcs, i32 noundef 1)
  %.not21 = icmp eq i32 %i.z, 0
  br i1 %.not21, label %bb.e, label %bb.f

bb.e:                                             ; preds = %JS_SetConstructorBit.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = tail call i32 @JS_DefinePropertyValueStr(ptr noundef nonnull %0, i64 %i.ab, i64 %i.ad, ptr noundef nonnull @.str.60, i64 %i.t, i64 %i.u, i32 noundef 3)
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %JS_FreeValue.exit

bb.f:                                             ; preds = %bb.e, %JS_SetConstructorBit.exit
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.ah = icmp ugt i32 %trunc, -10
  br i1 %i.ah, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = inttoptr i64 %i.t to ptr
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8  ; 2 uses
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !8
  %i.am = icmp slt i32 %i.ak, 2
  br i1 %i.am, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ag, i64 %i.t, i64 %i.u), !inline_history !143
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_IsRegisteredClass.exit.thread, %bb.c, %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ -1, %bb.h ], [ 0, %bb.e ], [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %JS_IsRegisteredClass.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @JS_AddIntrinsicMapSet(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  %1 = alloca %struct.JSValue, align 8            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = getelementptr i8, ptr %0, i64 16         ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.e = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val, ptr noundef nonnull %i.a, i32 noundef 191) ; 0 uses
  store i32 0, ptr %1, align 8, !tbaa !35
  store i32 0, ptr %i.c, align 4
  store i64 3, ptr %i.d, align 8, !tbaa !256
  %i.f = call fastcc { i64, i64 } @JS_NewCConstructor(ptr noundef nonnull %0, i32 noundef 36, ptr noundef nonnull %i.a, ptr noundef nonnull @js_map_constructor, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull byval(%struct.JSValue) align 8 %1, ptr noundef nonnull @js_map_funcs, i32 noundef 2, ptr noundef nonnull @js_map_proto_funcs, i32 noundef 14, i32 noundef 0) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 3 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = icmp eq i64 %i.i, 6
  br i1 %i.j, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  %i.l = trunc i64 %i.h to i32
  %i.m = icmp ugt i32 %i.l, -10
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = inttoptr i64 %i.g to ptr
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8    ; 2 uses
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !8
  %i.r = icmp slt i32 %i.p, 2
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call fastcc void @js_free_value_rt(ptr noundef %i.k, i64 %i.g, i64 %i.h), !inline_history !143
  %.val.1.pre = load ptr, ptr %i.b, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.val.1 = phi ptr [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %.val.1.pre, %bb.d ]
  %i.s = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val.1, ptr noundef nonnull %i.a, i32 noundef 192) ; 0 uses
  store i32 0, ptr %1, align 8, !tbaa !35
  store i32 0, ptr %i.c, align 4
  store i64 3, ptr %i.d, align 8, !tbaa !256
  %i.t = call fastcc { i64, i64 } @JS_NewCConstructor(ptr noundef nonnull %0, i32 noundef 37, ptr noundef nonnull %i.a, ptr noundef nonnull @js_map_constructor, i32 noundef 0, i32 noundef 3, i32 noundef 1, ptr noundef nonnull byval(%struct.JSValue) align 8 %1, ptr noundef nonnull @js_set_funcs, i32 noundef 1, ptr noundef nonnull @js_set_proto_funcs, i32 noundef 18, i32 noundef 0) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.t, 1        ; 3 uses
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp eq i64 %i.w, 6
  br i1 %i.x, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  %i.z = trunc i64 %i.v to i32
  %i.aa = icmp ugt i32 %i.z, -10
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
end_hunk_1
