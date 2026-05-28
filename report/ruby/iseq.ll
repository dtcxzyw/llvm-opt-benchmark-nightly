inline.NumInlined: 615
inline.NumDeleted: 145
begin_hunk_0_@rb_iseq_mark_and_move:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.ej = getelementptr i8, ptr %.013.i, i64 16
  %.013.val18.i = load ptr, ptr %i.ej, align 8, !tbaa !136 ; 2 uses
  br i1 %1, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ek = ptrtoint ptr %.013.val18.i to i64
  %i.el = call i64 @rb_gc_location(i64 noundef %i.ek) #20
  %i.em = inttoptr i64 %i.el to ptr
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.011.i = phi ptr [ %i.em, %bb.ap ], [ %.013.val18.i, %bb.ao ]
  %i.en = load i64, ptr %.011.i, align 8, !tbaa !137
  %i.eo = and i64 %i.en, 2097152
  %.not17.not.i = icmp eq i64 %i.eo, 0
  br i1 %.not17.not.i, label %cc_is_active.exit, label %bb.at

cc_is_active.exit:                                ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.ep = load ptr, ptr %i.dy, align 8, !tbaa !132
  %i.eq = ptrtoint ptr %i.ep to i64
  store i64 %i.eq, ptr %i.f, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.f) #20
  %i.er = load i64, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %i.es = load ptr, ptr %i.dy, align 8, !tbaa !132
  %i.et = ptrtoint ptr %i.es to i64
  %.not118 = icmp eq i64 %i.er, %i.et
  br i1 %.not118, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %cc_is_active.exit
  %i.eu = inttoptr i64 %i.er to ptr
  store ptr %i.eu, ptr %i.dy, align 8, !tbaa !132
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %cc_is_active.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %bb.av

bb.at:                                            ; preds = %bb.ah, %bb.am, %bb.an, %bb.aq, %bb.aj, %bb.ai
  %i.ev = load ptr, ptr %i.dy, align 8, !tbaa !132
  %i.ew = call ptr @rb_vm_empty_cc() #20
  %.not117 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not117, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ex = call ptr @rb_vm_empty_cc() #20
  store ptr %i.ex, ptr %i.dy, align 8, !tbaa !132
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.as
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ey = load i32, ptr %i.do, align 4, !tbaa !127
  %i.ez = zext i32 %i.ey to i64
  %i.fa = icmp samesign ult i64 %indvars.iv.next, %i.ez
  br i1 %i.fa, label %.lr.ph, label %.loopexit145, !llvm.loop !140

.loopexit145:                                     ; preds = %bb.av, %.preheader144, %bb.ad
  %i.fb = getelementptr i8, ptr %i.j, i64 16
  %i.fc = load i16, ptr %i.fb, align 8
  %i.fd = and i16 %i.fc, 16
  %.not107 = icmp eq i16 %i.fd, 0
  br i1 %.not107, label %.loopexit143, label %bb.aw

bb.aw:                                            ; preds = %.loopexit145
  %i.fe = getelementptr i8, ptr %i.j, i64 56
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !92 ; 5 uses
  %.not108 = icmp eq ptr %i.ff, null
  br i1 %.not108, label %.loopexit143, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fg = getelementptr i8, ptr %i.ff, i64 24     ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !98
  %.not109 = icmp eq ptr %i.fh, null
  br i1 %.not109, label %.loopexit143, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fi = getelementptr i8, ptr %i.ff, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !141 ; 2 uses
  %i.fk = load i32, ptr %i.ff, align 8, !tbaa !97
  %i.fl = icmp slt i32 %i.fj, %i.fk
  br i1 %i.fl, label %.lr.ph153, label %.loopexit143

.lr.ph153:                                        ; preds = %bb.ay, %.lr.ph153
  %.088152 = phi i32 [ %i.fq, %.lr.ph153 ], [ 0, %bb.ay ] ; 2 uses
  %.089151 = phi i32 [ %i.fp, %.lr.ph153 ], [ %i.fj, %bb.ay ]
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !98
  %i.fn = sext i32 %.088152 to i64
  %i.fo = getelementptr [8 x i8], ptr %i.fm, i64 %i.fn
  call void @rb_gc_mark_and_move(ptr noundef %i.fo) #20
  %i.fp = add nsw i32 %.089151, 1                 ; 2 uses
  %i.fq = add i32 %.088152, 1
  %i.fr = load i32, ptr %i.ff, align 8, !tbaa !97
  %i.fs = icmp slt i32 %i.fp, %i.fr
  br i1 %i.fs, label %.lr.ph153, label %.loopexit143, !llvm.loop !142

.loopexit143:                                     ; preds = %.lr.ph153, %bb.ay, %bb.ax, %bb.aw, %.loopexit145
  %i.ft = getelementptr i8, ptr %i.j, i64 160
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !87 ; 4 uses
  %.not110 = icmp eq ptr %i.fu, null
  br i1 %.not110, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit143
  %i.fv = load i32, ptr %i.fu, align 1, !tbaa !7  ; 2 uses
  %.not157 = icmp eq i32 %i.fv, 0
  br i1 %.not157, label %.loopexit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader, %bb.bc
  %i.fw = phi i32 [ %i.gf, %bb.bc ], [ %i.fv, %.preheader ]
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %bb.bc ], [ 0, %.preheader ] ; 2 uses
  %i.fx = getelementptr [32 x i8], ptr %i.fu, i64 %indvars.iv166
  %i.fy = getelementptr i8, ptr %i.fx, i64 12     ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !143 ; 2 uses
  %.not113 = icmp eq ptr %i.fz, null
  br i1 %.not113, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %.lr.ph155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.ga = ptrtoint ptr %i.fz to i64
  store i64 %i.ga, ptr %i.g, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.g) #20
  %i.gb = load i64, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !143
  %i.gd = ptrtoint ptr %i.gc to i64
  %.not114 = icmp eq i64 %i.gb, %i.gd
  br i1 %.not114, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ge = inttoptr i64 %i.gb to ptr
  store ptr %i.ge, ptr %i.fy, align 8, !tbaa !143
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %.pre = load i32, ptr %i.fu, align 1, !tbaa !7
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph155
  %i.gf = phi i32 [ %.pre, %bb.bb ], [ %i.fw, %.lr.ph155 ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.gg = zext i32 %i.gf to i64
  %i.gh = icmp samesign ult i64 %indvars.iv.next167, %i.gg
  br i1 %i.gh, label %.lr.ph155, label %.loopexit, !llvm.loop !145

.loopexit:                                        ; preds = %bb.bc, %.preheader, %.loopexit143
  br i1 %1, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.loopexit
  call void @rb_yjit_iseq_update_references(ptr noundef %0) #20
  %i.gi = getelementptr i8, ptr %i.j, i64 352
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !146
  call void @rb_zjit_iseq_update_references(ptr noundef %i.gj) #20
  br label %bb.bg

bb.be:                                            ; preds = %.loopexit
  %i.gk = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gk, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gl = getelementptr i8, ptr %i.j, i64 336
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !147
  call void @rb_yjit_iseq_mark(ptr noundef %i.gm) #20
  %i.gn = getelementptr i8, ptr %i.j, i64 352
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !146
  call void @rb_zjit_iseq_mark(ptr noundef %i.go) #20
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %i.gp = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gp, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gq = getelementptr i8, ptr %i.j, i64 216
  call void @rb_gc_mark_and_move(ptr noundef %i.gq) #20
  %i.gr = getelementptr i8, ptr %i.j, i64 224
  call void @rb_gc_mark_and_move(ptr noundef %i.gr) #20
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.a
  %i.gs = load i64, ptr %0, align 8, !tbaa !80    ; 2 uses
  %i.gt = and i64 %i.gs, 131072
  %.not111 = icmp eq i64 %i.gt, 0
  br i1 %.not111, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gu = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gu, label %bb.bu, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gv = getelementptr i8, ptr %0, i64 24
  br label %.sink.split

bb.bl:                                            ; preds = %bb.bi
  %i.gw = and i64 %i.gs, 262144
  %.not112 = icmp eq i64 %i.gw, 0
  br i1 %.not112, label %bb.bu, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gx = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gx, label %bb.bu, label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.bm
  %2 = getelementptr i8, ptr %0, i64 24           ; 2 uses
  %3 = load ptr, ptr %2, align 8, !tbaa !90       ; 3 uses
  %i.gy = getelementptr i8, ptr %3, i64 104
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !112
  call void @rb_iseq_mark_and_move_insn_storage(ptr noundef %i.gz) #20
  br i1 %1, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %ISEQ_COMPILE_DATA.exit
  %.val = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.ha = getelementptr i8, ptr %.val, i64 232
  %.val.val = load ptr, ptr %i.ha, align 8, !tbaa !91
  br label %bb.bo

bb.bo:                                            ; preds = %ISEQ_COMPILE_DATA.exit, %bb.bn
  %i.hb = phi ptr [ %.val.val, %bb.bn ], [ null, %ISEQ_COMPILE_DATA.exit ] ; 4 uses
  %i.hc = load ptr, ptr %2, align 8, !tbaa !90    ; 4 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !148
  %i.hf = getelementptr i8, ptr %i.hc, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !149 ; 4 uses
  %i.hh = getelementptr i8, ptr %i.hc, i64 40     ; 3 uses
  %i.hi = load ptr, ptr %i.hh, align 8            ; 2 uses
  %.not.i125 = icmp eq ptr %i.hi, null
  %i.hj = ptrtoint ptr %i.hi to i64               ; 2 uses
  br i1 %.not.i125, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hk = getelementptr i8, ptr %i.hc, i64 32
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !150, !range !151, !noundef !152
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %.lr.ph.i.i131, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bp
  %i.hn = zext i32 %i.he to i64
  %i.ho = add nuw nsw i64 %i.hn, 63
  %i.hp = lshr i64 %i.ho, 6                       ; 3 uses
  %.not33.i = icmp eq i64 %i.hp, 0
  br i1 %.not33.i, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.preheader.i
  %.not22.i20.i = icmp eq ptr %i.hb, null
  br i1 %.not22.i20.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i126, %iseq_scan_bits.exit28.us.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %iseq_scan_bits.exit28.us.i ], [ 0, %.lr.ph.i126 ] ; 3 uses
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !90
  %i.hr = getelementptr [8 x i8], ptr %i.hq, i64 %indvars.iv38.i
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !11 ; 2 uses
  %.not24.i18.us.i = icmp eq i64 %i.hs, 0
  br i1 %.not24.i18.us.i, label %iseq_scan_bits.exit28.us.i, label %.lr.ph.split.us.i25.us.preheader.i

.lr.ph.split.us.i25.us.preheader.i:               ; preds = %.lr.ph.split.us.i
  %.idx = shl i64 %indvars.iv38.i, 9
  %i.ht = getelementptr i8, ptr %i.hg, i64 %.idx
  br label %.lr.ph.split.us.i25.us.i

.lr.ph.split.us.i25.us.i:                         ; preds = %.lr.ph.split.us.i25.us.i, %.lr.ph.split.us.i25.us.preheader.i
  %.025.us.i26.us.i = phi i64 [ %i.hx, %.lr.ph.split.us.i25.us.i ], [ %i.hs, %.lr.ph.split.us.i25.us.preheader.i ] ; 3 uses
  %i.hu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i26.us.i, i1 true)
  %i.hv = getelementptr [8 x i8], ptr %i.ht, i64 %i.hu
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.hv) #20
  %i.hw = add i64 %.025.us.i26.us.i, -1
  %i.hx = and i64 %i.hw, %.025.us.i26.us.i        ; 2 uses
  %.not.us.i27.us.i = icmp eq i64 %i.hx, 0
  br i1 %.not.us.i27.us.i, label %iseq_scan_bits.exit28.us.i, label %.lr.ph.split.us.i25.us.i, !llvm.loop !122

iseq_scan_bits.exit28.us.i:                       ; preds = %.lr.ph.split.us.i25.us.i, %.lr.ph.split.us.i
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next39.i, %i.hp
  br i1 %exitcond41.not.i, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.us.i, !llvm.loop !153

.lr.ph.i.i131:                                    ; preds = %bb.bp
  %.not22.i.i132 = icmp eq ptr %i.hb, null
  br i1 %.not22.i.i132, label %.lr.ph.split.us.i.i136, label %.lr.ph.split.i.i133

.lr.ph.split.us.i.i136:                           ; preds = %.lr.ph.i.i131, %.lr.ph.split.us.i.i136
  %.025.us.i.i137 = phi i64 [ %i.ib, %.lr.ph.split.us.i.i136 ], [ %i.hj, %.lr.ph.i.i131 ] ; 3 uses
  %i.hy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i.i137, i1 true)
  %i.hz = getelementptr [8 x i8], ptr %i.hg, i64 %i.hy
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.hz) #20
  %i.ia = add i64 %.025.us.i.i137, -1
  %i.ib = and i64 %i.ia, %.025.us.i.i137          ; 2 uses
  %.not.us.i.i138 = icmp eq i64 %i.ib, 0
  br i1 %.not.us.i.i138, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.us.i.i136, !llvm.loop !122

.lr.ph.split.i.i133:                              ; preds = %.lr.ph.i.i131, %bb.br
  %.025.i.i134 = phi i64 [ %i.ii, %bb.br ], [ %i.hj, %.lr.ph.i.i131 ] ; 3 uses
  %i.ic = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i.i134, i1 true) ; 2 uses
  %i.id = getelementptr [8 x i8], ptr %i.hg, i64 %i.ic ; 3 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.id) #20
  %i.if = load i64, ptr %i.id, align 8, !tbaa !11 ; 2 uses
  %.not23.i.i135 = icmp eq i64 %i.if, %i.ie
  br i1 %.not23.i.i135, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.split.i.i133
  %i.ig = getelementptr [8 x i8], ptr %i.hb, i64 %i.ic
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !11
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.split.i.i133
  %i.ih = add i64 %.025.i.i134, -1
  %i.ii = and i64 %i.ih, %.025.i.i134             ; 2 uses
  %.not.i17.i = icmp eq i64 %i.ii, 0
  br i1 %.not.i17.i, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.i.i133, !llvm.loop !122

.lr.ph.split.i:                                   ; preds = %.lr.ph.i126, %iseq_scan_bits.exit28.i
  %indvars.iv.i127 = phi i64 [ %indvars.iv.next.i129, %iseq_scan_bits.exit28.i ], [ 0, %.lr.ph.i126 ] ; 3 uses
  %i.ij = load ptr, ptr %i.hh, align 8, !tbaa !90
  %i.ik = getelementptr [8 x i8], ptr %i.ij, i64 %indvars.iv.i127
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !11 ; 2 uses
  %.not24.i18.i = icmp eq i64 %i.il, 0
  br i1 %.not24.i18.i, label %iseq_scan_bits.exit28.i, label %.lr.ph.split.i21.preheader.i

.lr.ph.split.i21.preheader.i:                     ; preds = %.lr.ph.split.i
  %i.im = shl i64 %indvars.iv.i127, 6
  br label %.lr.ph.split.i21.i

.lr.ph.split.i21.i:                               ; preds = %bb.bt, %.lr.ph.split.i21.preheader.i
  %.025.i22.i = phi i64 [ %i.iu, %bb.bt ], [ %i.il, %.lr.ph.split.i21.preheader.i ] ; 3 uses
  %i.in = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i22.i, i1 true)
  %i.io = or disjoint i64 %i.in, %i.im            ; 2 uses
  %i.ip = getelementptr [8 x i8], ptr %i.hg, i64 %i.io ; 3 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.ip) #20
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !11 ; 2 uses
  %.not23.i23.i = icmp eq i64 %i.ir, %i.iq
  br i1 %.not23.i23.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.split.i21.i
  %i.is = getelementptr [8 x i8], ptr %i.hb, i64 %i.io
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !11
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph.split.i21.i
  %i.it = add i64 %.025.i22.i, -1
  %i.iu = and i64 %i.it, %.025.i22.i              ; 2 uses
  %.not.i24.i = icmp eq i64 %i.iu, 0
  br i1 %.not.i24.i, label %iseq_scan_bits.exit28.i, label %.lr.ph.split.i21.i, !llvm.loop !122

iseq_scan_bits.exit28.i:                          ; preds = %bb.bt, %.lr.ph.split.i
  %indvars.iv.next.i129 = add nuw nsw i64 %indvars.iv.i127, 1 ; 2 uses
  %exitcond.not.i130 = icmp eq i64 %indvars.iv.next.i129, %i.hp
  br i1 %exitcond.not.i130, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.i, !llvm.loop !153

rb_iseq_mark_and_move_each_compile_data_value.exit: ; preds = %iseq_scan_bits.exit28.i, %iseq_scan_bits.exit28.us.i, %bb.br, %.lr.ph.split.us.i.i136, %bb.bo, %.preheader.i
  call void @rb_gc_mark_and_move(ptr noundef %3) #20
  %i.iv = getelementptr i8, ptr %3, i64 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bk, %rb_iseq_mark_and_move_each_compile_data_value.exit
  %.sink = phi ptr [ %i.iv, %rb_iseq_mark_and_move_each_compile_data_value.exit ], [ %i.gv, %bb.bk ]
  call void @rb_gc_mark_and_move(ptr noundef %.sink) #20
  br label %bb.bu

bb.bu:                                            ; preds = %.sink.split, %bb.bm, %bb.bl, %bb.bj
  ret void
}

declare void @rb_gc_mark_and_move(ptr noundef) local_unnamed_addr #2

declare ptr @rb_vm_empty_cc() local_unnamed_addr #2

declare void @rb_yjit_iseq_update_references(ptr noundef) local_unnamed_addr #2

declare void @rb_zjit_iseq_update_references(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @rb_gc_checking_shareable() local_unnamed_addr #2

declare void @rb_yjit_iseq_mark(ptr noundef) local_unnamed_addr #2

declare void @rb_zjit_iseq_mark(ptr noundef) local_unnamed_addr #2

declare void @rb_iseq_mark_and_move_insn_storage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_iseq_memsize(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 13 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !80     ; 2 uses
  %i.d = and i64 %i.c, 393216
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne ptr %i.b, null
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !89
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 128
  %i.k = load i32, ptr %i.j, align 8, !tbaa !154
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 4
  %i.n = getelementptr i8, ptr %i.b, i64 240
  %i.o = load i32, ptr %i.n, align 8, !tbaa !155
  %i.p = zext i32 %i.o to i64
  %i.q = add nuw nsw i64 %i.i, 63
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.r, 1073741816
  %reass.add = add nuw nsw i64 %i.p, %i.i
  %reass.mul = shl nuw nsw i64 %reass.add, 3
  %i.t = add nuw nsw i64 %i.m, 360
  %i.u = add nuw nsw i64 %i.t, %i.s
  %i.v = add nuw nsw i64 %i.u, %reass.mul         ; 2 uses
  %i.w = getelementptr i8, ptr %i.b, i64 160
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !87   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i32, ptr %i.x, align 1, !tbaa !7    ; 3 uses
  %i.z = icmp sgt i32 %i.y, 67108863
  br i1 %i.z, label %bb.d, label %iseq_catch_table_bytes.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_fatal(ptr noundef nonnull @.str.106, i32 noundef %i.y) #22
  unreachable

iseq_catch_table_bytes.exit:                      ; preds = %bb.c
  %i.aa = shl i32 %i.y, 5
  %i.ab = or disjoint i32 %i.aa, 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.v, %i.ac
  br label %bb.e

bb.e:                                             ; preds = %iseq_catch_table_bytes.exit, %bb.b
  %.050 = phi i64 [ %i.ad, %iseq_catch_table_bytes.exit ], [ %i.v, %bb.b ]
  %i.ae = getelementptr i8, ptr %i.b, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !156
  %i.ag = add i32 %i.af, 1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %.050
  %i.ak = getelementptr i8, ptr %i.b, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92 ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %param_keyword_size.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load i32, ptr %i.al, align 8, !tbaa !97
  %i.an = getelementptr i8, ptr %i.al, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !141
  %i.ap = sub i32 %i.am, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 3
  %i.as = add nsw i64 %i.ar, 32
  br label %param_keyword_size.exit

param_keyword_size.exit:                          ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.as, %bb.f ], [ 0, %bb.e ]
  %i.at = add nsw i64 %i.aj, %.0.i
  %i.au = getelementptr i8, ptr %i.b, i64 244
  %i.av = load i32, ptr %i.au, align 4, !tbaa !40 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.b, i64 252
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43
  %i.ay = getelementptr i8, ptr %i.b, i64 248
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !41
  %i.ba = getelementptr i8, ptr %i.b, i64 256
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bc = add i32 %i.az, %i.ax                    ; 2 uses
  %i.bd = add i32 %i.bc, %i.av
  %i.be = add i32 %i.bd, %i.bb
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nsw i64 %i.at, %i.bg                ; 2 uses
  %i.bi = getelementptr i8, ptr %i.b, i64 184
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  %.not56 = icmp ne ptr %i.bj, null
  %i.bk = icmp ne i32 %i.av, 0
  %or.cond80 = select i1 %.not56, i1 %i.bk, i1 false
  br i1 %or.cond80, label %.lr.ph71, label %.loopexit

.lr.ph71:                                         ; preds = %param_keyword_size.exit
  %i.bl = add i32 %i.bc, %i.bb
  %wide.trip.count = zext i32 %i.av to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph71, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.170 = phi i64 [ %i.bh, %.lr.ph71 ], [ %.3, %bb.h ] ; 3 uses
  %i.bm = trunc nuw i64 %indvars.iv to i32
  %i.bn = add i32 %i.bl, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr [16 x i8], ptr %i.bj, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !44 ; 3 uses
  %.not59 = icmp eq ptr %i.br, null
  br i1 %.not59, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !11
  %.not6066 = icmp eq i64 %i.bs, 0
  br i1 %.not6066, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.04968 = phi ptr [ %i.bt, %.lr.ph ], [ %i.br, %.preheader ]
  %.267 = phi i64 [ %i.bu, %.lr.ph ], [ %.170, %.preheader ]
  %i.bt = getelementptr i8, ptr %.04968, i64 8    ; 2 uses
  %i.bu = add i64 %.267, 8                        ; 2 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !11
  %.not60 = icmp eq i64 %i.bv, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph, !llvm.loop !157

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.2.lcssa = phi i64 [ %.170, %.preheader ], [ %i.bu, %.lr.ph ]
  %i.bw = add i64 %.2.lcssa, 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.3 = phi i64 [ %i.bw, %._crit_edge ], [ %.170, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !158

.loopexit:                                        ; preds = %bb.h, %param_keyword_size.exit
  %.4 = phi i64 [ %i.bh, %param_keyword_size.exit ], [ %.3, %bb.h ]
  %i.bx = getelementptr i8, ptr %i.b, i64 260
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !127
  %i.bz = zext i32 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 4
  %i.cb = add i64 %i.ca, %.4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.a
  %.5 = phi i64 [ %i.cb, %.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.cc = and i64 %i.c, 262144
  %.not.i61 = icmp eq i64 %i.cc, 0
  br i1 %.not.i61, label %ISEQ_COMPILE_DATA.exit.thread, label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.i
  %i.cd = getelementptr i8, ptr %0, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !90 ; 2 uses
  %.not57 = icmp eq ptr %i.ce, null
  br i1 %.not57, label %ISEQ_COMPILE_DATA.exit.thread, label %bb.j

bb.j:                                             ; preds = %ISEQ_COMPILE_DATA.exit
  %i.cf = add i64 %.5, 192                        ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 88
  %.073 = load ptr, ptr %i.cg, align 8, !tbaa !110 ; 2 uses
  %.not5874 = icmp eq ptr %.073, null
  br i1 %.not5874, label %ISEQ_COMPILE_DATA.exit.thread, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.j, %.lr.ph78
  %.076 = phi ptr [ %.0, %.lr.ph78 ], [ %.073, %bb.j ] ; 2 uses
  %.675 = phi i64 [ %i.cl, %.lr.ph78 ], [ %i.cf, %bb.j ]
  %i.ch = getelementptr i8, ptr %.076, i64 12
end_hunk_0
begin_hunk_1_@prepare_iseq_build:bb.a
  %i.bs = getelementptr i8, ptr %i.br, i64 216
  store i64 4, ptr %i.bs, align 8, !tbaa !11
  %i.bt = getelementptr i8, ptr %i.br, i64 232    ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !91
  store ptr null, ptr %i.bt, align 8, !tbaa !91
  tail call void @ruby_xfree(ptr noundef %i.bu) #20
  %i.bv = getelementptr i8, ptr %i.b, i64 200
  store i64 0, ptr %i.bv, align 8, !tbaa !262
  %i.bw = icmp eq i64 %10, 4
  %i.bx = getelementptr i8, ptr %i.b, i64 208     ; 2 uses
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %rb_obj_write.exit
  store i64 4, ptr %i.bx, align 8, !tbaa !11
  br label %ISEQ_COMPILE_DATA.exit

bb.r:                                             ; preds = %rb_obj_write.exit
  %i.by = tail call i64 @rb_ractor_make_shareable(i64 noundef %10) #20 ; 4 uses
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !11
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = and i64 %i.by, 7
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = or i1 %i.bz, %i.cb
  br i1 %i.cc, label %ISEQ_COMPILE_DATA.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @rb_gc_writebarrier(i64 noundef %i.bq, i64 noundef %i.by) #20
  br label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = tail call noalias nonnull dereferenceable(192) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 192) #21 ; 3 uses
  %i.ce = getelementptr i8, ptr %0, i64 24        ; 9 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !90
  %i.cf = load i64, ptr %0, align 8, !tbaa !101
  %i.cg = or i64 %i.cf, 262144
  store i64 %i.cg, ptr %0, align 8, !tbaa !101
  store i64 %.059, ptr %i.cd, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 4, ptr %i.ch, align 8, !tbaa !11
  %i.ci = tail call noalias nonnull dereferenceable(528) ptr @ruby_xmalloc2(i64 noundef 528, i64 noundef 1) #21 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 0, ptr %i.cj, align 8, !tbaa !7
  store ptr null, ptr %i.ci, align 8, !tbaa !110
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 512, ptr %i.ck, align 4, !tbaa !7
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !90
  %i.cm = getelementptr i8, ptr %i.cl, i64 96
  store ptr %i.ci, ptr %i.cm, align 8, !tbaa !263
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !90
  %i.co = getelementptr i8, ptr %i.cn, i64 88
  store ptr %i.ci, ptr %i.co, align 8, !tbaa !102
  %i.cp = tail call noalias nonnull dereferenceable(528) ptr @ruby_xmalloc2(i64 noundef 528, i64 noundef 1) #21 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 0, ptr %i.cq, align 8, !tbaa !7
  store ptr null, ptr %i.cp, align 8, !tbaa !110
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 512, ptr %i.cr, align 4, !tbaa !7
  %i.cs = load ptr, ptr %i.ce, align 8, !tbaa !90
  %i.ct = getelementptr i8, ptr %i.cs, i64 112
  store ptr %i.cp, ptr %i.ct, align 8, !tbaa !264
  %i.cu = load ptr, ptr %i.ce, align 8, !tbaa !90
  %i.cv = getelementptr i8, ptr %i.cu, i64 104
  store ptr %i.cp, ptr %i.cv, align 8, !tbaa !112
  %i.cw = load ptr, ptr %i.ce, align 8, !tbaa !90
  %i.cx = getelementptr i8, ptr %i.cw, i64 140
  store i32 %8, ptr %i.cx, align 4, !tbaa !265
  %i.cy = load ptr, ptr %i.ce, align 8, !tbaa !90
  %i.cz = getelementptr i8, ptr %i.cy, i64 152
  store ptr %11, ptr %i.cz, align 8, !tbaa !266
  %i.da = load ptr, ptr %i.ce, align 8, !tbaa !90
  %i.db = getelementptr i8, ptr %i.da, i64 160
  store ptr null, ptr %i.db, align 8, !tbaa !113
  %i.dc = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !47
  %i.dd = getelementptr i8, ptr %i.dc, i64 1272
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !267
  %i.df = load ptr, ptr %i.ce, align 8, !tbaa !90
  %i.dg = getelementptr i8, ptr %i.df, i64 168
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !268
  %i.dh = load i16, ptr %11, align 4
  %i.di = and i16 %i.dh, 512
  %.not63 = icmp eq i16 %i.di, 0
  br i1 %.not63, label %rb_obj_write.exit97.thread, label %bb.t

bb.t:                                             ; preds = %ISEQ_COMPILE_DATA.exit
  %i.dj = tail call i64 @rb_get_coverages() #20   ; 2 uses
  %i.dk = and i64 %i.dj, -5
  %.not108 = icmp eq i64 %i.dk, 0
  br i1 %.not108, label %rb_obj_write.exit97.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dm = getelementptr i8, ptr %i.dl, i64 64
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !269 ; 4 uses
  %i.do = icmp ne i64 %i.dn, 0
  %i.dp = and i64 %i.dn, 7
  %i.dq = icmp eq i64 %i.dp, 0
  %.not4.i = and i1 %i.do, %i.dq
  %.pre.i.i = inttoptr i64 %i.dn to ptr           ; 3 uses
  %.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !80 ; 2 uses
  %i.dr = and i64 %.pre.i, 31
  %i.ds = icmp eq i64 %i.dr, 5
  %or.cond.i = select i1 %.not4.i, i1 %i.ds, i1 false
  br i1 %or.cond.i, label %bb.x, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.u
  %i.dt = and i64 %.pre.i, 8192
  %.not.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.du = getelementptr i8, ptr %.pre.i.i, i64 16
  br label %RARRAY_AREF.exit.i.i

bb.w:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.dv = getelementptr i8, ptr %.pre.i.i, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !90
  br label %RARRAY_AREF.exit.i.i

RARRAY_AREF.exit.i.i:                             ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi ptr [ %i.du, %bb.v ], [ %i.dw, %bb.w ]
  %i.dx = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !11
  br label %bb.x

rb_obj_write.exit97.thread:                       ; preds = %bb.t, %ISEQ_COMPILE_DATA.exit
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dz = getelementptr i8, ptr %i.dy, i64 216
  store i64 0, ptr %i.dz, align 8, !tbaa !11
  br label %rb_obj_write.exit100

bb.x:                                             ; preds = %RARRAY_AREF.exit.i.i, %bb.u
  %.0.i.i = phi i64 [ %i.dx, %RARRAY_AREF.exit.i.i ], [ %i.dn, %bb.u ]
  %i.ea = tail call i64 @rb_hash_lookup(i64 noundef %i.dj, i64 noundef %.0.i.i) #20 ; 3 uses
  %i.eb = icmp eq i64 %i.ea, 4
  %spec.store.select = select i1 %i.eb, i64 0, i64 %i.ea ; 4 uses
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 216
  store i64 %spec.store.select, ptr %i.ed, align 8, !tbaa !11
  %i.ee = icmp eq i64 %spec.store.select, 0       ; 2 uses
  %i.ef = and i64 %spec.store.select, 7
  %i.eg = icmp ne i64 %i.ef, 0
  %i.eh = or i1 %i.ee, %i.eg
  br i1 %i.eh, label %rb_obj_write.exit97, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @rb_gc_writebarrier(i64 noundef %i.bq, i64 noundef %spec.store.select) #20
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 216
  %.pre109 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !270
  br label %bb.z

rb_obj_write.exit97:                              ; preds = %bb.x
  br i1 %i.ee, label %rb_obj_write.exit100, label %bb.z

bb.z:                                             ; preds = %bb.y, %rb_obj_write.exit97
  %i.ei = phi i64 [ %.pre109, %bb.y ], [ %i.ea, %rb_obj_write.exit97 ]
  %i.ej = phi ptr [ %.pre, %bb.y ], [ %i.ec, %rb_obj_write.exit97 ]
  %i.ek = inttoptr i64 %i.ei to ptr               ; 3 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !80
  %i.em = and i64 %i.el, 8192
  %.not.i.i98 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i98, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = getelementptr i8, ptr %i.ek, i64 16
  br label %RARRAY_AREF.exit

bb.ab:                                            ; preds = %bb.z
  %i.eo = getelementptr i8, ptr %i.ek, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !90
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.aa, %bb.ab
  %.0.i.i99 = phi ptr [ %i.en, %bb.aa ], [ %i.ep, %bb.ab ]
  %i.eq = getelementptr i8, ptr %.0.i.i99, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !11
  %.not65 = icmp eq i64 %i.er, 0
  br i1 %.not65, label %rb_obj_write.exit100, label %bb.ac

bb.ac:                                            ; preds = %RARRAY_AREF.exit
  %i.es = getelementptr i8, ptr %i.ej, i64 224
  %i.et = tail call i64 @rb_ary_hidden_new(i64 noundef 0) #20 ; 4 uses
  store i64 %i.et, ptr %i.es, align 8, !tbaa !11
  %i.eu = icmp eq i64 %i.et, 0
  %i.ev = and i64 %i.et, 7
  %i.ew = icmp ne i64 %i.ev, 0
  %i.ex = or i1 %i.eu, %i.ew
  br i1 %i.ex, label %rb_obj_write.exit100, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @rb_gc_writebarrier(i64 noundef %i.bq, i64 noundef %i.et) #20
  br label %rb_obj_write.exit100

rb_obj_write.exit100:                             ; preds = %bb.ad, %bb.ac, %rb_obj_write.exit97.thread, %RARRAY_AREF.exit, %rb_obj_write.exit97
  ret void
}

declare i64 @rb_iseq_compile_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @finish_iseq_build(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca i64, align 8                        ; 3 uses
  %2 = load i64, ptr %0, align 8, !tbaa !101      ; 2 uses
  %3 = and i64 %2, 262144
  %.not.i = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %.not.i)
  %4 = getelementptr i8, ptr %0, i64 24           ; 2 uses
  %5 = load ptr, ptr %4, align 8, !tbaa !90       ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load i64, ptr %5, align 8, !tbaa !271    ; 3 uses
  %i.d = and i64 %2, -262145
  store i64 %i.d, ptr %0, align 8, !tbaa !101
  store ptr null, ptr %4, align 8, !tbaa !90
  %i.e = getelementptr i8, ptr %5, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.f, null
  br i1 %.not4.i.i, label %free_arena.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.05.i.i, align 8, !tbaa !110 ; 2 uses
  tail call void @ruby_xfree(ptr noundef nonnull %.05.i.i) #20
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %free_arena.exit.i, label %.lr.ph.i.i, !llvm.loop !111

free_arena.exit.i:                                ; preds = %.lr.ph.i.i, %bb.a
  %i.h = getelementptr i8, ptr %5, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 2 uses
  %.not4.i8.i = icmp eq ptr %i.i, null
  br i1 %.not4.i8.i, label %free_arena.exit12.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %free_arena.exit.i, %.lr.ph.i9.i
  %.05.i10.i = phi ptr [ %i.j, %.lr.ph.i9.i ], [ %i.i, %free_arena.exit.i ] ; 2 uses
  %i.j = load ptr, ptr %.05.i10.i, align 8, !tbaa !110 ; 2 uses
  tail call void @ruby_xfree(ptr noundef nonnull %.05.i10.i) #20
  %.not.i11.i = icmp eq ptr %i.j, null
  br i1 %.not.i11.i, label %free_arena.exit12.i, label %.lr.ph.i9.i, !llvm.loop !111

free_arena.exit12.i:                              ; preds = %.lr.ph.i9.i, %free_arena.exit.i
  %i.k = getelementptr i8, ptr %5, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113  ; 2 uses
  %.not7.i = icmp eq ptr %i.l, null
  br i1 %.not7.i, label %compile_data_free.exit, label %bb.b

bb.b:                                             ; preds = %free_arena.exit12.i
  tail call void @rb_id_table_free(ptr noundef nonnull %i.l) #20
  br label %compile_data_free.exit

compile_data_free.exit:                           ; preds = %free_arena.exit12.i, %bb.b
  tail call void @ruby_xfree(ptr noundef nonnull %5) #20
  %i.m = and i64 %i.c, -5
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %compile_data_free.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.n = getelementptr i8, ptr %i.b, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !269  ; 4 uses
  %i.p = icmp ne i64 %i.o, 0
  %i.q = and i64 %i.o, 7
  %i.r = icmp eq i64 %i.q, 0
  %.not25 = and i1 %i.p, %i.r
  %.pre.i = inttoptr i64 %i.o to ptr              ; 3 uses
  %.pre = load i64, ptr %.pre.i, align 8, !tbaa !80 ; 2 uses
  %i.s = and i64 %.pre, 31
  %i.t = icmp eq i64 %i.s, 5
  %or.cond = select i1 %.not25, i1 %i.t, i1 false
  br i1 %or.cond, label %pathobj_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.c
  %i.u = and i64 %.pre, 8192
  %.not.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.v = getelementptr i8, ptr %.pre.i, i64 16
  br label %RARRAY_AREF.exit.i

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.w = getelementptr i8, ptr %.pre.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !90
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ]
  %i.y = load i64, ptr %.0.i.i.i, align 8, !tbaa !11
  br label %pathobj_path.exit

pathobj_path.exit:                                ; preds = %bb.c, %RARRAY_AREF.exit.i
  %.0.i13 = phi i64 [ %i.y, %RARRAY_AREF.exit.i ], [ %i.o, %bb.c ]
  store i64 %.0.i13, ptr %1, align 8, !tbaa !11
  %i.z = icmp eq i64 %i.c, 20
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %pathobj_path.exit
  %i.aa = load i64, ptr @rb_eSyntaxError, align 8, !tbaa !11
  %i.ab = tail call i64 @rb_exc_new(i64 noundef %i.aa, ptr noundef nonnull @.str.110, i64 noundef 13) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %pathobj_path.exit
  %.0 = phi i64 [ %i.ab, %bb.f ], [ %i.c, %pathobj_path.exit ] ; 2 uses
  %i.ac = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @finish_iseq_build.rbimpl_id, ptr noundef @.str.111) #25
  %i.ad = call i64 @rb_funcallv(i64 noundef %.0, i64 noundef %i.ac, i32 noundef 1, ptr noundef nonnull %1) #20 ; 0 uses
  call void @rb_exc_raise(i64 noundef %.0) #22
  unreachable

bb.h:                                             ; preds = %compile_data_free.exit
  %i.ae = getelementptr i8, ptr %0, i64 28
  store i32 0, ptr %i.ae, align 4, !tbaa !90
  %i.af = load i32, ptr @ruby_vm_event_enabled_global_flags, align 4, !tbaa !7
  %i.ag = and i32 %i.af, 213887                   ; 2 uses
  %.not.i14 = icmp eq i32 %i.ag, 0
  br i1 %.not.i14, label %rb_iseq_init_trace.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @rb_iseq_trace_set(ptr noundef nonnull %0, i32 noundef %i.ag)
  br label %rb_iseq_init_trace.exit

rb_iseq_init_trace.exit:                          ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @iseq_translate(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  %.pr.i = load i64, ptr @iseq_translate.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str.105, i64 noundef 9) #20 ; 3 uses
  store i64 %i.b, ptr @iseq_translate.rbimpl_id, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !272

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.b, %.lr.ph.i ]
  %i.c = tail call i32 @rb_respond_to(i64 noundef %i.a, i64 noundef %.lcssa.i) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %iseqw_check.exit, label %bb.b

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  %i.d = tail call fastcc i64 @iseqw_new(ptr noundef %0) ; 2 uses
  %i.e = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  %.pr.i10 = load i64, ptr @iseq_translate.rbimpl_id.112, align 8, !tbaa !11 ; 2 uses
  %.not4.i11 = icmp eq i64 %.pr.i10, 0
  br i1 %.not4.i11, label %.lr.ph.i13, label %rbimpl_intern_const.exit15

.lr.ph.i13:                                       ; preds = %bb.b, %.lr.ph.i13
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str.105, i64 noundef 9) #20 ; 3 uses
  store i64 %i.f, ptr @iseq_translate.rbimpl_id.112, align 8, !tbaa !11
  %.not.i14 = icmp eq i64 %i.f, 0
  br i1 %.not.i14, label %.lr.ph.i13, label %rbimpl_intern_const.exit15, !llvm.loop !272

rbimpl_intern_const.exit15:                       ; preds = %.lr.ph.i13, %bb.b
  %.lcssa.i12 = phi i64 [ %.pr.i10, %bb.b ], [ %i.f, %.lr.ph.i13 ]
  %i.g = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.e, i64 noundef %.lcssa.i12, i32 noundef 1, i64 noundef %i.d) #20 ; 8 uses
  %.not9 = icmp eq i64 %i.d, %i.g
  br i1 %.not9, label %iseqw_check.exit, label %bb.c

bb.c:                                             ; preds = %rbimpl_intern_const.exit15
  %i.h = icmp eq i64 %i.g, 0
  %i.i = and i64 %i.g, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %rb_class_of.exit.thread

bb.d:                                             ; preds = %bb.c
  switch i64 %i.g, label %bb.g [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.e
    i64 20, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.d
  br label %rb_class_of.exit

bb.g:                                             ; preds = %bb.d
  %i.l = trunc i64 %i.g to i1
  br i1 %i.l, label %rb_class_of.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = and i64 %i.g, 254
  %i.n = icmp eq i64 %i.m, 12
  %spec.select.i = select i1 %i.n, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.in.i = phi ptr [ %spec.select.i, %bb.h ], [ @rb_cNilClass, %bb.e ], [ @rb_cTrueClass, %bb.f ], [ @rb_cFalseClass, %bb.d ], [ @rb_cInteger, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !11
  %i.o = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  %i.p = icmp eq i64 %.0.i, %i.o
  br i1 %i.p, label %.critedge.i.i, label %iseqw_check.exit

rb_class_of.exit.thread:                          ; preds = %bb.c
  %i.q = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.0.i18 = load i64, ptr %i.r, align 8, !tbaa !11
  %i.s = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  %i.t = icmp eq i64 %.0.i18, %i.s
  br i1 %i.t, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %iseqw_check.exit

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %rb_class_of.exit.thread
  %i.u = load i64, ptr %i.q, align 8, !tbaa !80
  %i.v = and i64 %i.u, 95
  %or.cond.not.i.i = icmp eq i64 %i.v, 76
  br i1 %or.cond.not.i.i, label %bb.i, label %.critedge.i.i, !prof !273

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.w = getelementptr i8, ptr %i.q, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !274  ; 2 uses
  %i.y = and i64 %i.x, -2                         ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = trunc i64 %i.x to i1
  %i.ab = getelementptr i8, ptr %i.q, i64 32      ; 2 uses
  br i1 %i.aa, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.j, %bb.i
  %i.ad = phi ptr [ %i.ac, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ae = icmp eq i64 %i.y, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.ae, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !277

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.k
  %.016.i.i = phi ptr [ %i.ag, %bb.k ], [ %i.z, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.k

bb.k:                                             ; preds = %.preheader.i.i
  %i.af = getelementptr i8, ptr %.016.i.i, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !278 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, @iseqw_data_type
  br i1 %i.ah, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !282

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rb_class_of.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.ai = tail call ptr @rb_check_typeddata(i64 noundef %i.g, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.k, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.ai, %.critedge.i.i ], [ %i.ad, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.ad, %bb.k ]
  %i.aj = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16     ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %.not.i16 = icmp eq ptr %i.al, null
  br i1 %.not.i16, label %bb.l, label %bb.m

bb.l:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.aj) #20
  %.pre.i = load ptr, ptr %i.ak, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %rbimpl_check_typeddata.exit.i
  %i.am = phi ptr [ %.pre.i, %bb.l ], [ %i.al, %rbimpl_check_typeddata.exit.i ]
  %i.an = getelementptr i8, ptr %i.am, i64 80
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.ao, 0
  br i1 %.not5.i, label %bb.n, label %iseqw_check.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ap, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.m, %rb_class_of.exit.thread, %rbimpl_intern_const.exit15, %rb_class_of.exit, %rbimpl_intern_const.exit
  %.1 = phi ptr [ %0, %rbimpl_intern_const.exit ], [ %0, %rb_class_of.exit.thread ], [ %0, %rb_class_of.exit ], [ %0, %rbimpl_intern_const.exit15 ], [ %i.aj, %bb.m ]
  ret ptr %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @pm_iseq_new_with_opt_try(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !257
  %i.e = tail call i64 @pm_iseq_compile_node(ptr noundef %i.b, ptr noundef %i.d) #20 ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !255
  tail call fastcc void @finish_iseq_build(ptr noundef %i.f)
  ret i64 36
}

declare i64 @pm_iseq_compile_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @pm_newline_list_line_column(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_protect(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_iseq_new_with_callback(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_imemo_new(i32 noundef 7, i64 noundef 0, i64 noundef 40, i1 noundef zeroext true) #20
  %i.b = inttoptr i64 %i.a to ptr                 ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 noundef 0, i64 noundef 32, i1 noundef false) #20
  %i.d = tail call noalias noundef nonnull dereferenceable(360) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 360) #21
  %i.e = getelementptr i8, ptr %i.b, i64 16
end_hunk_1
begin_hunk_2_@iseq_data_to_ary:bb.a
  %i.or = load i32, ptr %i.oq, align 1, !tbaa !7
  %.not752 = icmp eq i32 %i.or, 0
  br i1 %.not752, label %.loopexit, label %.lr.ph750

.lr.ph750:                                        ; preds = %.preheader, %bb.bw
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %bb.bw ], [ 0, %.preheader ] ; 2 uses
  %i.os = tail call i64 @rb_ary_new() #20         ; 7 uses
  %i.ot = load ptr, ptr %i.op, align 8, !tbaa !87
  %i.ou = getelementptr i8, ptr %i.ot, i64 4
  %i.ov = getelementptr [32 x i8], ptr %i.ou, i64 %indvars.iv829 ; 6 uses
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !315 ; 2 uses
  switch i32 %i.ow, label %bb.bu [
    i32 3, label %bb.bo
    i32 5, label %bb.bp
    i32 7, label %bb.bq
    i32 9, label %bb.br
    i32 11, label %bb.bs
    i32 13, label %bb.bt
  ]

bb.bo:                                            ; preds = %.lr.ph750
  %.pr.i.i = load i64, ptr @exception_type2symbol.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %exception_type2symbol.exit

.lr.ph.i.i:                                       ; preds = %bb.bo, %.lr.ph.i.i
  %i.ox = tail call i64 @rb_intern2(ptr noundef nonnull @.str.128, i64 noundef 6) #20 ; 3 uses
  store i64 %i.ox, ptr @exception_type2symbol.rbimpl_id, align 8, !tbaa !11
  %.not.i.i528 = icmp eq i64 %i.ox, 0
  br i1 %.not.i.i528, label %.lr.ph.i.i, label %exception_type2symbol.exit, !llvm.loop !272

bb.bp:                                            ; preds = %.lr.ph750
  %.pr.i3.i = load i64, ptr @exception_type2symbol.rbimpl_id.278, align 8, !tbaa !11 ; 2 uses
  %.not4.i4.i = icmp eq i64 %.pr.i3.i, 0
  br i1 %.not4.i4.i, label %.lr.ph.i6.i, label %exception_type2symbol.exit

.lr.ph.i6.i:                                      ; preds = %bb.bp, %.lr.ph.i6.i
  %i.oy = tail call i64 @rb_intern2(ptr noundef nonnull @.str.130, i64 noundef 6) #20 ; 3 uses
  store i64 %i.oy, ptr @exception_type2symbol.rbimpl_id.278, align 8, !tbaa !11
  %.not.i7.i = icmp eq i64 %i.oy, 0
  br i1 %.not.i7.i, label %.lr.ph.i6.i, label %exception_type2symbol.exit, !llvm.loop !272

bb.bq:                                            ; preds = %.lr.ph750
  %.pr.i9.i = load i64, ptr @exception_type2symbol.rbimpl_id.279, align 8, !tbaa !11 ; 2 uses
  %.not4.i10.i = icmp eq i64 %.pr.i9.i, 0
  br i1 %.not4.i10.i, label %.lr.ph.i12.i, label %exception_type2symbol.exit

.lr.ph.i12.i:                                     ; preds = %bb.bq, %.lr.ph.i12.i
  %i.oz = tail call i64 @rb_intern2(ptr noundef nonnull @.str.186, i64 noundef 5) #20 ; 3 uses
  store i64 %i.oz, ptr @exception_type2symbol.rbimpl_id.279, align 8, !tbaa !11
  %.not.i13.i = icmp eq i64 %i.oz, 0
  br i1 %.not.i13.i, label %.lr.ph.i12.i, label %exception_type2symbol.exit, !llvm.loop !272

bb.br:                                            ; preds = %.lr.ph750
  %.pr.i15.i = load i64, ptr @exception_type2symbol.rbimpl_id.280, align 8, !tbaa !11 ; 2 uses
  %.not4.i16.i = icmp eq i64 %.pr.i15.i, 0
  br i1 %.not4.i16.i, label %.lr.ph.i18.i, label %exception_type2symbol.exit

.lr.ph.i18.i:                                     ; preds = %bb.br, %.lr.ph.i18.i
  %i.pa = tail call i64 @rb_intern2(ptr noundef nonnull @.str.187, i64 noundef 5) #20 ; 3 uses
  store i64 %i.pa, ptr @exception_type2symbol.rbimpl_id.280, align 8, !tbaa !11
  %.not.i19.i = icmp eq i64 %i.pa, 0
  br i1 %.not.i19.i, label %.lr.ph.i18.i, label %exception_type2symbol.exit, !llvm.loop !272

bb.bs:                                            ; preds = %.lr.ph750
  %.pr.i21.i = load i64, ptr @exception_type2symbol.rbimpl_id.281, align 8, !tbaa !11 ; 2 uses
  %.not4.i22.i = icmp eq i64 %.pr.i21.i, 0
  br i1 %.not4.i22.i, label %.lr.ph.i24.i, label %exception_type2symbol.exit

.lr.ph.i24.i:                                     ; preds = %bb.bs, %.lr.ph.i24.i
  %i.pb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.188, i64 noundef 4) #20 ; 3 uses
  store i64 %i.pb, ptr @exception_type2symbol.rbimpl_id.281, align 8, !tbaa !11
  %.not.i25.i = icmp eq i64 %i.pb, 0
  br i1 %.not.i25.i, label %.lr.ph.i24.i, label %exception_type2symbol.exit, !llvm.loop !272

bb.bt:                                            ; preds = %.lr.ph750
  %.pr.i27.i = load i64, ptr @exception_type2symbol.rbimpl_id.282, align 8, !tbaa !11 ; 2 uses
  %.not4.i28.i = icmp eq i64 %.pr.i27.i, 0
  br i1 %.not4.i28.i, label %.lr.ph.i30.i, label %exception_type2symbol.exit

.lr.ph.i30.i:                                     ; preds = %bb.bt, %.lr.ph.i30.i
  %i.pc = tail call i64 @rb_intern2(ptr noundef nonnull @.str.189, i64 noundef 4) #20 ; 3 uses
  store i64 %i.pc, ptr @exception_type2symbol.rbimpl_id.282, align 8, !tbaa !11
  %.not.i31.i = icmp eq i64 %i.pc, 0
  br i1 %.not.i31.i, label %.lr.ph.i30.i, label %exception_type2symbol.exit, !llvm.loop !272

bb.bu:                                            ; preds = %.lr.ph750
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.283, i32 noundef %i.ow) #23
  unreachable

exception_type2symbol.exit:                       ; preds = %.lr.ph.i30.i, %.lr.ph.i24.i, %.lr.ph.i18.i, %.lr.ph.i12.i, %.lr.ph.i6.i, %.lr.ph.i.i, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt
  %.0.i527 = phi i64 [ %i.pa, %.lr.ph.i18.i ], [ %i.pb, %.lr.ph.i24.i ], [ %i.ox, %.lr.ph.i.i ], [ %i.oy, %.lr.ph.i6.i ], [ %i.oz, %.lr.ph.i12.i ], [ %.pr.i.i, %bb.bo ], [ %.pr.i3.i, %bb.bp ], [ %.pr.i9.i, %bb.bq ], [ %.pr.i15.i, %bb.br ], [ %.pr.i21.i, %bb.bs ], [ %.pr.i27.i, %bb.bt ], [ %i.pc, %.lr.ph.i30.i ]
  %i.pd = tail call i64 @rb_id2sym(i64 noundef %.0.i527) #20
  %i.pe = tail call i64 @rb_ary_push(i64 noundef %i.os, i64 noundef %i.pd) #20 ; 0 uses
  %i.pf = getelementptr i8, ptr %i.ov, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !143 ; 2 uses
  %.not385 = icmp eq ptr %i.pg, null
  br i1 %.not385, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %exception_type2symbol.exit
  %i.ph = tail call fastcc i64 @iseq_data_to_ary(ptr noundef nonnull %i.pg)
  br label %bb.bw

bb.bw:                                            ; preds = %exception_type2symbol.exit, %bb.bv
  %.sink956 = phi i64 [ %i.ph, %bb.bv ], [ 4, %exception_type2symbol.exit ]
  %i.pi = tail call i64 @rb_ary_push(i64 noundef %i.os, i64 noundef %.sink956) #20 ; 0 uses
  %i.pj = getelementptr i8, ptr %i.ov, i64 16
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !316
  %i.pl = zext i32 %i.pk to i64                   ; 2 uses
  %i.pm = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.276, i64 noundef %i.pl) #20
  %i.pn = tail call i64 @rb_str_intern(i64 noundef %i.pm) #20 ; 2 uses
  %i.po = tail call i32 @rb_st_insert(ptr noundef %i.n, i64 noundef %i.pl, i64 noundef %i.pn) #20 ; 0 uses
  %i.pp = tail call i64 @rb_ary_push(i64 noundef %i.os, i64 noundef %i.pn) #20 ; 0 uses
  %i.pq = getelementptr i8, ptr %i.ov, i64 20
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !317
  %i.ps = zext i32 %i.pr to i64                   ; 2 uses
  %i.pt = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.276, i64 noundef %i.ps) #20
  %i.pu = tail call i64 @rb_str_intern(i64 noundef %i.pt) #20 ; 2 uses
  %i.pv = tail call i32 @rb_st_insert(ptr noundef %i.n, i64 noundef %i.ps, i64 noundef %i.pu) #20 ; 0 uses
  %i.pw = tail call i64 @rb_ary_push(i64 noundef %i.os, i64 noundef %i.pu) #20 ; 0 uses
  %i.px = getelementptr i8, ptr %i.ov, i64 24
  %i.py = load i32, ptr %i.px, align 8, !tbaa !319
  %i.pz = zext i32 %i.py to i64                   ; 2 uses
  %i.qa = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.276, i64 noundef %i.pz) #20
  %i.qb = tail call i64 @rb_str_intern(i64 noundef %i.qa) #20 ; 2 uses
  %i.qc = tail call i32 @rb_st_insert(ptr noundef %i.n, i64 noundef %i.pz, i64 noundef %i.qb) #20 ; 0 uses
  %i.qd = tail call i64 @rb_ary_push(i64 noundef %i.os, i64 noundef %i.qb) #20 ; 0 uses
  %i.qe = getelementptr i8, ptr %i.ov, i64 28
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !318
  %i.qg = zext i32 %i.qf to i64
  %i.qh = shl nuw nsw i64 %i.qg, 1
  %i.qi = or disjoint i64 %i.qh, 1
  %i.qj = tail call i64 @rb_ary_push(i64 noundef %i.os, i64 noundef %i.qi) #20 ; 0 uses
  %i.qk = tail call i64 @rb_ary_push(i64 noundef %i.l, i64 noundef %i.os) #20 ; 0 uses
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 2 uses
  %i.ql = load ptr, ptr %i.op, align 8, !tbaa !87
  %i.qm = load i32, ptr %i.ql, align 1, !tbaa !7
  %i.qn = zext i32 %i.qm to i64
  %i.qo = icmp samesign ult i64 %indvars.iv.next830, %i.qn
  br i1 %i.qo, label %.lr.ph750, label %.loopexit, !llvm.loop !404

.loopexit:                                        ; preds = %bb.bw, %.preheader, %._crit_edge748
  %i.qp = tail call i64 @rb_ary_new() #20         ; 12 uses
  %i.qq = tail call i64 @rb_ary_new() #20         ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %RARRAY_LENINT.exit, %.loopexit
  %i.qr = phi i64 [ %i.k, %.loopexit ], [ %.pre842, %RARRAY_LENINT.exit ]
  %.0343 = phi i32 [ 0, %.loopexit ], [ %.2, %RARRAY_LENINT.exit ] ; 3 uses
  %.0342 = phi i32 [ 0, %.loopexit ], [ %i.vm, %RARRAY_LENINT.exit ] ; 6 uses
  %.0340 = phi ptr [ null, %.loopexit ], [ %.1341, %RARRAY_LENINT.exit ] ; 2 uses
  %.0339 = phi i64 [ 0, %.loopexit ], [ %i.vn, %RARRAY_LENINT.exit ] ; 4 uses
  %i.qs = inttoptr i64 %i.qr to ptr               ; 4 uses
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !80 ; 2 uses
  %i.qu = and i64 %i.qt, 8192
  %.not.i529 = icmp eq i64 %i.qu, 0
  br i1 %.not.i529, label %rb_array_len.exit531, label %rb_array_len.exit531.thread

rb_array_len.exit531:                             ; preds = %bb.bx
  %i.qv = getelementptr i8, ptr %i.qs, i64 16
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !90
  %i.qx = icmp slt i64 %.0339, %i.qw
  br i1 %i.qx, label %bb.by, label %bb.dc

rb_array_len.exit531.thread:                      ; preds = %bb.bx
  %i.qy = lshr i64 %i.qt, 15
  %i.qz = and i64 %i.qy, 127
  %i.ra = icmp samesign ult i64 %.0339, %i.qz
  br i1 %i.ra, label %.thread659, label %bb.dc

.thread659:                                       ; preds = %rb_array_len.exit531.thread
  %i.rb = getelementptr i8, ptr %i.qs, i64 16
  br label %RARRAY_AREF.exit

bb.by:                                            ; preds = %rb_array_len.exit531
  %i.rc = getelementptr i8, ptr %i.qs, i64 32
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !90
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %.thread659, %bb.by
  %.0.i.i = phi ptr [ %i.rb, %.thread659 ], [ %i.rd, %bb.by ]
  %i.re = getelementptr [8 x i8], ptr %.0.i.i, i64 %.0339
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.rg = zext i32 %.0342 to i64
  %i.rh = call i32 @rb_st_lookup(ptr noundef %i.n, i64 noundef %i.rg, ptr noundef nonnull %i.c) #20
  %.not374 = icmp eq i32 %i.rh, 0
  br i1 %.not374, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %RARRAY_AREF.exit
  %i.ri = load i64, ptr %i.c, align 8, !tbaa !11
  %i.rj = call i64 @rb_ary_push(i64 noundef %i.qp, i64 noundef %i.ri) #20 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %RARRAY_AREF.exit
  %.val = load ptr, ptr %i.f, align 8, !tbaa !18  ; 3 uses
  %i.rk = getelementptr i8, ptr %.val, i64 112
  %i.rl = getelementptr i8, ptr %.val, i64 128
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !154
  %i.rn = load ptr, ptr %i.rk, align 8, !tbaa !83 ; 2 uses
  %cond = icmp eq i32 %i.rm, 1
  br i1 %cond, label %get_insn_info.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ro = getelementptr i8, ptr %.val, i64 136
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !85 ; 2 uses
  %i.rq = icmp slt i32 %.0342, 54
  br i1 %i.rq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.rr = sdiv i32 %.0342, 9
  %i.rs = srem i32 %.0342, 9
  %i.rt = sext i32 %i.rr to i64
  %i.ru = getelementptr [8 x i8], ptr %i.rp, i64 %i.rt
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !11
  %i.rw = mul nsw i32 %i.rs, 7
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = lshr i64 %i.rv, %i.rx
  %i.rz = trunc i64 %i.ry to i32
  %i.sa = and i32 %i.rz, 127
  br label %succ_index_lookup.exit.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.sb = add nsw i32 %.0342, -54                 ; 3 uses
  %i.sc = lshr i32 %i.sb, 9
  %i.sd = getelementptr i8, ptr %i.rp, i64 48
  %i.se = zext nneg i32 %i.sc to i64
  %i.sf = getelementptr [80 x i8], ptr %i.sd, i64 %i.se ; 3 uses
  %i.sg = lshr i32 %i.sb, 6
  %i.sh = and i32 %i.sg, 7                        ; 3 uses
  %i.si = icmp eq i32 %i.sh, 0
  br i1 %i.si, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.sj = getelementptr i8, ptr %i.sf, i64 8
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !164
  %i.sl = mul nuw nsw i32 %i.sh, 9
  %i.sm = add nsw i32 %i.sl, -9
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = lshr i64 %i.sk, %i.sn
  %i.sp = trunc i64 %i.so to i32
  %i.sq = and i32 %i.sp, 511
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.sr = phi i32 [ %i.sq, %bb.ce ], [ 0, %bb.cd ]
  %i.ss = getelementptr i8, ptr %i.sf, i64 16
  %i.st = zext nneg i32 %i.sh to i64
  %i.su = getelementptr [8 x i8], ptr %i.ss, i64 %i.st
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !11
  %i.sw = and i32 %i.sb, 63
  %i.sx = xor i32 %i.sw, 63
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = shl i64 %i.sv, %i.sy
  %i.ta = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.sz)
  %i.tb = trunc nuw nsw i64 %i.ta to i32
  %i.tc = load i32, ptr %i.sf, align 8, !tbaa !162
  %i.td = add i32 %i.tc, %i.sr
  %i.te = add i32 %i.td, %i.tb
  br label %succ_index_lookup.exit.i.i

succ_index_lookup.exit.i.i:                       ; preds = %bb.cf, %bb.cc
  %.0.i.i.i = phi i32 [ %i.sa, %bb.cc ], [ %i.te, %bb.cf ]
  %i.tf = add i32 %.0.i.i.i, -1
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr [12 x i8], ptr %i.rn, i64 %i.tg
  br label %get_insn_info.exit

get_insn_info.exit:                               ; preds = %bb.ca, %succ_index_lookup.exit.i.i
  %.0.i.i533 = phi ptr [ %i.th, %succ_index_lookup.exit.i.i ], [ %i.rn, %bb.ca ] ; 6 uses
  %i.ti = getelementptr i8, ptr %.0.i.i533, i64 4
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !295
  %i.tk = sext i32 %i.tj to i64
  %i.tl = shl nsw i64 %i.tk, 1
  %i.tm = or disjoint i64 %i.tl, 1
  %i.tn = call i64 @rb_ary_push(i64 noundef %i.qq, i64 noundef %i.tm) #20 ; 0 uses
  %.not375 = icmp eq ptr %.0340, %.0.i.i533
  br i1 %.not375, label %bb.cy, label %bb.cg

bb.cg:                                            ; preds = %get_insn_info.exit
  %i.to = load i32, ptr %.0.i.i533, align 4, !tbaa !294 ; 4 uses
  %i.tp = getelementptr i8, ptr %.0.i.i533, i64 8
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !197 ; 8 uses
  %i.tr = icmp slt i32 %i.to, 1
  %.not376 = icmp eq i32 %.0343, %i.to
  %or.cond = select i1 %i.tr, i1 true, i1 %.not376
  br i1 %or.cond, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ts = shl nuw i32 %i.to, 1
  %i.tt = or disjoint i32 %i.ts, 1
  %i.tu = zext i32 %i.tt to i64
  %i.tv = call i64 @rb_ary_push(i64 noundef %i.qp, i64 noundef %i.tu) #20 ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.1344 = phi i32 [ %i.to, %bb.ch ], [ %.0343, %bb.cg ] ; 2 uses
  %i.tw = and i32 %i.tq, 1
  %.not377 = icmp eq i32 %i.tw, 0
  br i1 %.not377, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.pr.i534 = load i64, ptr @iseq_data_to_ary.rbimpl_id.244, align 8, !tbaa !11 ; 2 uses
  %.not4.i535 = icmp eq i64 %.pr.i534, 0
  br i1 %.not4.i535, label %.lr.ph.i537, label %rbimpl_intern_const.exit539

.lr.ph.i537:                                      ; preds = %bb.cj, %.lr.ph.i537
  %i.tx = call i64 @rb_intern2(ptr noundef nonnull @.str.245, i64 noundef 15) #20 ; 3 uses
  store i64 %i.tx, ptr @iseq_data_to_ary.rbimpl_id.244, align 8, !tbaa !11
  %.not.i538 = icmp eq i64 %i.tx, 0
  br i1 %.not.i538, label %.lr.ph.i537, label %rbimpl_intern_const.exit539, !llvm.loop !272

rbimpl_intern_const.exit539:                      ; preds = %.lr.ph.i537, %bb.cj
  %.lcssa.i536 = phi i64 [ %.pr.i534, %bb.cj ], [ %i.tx, %.lr.ph.i537 ]
  %i.ty = call i64 @rb_id2sym(i64 noundef %.lcssa.i536) #20
  %i.tz = call i64 @rb_ary_push(i64 noundef %i.qp, i64 noundef %i.ty) #20 ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %rbimpl_intern_const.exit539, %bb.ci
  %i.ua = and i32 %i.tq, 2
  %.not378 = icmp eq i32 %i.ua, 0
  br i1 %.not378, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.pr.i540 = load i64, ptr @iseq_data_to_ary.rbimpl_id.246, align 8, !tbaa !11 ; 2 uses
  %.not4.i541 = icmp eq i64 %.pr.i540, 0
  br i1 %.not4.i541, label %.lr.ph.i543, label %rbimpl_intern_const.exit545

.lr.ph.i543:                                      ; preds = %bb.cl, %.lr.ph.i543
  %i.ub = call i64 @rb_intern2(ptr noundef nonnull @.str.247, i64 noundef 16) #20 ; 3 uses
  store i64 %i.ub, ptr @iseq_data_to_ary.rbimpl_id.246, align 8, !tbaa !11
  %.not.i544 = icmp eq i64 %i.ub, 0
  br i1 %.not.i544, label %.lr.ph.i543, label %rbimpl_intern_const.exit545, !llvm.loop !272

rbimpl_intern_const.exit545:                      ; preds = %.lr.ph.i543, %bb.cl
  %.lcssa.i542 = phi i64 [ %.pr.i540, %bb.cl ], [ %i.ub, %.lr.ph.i543 ]
  %i.uc = call i64 @rb_id2sym(i64 noundef %.lcssa.i542) #20
  %i.ud = call i64 @rb_ary_push(i64 noundef %i.qp, i64 noundef %i.uc) #20 ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %rbimpl_intern_const.exit545, %bb.ck
  %i.ue = and i32 %i.tq, 4
  %.not379 = icmp eq i32 %i.ue, 0
  br i1 %.not379, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.pr.i546 = load i64, ptr @iseq_data_to_ary.rbimpl_id.248, align 8, !tbaa !11 ; 2 uses
  %.not4.i547 = icmp eq i64 %.pr.i546, 0
  br i1 %.not4.i547, label %.lr.ph.i549, label %rbimpl_intern_const.exit551

.lr.ph.i549:                                      ; preds = %bb.cn, %.lr.ph.i549
  %i.uf = call i64 @rb_intern2(ptr noundef nonnull @.str.249, i64 noundef 14) #20 ; 3 uses
  store i64 %i.uf, ptr @iseq_data_to_ary.rbimpl_id.248, align 8, !tbaa !11
  %.not.i550 = icmp eq i64 %i.uf, 0
  br i1 %.not.i550, label %.lr.ph.i549, label %rbimpl_intern_const.exit551, !llvm.loop !272

rbimpl_intern_const.exit551:                      ; preds = %.lr.ph.i549, %bb.cn
  %.lcssa.i548 = phi i64 [ %.pr.i546, %bb.cn ], [ %i.uf, %.lr.ph.i549 ]
  %i.ug = call i64 @rb_id2sym(i64 noundef %.lcssa.i548) #20
  %i.uh = call i64 @rb_ary_push(i64 noundef %i.qp, i64 noundef %i.ug) #20 ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %rbimpl_intern_const.exit551, %bb.cm
  %i.ui = and i32 %i.tq, 8
  %.not380 = icmp eq i32 %i.ui, 0
  br i1 %.not380, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.pr.i552 = load i64, ptr @iseq_data_to_ary.rbimpl_id.250, align 8, !tbaa !11 ; 2 uses
  %.not4.i553 = icmp eq i64 %.pr.i552, 0
  br i1 %.not4.i553, label %.lr.ph.i555, label %rbimpl_intern_const.exit557

.lr.ph.i555:                                      ; preds = %bb.cp, %.lr.ph.i555
  %i.uj = call i64 @rb_intern2(ptr noundef nonnull @.str.251, i64 noundef 15) #20 ; 3 uses
  store i64 %i.uj, ptr @iseq_data_to_ary.rbimpl_id.250, align 8, !tbaa !11
  %.not.i556 = icmp eq i64 %i.uj, 0
  br i1 %.not.i556, label %.lr.ph.i555, label %rbimpl_intern_const.exit557, !llvm.loop !272

rbimpl_intern_const.exit557:                      ; preds = %.lr.ph.i555, %bb.cp
  %.lcssa.i554 = phi i64 [ %.pr.i552, %bb.cp ], [ %i.uj, %.lr.ph.i555 ]
  %i.uk = call i64 @rb_id2sym(i64 noundef %.lcssa.i554) #20
  %i.ul = call i64 @rb_ary_push(i64 noundef %i.qp, i64 noundef %i.uk) #20 ; 0 uses
  br label %bb.cq

bb.cq:                                            ; preds = %rbimpl_intern_const.exit557, %bb.co
  %i.um = and i32 %i.tq, 16
  %.not381 = icmp eq i32 %i.um, 0
  br i1 %.not381, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.pr.i558 = load i64, ptr @iseq_data_to_ary.rbimpl_id.252, align 8, !tbaa !11 ; 2 uses
  %.not4.i559 = icmp eq i64 %.pr.i558, 0
  br i1 %.not4.i559, label %.lr.ph.i561, label %rbimpl_intern_const.exit563

.lr.ph.i561:                                      ; preds = %bb.cr, %.lr.ph.i561
  %i.un = call i64 @rb_intern2(ptr noundef nonnull @.str.253, i64 noundef 17) #20 ; 3 uses
  store i64 %i.un, ptr @iseq_data_to_ary.rbimpl_id.252, align 8, !tbaa !11
  %.not.i562 = icmp eq i64 %i.un, 0
  br i1 %.not.i562, label %.lr.ph.i561, label %rbimpl_intern_const.exit563, !llvm.loop !272

rbimpl_intern_const.exit563:                      ; preds = %.lr.ph.i561, %bb.cr
  %.lcssa.i560 = phi i64 [ %.pr.i558, %bb.cr ], [ %i.un, %.lr.ph.i561 ]
  %i.uo = call i64 @rb_id2sym(i64 noundef %.lcssa.i560) #20
  %i.up = call i64 @rb_ary_push(i64 noundef %i.qp, i64 noundef %i.uo) #20 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %rbimpl_intern_const.exit563, %bb.cq
  %i.uq = and i32 %i.tq, 256
  %.not382 = icmp eq i32 %i.uq, 0
  br i1 %.not382, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.pr.i564 = load i64, ptr @iseq_data_to_ary.rbimpl_id.254, align 8, !tbaa !11 ; 2 uses
  %.not4.i565 = icmp eq i64 %.pr.i564, 0
  br i1 %.not4.i565, label %.lr.ph.i567, label %rbimpl_intern_const.exit569

.lr.ph.i567:                                      ; preds = %bb.ct, %.lr.ph.i567
  %i.ur = call i64 @rb_intern2(ptr noundef nonnull @.str.255, i64 noundef 17) #20 ; 3 uses
  store i64 %i.ur, ptr @iseq_data_to_ary.rbimpl_id.254, align 8, !tbaa !11
  %.not.i568 = icmp eq i64 %i.ur, 0
  br i1 %.not.i568, label %.lr.ph.i567, label %rbimpl_intern_const.exit569, !llvm.loop !272

rbimpl_intern_const.exit569:                      ; preds = %.lr.ph.i567, %bb.ct
  %.lcssa.i566 = phi i64 [ %.pr.i564, %bb.ct ], [ %i.ur, %.lr.ph.i567 ]
  %i.us = call i64 @rb_id2sym(i64 noundef %.lcssa.i566) #20
  %i.ut = call i64 @rb_ary_push(i64 noundef %i.qp, i64 noundef %i.us) #20 ; 0 uses
  br label %bb.cu

bb.cu:                                            ; preds = %rbimpl_intern_const.exit569, %bb.cs
  %i.uu = and i32 %i.tq, 512
  %.not383 = icmp eq i32 %i.uu, 0
  br i1 %.not383, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.pr.i570 = load i64, ptr @iseq_data_to_ary.rbimpl_id.256, align 8, !tbaa !11 ; 2 uses
  %.not4.i571 = icmp eq i64 %.pr.i570, 0
  br i1 %.not4.i571, label %.lr.ph.i573, label %rbimpl_intern_const.exit575

.lr.ph.i573:                                      ; preds = %bb.cv, %.lr.ph.i573
  %i.uv = call i64 @rb_intern2(ptr noundef nonnull @.str.257, i64 noundef 19) #20 ; 3 uses
  store i64 %i.uv, ptr @iseq_data_to_ary.rbimpl_id.256, align 8, !tbaa !11
  %.not.i574 = icmp eq i64 %i.uv, 0
  br i1 %.not.i574, label %.lr.ph.i573, label %rbimpl_intern_const.exit575, !llvm.loop !272

rbimpl_intern_const.exit575:                      ; preds = %.lr.ph.i573, %bb.cv
  %.lcssa.i572 = phi i64 [ %.pr.i570, %bb.cv ], [ %i.uv, %.lr.ph.i573 ]
  %i.uw = call i64 @rb_id2sym(i64 noundef %.lcssa.i572) #20
  %i.ux = call i64 @rb_ary_push(i64 noundef %i.qp, i64 noundef %i.uw) #20 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %rbimpl_intern_const.exit575, %bb.cu
  %i.uy = and i32 %i.tq, 16384
  %.not384 = icmp eq i32 %i.uy, 0
  br i1 %.not384, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %.pr.i576 = load i64, ptr @iseq_data_to_ary.rbimpl_id.258, align 8, !tbaa !11 ; 2 uses
  %.not4.i577 = icmp eq i64 %.pr.i576, 0
  br i1 %.not4.i577, label %.lr.ph.i579, label %rbimpl_intern_const.exit581

.lr.ph.i579:                                      ; preds = %bb.cx, %.lr.ph.i579
  %i.uz = call i64 @rb_intern2(ptr noundef nonnull @.str.259, i64 noundef 17) #20 ; 3 uses
  store i64 %i.uz, ptr @iseq_data_to_ary.rbimpl_id.258, align 8, !tbaa !11
  %.not.i580 = icmp eq i64 %i.uz, 0
  br i1 %.not.i580, label %.lr.ph.i579, label %rbimpl_intern_const.exit581, !llvm.loop !272

rbimpl_intern_const.exit581:                      ; preds = %.lr.ph.i579, %bb.cx
  %.lcssa.i578 = phi i64 [ %.pr.i576, %bb.cx ], [ %i.uz, %.lr.ph.i579 ]
  %i.va = call i64 @rb_id2sym(i64 noundef %.lcssa.i578) #20
  %i.vb = call i64 @rb_ary_push(i64 noundef %i.qp, i64 noundef %i.va) #20 ; 0 uses
end_hunk_2
