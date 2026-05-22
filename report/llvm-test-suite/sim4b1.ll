inline.NumInlined: 64
inline.NumDeleted: 23
begin_hunk_0_@SIM4:bb.a
  %i.bxl = load ptr, ptr %i.b, align 8            ; 8 uses
  %i.bxm = icmp ne ptr %i.bxl, null
  %or.cond.i506 = select i1 %i.bxk, i1 %i.bxm, i1 false
  br i1 %or.cond.i506, label %bb.hv, label %bb.hz

bb.hv:                                            ; preds = %bb.hu
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxl, i64 12
  %i.bxo = load i8, ptr %i.bxn, align 4, !tbaa !146
  %i.bxp = icmp eq i8 %i.bxo, 1
  br i1 %i.bxp, label %bb.hw, label %.thread289.i

.thread289.i:                                     ; preds = %bb.hv
  %i.bxq = add nsw i32 %.0165.i, %.2187.i
  %i.bxr = load i32, ptr %i.buo, align 4, !tbaa !35
  %i.bxs = load i32, ptr %i.bvw, align 4, !tbaa !33
  br label %.lr.ph250.preheader.i

bb.hw:                                            ; preds = %bb.hv
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxl, i64 8
  %i.bxu = load i32, ptr %i.bxt, align 8, !tbaa !148 ; 2 uses
  %i.bxv = sub nsw i32 %.0165.i, %i.bxu
  %i.bxw = load i32, ptr %i.buo, align 4, !tbaa !35
  %i.bxx = add i32 %i.bxw, %i.bxu
  store i32 %i.bxx, ptr %i.buo, align 4, !tbaa !35
  %i.bxy = load ptr, ptr %i.bxl, align 8, !tbaa !149 ; 3 uses
  %i.bxz = load ptr, ptr %i.c, align 8, !tbaa !150
  %i.bya = icmp eq ptr %i.bxz, %i.bxl
  br i1 %i.bya, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  store ptr %i.bxy, ptr %i.c, align 8, !tbaa !150
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  call void @free(ptr noundef nonnull %i.bxl) #18
  store ptr %i.bxy, ptr %i.b, align 8, !tbaa !150
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hu
  %.0184242.i = phi ptr [ %i.bxy, %bb.hy ], [ %i.bxl, %bb.hu ] ; 2 uses
  %.1166.i = phi i32 [ %i.bxv, %bb.hy ], [ %.0165.i, %bb.hu ]
  %i.byb = add nsw i32 %.1166.i, %.2187.i         ; 2 uses
  %i.byc = load i32, ptr %i.buo, align 4, !tbaa !35 ; 2 uses
  %i.byd = load i32, ptr %i.bvw, align 4, !tbaa !33 ; 2 uses
  %.not211243.i = icmp eq ptr %.0184242.i, null
  br i1 %.not211243.i, label %._crit_edge.i510, label %.lr.ph250.preheader.i

.lr.ph250.preheader.i:                            ; preds = %bb.hz, %.thread289.i
  %i.bye = phi i32 [ %i.bxs, %.thread289.i ], [ %i.byd, %bb.hz ] ; 2 uses
  %i.byf = phi i32 [ %i.bxr, %.thread289.i ], [ %i.byc, %bb.hz ] ; 2 uses
  %i.byg = phi i32 [ %i.bxq, %.thread289.i ], [ %i.byb, %bb.hz ]
  %.0184242293.i = phi ptr [ %i.bxl, %.thread289.i ], [ %.0184242.i, %bb.hz ]
  %i.byh = zext i32 %i.bye to i64
  %i.byi = getelementptr inbounds nuw i8, ptr %i.bue, i64 %i.byh
  %i.byj = getelementptr inbounds i8, ptr %i.byi, i64 -1
  %i.byk = zext i32 %i.byf to i64
  %i.byl = getelementptr inbounds nuw i8, ptr %i.bud, i64 %i.byk
  %i.bym = getelementptr inbounds i8, ptr %i.byl, i64 -1
  br label %.lr.ph250.i

.lr.ph250.i:                                      ; preds = %.loopexit.i508, %.lr.ph250.preheader.i
  %.0184249.i = phi ptr [ %.0184.i, %.loopexit.i508 ], [ %.0184242293.i, %.lr.ph250.preheader.i ] ; 5 uses
  %.0172248.i = phi i32 [ %.1173.i, %.loopexit.i508 ], [ 0, %.lr.ph250.preheader.i ] ; 5 uses
  %.0174247.i = phi i32 [ %.3177.i, %.loopexit.i508 ], [ 0, %.lr.ph250.preheader.i ] ; 6 uses
  %.0178246.i = phi ptr [ %.2180.i, %.loopexit.i508 ], [ %i.byj, %.lr.ph250.preheader.i ] ; 8 uses
  %.0181245.i = phi ptr [ %.2183.i, %.loopexit.i508 ], [ %i.bym, %.lr.ph250.preheader.i ] ; 8 uses
  %.1195244.i = phi i32 [ %.4.i509, %.loopexit.i508 ], [ %.0194255.i, %.lr.ph250.preheader.i ] ; 6 uses
  %i.byn = getelementptr inbounds nuw i8, ptr %.0184249.i, i64 12
  %i.byo = load i8, ptr %i.byn, align 4, !tbaa !146
  switch i8 %i.byo, label %.loopexit.i508 [
    i8 1, label %bb.ia
    i8 2, label %bb.ib
    i8 3, label %.preheader.i507
  ]

.preheader.i507:                                  ; preds = %.lr.ph250.i
  %i.byp = getelementptr inbounds nuw i8, ptr %.0184249.i, i64 8
  %i.byq = load i32, ptr %i.byp, align 8, !tbaa !148 ; 5 uses
  %i.byr = icmp sgt i32 %i.byq, 0
  br i1 %i.byr, label %.lr.ph.i513.preheader, label %.loopexit.i508

.lr.ph.i513.preheader:                            ; preds = %.preheader.i507
  %i.bys = zext nneg i32 %i.byq to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %i.byq, 8
  br i1 %min.iters.check, label %.lr.ph.i513.preheader1149, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i513.preheader
  %n.vec = and i64 %i.bys, 2147483640             ; 5 uses
  %i.byt = trunc nuw nsw i64 %n.vec to i32
  %i.byu = getelementptr i8, ptr %.0178246.i, i64 %n.vec
  %i.byv = getelementptr i8, ptr %.0181245.i, i64 %n.vec
  %i.byw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0174247.i, i64 0
  %i.byx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1195244.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.byw, %vector.ph ], [ %i.bzk, %vector.body ]
  %vec.phi1033 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bzl, %vector.body ]
  %vec.phi1034 = phi <4 x i32> [ %i.byx, %vector.ph ], [ %i.bze, %vector.body ]
  %vec.phi1035 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bzf, %vector.body ]
  %next.gep = getelementptr i8, ptr %.0178246.i, i64 %index ; 2 uses
  %next.gep1036 = getelementptr i8, ptr %.0181245.i, i64 %index ; 2 uses
  %i.byy = getelementptr i8, ptr %next.gep1036, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep1036, align 1, !tbaa !20
  %wide.load1037 = load <4 x i8>, ptr %i.byy, align 1, !tbaa !20
  %i.byz = getelementptr i8, ptr %next.gep, i64 4
  %wide.load1038 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load1039 = load <4 x i8>, ptr %i.byz, align 1, !tbaa !20
  %i.bza = icmp eq <4 x i8> %wide.load, %wide.load1038 ; 2 uses
  %i.bzb = icmp eq <4 x i8> %wide.load1037, %wide.load1039 ; 2 uses
  %i.bzc = zext <4 x i1> %i.bza to <4 x i32>
  %i.bzd = zext <4 x i1> %i.bzb to <4 x i32>
  %i.bze = add <4 x i32> %vec.phi1034, %i.bzc     ; 2 uses
  %i.bzf = add <4 x i32> %vec.phi1035, %i.bzd     ; 2 uses
  %i.bzg = xor <4 x i1> %i.bza, splat (i1 true)
  %i.bzh = xor <4 x i1> %i.bzb, splat (i1 true)
  %i.bzi = zext <4 x i1> %i.bzg to <4 x i32>
  %i.bzj = zext <4 x i1> %i.bzh to <4 x i32>
  %i.bzk = add <4 x i32> %vec.phi, %i.bzi         ; 2 uses
  %i.bzl = add <4 x i32> %vec.phi1033, %i.bzj     ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bzm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bzm, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bzl, %i.bzk
  %i.bzn = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx1040 = add <4 x i32> %i.bzf, %i.bze
  %i.bzo = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1040) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bys
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %.lr.ph.i513.preheader1149

.lr.ph.i513.preheader1149:                        ; preds = %.lr.ph.i513.preheader, %middle.block
  %.0163238.i.ph = phi i32 [ 0, %.lr.ph.i513.preheader ], [ %i.byt, %middle.block ]
  %.1175237.i.ph = phi i32 [ %.0174247.i, %.lr.ph.i513.preheader ], [ %i.bzn, %middle.block ]
  %.1179236.i.ph = phi ptr [ %.0178246.i, %.lr.ph.i513.preheader ], [ %i.byu, %middle.block ]
  %.1182235.i.ph = phi ptr [ %.0181245.i, %.lr.ph.i513.preheader ], [ %i.byv, %middle.block ]
  %.2196234.i.ph = phi i32 [ %.1195244.i, %.lr.ph.i513.preheader ], [ %i.bzo, %middle.block ]
  br label %.lr.ph.i513

bb.ia:                                            ; preds = %.lr.ph250.i
  %i.bzp = getelementptr inbounds nuw i8, ptr %.0184249.i, i64 8
  %i.bzq = load i32, ptr %i.bzp, align 8, !tbaa !148 ; 3 uses
  %i.bzr = add nsw i32 %i.bzq, %.0172248.i
  %i.bzs = add nsw i32 %i.bzq, %.0174247.i
  %i.bzt = sext i32 %i.bzq to i64
  %i.bzu = getelementptr inbounds i8, ptr %.0181245.i, i64 %i.bzt
  br label %.loopexit.i508

bb.ib:                                            ; preds = %.lr.ph250.i
  %i.bzv = getelementptr inbounds nuw i8, ptr %.0184249.i, i64 8
  %i.bzw = load i32, ptr %i.bzv, align 8, !tbaa !148 ; 3 uses
  %i.bzx = add nsw i32 %i.bzw, %.0172248.i
  %i.bzy = add nsw i32 %i.bzw, %.0174247.i
  %i.bzz = sext i32 %i.bzw to i64
  %i.caa = getelementptr inbounds i8, ptr %.0178246.i, i64 %i.bzz
  br label %.loopexit.i508

.lr.ph.i513:                                      ; preds = %.lr.ph.i513.preheader1149, %.lr.ph.i513
  %.0163238.i = phi i32 [ %i.caf, %.lr.ph.i513 ], [ %.0163238.i.ph, %.lr.ph.i513.preheader1149 ]
  %.1175237.i = phi i32 [ %.2176.i, %.lr.ph.i513 ], [ %.1175237.i.ph, %.lr.ph.i513.preheader1149 ]
  %.1179236.i = phi ptr [ %i.cah, %.lr.ph.i513 ], [ %.1179236.i.ph, %.lr.ph.i513.preheader1149 ] ; 2 uses
  %.1182235.i = phi ptr [ %i.cag, %.lr.ph.i513 ], [ %.1182235.i.ph, %.lr.ph.i513.preheader1149 ] ; 2 uses
  %.2196234.i = phi i32 [ %.3197.i, %.lr.ph.i513 ], [ %.2196234.i.ph, %.lr.ph.i513.preheader1149 ]
  %i.cab = load i8, ptr %.1182235.i, align 1, !tbaa !20
  %i.cac = load i8, ptr %.1179236.i, align 1, !tbaa !20
  %.not212.i = icmp eq i8 %i.cab, %i.cac          ; 2 uses
  %i.cad = zext i1 %.not212.i to i32
  %.3197.i = add i32 %.2196234.i, %i.cad          ; 2 uses
  %not..not212.i = xor i1 %.not212.i, true
  %i.cae = zext i1 %not..not212.i to i32
  %.2176.i = add nsw i32 %.1175237.i, %i.cae      ; 2 uses
  %i.caf = add nuw nsw i32 %.0163238.i, 1         ; 2 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %.1182235.i, i64 1
  %i.cah = getelementptr inbounds nuw i8, ptr %.1179236.i, i64 1
  %exitcond.not.i514 = icmp eq i32 %i.caf, %i.byq
  br i1 %exitcond.not.i514, label %.loopexit.loopexit.i, label %.lr.ph.i513, !llvm.loop !152

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i513, %middle.block
  %.3197.i.lcssa = phi i32 [ %i.bzo, %middle.block ], [ %.3197.i, %.lr.ph.i513 ]
  %.2176.i.lcssa = phi i32 [ %i.bzn, %middle.block ], [ %.2176.i, %.lr.ph.i513 ]
  %scevgep.i515 = getelementptr i8, ptr %.0181245.i, i64 1
  %i.cai = add nsw i32 %i.byq, -1
  %i.caj = zext nneg i32 %i.cai to i64            ; 2 uses
  %scevgep278.i = getelementptr i8, ptr %scevgep.i515, i64 %i.caj
  %scevgep279.i = getelementptr i8, ptr %.0178246.i, i64 1
  %scevgep280.i = getelementptr i8, ptr %scevgep279.i, i64 %i.caj
  br label %.loopexit.i508

.loopexit.i508:                                   ; preds = %.loopexit.loopexit.i, %bb.ib, %bb.ia, %.preheader.i507, %.lr.ph250.i
  %.4.i509 = phi i32 [ %.1195244.i, %.lr.ph250.i ], [ %.1195244.i, %bb.ia ], [ %.1195244.i, %bb.ib ], [ %.1195244.i, %.preheader.i507 ], [ %.3197.i.lcssa, %.loopexit.loopexit.i ] ; 2 uses
  %.2183.i = phi ptr [ %.0181245.i, %.lr.ph250.i ], [ %i.bzu, %bb.ia ], [ %.0181245.i, %bb.ib ], [ %.0181245.i, %.preheader.i507 ], [ %scevgep278.i, %.loopexit.loopexit.i ]
  %.2180.i = phi ptr [ %.0178246.i, %.lr.ph250.i ], [ %.0178246.i, %bb.ia ], [ %i.caa, %bb.ib ], [ %.0178246.i, %.preheader.i507 ], [ %scevgep280.i, %.loopexit.loopexit.i ]
  %.3177.i = phi i32 [ %.0174247.i, %.lr.ph250.i ], [ %i.bzs, %bb.ia ], [ %i.bzy, %bb.ib ], [ %.0174247.i, %.preheader.i507 ], [ %.2176.i.lcssa, %.loopexit.loopexit.i ] ; 2 uses
  %.1173.i = phi i32 [ %.0172248.i, %.lr.ph250.i ], [ %i.bzr, %bb.ia ], [ %i.bzx, %bb.ib ], [ %.0172248.i, %.preheader.i507 ], [ %.0172248.i, %.loopexit.loopexit.i ] ; 2 uses
  %.0184.i = load ptr, ptr %.0184249.i, align 8, !tbaa !150 ; 2 uses
  %.not211.i = icmp eq ptr %.0184.i, null
  br i1 %.not211.i, label %._crit_edge.i510, label %.lr.ph250.i, !llvm.loop !153

._crit_edge.i510:                                 ; preds = %.loopexit.i508, %bb.hz
  %i.cak = phi i32 [ %i.byd, %bb.hz ], [ %i.bye, %.loopexit.i508 ]
  %i.cal = phi i32 [ %i.byc, %bb.hz ], [ %i.byf, %.loopexit.i508 ]
  %i.cam = phi i32 [ %i.byb, %bb.hz ], [ %i.byg, %.loopexit.i508 ] ; 2 uses
  %.1195.lcssa.i = phi i32 [ %.0194255.i, %bb.hz ], [ %.4.i509, %.loopexit.i508 ] ; 3 uses
  %.0174.lcssa.i = phi i32 [ 0, %bb.hz ], [ %.3177.i, %.loopexit.i508 ]
  %.0172.lcssa.i = phi i32 [ 0, %bb.hz ], [ %.1173.i, %.loopexit.i508 ]
  %i.can = load i32, ptr %i.bvz, align 4, !tbaa !50 ; 2 uses
  %i.cao = load i32, ptr %i.bur, align 4, !tbaa !51
  %i.cap = add i32 %i.cak, %i.cal
  %reass.sub679 = sub i32 %.0172.lcssa.i, %i.cap
  %i.caq = add i32 %reass.sub679, 2
  %i.car = add i32 %i.caq, %i.can
  %i.cas = add i32 %i.car, %i.cao
  %i.cat = uitofp i32 %i.cas to double
  %i.cau = fmul nnan double %i.cat, 5.000000e-01
  %i.cav = fptosi double %i.cau to i32            ; 2 uses
  %i.caw = sub nsw i32 %i.cav, %.0174.lcssa.i
  %i.cax = mul nsw i32 %i.caw, 100
  %i.cay = sdiv i32 %i.cax, %i.cav
  %i.caz = getelementptr inbounds nuw i8, ptr %i.buo, i64 16
  store i32 %i.cay, ptr %i.caz, align 4, !tbaa !154
  %i.cba = load ptr, ptr %i.c, align 8, !tbaa !150
  store ptr %.2192.i, ptr %i.cba, align 8, !tbaa !149
  %i.cbb = load ptr, ptr %i.b, align 8, !tbaa !150 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %indvars.iv.next.i511 = add nsw i64 %indvars.iv.i502, -1
  %i.cbc = icmp sgt i64 %indvars.iv.i502, 0
  br i1 %i.cbc, label %.lr.ph263.i, label %._crit_edge264.i, !llvm.loop !155

._crit_edge264.i:                                 ; preds = %._crit_edge.i510
  %.pre285.i = load i32, ptr %i.bvw, align 4, !tbaa !33
  %i.cbd = add i32 %.pre285.i, -1                 ; 2 uses
  %.not.i512 = icmp eq i32 %i.cbd, 0
  %.not203.i = icmp eq i32 %i.cbd, %i.bug         ; 2 uses
  %or.cond213.i = or i1 %.not.i512, %.not203.i
  br i1 %or.cond213.i, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %._crit_edge264.i
  %i.cbe = call ptr @xmalloc(i64 noundef 40) #18  ; 6 uses
  %i.cbf = load ptr, ptr %i.be, align 8, !tbaa !136
  store ptr %i.cbf, ptr %i.cbe, align 8, !tbaa !137
  store ptr %i.cbe, ptr %i.be, align 8, !tbaa !136
  %i.cbg = load i32, ptr %i.buo, align 4, !tbaa !35 ; 2 uses
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.cbe, i64 16
  store i32 %i.cbg, ptr %i.cbh, align 8, !tbaa !141
  %i.cbi = load i32, ptr %i.bvw, align 4, !tbaa !33 ; 2 uses
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.cbe, i64 20
  store i32 %i.cbi, ptr %i.cbj, align 4, !tbaa !142
  %i.cbk = add i32 %.2169.i, 1
  %i.cbl = sub i32 %i.cbk, %i.cbg
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbe, i64 24
  store i32 %i.cbl, ptr %i.cbm, align 8, !tbaa !143
  %i.cbn = add i32 %.1171.i, 1
  %i.cbo = sub i32 %i.cbn, %i.cbi
  br label %.thread311.sink.split.i

bb.id:                                            ; preds = %._crit_edge264.i
  br i1 %.not203.i, label %pluri_align.exit, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.cbp = call ptr @xmalloc(i64 noundef 40) #18  ; 6 uses
  %i.cbq = load ptr, ptr %i.be, align 8, !tbaa !136
  store ptr %i.cbq, ptr %i.cbp, align 8, !tbaa !137
  store ptr %i.cbp, ptr %i.be, align 8, !tbaa !136
  %i.cbr = load i32, ptr %i.buo, align 4, !tbaa !35 ; 2 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbp, i64 16
  store i32 %i.cbr, ptr %i.cbs, align 8, !tbaa !141
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbp, i64 20
  store i32 1, ptr %i.cbt, align 4, !tbaa !142
  %i.cbu = add i32 %.2169.i, 1
  %i.cbv = sub i32 %i.cbu, %i.cbr
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbp, i64 24
  store i32 %i.cbv, ptr %i.cbw, align 8, !tbaa !143
  br label %.thread311.sink.split.i

.thread311.sink.split.i:                          ; preds = %bb.ie, %bb.ic
  %.sink327.i = phi ptr [ %i.cbp, %bb.ie ], [ %i.cbe, %bb.ic ] ; 3 uses
  %.1171.lcssa322.sink.i = phi i32 [ %.1171.i, %bb.ie ], [ %i.cbo, %bb.ic ]
  %i.cbx = getelementptr inbounds nuw i8, ptr %.sink327.i, i64 28
  store i32 %.1171.lcssa322.sink.i, ptr %i.cbx, align 4, !tbaa !144
  %i.cby = getelementptr inbounds nuw i8, ptr %.sink327.i, i64 8
  store ptr %i.cbb, ptr %i.cby, align 8, !tbaa !140
  %i.cbz = getelementptr inbounds nuw i8, ptr %.sink327.i, i64 32
  store i32 %i.cam, ptr %i.cbz, align 8, !tbaa !145
  br label %pluri_align.exit

pluri_align.exit.thread:                          ; preds = %.critedge.i504, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.if

pluri_align.exit:                                 ; preds = %slide_intron.exit, %bb.id, %.thread311.sink.split.i
  %.0194.lcssa303.i = phi i32 [ %.1195.lcssa.i, %bb.id ], [ 0, %slide_intron.exit ], [ %.1195.lcssa.i, %.thread311.sink.split.i ]
  store i32 %.0194.lcssa303.i, ptr %i.bg, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.cca = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 20), align 4
  %.not580 = icmp eq i32 %i.cca, 0
  br i1 %.not580, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %pluri_align.exit.thread, %pluri_align.exit
  %i.ccb = load ptr, ptr %i.be, align 8, !tbaa !156 ; 2 uses
  %.not5.i = icmp eq ptr %i.ccb, null
  br i1 %.not5.i, label %free_align.exit, label %.lr.ph.i516

.lr.ph.i516:                                      ; preds = %bb.if, %.lr.ph.i516
  %.06.i = phi ptr [ %i.ccc, %.lr.ph.i516 ], [ %i.ccb, %bb.if ] ; 3 uses
  %i.ccc = load ptr, ptr %.06.i, align 8, !tbaa !137 ; 2 uses
  %i.ccd = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.cce = load ptr, ptr %i.ccd, align 8, !tbaa !140
  call void @Free_script(ptr noundef %i.cce) #18
  call void @free(ptr noundef nonnull %.06.i) #18
  %.not.i517 = icmp eq ptr %i.ccc, null
  br i1 %.not.i517, label %free_align.exit, label %.lr.ph.i516, !llvm.loop !157

free_align.exit:                                  ; preds = %.lr.ph.i516, %bb.if
  store ptr null, ptr %i.be, align 8, !tbaa !156
  br label %bb.ig

bb.ig:                                            ; preds = %._crit_edge, %bb.q, %free_align.exit, %pluri_align.exit, %bb.d
  %indvars.iv.next752 = add nuw nsw i64 %indvars.iv751, 1 ; 2 uses
  %i.ccf = load i32, ptr %i.u, align 8, !tbaa !19
  %i.ccg = zext i32 %i.ccf to i64
  %i.cch = icmp samesign ult i64 %indvars.iv.next752, %i.ccg
  br i1 %i.cch, label %bb.d, label %._crit_edge674.loopexit, !llvm.loop !158

._crit_edge674.loopexit:                          ; preds = %bb.ig
  %.pre765 = load ptr, ptr %7, align 8, !tbaa !20
  br label %._crit_edge674

._crit_edge674:                                   ; preds = %._crit_edge674.loopexit, %bb.c
  %i.cci = phi ptr [ %.pre765, %._crit_edge674.loopexit ], [ null, %bb.c ]
  %i.ccj = load ptr, ptr %6, align 8, !tbaa !20
  call void @free(ptr noundef %i.ccj) #18
  call void @free(ptr noundef %i.cci) #18
  br label %bb.ih

bb.ih:                                            ; preds = %bb.a, %bb.b, %._crit_edge674
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @init_col(ptr noundef writeonly captures(none) initializes((0, 16)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !19
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call ptr @xmalloc(i64 noundef %i.d) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exon_cores(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull captures(none) %6, ptr noundef captures(none) %7, ptr noundef captures(address_is_null) %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct._hash_node_t, align 4       ; 7 uses
  %i.a = icmp ne ptr %8, null
  %i.b = zext i1 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  %i.e = add i32 %2, 1
  %i.f = add i32 %i.e, %i.d
  %i.g = zext i32 %i.f to i64
  %i.h = tail call ptr @xcalloc(i64 noundef %i.g, i64 noundef 4) #18 ; 2 uses
  %i.i = load i32, ptr %i.c, align 8, !tbaa !8
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %.not82.i = icmp eq i32 %2, 0
  br i1 %.not82.i, label %search.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = zext i32 %2 to i64                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = ptrtoint ptr %1 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  br label %.critedge.i

.critedge.i.backedge:                             ; preds = %.lr.ph.i, %.lr.ph72.i
  %.141.i.be = phi i32 [ %i.as, %.lr.ph72.i ], [ %i.af, %.lr.ph.i ]
  %.1.i.be = phi ptr [ %i.an, %.lr.ph72.i ], [ %i.aa, %.lr.ph.i ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %bb.b
  %.141.i = phi i32 [ 0, %bb.b ], [ %.141.i.be, %.critedge.i.backedge ] ; 3 uses
  %.1.i = phi ptr [ %1, %bb.b ], [ %.1.i.be, %.critedge.i.backedge ] ; 2 uses
  store i32 0, ptr %9, align 4, !tbaa !159
  %i.u = load i32, ptr %i.l, align 4, !tbaa !39   ; 2 uses
  %i.v = icmp ugt i32 %i.u, 1
  %i.w = icmp ult i32 %.141.i, %2
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.critedge.i
  %.242.lcssa.i = phi i32 [ %.141.i, %.critedge.i ], [ %i.af, %bb.c ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.1.i, %.critedge.i ], [ %i.aa, %bb.c ]
  %i.y = icmp ult i32 %.242.lcssa.i, %2
  br i1 %i.y, label %.lr.ph72.i, label %._crit_edge81.loopexit.i

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.c
  %.265.i = phi ptr [ %i.aa, %bb.c ], [ %.1.i, %.critedge.i ] ; 2 uses
  %.24264.i = phi i32 [ %i.af, %bb.c ], [ %.141.i, %.critedge.i ]
  %.04663.i = phi i32 [ %i.aj, %bb.c ], [ 1, %.critedge.i ]
  %i.z = phi i32 [ %i.ai, %bb.c ], [ 0, %.critedge.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.265.i, i64 1 ; 3 uses
  %i.ab = load i8, ptr %.265.i, align 1, !tbaa !20
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @encoding, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 2 uses
  %i.af = add nuw i32 %.24264.i, 1                ; 4 uses
  %i.ag = icmp ugt i32 %i.ae, 3
  br i1 %i.ag, label %.critedge.i.backedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ah = shl i32 %i.z, 2
  %i.ai = or disjoint i32 %i.ae, %i.ah            ; 2 uses
  store i32 %i.ai, ptr %9, align 4, !tbaa !159
  %i.aj = add nuw i32 %.04663.i, 1                ; 2 uses
  %i.ak = icmp ult i32 %i.aj, %i.u
  %i.al = icmp ult i32 %i.af, %2
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph.i, label %.preheader.i, !llvm.loop !161

.lr.ph72.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %.371.i = phi ptr [ %i.an, %.loopexit.i ], [ %.2.lcssa.i, %.preheader.i ] ; 2 uses
  %.34370.i = phi i32 [ %i.as, %.loopexit.i ], [ %.242.lcssa.i, %.preheader.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.371.i, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.371.i, align 1, !tbaa !20
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @encoding, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.as = add i32 %.34370.i, 1                    ; 5 uses
  %i.at = icmp ult i32 %i.ar, 4
  br i1 %i.at, label %bb.d, label %.critedge.i.backedge

bb.d:                                             ; preds = %.lr.ph72.i
  %i.au = load i32, ptr %9, align 4, !tbaa !159
  %i.av = load i32, ptr %i.m, align 8, !tbaa !40
  %i.aw = and i32 %i.av, %i.au
  %i.ax = shl i32 %i.aw, 2
  %i.ay = or disjoint i32 %i.ax, %i.ar            ; 2 uses
  store i32 %i.ay, ptr %9, align 4, !tbaa !159
  %i.az = load ptr, ptr %0, align 8, !tbaa !42
  %i.ba = and i32 %i.ay, 524287
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bb
  %i.bd = call ptr @tfind(ptr noundef nonnull %9, ptr noundef %i.bc, ptr noundef nonnull @hash_node_compare) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !162
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.067.i = load i32, ptr %i.bf, align 4, !tbaa !4 ; 2 uses
  %i.bg = icmp sgt i32 %.067.i, -1
  br i1 %i.bg, label %.lr.ph69.i, label %.loopexit.i

.lr.ph69.i:                                       ; preds = %bb.e
  %i.bh = sext i32 %i.as to i64                   ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %1, i64 %i.bh ; 2 uses
  %i.bj = icmp slt i64 %i.bh, %i.o
  br label %bb.f

bb.f:                                             ; preds = %extend_hit.exit.i, %.lr.ph69.i
  %.068.i = phi i32 [ %.067.i, %.lr.ph69.i ], [ %.0.i, %extend_hit.exit.i ] ; 5 uses
  %i.bk = sub nsw i32 %i.as, %.068.i
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = icmp sgt i32 %i.bn, %.068.i
  br i1 %i.bo, label %.extend_hit.exit_crit_edge.i, label %bb.g
end_hunk_0
begin_hunk_1_@exon_cores:bb.a

.critedge.loopexit.split.loop.exit57.i:           ; preds = %.lr.ph.i200
  %i.fx = trunc nuw i64 %indvars.iv.i to i32
  br label %.critedge.i196

.critedge.i196:                                   ; preds = %bb.q, %.critedge.loopexit.split.loop.exit57.i, %bb.p
  %.033.lcssa.i = phi i32 [ %i.fq, %bb.p ], [ %i.fx, %.critedge.loopexit.split.loop.exit57.i ], [ %i.fd, %bb.q ] ; 4 uses
  %i.fy = sub i32 %.033.lcssa.i, %.040.i          ; 2 uses
  %i.fz = icmp ult i32 %i.fy, 20
  br i1 %i.fz, label %bb.r, label %.preheader.i197, !llvm.loop !168

.preheader.i197:                                  ; preds = %.critedge.i196
  %i.ga = icmp ult i32 %.040.i, %.033.lcssa.i
  %wide.trip.count.i = zext i32 %.033.lcssa.i to i64 ; 2 uses
  br i1 %i.ga, label %.lr.ph39.i, label %._crit_edge.i

.lr.ph39.i:                                       ; preds = %.preheader.i197, %.lr.ph39.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %.lr.ph39.i ], [ %i.ff, %.preheader.i197 ] ; 2 uses
  %i.gb = load ptr, ptr %6, align 8, !tbaa !20
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv46.i
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !31
  call void @free(ptr noundef %i.gd) #18
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %exitcond49.not.i = icmp eq i64 %indvars.iv.next47.i, %wide.trip.count.i
  br i1 %exitcond49.not.i, label %._crit_edge.loopexit.i, label %.lr.ph39.i, !llvm.loop !170

._crit_edge.loopexit.i:                           ; preds = %.lr.ph39.i
  %.pre.i199 = load ptr, ptr %6, align 8, !tbaa !20
  %.pre50.i = load i32, ptr %i.ez, align 8, !tbaa !19
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i197
  %i.ge = phi i32 [ %.pre50.i, %._crit_edge.loopexit.i ], [ %i.fd, %.preheader.i197 ]
  %i.gf = phi ptr [ %.pre.i199, %._crit_edge.loopexit.i ], [ %i.fe, %.preheader.i197 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.ff
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %wide.trip.count.i
  %i.gi = sub i32 %i.ge, %.033.lcssa.i
  %i.gj = zext i32 %i.gi to i64
  %i.gk = shl nuw nsw i64 %i.gj, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.gg, ptr nonnull align 8 %i.gh, i64 %i.gk, i1 false)
  %i.gl = load i32, ptr %i.ez, align 8, !tbaa !19
  %i.gm = sub i32 %i.gl, %i.fy                    ; 2 uses
  store i32 %i.gm, ptr %i.ez, align 8, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i, %.critedge.i196, %bb.o
  %i.gn = phi i32 [ %i.fd, %bb.o ], [ %i.gm, %._crit_edge.i ], [ %i.fd, %.critedge.i196 ] ; 3 uses
  %.1.i198 = phi i32 [ %i.fo, %bb.o ], [ %.040.i, %._crit_edge.i ], [ %i.fq, %.critedge.i196 ] ; 2 uses
  %i.go = icmp ult i32 %.1.i198, %i.gn
  br i1 %i.go, label %.lr.ph42.i, label %trim_small_repeated_msps.exit.loopexit

trim_small_repeated_msps.exit.loopexit:           ; preds = %bb.r
  %i.gp = zext i32 %i.gn to i64
  br label %trim_small_repeated_msps.exit

trim_small_repeated_msps.exit:                    ; preds = %trim_small_repeated_msps.exit.loopexit, %search.exit
  %i.gq = phi i64 [ %i.gp, %trim_small_repeated_msps.exit.loopexit ], [ 0, %search.exit ]
  %i.gr = load ptr, ptr %6, align 8, !tbaa !20
  call void @qsort(ptr noundef %i.gr, i64 noundef %i.gq, i64 noundef 8, ptr noundef nonnull @msp_compare) #18
  %i.gs = load i32, ptr %i.ez, align 8, !tbaa !19 ; 2 uses
  %.not98.i = icmp eq i32 %i.gs, 0
  br i1 %.not98.i, label %combine_msps.exit.thread, label %.lr.ph97.i

.lr.ph97.i:                                       ; preds = %trim_small_repeated_msps.exit, %.thread91.i
  %i.gt = phi i32 [ %i.jc, %.thread91.i ], [ %i.gs, %trim_small_repeated_msps.exit ] ; 8 uses
  %.06696.i = phi i32 [ %.1.i203, %.thread91.i ], [ 0, %trim_small_repeated_msps.exit ] ; 3 uses
  %i.gu = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
  %i.gv = zext i32 %.06696.i to i64               ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !31 ; 6 uses
  %i.gy = add nuw i32 %.06696.i, 1                ; 5 uses
  %i.gz = icmp ult i32 %i.gy, %i.gt
  br i1 %i.gz, label %.lr.ph.i205, label %.thread91.i

.lr.ph.i205:                                      ; preds = %.lr.ph97.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 12 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !51 ; 3 uses
  %i.hc = add i32 %i.hb, 1
  %invariant.op.i = add i32 %i.hb, 2
  %i.hd = load i32, ptr %i.gx, align 4, !tbaa !35 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.hf = add nuw nsw i64 %i.gv, 1
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i205
  %indvars.iv.i206 = phi i64 [ %i.hf, %.lr.ph.i205 ], [ %indvars.iv.i206.be, %.backedge.backedge ] ; 5 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.i206
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !31 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !33 ; 2 uses
  %.not.i207 = icmp ugt i32 %i.hj, %i.hc
  %.reass.i = sub i32 %invariant.op.i, %i.hj
  %.170.i = select i1 %.not.i207, i32 0, i32 %.reass.i ; 4 uses
  %i.hk = load i32, ptr %i.hh, align 4, !tbaa !35 ; 3 uses
  %i.hl = icmp ugt i32 %i.hk, %i.hd
  br i1 %i.hl, label %bb.s, label %.thr_comm.i

bb.s:                                             ; preds = %.backedge
  %i.hm = load i32, ptr %i.he, align 4, !tbaa !50 ; 3 uses
  %i.hn = add i32 %i.hm, 1
  %.not84.i = icmp ugt i32 %i.hk, %i.hn
  br i1 %.not84.i, label %.thr_comm.i, label %bb.t

.thr_comm.i:                                      ; preds = %bb.s, %.backedge
  %i.ho = icmp eq i32 %.170.i, 0
  %indvars.iv.next.i208 = add nuw nsw i64 %indvars.iv.i206, 1 ; 2 uses
  %lftr.wideiv.i209 = trunc i64 %indvars.iv.next.i208 to i32
  %exitcond.not.i210 = icmp eq i32 %i.gt, %lftr.wideiv.i209
  %or.cond.i = select i1 %i.ho, i1 true, i1 %exitcond.not.i210
  br i1 %or.cond.i, label %.thread91.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.thr_comm.i, %bb.v
  %indvars.iv.i206.be = phi i64 [ %indvars.iv.next.old.i, %bb.v ], [ %indvars.iv.next.i208, %.thr_comm.i ]
  br label %.backedge, !llvm.loop !171

bb.t:                                             ; preds = %bb.s
  %i.hp = sub i32 %i.hm, %i.hk                    ; 2 uses
  %i.hq = icmp eq i32 %.170.i, 0                  ; 2 uses
  %i.hr = icmp ne i32 %i.hp, -2
  %i.hs = xor i1 %i.hq, %i.hr
  br i1 %i.hs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ht = sub i32 %.170.i, %i.hp
  %i.hu = add i32 %i.ht, 8
  %i.hv = icmp ult i32 %i.hu, 21
  br i1 %i.hv, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next.old.i = add nuw nsw i64 %indvars.iv.i206, 1 ; 2 uses
  %lftr.wideiv.old.i = trunc i64 %indvars.iv.next.old.i to i32
  %exitcond.not.old.i = icmp eq i32 %i.gt, %lftr.wideiv.old.i
  br i1 %exitcond.not.old.i, label %.thread91.i, label %.backedge.backedge

bb.w:                                             ; preds = %bb.u
  %i.hw = trunc nuw i64 %indvars.iv.i206 to i32
  br i1 %i.hq, label %.thread91.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hx = and i64 %indvars.iv.i206, 4294967295    ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.hx
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !31 ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !154 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !154
  %i.ie = add i32 %i.id, %i.ib
  %i.if = add i32 %.170.i, 1
  %.0.i211 = call i32 @llvm.usub.sat.i32(i32 %i.ie, i32 %i.if) ; 2 uses
  %i.ig = load i32, ptr %i.hz, align 4, !tbaa !35
  %i.ih = call i32 @llvm.umin.i32(i32 %i.hd, i32 %i.ig)
  store i32 %i.ih, ptr %i.gx, align 4, !tbaa !35
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gx, i64 4 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !33
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !33
  %i.im = call i32 @llvm.umin.i32(i32 %i.ij, i32 %i.il)
  store i32 %i.im, ptr %i.ii, align 4, !tbaa !33
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.io = load i32, ptr %i.in, align 4, !tbaa !50
  %i.ip = call i32 @llvm.umax.i32(i32 %i.hm, i32 %i.io)
  store i32 %i.ip, ptr %i.he, align 4, !tbaa !50
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !51
  %i.is = call i32 @llvm.umax.i32(i32 %i.hb, i32 %i.ir)
  store i32 %i.is, ptr %i.ha, align 4, !tbaa !51
  %i.it = icmp ugt i32 %.0.i211, %i.ib
  br i1 %i.it, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %.0.i211, ptr %i.ia, align 4, !tbaa !154
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.iu = add i32 %i.gt, -1
  store i32 %i.iu, ptr %i.ez, align 8, !tbaa !19
  call void @free(ptr noundef nonnull %i.hz) #18
  %i.iv = load ptr, ptr %6, align 8, !tbaa !20
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.hx ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load i32, ptr %i.ez, align 8, !tbaa !19
  %i.iz = sub i32 %i.iy, %i.hw
  %i.ja = zext i32 %i.iz to i64
  %i.jb = shl nuw nsw i64 %i.ja, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iw, ptr nonnull align 8 %i.ix, i64 %i.jb, i1 false)
  %.pre.i212 = load i32, ptr %i.ez, align 8, !tbaa !19
  br label %.thread91.i

.thread91.i:                                      ; preds = %bb.v, %.thr_comm.i, %bb.z, %bb.w, %.lr.ph97.i
  %i.jc = phi i32 [ %.pre.i212, %bb.z ], [ %i.gt, %bb.w ], [ %i.gt, %.lr.ph97.i ], [ %i.gt, %.thr_comm.i ], [ %i.gt, %bb.v ] ; 7 uses
  %.1.i203 = phi i32 [ %.06696.i, %bb.z ], [ %i.gy, %bb.w ], [ %i.gy, %.lr.ph97.i ], [ %i.gy, %.thr_comm.i ], [ %i.gy, %bb.v ] ; 2 uses
  %i.jd = icmp ult i32 %.1.i203, %i.jc
  br i1 %i.jd, label %.lr.ph97.i, label %combine_msps.exit, !llvm.loop !172

combine_msps.exit:                                ; preds = %.thread91.i
  %i.je = icmp eq ptr %8, null
  br i1 %i.je, label %.preheader, label %bb.ax

combine_msps.exit.thread:                         ; preds = %trim_small_repeated_msps.exit
  %i.jf = icmp eq ptr %8, null
  br i1 %i.jf, label %._crit_edge250, label %bb.ax

.preheader:                                       ; preds = %combine_msps.exit
  %.not272.a = icmp eq i32 %i.jc, 0
  br i1 %.not272.a, label %._crit_edge250, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.jg = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
  %wide.trip.count = zext i32 %i.jc to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.jh = icmp eq i32 %i.jc, 1
  br i1 %i.jh, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.aa ] ; 3 uses
  %.0158244 = phi i32 [ %2, %.lr.ph.new ], [ %spec.select.1, %bb.aa ]
  %.0163243 = phi i32 [ 0, %.lr.ph.new ], [ %.1164.1, %bb.aa ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.aa ]
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !31 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !33
  %spec.select = call i32 @llvm.umin.i32(i32 %i.jl, i32 %.0158244)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !51
  %.1164 = call i32 @llvm.umax.i32(i32 %i.jn, i32 %.0163243)
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !31 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !33
  %spec.select.1 = call i32 @llvm.umin.i32(i32 %i.js, i32 %spec.select) ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !51
  %.1164.1 = call i32 @llvm.umax.i32(i32 %i.ju, i32 %.1164) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !173

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0158244.epil.init = phi i32 [ %2, %.lr.ph ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0163243.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1164.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod502 = trunc i32 %i.jc to i1
  call void @llvm.assume(i1 %lcmp.mod502)
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.epil.init
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !31 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !33
  %spec.select.epil = call i32 @llvm.umin.i32(i32 %i.jy, i32 %.0158244.epil.init)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !51
  %.1164.epil = call i32 @llvm.umax.i32(i32 %i.ka, i32 %.0163243.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.lcssa = phi i32 [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ] ; 2 uses
  %.1164.lcssa = phi i32 [ %.1164.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1164.epil, %.epil.preheader ] ; 3 uses
  %i.kb = add i32 %.1164.lcssa, 1
  %i.kc = sub i32 %i.kb, %spec.select.lcssa
  %i.kd = lshr i32 %i.kc, 2                       ; 3 uses
  %i.ke = add i32 %i.kd, %spec.select.lcssa
  %i.kf = icmp ugt i32 %.1164.lcssa, %i.kd
  %i.kg = select i1 %i.kf, i32 %i.kd, i32 0
  %spec.select193 = sub nuw i32 %.1164.lcssa, %i.kg
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %._crit_edge, %.lr.ph249
  %indvars.iv295 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next296, %.lr.ph249 ] ; 2 uses
  %i.kh = load ptr, ptr %6, align 8, !tbaa !20
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv295
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !31 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !33
  %i.km = icmp ult i32 %i.kl, %i.ke
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 24 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 4
  %i.kp = select i1 %i.km, i64 2, i64 0
  %i.kq = and i64 %i.ko, -4
  %i.kr = or disjoint i64 %i.kq, %i.kp
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !51
  %i.ku = icmp ugt i32 %i.kt, %spec.select193
  %i.kv = zext i1 %i.ku to i64
  %i.kw = or disjoint i64 %i.kr, %i.kv
  store i64 %i.kw, ptr %i.kn, align 4
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %i.kx = load i32, ptr %i.ez, align 8, !tbaa !19 ; 2 uses
  %i.ky = zext i32 %i.kx to i64
  %i.kz = icmp samesign ult i64 %indvars.iv.next296, %i.ky
  br i1 %i.kz, label %.lr.ph249, label %._crit_edge250, !llvm.loop !174

._crit_edge250:                                   ; preds = %.lr.ph249, %.preheader, %combine_msps.exit.thread
  %.lcssa227 = phi i32 [ 0, %.preheader ], [ 0, %combine_msps.exit.thread ], [ %i.kx, %.lr.ph249 ]
  %i.la = call fastcc i32 @link_msps(ptr noundef %6, i32 noundef 0, i32 noundef %.lcssa227) ; 4 uses
  %i.lb = icmp sgt i32 %i.la, -1
  br i1 %i.lb, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %._crit_edge250
  %i.lc = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.ld = zext nneg i32 %i.la to i64
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.ld
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !31
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 20
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !175 ; 3 uses
  %i.li = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 72), align 8, !tbaa !176 ; 2 uses
  %i.lj = icmp ugt i32 %i.li, 49
  br i1 %i.lj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.lk = mul i32 %i.li, %i.lh
  %i.ll = udiv i32 %i.lk, 100
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.lm = lshr i32 %i.lh, 2
  %i.ln = sub i32 %i.lh, %i.lm
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0169 = phi i32 [ %i.ll, %bb.ac ], [ %i.ln, %bb.ad ] ; 4 uses
  %i.lo = load i32, ptr %i.ez, align 8, !tbaa !19
  %i.lp = icmp ugt i32 %i.lo, 1
  br i1 %i.lp, label %.lr.ph261, label %._crit_edge262.thread

.lr.ph261:                                        ; preds = %bb.ae
  %i.lq = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ls = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.lt = insertelement <4 x i32> %i.ls, i32 %4, i64 1
  %i.lu = shufflevector <4 x i32> %i.lt, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 5 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit, %.lr.ph261
  %.ph = phi ptr [ %i.rg, %.loopexit ], [ %i.lc, %.lr.ph261 ] ; 4 uses
  %indvars.iv303.ph = phi i64 [ %indvars.iv.next304, %.loopexit ], [ 1, %.lr.ph261 ] ; 8 uses
  %.0154258.ph = phi i32 [ %.1155, %.loopexit ], [ %i.la, %.lr.ph261 ] ; 2 uses
  %.2160257.ph = phi i32 [ %.4162, %.loopexit ], [ 0, %.lr.ph261 ] ; 10 uses
  %.3166256.ph = phi i32 [ %.5, %.loopexit ], [ 0, %.lr.ph261 ] ; 8 uses
  %.0170255.ph = phi i32 [ %.2172, %.loopexit ], [ 0, %.lr.ph261 ] ; 2 uses
  %i.lv = getelementptr [8 x i8], ptr %.ph, i64 %indvars.iv303.ph
  %i.lw = getelementptr i8, ptr %i.lv, i64 -8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !31
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.ph, i64 %indvars.iv303.ph
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !31 ; 5 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.mb = load i64, ptr %i.ma, align 4            ; 2 uses
  %i.mc = and i64 %i.mb, 1
  %.not183.peel = icmp eq i64 %i.mc, 0            ; 2 uses
  br i1 %.not183.peel, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.outer
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.me = load i64, ptr %i.md, align 4
  %i.mf = and i64 %i.me, 1
  %.not184.peel = icmp eq i64 %i.mf, 0
  br i1 %.not184.peel, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.outer
  %i.mg = and i64 %i.mb, 2
  %.not185.peel = icmp eq i64 %i.mg, 0
  br i1 %.not185.peel, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mi = load i64, ptr %i.mh, align 4
  %i.mj = and i64 %i.mi, 2
  %.not186.peel = icmp eq i64 %i.mj, 0
  br i1 %.not186.peel, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %.not183.peel, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.ml = load i64, ptr %i.mk, align 4
  %i.mm = and i64 %i.ml, 2
  %.not188.peel = icmp eq i64 %i.mm, 0
  br i1 %.not188.peel, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.af
  %i.mn = trunc nuw i64 %indvars.iv303.ph to i32  ; 4 uses
  %i.mo = call fastcc i32 @link_msps(ptr noundef %6, i32 noundef %.2160257.ph, i32 noundef %i.mn) ; 3 uses
  %i.mp = load ptr, ptr %6, align 8, !tbaa !20
  %i.mq = sext i32 %i.mo to i64                   ; 3 uses
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.mp, i64 %i.mq
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !31
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 20
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !175
  %i.mv = load i32, ptr %i.ez, align 8, !tbaa !19
  %i.mw = call fastcc i32 @link_msps(ptr noundef %6, i32 noundef %i.mn, i32 noundef %i.mv) ; 4 uses
  %i.mx = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.my = sext i32 %i.mw to i64
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.mx, i64 %i.my
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !31
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 20
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !175
  %i.nd = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 72), align 8, !tbaa !176 ; 2 uses
  %i.ne = icmp ult i32 %i.nd, 50
  %.not189.peel = icmp ult i32 %i.mu, %.0169      ; 2 uses
  %or.cond.peel = select i1 %i.ne, i1 true, i1 %.not189.peel
  %.not190.peel = icmp ult i32 %i.nc, %.0169      ; 2 uses
  %or.cond194.peel = select i1 %or.cond.peel, i1 true, i1 %.not190.peel
  br i1 %or.cond194.peel, label %bb.al, label %.loopexit504

bb.al:                                            ; preds = %bb.ak
  %i.nf = icmp ugt i32 %i.nd, 49
  %or.cond195.peel = select i1 %.not189.peel, i1 %.not190.peel, i1 false
  %or.cond225.peel = select i1 %i.nf, i1 true, i1 %or.cond195.peel
  br i1 %or.cond225.peel, label %.thread360.peel, label %.loopexit504

.thread360.peel:                                  ; preds = %bb.al
  %indvars.iv.next304365.peel = add nuw nsw i64 %indvars.iv303.ph, 1 ; 2 uses
  %i.ng = load i32, ptr %i.ez, align 8, !tbaa !19 ; 2 uses
  %i.nh = zext i32 %i.ng to i64
  %i.ni = icmp samesign ult i64 %indvars.iv.next304365.peel, %i.nh
  br i1 %i.ni, label %.outer.peel.newph, label %._crit_edge262.thread370

.outer.peel.newph:                                ; preds = %.thread360.peel, %.thread360
  %i.nj = phi ptr [ %i.om, %.thread360 ], [ %i.mx, %.thread360.peel ] ; 4 uses
  %indvars.iv303 = phi i64 [ %indvars.iv.next304365, %.thread360 ], [ %indvars.iv.next304365.peel, %.thread360.peel ] ; 8 uses
  %.0154258 = phi i32 [ %i.ol, %.thread360 ], [ %i.mw, %.thread360.peel ] ; 2 uses
  %i.nk = getelementptr [8 x i8], ptr %i.nj, i64 %indvars.iv303
  %i.nl = getelementptr i8, ptr %i.nk, i64 -8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !31
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv303
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !31 ; 5 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.nq = load i64, ptr %i.np, align 4            ; 2 uses
  %i.nr = and i64 %i.nq, 1
  %.not183 = icmp eq i64 %i.nr, 0                 ; 2 uses
  br i1 %.not183, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.outer.peel.newph
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.nt = load i64, ptr %i.ns, align 4
  %i.nu = and i64 %i.nt, 1
  %.not184 = icmp eq i64 %i.nu, 0
  br i1 %.not184, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am, %.outer.peel.newph
  %i.nv = and i64 %i.nq, 2
  %.not185 = icmp eq i64 %i.nv, 0
  br i1 %.not185, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.nw = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.nx = load i64, ptr %i.nw, align 4
  %i.ny = and i64 %i.nx, 2
  %.not186 = icmp eq i64 %i.ny, 0
  br i1 %.not186, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %.not183, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nz = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.oa = load i64, ptr %i.nz, align 4
  %i.ob = and i64 %i.oa, 2
  %.not188 = icmp eq i64 %i.ob, 0
  br i1 %.not188, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao, %bb.am
  %i.oc = trunc nuw i64 %indvars.iv303 to i32     ; 4 uses
  %i.od = call fastcc i32 @link_msps(ptr noundef %6, i32 noundef %.2160257.ph, i32 noundef %i.oc) ; 3 uses
  %i.oe = load ptr, ptr %6, align 8, !tbaa !20
  %i.of = sext i32 %i.od to i64                   ; 3 uses
  %i.og = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.of
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !31
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 20
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !175
  %i.ok = load i32, ptr %i.ez, align 8, !tbaa !19
  %i.ol = call fastcc i32 @link_msps(ptr noundef %6, i32 noundef %i.oc, i32 noundef %i.ok) ; 4 uses
  %i.om = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.on = sext i32 %i.ol to i64
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.on
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !31
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 20
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !175
  %i.os = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 72), align 8, !tbaa !176 ; 2 uses
  %i.ot = icmp ult i32 %i.os, 50
  %.not189 = icmp ult i32 %i.oj, %.0169           ; 2 uses
  %or.cond = select i1 %i.ot, i1 true, i1 %.not189
  %.not190 = icmp ult i32 %i.or, %.0169           ; 2 uses
  %or.cond194 = select i1 %or.cond, i1 true, i1 %.not190
  br i1 %or.cond194, label %bb.as, label %.loopexit504

bb.as:                                            ; preds = %bb.ar
  %i.ou = icmp ugt i32 %i.os, 49
  %or.cond195 = select i1 %.not189, i1 %.not190, i1 false
  %or.cond225 = select i1 %i.ou, i1 true, i1 %or.cond195
  br i1 %or.cond225, label %.thread360, label %.loopexit504

.loopexit504:                                     ; preds = %bb.as, %bb.ar, %bb.al, %bb.ak
  %.lcssa477 = phi i32 [ %i.mn, %bb.ak ], [ %i.mn, %bb.al ], [ %i.oc, %bb.ar ], [ %i.oc, %bb.as ] ; 2 uses
  %.lcssa475 = phi i32 [ %i.mo, %bb.ak ], [ %i.mo, %bb.al ], [ %i.od, %bb.ar ], [ %i.od, %bb.as ]
  %.lcssa473 = phi i64 [ %i.mq, %bb.ak ], [ %i.mq, %bb.al ], [ %i.of, %bb.ar ], [ %i.of, %bb.as ]
  %.lcssa471 = phi i32 [ %i.mw, %bb.ak ], [ %i.mw, %bb.al ], [ %i.ol, %bb.ar ], [ %i.ol, %bb.as ]
  %indvars.iv303.lcssa465 = phi i64 [ %indvars.iv303.ph, %bb.ak ], [ %indvars.iv303.ph, %bb.al ], [ %indvars.iv303, %bb.ar ], [ %indvars.iv303, %bb.as ] ; 2 uses
  %.lcssa459 = phi ptr [ %i.lz, %bb.ak ], [ %i.lz, %bb.al ], [ %i.no, %bb.ar ], [ %i.no, %bb.as ]
  %i.ov = call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #18
  %i.ow = load i32, ptr %i.lq, align 4, !tbaa !17 ; 2 uses
  %i.ox = load i32, ptr %i.lr, align 8, !tbaa !19 ; 2 uses
  %.not.i213 = icmp ugt i32 %i.ow, %i.ox
  %.pre.i214 = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i213, label %add_col_elt.exit, label %bb.at

bb.at:                                            ; preds = %.loopexit504
  %i.oy = add i32 %i.ow, 5                        ; 2 uses
  store i32 %i.oy, ptr %i.lq, align 4, !tbaa !17
  %i.oz = zext i32 %i.oy to i64
  %i.pa = shl nuw nsw i64 %i.oz, 3
  %i.pb = call ptr @xrealloc(ptr noundef %.pre.i214, i64 noundef %i.pa) #18 ; 2 uses
  store ptr %i.pb, ptr %7, align 8, !tbaa !20
  %.pre9.i = load i32, ptr %i.lr, align 8, !tbaa !19
  br label %add_col_elt.exit

add_col_elt.exit:                                 ; preds = %.loopexit504, %bb.at
  %i.pc = phi i32 [ %.pre9.i, %bb.at ], [ %i.ox, %.loopexit504 ] ; 2 uses
  %i.pd = phi ptr [ %i.pb, %bb.at ], [ %.pre.i214, %.loopexit504 ]
  %i.pe = add i32 %i.pc, 1
  store i32 %i.pe, ptr %i.lr, align 8, !tbaa !19
  %i.pf = zext i32 %i.pc to i64                   ; 2 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pf
  store ptr %i.ov, ptr %i.pg, align 8, !tbaa !44
  %i.ph = load ptr, ptr %7, align 8, !tbaa !20
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.pf
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !25 ; 5 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  store i32 %.3166256.ph, ptr %i.pk, align 8, !tbaa !36
  %i.pl = load i32, ptr %.lcssa459, align 4, !tbaa !35
  %i.pm = sub i32 %i.pl, %.3166256.ph
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 28
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !73
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 7 uses
  %i.pp = sub i32 %.lcssa477, %.2160257.ph        ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pj, i64 20
  store i32 %i.pp, ptr %i.pq, align 4, !tbaa !17
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pj, i64 16 ; 2 uses
  store i32 0, ptr %i.pr, align 8, !tbaa !19
  %i.ps = zext i32 %.2160257.ph to i64
  %.not.i215 = icmp eq i64 %indvars.iv303.lcssa465, %i.ps
  br i1 %.not.i215, label %init_col.exit, label %bb.au

bb.au:                                            ; preds = %add_col_elt.exit
  %i.pt = zext i32 %i.pp to i64
  %i.pu = shl nuw nsw i64 %i.pt, 3
  %i.pv = call ptr @xmalloc(i64 noundef %i.pu) #18
  br label %init_col.exit

init_col.exit:                                    ; preds = %add_col_elt.exit, %bb.au
  %storemerge.i = phi ptr [ %i.pv, %bb.au ], [ null, %add_col_elt.exit ]
  store ptr %storemerge.i, ptr %i.po, align 8, !tbaa !20
  %i.pw = load ptr, ptr %6, align 8, !tbaa !20
  call fastcc void @msp2exons(ptr noundef %i.pw, i32 noundef %.lcssa475, ptr noundef nonnull %i.po, i32 noundef 0)
  %i.px = load i32, ptr %i.pr, align 8, !tbaa !19 ; 3 uses
  %.not274 = icmp eq i32 %i.px, 0
  br i1 %.not274, label %._crit_edge254, label %.lr.ph253.preheader

.lr.ph253.preheader:                              ; preds = %init_col.exit
  %wide.trip.count301 = zext i32 %i.px to i64     ; 2 uses
  %xtraiter509 = and i64 %wide.trip.count301, 3   ; 3 uses
  %i.py = icmp ult i32 %i.px, 4
  br i1 %i.py, label %.lr.ph253.epil.preheader, label %.lr.ph253.preheader.new

.lr.ph253.preheader.new:                          ; preds = %.lr.ph253.preheader
  %unroll_iter512 = and i64 %wide.trip.count301, 4294967292
  br label %.lr.ph253

.lr.ph253:                                        ; preds = %.lr.ph253, %.lr.ph253.preheader.new
  %indvars.iv298 = phi i64 [ 0, %.lr.ph253.preheader.new ], [ %indvars.iv.next299.3, %.lr.ph253 ] ; 5 uses
  %niter513 = phi i64 [ 0, %.lr.ph253.preheader.new ], [ %niter513.next.3, %.lr.ph253 ]
  %i.pz = load ptr, ptr %i.po, align 8, !tbaa !20
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %indvars.iv298
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !31 ; 2 uses
  %i.qc = load <4 x i32>, ptr %i.qb, align 4, !tbaa !4
  %i.qd = add <4 x i32> %i.qc, %i.lu
  store <4 x i32> %i.qd, ptr %i.qb, align 4, !tbaa !4
  %i.qe = load ptr, ptr %i.po, align 8, !tbaa !20
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv298
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !31 ; 2 uses
  %i.qi = load <4 x i32>, ptr %i.qh, align 4, !tbaa !4
  %i.qj = add <4 x i32> %i.qi, %i.lu
  store <4 x i32> %i.qj, ptr %i.qh, align 4, !tbaa !4
  %i.qk = load ptr, ptr %i.po, align 8, !tbaa !20
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %indvars.iv298
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !31 ; 2 uses
  %i.qo = load <4 x i32>, ptr %i.qn, align 4, !tbaa !4
  %i.qp = add <4 x i32> %i.qo, %i.lu
  store <4 x i32> %i.qp, ptr %i.qn, align 4, !tbaa !4
  %i.qq = load ptr, ptr %i.po, align 8, !tbaa !20
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv298
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !31 ; 2 uses
  %i.qu = load <4 x i32>, ptr %i.qt, align 4, !tbaa !4
  %i.qv = add <4 x i32> %i.qu, %i.lu
  store <4 x i32> %i.qv, ptr %i.qt, align 4, !tbaa !4
  %indvars.iv.next299.3 = add nuw nsw i64 %indvars.iv298, 4 ; 2 uses
  %niter513.next.3 = add i64 %niter513, 4         ; 2 uses
  %niter513.ncmp.3 = icmp eq i64 %niter513.next.3, %unroll_iter512
  br i1 %niter513.ncmp.3, label %._crit_edge254.loopexit.unr-lcssa, label %.lr.ph253, !llvm.loop !177

._crit_edge254.loopexit.unr-lcssa:                ; preds = %.lr.ph253
  %lcmp.mod510.not = icmp eq i64 %xtraiter509, 0
  br i1 %lcmp.mod510.not, label %._crit_edge254, label %.lr.ph253.epil.preheader

.lr.ph253.epil.preheader:                         ; preds = %._crit_edge254.loopexit.unr-lcssa, %.lr.ph253.preheader
  %indvars.iv298.epil.init = phi i64 [ 0, %.lr.ph253.preheader ], [ %indvars.iv.next299.3, %._crit_edge254.loopexit.unr-lcssa ]
  %lcmp.mod511 = icmp ne i64 %xtraiter509, 0
  call void @llvm.assume(i1 %lcmp.mod511)
  br label %.lr.ph253.epil

.lr.ph253.epil:                                   ; preds = %.lr.ph253.epil, %.lr.ph253.epil.preheader
  %indvars.iv298.epil = phi i64 [ %indvars.iv298.epil.init, %.lr.ph253.epil.preheader ], [ %indvars.iv.next299.epil, %.lr.ph253.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph253.epil.preheader ], [ %epil.iter.next, %.lr.ph253.epil ]
  %i.qw = load ptr, ptr %i.po, align 8, !tbaa !20
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %indvars.iv298.epil
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !31 ; 2 uses
  %i.qz = load <4 x i32>, ptr %i.qy, align 4, !tbaa !4
  %i.ra = add <4 x i32> %i.qz, %i.lu
  store <4 x i32> %i.ra, ptr %i.qy, align 4, !tbaa !4
  %indvars.iv.next299.epil = add nuw nsw i64 %indvars.iv298.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter509
  br i1 %epil.iter.cmp.not, label %._crit_edge254, label %.lr.ph253.epil, !llvm.loop !178

._crit_edge254:                                   ; preds = %._crit_edge254.loopexit.unr-lcssa, %.lr.ph253.epil, %init_col.exit
  %i.rb = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.rc = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %.lcssa473
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !31
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !50
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %bb.aj, %bb.aq, %bb.ap, %._crit_edge254
  %indvars.iv303467 = phi i64 [ %indvars.iv303.lcssa465, %._crit_edge254 ], [ %indvars.iv303.ph, %bb.ai ], [ %indvars.iv303.ph, %bb.aj ], [ %indvars.iv303, %bb.aq ], [ %indvars.iv303, %bb.ap ]
  %i.rg = phi ptr [ %i.rb, %._crit_edge254 ], [ %.ph, %bb.ai ], [ %.ph, %bb.aj ], [ %i.nj, %bb.aq ], [ %i.nj, %bb.ap ]
  %.2172 = phi i32 [ 0, %._crit_edge254 ], [ %.0170255.ph, %bb.ai ], [ %.0170255.ph, %bb.aj ], [ 1, %bb.aq ], [ 1, %bb.ap ] ; 2 uses
  %.5 = phi i32 [ %i.rf, %._crit_edge254 ], [ %.3166256.ph, %bb.ap ], [ %.3166256.ph, %bb.aq ], [ %.3166256.ph, %bb.aj ], [ %.3166256.ph, %bb.ai ] ; 3 uses
  %.4162 = phi i32 [ %.lcssa477, %._crit_edge254 ], [ %.2160257.ph, %bb.ap ], [ %.2160257.ph, %bb.aq ], [ %.2160257.ph, %bb.aj ], [ %.2160257.ph, %bb.ai ] ; 2 uses
  %.1155 = phi i32 [ %.lcssa471, %._crit_edge254 ], [ %.0154258.ph, %bb.ai ], [ %.0154258.ph, %bb.aj ], [ %.0154258, %bb.aq ], [ %.0154258, %bb.ap ] ; 2 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303467, 1 ; 2 uses
  %i.rh = load i32, ptr %i.ez, align 8, !tbaa !19 ; 2 uses
  %i.ri = zext i32 %i.rh to i64
  %i.rj = icmp samesign ult i64 %indvars.iv.next304, %i.ri
  br i1 %i.rj, label %.outer, label %._crit_edge262, !llvm.loop !179

.thread360:                                       ; preds = %bb.as
  %indvars.iv.next304365 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %i.rk = load i32, ptr %i.ez, align 8, !tbaa !19 ; 2 uses
  %i.rl = zext i32 %i.rk to i64
  %i.rm = icmp samesign ult i64 %indvars.iv.next304365, %i.rl
  br i1 %i.rm, label %.outer.peel.newph, label %._crit_edge262.thread370, !llvm.loop !180

._crit_edge262:                                   ; preds = %.loopexit
  %i.rn = icmp eq i32 %.2172, 0
  br i1 %i.rn, label %._crit_edge262.thread, label %._crit_edge262.thread370

._crit_edge262.thread370:                         ; preds = %.thread360, %.thread360.peel, %._crit_edge262
  %.5367376 = phi i32 [ %.5, %._crit_edge262 ], [ %.3166256.ph, %.thread360.peel ], [ %.3166256.ph, %.thread360 ]
  %.4162368375 = phi i32 [ %.4162, %._crit_edge262 ], [ %.2160257.ph, %.thread360.peel ], [ %.2160257.ph, %.thread360 ]
  %i.ro = phi i32 [ %i.rh, %._crit_edge262 ], [ %i.rk, %.thread360 ], [ %i.ng, %.thread360.peel ]
  %i.rp = call fastcc i32 @link_msps(ptr noundef %6, i32 noundef %.4162368375, i32 noundef %i.ro)
  br label %._crit_edge262.thread

._crit_edge262.thread:                            ; preds = %bb.ae, %._crit_edge262.thread370, %._crit_edge262
  %.3166.lcssa359 = phi i32 [ %.5367376, %._crit_edge262.thread370 ], [ %.5, %._crit_edge262 ], [ 0, %bb.ae ] ; 2 uses
  %.2156 = phi i32 [ %i.rp, %._crit_edge262.thread370 ], [ %.1155, %._crit_edge262 ], [ %i.la, %bb.ae ]
  %i.rq = call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #18
  %i.rr = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !17 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !19 ; 2 uses
  %.not.i216 = icmp ugt i32 %i.rs, %i.ru
  %.pre.i217 = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i216, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge262.thread
  %i.rv = add i32 %i.rs, 5                        ; 2 uses
  store i32 %i.rv, ptr %i.rr, align 4, !tbaa !17
  %i.rw = zext i32 %i.rv to i64
  %i.rx = shl nuw nsw i64 %i.rw, 3
  %i.ry = call ptr @xrealloc(ptr noundef %.pre.i217, i64 noundef %i.rx) #18 ; 2 uses
  store ptr %i.ry, ptr %7, align 8, !tbaa !20
  %.pre9.i218 = load i32, ptr %i.rt, align 8, !tbaa !19
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge262.thread, %bb.av
  %i.rz = phi i32 [ %.pre9.i218, %bb.av ], [ %i.ru, %._crit_edge262.thread ] ; 2 uses
  %i.sa = phi ptr [ %i.ry, %bb.av ], [ %.pre.i217, %._crit_edge262.thread ]
  %i.sb = add i32 %i.rz, 1
  store i32 %i.sb, ptr %i.rt, align 8, !tbaa !19
  %i.sc = zext i32 %i.rz to i64                   ; 2 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.sc
  store ptr %i.rq, ptr %i.sd, align 8, !tbaa !44
  %i.se = load ptr, ptr %7, align 8, !tbaa !20
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %i.sc
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !25 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 24
  store i32 %.3166.lcssa359, ptr %i.sh, align 8, !tbaa !36
  %i.si = load i32, ptr %i.c, align 8, !tbaa !8
  %i.sj = sub i32 %i.si, %.3166.lcssa359
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 28
  store i32 %i.sj, ptr %i.sk, align 4, !tbaa !73
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  br label %bb.ay

bb.ax:                                            ; preds = %combine_msps.exit.thread, %combine_msps.exit
  %i.sm = phi i32 [ 0, %combine_msps.exit.thread ], [ %i.jc, %combine_msps.exit ]
  %i.sn = call fastcc i32 @link_msps(ptr noundef %6, i32 noundef 0, i32 noundef %i.sm)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.4 = phi i32 [ %.2156, %bb.aw ], [ %i.sn, %bb.ax ]
  %.1 = phi ptr [ %i.sl, %bb.aw ], [ %8, %bb.ax ] ; 10 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.1, i64 12 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !17
  %i.sq = icmp eq i32 %i.sp, 0
  br i1 %i.sq, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.sr = load i32, ptr %i.ez, align 8, !tbaa !19 ; 3 uses
  store i32 %i.sr, ptr %i.so, align 4, !tbaa !17
  %i.ss = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i32 0, ptr %i.ss, align 8, !tbaa !19
  %.not.i220 = icmp eq i32 %i.sr, 0
  br i1 %.not.i220, label %init_col.exit222, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.st = zext i32 %i.sr to i64
  %i.su = shl nuw nsw i64 %i.st, 3
  %i.sv = call ptr @xmalloc(i64 noundef %i.su) #18
  br label %init_col.exit222

init_col.exit222:                                 ; preds = %bb.az, %bb.ba
  %storemerge.i221 = phi ptr [ %i.sv, %bb.ba ], [ null, %bb.az ]
  store ptr %storemerge.i221, ptr %.1, align 8, !tbaa !20
  br label %bb.bb

bb.bb:                                            ; preds = %init_col.exit222, %bb.ay
  %i.sw = load ptr, ptr %6, align 8, !tbaa !20
  call fastcc void @msp2exons(ptr noundef %i.sw, i32 noundef %.4, ptr noundef nonnull %.1, i32 noundef %i.b)
  %i.sx = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.sy = load i32, ptr %i.sx, align 8, !tbaa !19 ; 3 uses
  %.not275 = icmp eq i32 %i.sy, 0
  br i1 %.not275, label %._crit_edge271, label %.lr.ph270.preheader

.lr.ph270.preheader:                              ; preds = %bb.bb
  %wide.trip.count309 = zext i32 %i.sy to i64     ; 2 uses
  %i.sz = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.ta = insertelement <4 x i32> %i.sz, i32 %4, i64 1
  %i.tb = shufflevector <4 x i32> %i.ta, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 5 uses
  %xtraiter514 = and i64 %wide.trip.count309, 3   ; 3 uses
  %i.tc = icmp ult i32 %i.sy, 4
  br i1 %i.tc, label %.lr.ph270.epil.preheader, label %.lr.ph270.preheader.new

.lr.ph270.preheader.new:                          ; preds = %.lr.ph270.preheader
  %unroll_iter518 = and i64 %wide.trip.count309, 4294967292
  br label %.lr.ph270

.lr.ph270:                                        ; preds = %.lr.ph270, %.lr.ph270.preheader.new
  %indvars.iv306 = phi i64 [ 0, %.lr.ph270.preheader.new ], [ %indvars.iv.next307.3, %.lr.ph270 ] ; 5 uses
  %niter519 = phi i64 [ 0, %.lr.ph270.preheader.new ], [ %niter519.next.3, %.lr.ph270 ]
  %i.td = load ptr, ptr %.1, align 8, !tbaa !20
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv306
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !31 ; 2 uses
  %i.tg = load <4 x i32>, ptr %i.tf, align 4, !tbaa !4
  %i.th = add <4 x i32> %i.tg, %i.tb
  store <4 x i32> %i.th, ptr %i.tf, align 4, !tbaa !4
  %i.ti = load ptr, ptr %.1, align 8, !tbaa !20
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %indvars.iv306
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !31 ; 2 uses
  %i.tm = load <4 x i32>, ptr %i.tl, align 4, !tbaa !4
  %i.tn = add <4 x i32> %i.tm, %i.tb
  store <4 x i32> %i.tn, ptr %i.tl, align 4, !tbaa !4
  %i.to = load ptr, ptr %.1, align 8, !tbaa !20
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %indvars.iv306
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !31 ; 2 uses
  %i.ts = load <4 x i32>, ptr %i.tr, align 4, !tbaa !4
  %i.tt = add <4 x i32> %i.ts, %i.tb
  store <4 x i32> %i.tt, ptr %i.tr, align 4, !tbaa !4
  %i.tu = load ptr, ptr %.1, align 8, !tbaa !20
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %indvars.iv306
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 24
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !31 ; 2 uses
  %i.ty = load <4 x i32>, ptr %i.tx, align 4, !tbaa !4
  %i.tz = add <4 x i32> %i.ty, %i.tb
  store <4 x i32> %i.tz, ptr %i.tx, align 4, !tbaa !4
  %indvars.iv.next307.3 = add nuw nsw i64 %indvars.iv306, 4 ; 2 uses
  %niter519.next.3 = add i64 %niter519, 4         ; 2 uses
  %niter519.ncmp.3 = icmp eq i64 %niter519.next.3, %unroll_iter518
  br i1 %niter519.ncmp.3, label %._crit_edge271.loopexit.unr-lcssa, label %.lr.ph270, !llvm.loop !182

._crit_edge271.loopexit.unr-lcssa:                ; preds = %.lr.ph270
  %lcmp.mod516.not = icmp eq i64 %xtraiter514, 0
  br i1 %lcmp.mod516.not, label %._crit_edge271, label %.lr.ph270.epil.preheader

.lr.ph270.epil.preheader:                         ; preds = %._crit_edge271.loopexit.unr-lcssa, %.lr.ph270.preheader
  %indvars.iv306.epil.init = phi i64 [ 0, %.lr.ph270.preheader ], [ %indvars.iv.next307.3, %._crit_edge271.loopexit.unr-lcssa ]
  %lcmp.mod517 = icmp ne i64 %xtraiter514, 0
  call void @llvm.assume(i1 %lcmp.mod517)
  br label %.lr.ph270.epil

.lr.ph270.epil:                                   ; preds = %.lr.ph270.epil, %.lr.ph270.epil.preheader
  %indvars.iv306.epil = phi i64 [ %indvars.iv306.epil.init, %.lr.ph270.epil.preheader ], [ %indvars.iv.next307.epil, %.lr.ph270.epil ] ; 2 uses
  %epil.iter515 = phi i64 [ 0, %.lr.ph270.epil.preheader ], [ %epil.iter515.next, %.lr.ph270.epil ]
  %i.ua = load ptr, ptr %.1, align 8, !tbaa !20
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.ua, i64 %indvars.iv306.epil
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !31 ; 2 uses
  %i.ud = load <4 x i32>, ptr %i.uc, align 4, !tbaa !4
  %i.ue = add <4 x i32> %i.ud, %i.tb
  store <4 x i32> %i.ue, ptr %i.uc, align 4, !tbaa !4
  %indvars.iv.next307.epil = add nuw nsw i64 %indvars.iv306.epil, 1
  %epil.iter515.next = add i64 %epil.iter515, 1   ; 2 uses
  %epil.iter515.cmp.not = icmp eq i64 %epil.iter515.next, %xtraiter514
  br i1 %epil.iter515.cmp.not, label %._crit_edge271, label %.lr.ph270.epil, !llvm.loop !183

._crit_edge271:                                   ; preds = %._crit_edge271.loopexit.unr-lcssa, %.lr.ph270.epil, %bb.bb
  store i32 0, ptr %i.ez, align 8, !tbaa !19
  br label %.thread

.thread:                                          ; preds = %._crit_edge250, %._crit_edge271
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @kill_polyA(ptr noundef captures(none) %0, ptr noundef readonly captures(address) %1, ptr noundef readonly captures(address) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %.not217 = icmp eq i32 %i.c, 0
  br i1 %.not217, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val155 = load i32, ptr %i.g, align 4, !tbaa !33
  %i.h = getelementptr i8, ptr %i.f, i64 12
  %.val156 = load i32, ptr %i.h, align 4, !tbaa !51
  %i.i = tail call fastcc i32 @is_polyAT_exon_p(i32 %.val155, i32 %.val156, ptr noundef %2)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.critedge.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !184

.critedge.split.loop.exit:                        ; preds = %bb.b
  %i.j = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.split.loop.exit
  %.0121.lcssa = phi i32 [ %i.j, %.critedge.split.loop.exit ], [ %i.c, %bb.c ] ; 4 uses
  %.not144 = icmp eq i32 %.0121.lcssa, 0
  br i1 %.not144, label %bb.e, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %wide.trip.count230 = zext i32 %.0121.lcssa to i64 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv227 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next228, %.preheader ] ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv227
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.m) #18
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %bb.d, label %.preheader, !llvm.loop !185

bb.d:                                             ; preds = %.preheader
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %wide.trip.count230
  %i.p = load i32, ptr %i.b, align 8, !tbaa !19
  %i.q = sub i32 %i.p, %.0121.lcssa
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
end_hunk_1
begin_hunk_2_@kill_polyA:bb.a
  %i.bk = icmp ugt i32 %.sroa.12.1, 7
  %or.cond = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond, label %bb.n, label %._crit_edge184.thread

bb.n:                                             ; preds = %._crit_edge184
  %i.bl = mul i32 %.sroa.12.1, 10
  %i.bm = udiv i32 %i.bl, %.sroa.18.1
  %i.bn = icmp ugt i32 %i.bm, 7
  br i1 %i.bn, label %bb.o, label %._crit_edge184.thread

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !50
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !20  ; 2 uses
  %.not220 = icmp eq i8 %i.bs, 0
  br i1 %.not220, label %._crit_edge184.thread, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.o, %.lr.ph192
  %i.bt = phi i8 [ %i.by, %.lr.ph192 ], [ %i.bs, %bb.o ]
  %.1124190 = phi ptr [ %i.bx, %.lr.ph192 ], [ %i.br, %bb.o ]
  %.1128189 = phi i32 [ %i.bu, %.lr.ph192 ], [ 0, %bb.o ]
  %.0131188 = phi i32 [ %spec.select, %.lr.ph192 ], [ 0, %bb.o ]
  %i.bu = add nuw i32 %.1128189, 1                ; 3 uses
  %i.bv = icmp eq i8 %i.bt, 65
  %i.bw = zext i1 %i.bv to i32
  %spec.select = add i32 %.0131188, %i.bw         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1124190, i64 1 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !20  ; 2 uses
  %i.bz = icmp ne i8 %i.by, 0
  %i.ca = icmp ult i32 %i.bu, %.sroa.18.1
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %.lr.ph192, label %bb.p, !llvm.loop !189

bb.p:                                             ; preds = %.lr.ph192
  %i.cc = mul i32 %spec.select, 10
  %i.cd = udiv i32 %i.cc, %i.bu
  %i.ce = icmp ult i32 %i.cd, 8
  br i1 %i.ce, label %bb.q, label %._crit_edge184.thread

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.cf, align 4, !tbaa !190
  br label %._crit_edge184.thread

._crit_edge184.thread:                            ; preds = %bb.o, %bb.i, %bb.p, %bb.q, %bb.n, %._crit_edge184
  %.sroa.18.0.lcssa263 = phi i32 [ %.sroa.18.1, %._crit_edge184 ], [ undef, %bb.i ], [ %.sroa.18.1, %bb.p ], [ %.sroa.18.1, %bb.q ], [ %.sroa.18.1, %bb.n ], [ %.sroa.18.1, %bb.o ]
  %.sroa.12.0.lcssa262 = phi i32 [ %.sroa.12.1, %._crit_edge184 ], [ undef, %bb.i ], [ %.sroa.12.1, %bb.p ], [ %.sroa.12.1, %bb.q ], [ %.sroa.12.1, %bb.n ], [ %.sroa.12.1, %bb.o ]
  %i.cg = load ptr, ptr %i.ao, align 8, !tbaa !31 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !33 ; 2 uses
  %.not221 = icmp ult i32 %i.ci, 2
  br i1 %.not221, label %.thread, label %.lr.ph204.preheader

.lr.ph204.preheader:                              ; preds = %._crit_edge184.thread
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr i8, ptr %2, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 -2
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.u
  %.0202 = phi ptr [ %i.cr, %bb.u ], [ %i.cl, %.lr.ph204.preheader ] ; 2 uses
  %.0113201 = phi i32 [ %.1114, %bb.u ], [ 0, %.lr.ph204.preheader ] ; 4 uses
  %.0115200 = phi i32 [ %i.cm, %bb.u ], [ 0, %.lr.ph204.preheader ]
  %.0117199 = phi i32 [ %.1118, %bb.u ], [ 0, %.lr.ph204.preheader ] ; 3 uses
  %.sroa.18.3198 = phi i32 [ %.sroa.18.4, %bb.u ], [ %.sroa.18.0.lcssa263, %.lr.ph204.preheader ] ; 3 uses
  %.sroa.0.2197 = phi i32 [ %.sroa.0.3, %bb.u ], [ 0, %.lr.ph204.preheader ] ; 4 uses
  %.sroa.12.3196 = phi i32 [ %.sroa.12.4, %bb.u ], [ %.sroa.12.0.lcssa262, %.lr.ph204.preheader ] ; 3 uses
  %i.cm = add i32 %.0115200, 1                    ; 2 uses
  %i.cn = load i8, ptr %.0202, align 1, !tbaa !20
  switch i8 %i.cn, label %bb.t [
    i8 84, label %bb.r
    i8 78, label %bb.u
  ]

bb.r:                                             ; preds = %.lr.ph204
  %i.co = add i32 %.0117199, 1                    ; 3 uses
  %i.cp = add nsw i32 %.0113201, 1                ; 3 uses
  %.not151 = icmp slt i32 %.0113201, %.sroa.0.2197
  br i1 %.not151, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph204
  %i.cq = add nsw i32 %.0113201, -2
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t, %.lr.ph204
  %.sroa.12.4 = phi i32 [ %.sroa.12.3196, %bb.t ], [ %i.co, %bb.s ], [ %.sroa.12.3196, %bb.r ], [ %.sroa.12.3196, %.lr.ph204 ] ; 3 uses
  %.sroa.0.3 = phi i32 [ %.sroa.0.2197, %bb.t ], [ %i.cp, %bb.s ], [ %.sroa.0.2197, %bb.r ], [ %.sroa.0.2197, %.lr.ph204 ] ; 3 uses
  %.sroa.18.4 = phi i32 [ %.sroa.18.3198, %bb.t ], [ %i.cm, %bb.s ], [ %.sroa.18.3198, %bb.r ], [ %.sroa.18.3198, %.lr.ph204 ] ; 3 uses
  %.1118 = phi i32 [ %.0117199, %bb.t ], [ %i.co, %bb.s ], [ %i.co, %bb.r ], [ %.0117199, %.lr.ph204 ]
  %.1114 = phi i32 [ %i.cq, %bb.t ], [ %i.cp, %bb.s ], [ %i.cp, %bb.r ], [ %.0113201, %.lr.ph204 ] ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.0202, i64 -1 ; 2 uses
  %i.cs = icmp uge ptr %i.cr, %2
  %i.ct = sub nsw i32 %.sroa.0.3, %.1114
  %i.cu = icmp slt i32 %i.ct, 10
  %i.cv = select i1 %i.cs, i1 %i.cu, i1 false
  br i1 %i.cv, label %.lr.ph204, label %._crit_edge205, !llvm.loop !191

._crit_edge205:                                   ; preds = %bb.u
  %i.cw = icmp sgt i32 %.sroa.0.3, 0
  %i.cx = icmp ugt i32 %.sroa.12.4, 7
  %or.cond7 = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %or.cond7, label %bb.v, label %.thread

bb.v:                                             ; preds = %._crit_edge205
  %i.cy = mul i32 %.sroa.12.4, 10
  %i.cz = udiv i32 %i.cy, %.sroa.18.4
  %i.da = icmp ugt i32 %i.cz, 7
  br i1 %i.da, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.db = load i32, ptr %i.cg, align 4, !tbaa !35 ; 2 uses
  %.not222 = icmp ult i32 %i.db, 2
  br i1 %.not222, label %.thread, label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %bb.w
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr i8, ptr %1, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 -2
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %.lr.ph213
  %.1211 = phi ptr [ %i.dj, %.lr.ph213 ], [ %i.de, %.lr.ph213.preheader ] ; 2 uses
  %.1116210 = phi i32 [ %i.df, %.lr.ph213 ], [ 0, %.lr.ph213.preheader ]
  %.0119209 = phi i32 [ %spec.select153, %.lr.ph213 ], [ 0, %.lr.ph213.preheader ]
  %i.df = add nuw i32 %.1116210, 1                ; 3 uses
  %i.dg = load i8, ptr %.1211, align 1, !tbaa !20
  %i.dh = icmp eq i8 %i.dg, 84
  %i.di = zext i1 %i.dh to i32
  %spec.select153 = add i32 %.0119209, %i.di      ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.1211, i64 -1 ; 2 uses
  %i.dk = icmp uge ptr %i.dj, %1
  %i.dl = icmp ult i32 %i.df, %.sroa.18.4
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph213, label %bb.x, !llvm.loop !192

bb.x:                                             ; preds = %.lr.ph213
  %i.dn = mul i32 %spec.select153, 10
  %i.do = udiv i32 %i.dn, %i.df
  %i.dp = icmp ult i32 %i.do, 8
  br i1 %i.dp, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.dq, align 4, !tbaa !193
  br label %.thread

.thread:                                          ; preds = %bb.w, %._crit_edge184.thread, %bb.e, %bb.a, %thread-pre-split, %._crit_edge205, %bb.v, %bb.y, %bb.x
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_hash_env(ptr noundef writeonly captures(none) initializes((0, 20), (24, 40)) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.a, align 4, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.c, align 8, !tbaa !8
  %i.d = shl i32 %1, 1
  %i.e = add i32 %i.d, -2
  %notmask = shl nsw i32 -1, %i.e
  %i.f = xor i32 %notmask, -1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !40
  %i.h = add i32 %3, 1
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = tail call ptr @xmalloc(i64 noundef %i.j) #18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.l, align 8, !tbaa !41
  %i.m = tail call ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #18
  store ptr %i.m, ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bld_table(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.preheader

..loopexit_crit_edge:                             ; preds = %bb.h
  %i.h = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %i.i = icmp ugt i32 %i.bd, %i.h
  br i1 %i.i, label %.preheader.backedge, label %._crit_edge

.preheader.backedge:                              ; preds = %bb.c, %..loopexit_crit_edge, %.backedge.loopexit
  %.133.be = phi ptr [ %i.ae, %..loopexit_crit_edge ], [ %i.ae, %.backedge.loopexit ], [ %i.r, %bb.c ]
  %.128.be = phi i32 [ %i.h, %..loopexit_crit_edge ], [ %i.j, %.backedge.loopexit ], [ %i.w, %bb.c ]
  br label %.preheader, !llvm.loop !194

.backedge.loopexit:                               ; preds = %bb.e
  %i.j = trunc nuw i64 %indvars.iv.next to i32
  br label %.preheader.backedge

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.lr.ph
  %.133 = phi ptr [ %i.d, %.preheader.lr.ph ], [ %.133.be, %.preheader.backedge ] ; 3 uses
  %.128 = phi i32 [ 0, %.preheader.lr.ph ], [ %.128.be, %.preheader.backedge ] ; 4 uses
  %i.k = load i32, ptr %i.e, align 4, !tbaa !39   ; 4 uses
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.m = load i32, ptr %i.a, align 8, !tbaa !8
  %scevgep = getelementptr i8, ptr %.133, i64 1
  %i.n = add i32 %i.k, -2
  %i.o = zext i32 %i.n to i64
  %scevgep66 = getelementptr i8, ptr %scevgep, i64 %i.o
  %umax = tail call i32 @llvm.umax.i32(i32 %.128, i32 %i.m) ; 2 uses
  %i.p = add i32 %.128, -1
  %i.q = add i32 %i.p, %i.k
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.051 = phi i32 [ 0, %.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %.22950 = phi i32 [ %.128, %.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %.03149 = phi i32 [ 1, %.lr.ph ], [ %i.aa, %bb.d ]
  %.23448 = phi ptr [ %.133, %.lr.ph ], [ %i.r, %bb.d ] ; 3 uses
  %exitcond.not = icmp eq i32 %.22950, %umax
  br i1 %exitcond.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.23448, i64 1 ; 2 uses
  %i.s = load i8, ptr %.23448, align 1, !tbaa !20
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @encoding, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 2 uses
  %i.w = add i32 %.22950, 1                       ; 2 uses
  %i.x = icmp ugt i32 %i.v, 3
  br i1 %i.x, label %.preheader.backedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = shl i32 %.051, 2
  %i.z = or disjoint i32 %i.v, %i.y               ; 2 uses
  %i.aa = add nuw i32 %.03149, 1                  ; 2 uses
  %exitcond67.not = icmp eq i32 %i.aa, %i.k
  br i1 %exitcond67.not, label %.critedge, label %bb.b, !llvm.loop !195

.critedge:                                        ; preds = %bb.b, %bb.d, %.preheader
  %.234.lcssa = phi ptr [ %.133, %.preheader ], [ %scevgep66, %bb.d ], [ %.23448, %bb.b ]
  %.229.lcssa = phi i32 [ %.128, %.preheader ], [ %i.q, %bb.d ], [ %umax, %bb.b ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.z, %bb.d ], [ %.051, %bb.b ]
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !8
  %i.ac = icmp ult i32 %.229.lcssa, %i.ab
  br i1 %i.ac, label %.lr.ph93, label %._crit_edge

.lr.ph93:                                         ; preds = %.critedge
  %i.ad = zext i32 %.229.lcssa to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph93, %bb.h
  %.292 = phi i32 [ %.0.lcssa, %.lr.ph93 ], [ %i.an, %bb.h ]
  %.33591 = phi ptr [ %.234.lcssa, %.lr.ph93 ], [ %i.ae, %bb.h ] ; 2 uses
  %indvars.iv90 = phi i64 [ %i.ad, %.lr.ph93 ], [ %indvars.iv.next, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.33591, i64 1 ; 3 uses
  %i.af = load i8, ptr %.33591, align 1, !tbaa !20
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @encoding, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv90, 1 ; 6 uses
  %i.aj = icmp ult i32 %i.ai, 4
  br i1 %i.aj, label %bb.f, label %.backedge.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !40
  %i.al = and i32 %i.ak, %.292
  %i.am = shl i32 %i.al, 2
  %i.an = or disjoint i32 %i.am, %i.ai            ; 3 uses
  %i.ao = tail call ptr @xmalloc(i64 noundef 8) #18 ; 4 uses
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !159
  %i.ap = load ptr, ptr %0, align 8, !tbaa !42
  %i.aq = and i32 %i.an, 524287
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = tail call ptr @tsearch(ptr noundef nonnull %i.ao, ptr noundef %i.as, ptr noundef nonnull @hash_node_compare) #18 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162 ; 2 uses
  %.not.i = icmp eq ptr %i.au, %i.ao
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.ao) #18
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !162 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !196
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i32 [ %i.ax, %bb.g ], [ -1, %bb.f ]
  %i.ay = phi ptr [ %i.av, %bb.g ], [ %i.au, %bb.f ]
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next
  store i32 %.sink.i, ptr %i.ba, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !196
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.e, label %..loopexit_crit_edge

._crit_edge:                                      ; preds = %..loopexit_crit_edge, %.critedge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_hash_env(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.b) #18
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  tail call void @tdestroy(ptr noundef %i.e, ptr noundef nonnull @free) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 524288
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !45

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.f) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @merge(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = add i32 %i.b, %2                         ; 3 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = add i32 %i.f, %i.b                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %i.j = icmp ugt i32 %i.g, %i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.h, align 4, !tbaa !17
  %i.k = zext i32 %i.g to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = tail call ptr @xrealloc(ptr noundef %.pre, i64 noundef %i.l) #18 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !20
  %.pre119 = load i32, ptr %i.e, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %.pre119, %bb.c ], [ %i.f, %bb.b ]
  %i.o = phi ptr [ %i.m, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %i.p = zext i32 %i.c to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = zext i32 %2 to i64                       ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.r
  %i.t = sub i32 %i.n, %2
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.q, ptr align 8 %i.s, i64 %i.v, i1 false)
  %i.w = load ptr, ptr %0, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  %i.y = load ptr, ptr %1, align 8, !tbaa !20
  %i.z = load i32, ptr %i.a, align 8, !tbaa !19
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.x, ptr align 8 %i.y, i64 %i.ab, i1 false)
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !19
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !19
  %i.ae = add i32 %i.ad, %i.ac                    ; 2 uses
  store i32 %i.ae, ptr %i.e, align 8, !tbaa !19
  %i.af = icmp ult i32 %i.c, %i.ae
  %i.ag = zext i1 %i.af to i32
  %spec.select = add i32 %i.c, %i.ag              ; 2 uses
  %.0 = tail call i32 @llvm.umax.i32(i32 %2, i32 1) ; 2 uses
  %i.ah = icmp ult i32 %.0, %spec.select
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.ai = add i32 %3, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.1118 = phi i32 [ %spec.select, %.lr.ph ], [ %.3, %bb.l ] ; 4 uses
  %.096117 = phi i32 [ %.0, %.lr.ph ], [ %.298, %bb.l ] ; 8 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.ak = add i32 %.096117, -1                    ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31 ; 6 uses
  %i.ao = zext i32 %.096117 to i64                ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !33 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !33 ; 2 uses
  %.not = icmp ugt i32 %i.as, %i.au
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.an) #18
  %i.av = load ptr, ptr %0, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ao ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.ay = load i32, ptr %i.e, align 8, !tbaa !19
  %i.az = sub i32 %i.ay, %.096117
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  %i.bc = load i32, ptr %i.e, align 8, !tbaa !19
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr %i.e, align 8, !tbaa !19
  %i.be = add i32 %.1118, -1
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 12 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !51 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !51 ; 2 uses
  %.not115 = icmp ult i32 %i.bg, %i.bi
  br i1 %.not115, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.aq) #18
  %i.bj = load i32, ptr %i.e, align 8, !tbaa !19
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.e, align 8, !tbaa !19
  %i.bl = load ptr, ptr %0, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ao ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = sub i32 %i.bk, %.096117
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bm, ptr nonnull align 8 %i.bn, i64 %i.bq, i1 false)
  %i.br = add i32 %.1118, -1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bs = load i32, ptr %i.aq, align 4, !tbaa !35 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !50 ; 2 uses
  %i.bv = add i32 %i.bu, 31
  %i.bw = icmp uge i32 %i.bs, %i.bv
  %i.bx = add i32 %i.ai, %i.bg
  %.not116 = icmp ugt i32 %i.as, %i.bx
  %or.cond = or i1 %i.bw, %.not116
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = load i32, ptr %i.an, align 4, !tbaa !35
  %. = tail call i32 @llvm.umin.i32(i32 %i.by, i32 %i.bs)
  store i32 %., ptr %i.an, align 4, !tbaa !35
  store i32 %i.au, ptr %i.at, align 4, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !50
  %i.cb = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 %i.bu)
  store i32 %i.cb, ptr %i.bt, align 4, !tbaa !50
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !51
  tail call void @free(ptr noundef nonnull %i.aq) #18
  %i.cc = load i32, ptr %i.e, align 8, !tbaa !19
  %i.cd = add i32 %i.cc, -1                       ; 2 uses
  store i32 %i.cd, ptr %i.e, align 8, !tbaa !19
  %i.ce = load ptr, ptr %0, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ao ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = sub i32 %i.cd, %.096117
  %i.ci = zext i32 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cf, ptr nonnull align 8 %i.cg, i64 %i.cj, i1 false)
  %i.ck = add i32 %.1118, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.197 = phi i32 [ %i.ak, %bb.j ], [ %.096117, %bb.i ]
  %.2 = phi i32 [ %i.ck, %bb.j ], [ %.1118, %bb.i ]
  %i.cl = add i32 %.197, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.f
  %.298 = phi i32 [ %.096117, %bb.f ], [ %.096117, %bb.h ], [ %i.cl, %bb.k ] ; 2 uses
  %.3 = phi i32 [ %i.be, %bb.f ], [ %i.br, %bb.h ], [ %.2, %bb.k ] ; 2 uses
  %i.cm = icmp ult i32 %.298, %.3
  br i1 %i.cm, label %bb.e, label %.loopexit, !llvm.loop !197

.loopexit:                                        ; preds = %bb.l, %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
end_hunk_2
