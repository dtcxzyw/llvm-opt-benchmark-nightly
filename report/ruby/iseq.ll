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
define hidden i64 @rb_iseq_memsize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
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
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = zext i32 %i.ci to i64
  %i.ck = add i64 %.675, 16
  %i.cl = add i64 %i.ck, %i.cj                    ; 2 uses
  %.0 = load ptr, ptr %.076, align 8, !tbaa !110  ; 2 uses
  %.not58 = icmp eq ptr %.0, null
  br i1 %.not58, label %ISEQ_COMPILE_DATA.exit.thread, label %.lr.ph78, !llvm.loop !159

ISEQ_COMPILE_DATA.exit.thread:                    ; preds = %.lr.ph78, %bb.j, %bb.i, %ISEQ_COMPILE_DATA.exit
  %.7 = phi i64 [ %.5, %ISEQ_COMPILE_DATA.exit ], [ %.5, %bb.i ], [ %i.cf, %bb.j ], [ %i.cl, %.lr.ph78 ]
  ret i64 %.7
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias noundef nonnull ptr @rb_iseq_constant_body_alloc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias nonnull dereferenceable(360) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 360) #21
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_iseq_pathobj_new(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 4
  br i1 %i.b, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @rb_str_cmp(i64 noundef %0, i64 noundef %1) #20
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.e = tail call i64 @rb_fstring(i64 noundef %0) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call i64 @rb_fstring(i64 noundef %1) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e
  %.0 = phi i64 [ 4, %bb.b ], [ %i.f, %bb.e ]
  %i.g = tail call i64 @rb_fstring(i64 noundef %0) #20
  %i.h = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.g, i64 noundef %.0) #20 ; 3 uses
  %i.i = tail call i64 @rb_ary_freeze(i64 noundef %i.h) #20 ; 0 uses
  %i.j = tail call i64 @rb_obj_set_shareable(i64 noundef %i.h) #20 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.d
  %.014 = phi i64 [ %i.e, %bb.d ], [ %i.h, %.critedge ]
  ret i64 %.014
}

declare i32 @rb_str_cmp(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_fstring(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_new_from_args(i64 noundef, ...) local_unnamed_addr #2

declare i64 @rb_ary_freeze(i64 noundef) local_unnamed_addr #2

declare i64 @rb_obj_set_shareable(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_iseq_pathobj_set(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = tail call i64 @rb_iseq_pathobj_new(i64 noundef %1, i64 noundef %2) ; 4 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !11
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %i.d, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rb_obj_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.i, i64 noundef %i.d) #20
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_iseq_alloc_with_dummy_path(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_imemo_new(i32 noundef 7, i64 noundef 0, i64 noundef 40, i1 noundef zeroext true) #20 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 noundef 0, i64 noundef 32, i1 noundef false) #20
  %i.d = tail call noalias noundef nonnull dereferenceable(360) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 360) #21 ; 3 uses
  %i.e = getelementptr i8, ptr %i.b, i64 16       ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !18
  store i32 0, ptr %i.d, align 8, !tbaa !160
  %i.f = inttoptr i64 %0 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !80
  %i.h = and i64 %i.g, 256
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_obj_freeze_inline(i64 noundef %0) #20
  %i.i = tail call i64 @rb_obj_set_shareable(i64 noundef %0) #20 ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 64
  store i64 %0, ptr %i.k, align 8, !tbaa !11
  %i.l = icmp eq i64 %0, 0
  %i.m = and i64 %0, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %rb_obj_write.exit.thread, label %bb.d

rb_obj_write.exit.thread:                         ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.j, i64 80
  store i64 %0, ptr %i.p, align 8, !tbaa !11
  br label %rb_obj_write.exit9

bb.d:                                             ; preds = %bb.c
  tail call void @rb_gc_writebarrier(i64 noundef %i.a, i64 noundef %0) #20
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.r = getelementptr i8, ptr %i.q, i64 80
  store i64 %0, ptr %i.r, align 8, !tbaa !11
  tail call void @rb_gc_writebarrier(i64 noundef %i.a, i64 noundef %0) #20
  br label %rb_obj_write.exit9

rb_obj_write.exit9:                               ; preds = %rb_obj_write.exit.thread, %bb.d
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_iseq_insns_info_encode_positions(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !154  ; 11 uses
  %i.e = getelementptr i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89   ; 3 uses
  %i.g = getelementptr i8, ptr %i.b, i64 120      ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84   ; 11 uses
  %i.i = getelementptr i8, ptr %i.b, i64 136      ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !85   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ruby_xfree(ptr noundef nonnull %i.j) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp slt i32 %i.f, 54                    ; 2 uses
  %i.l = add nsw i32 %i.f, 8
  %i.m = sdiv i32 %i.l, 9
  %i.n = select i1 %i.k, i32 %i.m, i32 6          ; 3 uses
  %i.o = add nuw i32 %i.f, 457
  %i.p = sdiv i32 %i.o, 512
  %i.q = select i1 %i.k, i32 0, i32 %i.p          ; 3 uses
  %i.r = sext i32 %i.n to i64
  %i.s = sext i32 %i.q to i64
  %i.t = tail call noalias ptr @rb_xcalloc_mul_add_mul(i64 noundef %i.r, i64 noundef 8, i64 noundef %i.s, i64 noundef 80) #20 ; 3 uses
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.preheader60.preheader.i, label %.preheader.i

.preheader60.preheader.i:                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %.preheader60.i

.preheader60.i:                                   ; preds = %bb.u, %.preheader60.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader60.preheader.i ], [ %indvars.iv.next.i, %bb.u ] ; 3 uses
  %.05564.i = phi i32 [ 0, %.preheader60.preheader.i ], [ %.2.8.i, %bb.u ] ; 4 uses
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i ; 2 uses
  %.promoted.i = load i64, ptr %i.v, align 8, !tbaa !11
  %i.w = mul nuw nsw i64 %indvars.iv.i, 9         ; 9 uses
  %i.x = icmp slt i32 %.05564.i, %i.d
  br i1 %i.x, label %bb.d, label %bb.e

.preheader.i:                                     ; preds = %bb.u, %bb.c
  %.055.lcssa.i = phi i32 [ 0, %bb.c ], [ %.2.8.i, %bb.u ]
  %i.y = icmp sgt i32 %i.q, 0
  br i1 %i.y, label %.lr.ph.i, label %succ_index_table_create.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.z = getelementptr i8, ptr %i.t, i64 48
  %wide.trip.count86.i = zext nneg i32 %i.q to i64
  br label %bb.v

bb.d:                                             ; preds = %.preheader60.i
  %i.aa = sext i32 %.05564.i to i64
  %i.ab = getelementptr [4 x i8], ptr %i.h, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp eq i64 %i.w, %i.ad
  %i.af = zext i1 %i.ae to i32
  %spec.select.i = add nsw i32 %.05564.i, %i.af
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader60.i
  %.2.i = phi i32 [ %.05564.i, %.preheader60.i ], [ %spec.select.i, %bb.d ] ; 4 uses
  %i.ag = sext i32 %.2.i to i64                   ; 3 uses
  %i.ah = icmp slt i32 %.2.i, %i.d
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr [4 x i8], ptr %i.h, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = add nuw nsw i64 %i.w, 1
  %i.al = zext i32 %i.aj to i64
  %i.am = icmp eq i64 %i.ak, %i.al
  %i.an = zext i1 %i.am to i32
  %spec.select.1.i = add nsw i32 %.2.i, %i.an     ; 2 uses
  %.pre.i = sext i32 %spec.select.1.i to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %.2.1.i = phi i32 [ %spec.select.1.i, %bb.f ], [ %.2.i, %bb.e ] ; 3 uses
  %i.ao = shl nsw i64 %.pre-phi.i, 7
  %i.ap = icmp slt i32 %.2.1.i, %i.d
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = add nuw nsw i64 %i.w, 2
  %i.at = zext i32 %i.ar to i64
  %i.au = icmp eq i64 %i.as, %i.at
  %i.av = zext i1 %i.au to i32
  %spec.select.2.i = add nsw i32 %.2.1.i, %i.av   ; 2 uses
  %.pre88.i = sext i32 %spec.select.2.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi89.i = phi i64 [ %.pre88.i, %bb.h ], [ %.pre-phi.i, %bb.g ] ; 3 uses
  %.2.2.i = phi i32 [ %spec.select.2.i, %bb.h ], [ %.2.1.i, %bb.g ] ; 3 uses
  %i.aw = shl nsw i64 %.pre-phi89.i, 14
  %i.ax = icmp slt i32 %.2.2.i, %i.d
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi89.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = add nuw nsw i64 %i.w, 3
  %i.bb = zext i32 %i.az to i64
  %i.bc = icmp eq i64 %i.ba, %i.bb
  %i.bd = zext i1 %i.bc to i32
  %spec.select.3.i = add nsw i32 %.2.2.i, %i.bd   ; 2 uses
  %.pre90.i = sext i32 %spec.select.3.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi91.i = phi i64 [ %.pre90.i, %bb.j ], [ %.pre-phi89.i, %bb.i ] ; 3 uses
  %.2.3.i = phi i32 [ %spec.select.3.i, %bb.j ], [ %.2.2.i, %bb.i ] ; 3 uses
  %i.be = shl nsw i64 %.pre-phi91.i, 21
  %i.bf = icmp slt i32 %.2.3.i, %i.d
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi91.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = add nuw nsw i64 %i.w, 4
  %i.bj = zext i32 %i.bh to i64
  %i.bk = icmp eq i64 %i.bi, %i.bj
  %i.bl = zext i1 %i.bk to i32
  %spec.select.4.i = add nsw i32 %.2.3.i, %i.bl   ; 2 uses
  %.pre92.i = sext i32 %spec.select.4.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi93.i = phi i64 [ %.pre92.i, %bb.l ], [ %.pre-phi91.i, %bb.k ] ; 3 uses
  %.2.4.i = phi i32 [ %spec.select.4.i, %bb.l ], [ %.2.3.i, %bb.k ] ; 3 uses
  %i.bm = shl nsw i64 %.pre-phi93.i, 28
  %i.bn = icmp slt i32 %.2.4.i, %i.d
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi93.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = add nuw nsw i64 %i.w, 5
  %i.br = zext i32 %i.bp to i64
  %i.bs = icmp eq i64 %i.bq, %i.br
  %i.bt = zext i1 %i.bs to i32
  %spec.select.5.i = add nsw i32 %.2.4.i, %i.bt   ; 2 uses
  %.pre94.i = sext i32 %spec.select.5.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi95.i = phi i64 [ %.pre94.i, %bb.n ], [ %.pre-phi93.i, %bb.m ] ; 3 uses
  %.2.5.i = phi i32 [ %spec.select.5.i, %bb.n ], [ %.2.4.i, %bb.m ] ; 3 uses
  %i.bu = shl i64 %.pre-phi95.i, 35
  %i.bv = icmp slt i32 %.2.5.i, %i.d
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi95.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = add nuw nsw i64 %i.w, 6
  %i.bz = zext i32 %i.bx to i64
  %i.ca = icmp eq i64 %i.by, %i.bz
  %i.cb = zext i1 %i.ca to i32
  %spec.select.6.i = add nsw i32 %.2.5.i, %i.cb   ; 2 uses
  %.pre96.i = sext i32 %spec.select.6.i to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi97.i = phi i64 [ %.pre96.i, %bb.p ], [ %.pre-phi95.i, %bb.o ] ; 3 uses
  %.2.6.i = phi i32 [ %spec.select.6.i, %bb.p ], [ %.2.5.i, %bb.o ] ; 3 uses
  %i.cc = shl i64 %.pre-phi97.i, 42
  %i.cd = icmp slt i32 %.2.6.i, %i.d
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi97.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = add nuw nsw i64 %i.w, 7
  %i.ch = zext i32 %i.cf to i64
  %i.ci = icmp eq i64 %i.cg, %i.ch
  %i.cj = zext i1 %i.ci to i32
  %spec.select.7.i = add nsw i32 %.2.6.i, %i.cj   ; 2 uses
  %.pre98.i = sext i32 %spec.select.7.i to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre-phi99.i = phi i64 [ %.pre98.i, %bb.r ], [ %.pre-phi97.i, %bb.q ] ; 2 uses
  %.2.7.i = phi i32 [ %spec.select.7.i, %bb.r ], [ %.2.6.i, %bb.q ] ; 3 uses
  %i.ck = shl i64 %.pre-phi99.i, 49
  %i.cl = icmp slt i32 %.2.7.i, %i.d
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi99.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = add nuw nsw i64 %i.w, 8
  %i.cp = zext i32 %i.cn to i64
  %i.cq = icmp eq i64 %i.co, %i.cp
  %i.cr = zext i1 %i.cq to i32
  %spec.select.8.i = add nsw i32 %.2.7.i, %i.cr
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.8.i = phi i32 [ %.2.7.i, %bb.s ], [ %spec.select.8.i, %bb.t ] ; 3 uses
  %i.cs = zext i32 %.2.8.i to i64
  %i.ct = shl i64 %i.cs, 56
  %i.cu = or i64 %.promoted.i, %i.ao
  %i.cv = or i64 %i.cu, %i.aw
  %i.cw = or i64 %i.cv, %i.be
  %i.cx = or i64 %i.cw, %i.bm
  %i.cy = or i64 %i.cx, %i.bu
  %i.cz = or i64 %i.cy, %i.cc
  %i.da = or i64 %i.cz, %i.ck
  %i.db = or i64 %i.da, %i.ct
  %i.dc = or i64 %i.db, %i.ag
  store i64 %i.dc, ptr %i.v, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %.preheader60.i, !llvm.loop !161

bb.v:                                             ; preds = %bb.ah, %.lr.ph.i
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next84.i, %bb.ah ] ; 3 uses
  %.372.i = phi i32 [ %.055.lcssa.i, %.lr.ph.i ], [ %.6.i.1, %bb.ah ] ; 2 uses
  %i.dd = getelementptr [80 x i8], ptr %i.z, i64 %indvars.iv83.i ; 3 uses
  store i32 %.372.i, ptr %i.dd, align 8, !tbaa !162
  %i.de = shl i64 %indvars.iv83.i, 9
  %i.df = or disjoint i64 %i.de, 54
  %i.dg = getelementptr i8, ptr %i.dd, i64 16
  %i.dh = getelementptr i8, ptr %i.dd, i64 8      ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ag, %bb.v
  %indvars.iv79.i = phi i64 [ 0, %bb.v ], [ %indvars.iv.next80.i, %bb.ag ] ; 5 uses
  %.05270.i = phi i32 [ 0, %bb.v ], [ %i.en, %bb.ag ] ; 2 uses
  %.469.i = phi i32 [ %.372.i, %bb.v ], [ %.6.i.1, %bb.ag ]
  %.not.i = icmp eq i64 %indvars.iv79.i, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = sext i32 %.05270.i to i64
  %i.dj = mul nuw nsw i64 %indvars.iv79.i, 9
  %i.dk = add nsw i64 %i.dj, -9
  %i.dl = shl i64 %i.di, %i.dk
  %i.dm = load i64, ptr %i.dh, align 8, !tbaa !164
  %i.dn = or i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %i.dh, align 8, !tbaa !164
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.do = shl nuw nsw i64 %indvars.iv79.i, 6
  %i.dp = add nuw nsw i64 %i.df, %i.do            ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %bb.y
  %indvars.iv75.i = phi i64 [ 0, %bb.y ], [ %indvars.iv.next76.i.1, %bb.af ] ; 5 uses
  %.067.i = phi i64 [ 0, %bb.y ], [ %.1.i.1, %bb.af ] ; 3 uses
  %.565.i = phi i32 [ %.469.i, %bb.y ], [ %.6.i.1, %bb.af ] ; 5 uses
  %i.dq = icmp slt i32 %.565.i, %i.d
  br i1 %i.dq, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dr = sext i32 %.565.i to i64
  %i.ds = getelementptr [4 x i8], ptr %i.h, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
  %i.du = add nuw nsw i64 %i.dp, %indvars.iv75.i
  %i.dv = zext i32 %i.dt to i64
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dx = shl nuw i64 1, %indvars.iv75.i
  %i.dy = or i64 %i.dx, %.067.i
  %i.dz = add nsw i32 %.565.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.6.i = phi i32 [ %i.dz, %bb.ab ], [ %.565.i, %bb.aa ], [ %.565.i, %bb.z ] ; 5 uses
  %.1.i = phi i64 [ %i.dy, %bb.ab ], [ %.067.i, %bb.aa ], [ %.067.i, %bb.z ] ; 3 uses
  %i.ea = icmp slt i32 %.6.i, %i.d
  br i1 %i.ea, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1
  %i.eb = sext i32 %.6.i to i64
  %i.ec = getelementptr [4 x i8], ptr %i.h, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  %i.ee = add nuw nsw i64 %i.dp, %indvars.iv.next76.i
  %i.ef = zext i32 %i.ed to i64
  %i.eg = icmp eq i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eh = shl nuw i64 2, %indvars.iv75.i
  %i.ei = or i64 %i.eh, %.1.i
  %i.ej = add nsw i32 %.6.i, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.6.i.1 = phi i32 [ %i.ej, %bb.ae ], [ %.6.i, %bb.ad ], [ %.6.i, %bb.ac ] ; 3 uses
  %.1.i.1 = phi i64 [ %i.ei, %bb.ae ], [ %.1.i, %bb.ad ], [ %.1.i, %bb.ac ] ; 3 uses
  %indvars.iv.next76.i.1 = add nuw nsw i64 %indvars.iv75.i, 2 ; 2 uses
  %exitcond78.not.i.1 = icmp eq i64 %indvars.iv.next76.i.1, 64
  br i1 %exitcond78.not.i.1, label %bb.ag, label %bb.z, !llvm.loop !165

bb.ag:                                            ; preds = %bb.af
  %i.ek = getelementptr [8 x i8], ptr %i.dg, i64 %indvars.iv79.i
  store i64 %.1.i.1, ptr %i.ek, align 8, !tbaa !11
  %i.el = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.1.i.1)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = add i32 %.05270.i, %i.em
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next80.i, 8
  br i1 %exitcond82.not.i, label %bb.ah, label %bb.w, !llvm.loop !166

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 2 uses
  %exitcond87.not.i = icmp eq i64 %indvars.iv.next84.i, %wide.trip.count86.i
  br i1 %exitcond87.not.i, label %succ_index_table_create.exit, label %bb.v, !llvm.loop !167

succ_index_table_create.exit:                     ; preds = %bb.ah, %.preheader.i
  store ptr %i.t, ptr %i.i, align 8, !tbaa !85
  %i.eo = load ptr, ptr %i.g, align 8, !tbaa !84
  tail call void @ruby_xfree(ptr noundef %i.eo) #20
  store ptr null, ptr %i.g, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noalias nonnull ptr @rb_iseq_insns_info_decode_positions(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !154
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.g = icmp sgt i32 %i.d, 53
  %i.h = add nsw i32 %i.d, 8
  %i.i = sdiv i32 %i.h, 9
  %i.j = select i1 %i.g, i32 6, i32 %i.i          ; 2 uses
  %i.k = add i32 %i.d, 457
  %i.l = sdiv i32 %i.k, 512
  %i.m = sext i32 %i.b to i64
  %i.n = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.m, i64 noundef 4) #21 ; 3 uses
  %i.o = icmp sgt i32 %i.j, 0
  br i1 %i.o, label %.preheader45.preheader.i, label %.preheader44.i

.preheader45.preheader.i:                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %bb.s, %.preheader45.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader45.preheader.i ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %.051.i = phi ptr [ %i.n, %.preheader45.preheader.i ], [ %.2.8.i, %bb.s ] ; 3 uses
  %.03550.i = phi i32 [ -1, %.preheader45.preheader.i ], [ %i.bn, %bb.s ]
  %i.p = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 6 uses
  %i.r = mul nuw nsw i64 %indvars.iv.i, 9         ; 9 uses
  %i.s = trunc i64 %i.q to i32                    ; 4 uses
  %i.t = and i32 %i.s, 127                        ; 2 uses
  %.not42.i = icmp eq i32 %.03550.i, %i.t
  br i1 %.not42.i, label %bb.c, label %bb.b

.preheader44.i:                                   ; preds = %bb.s, %bb.a
  %.0.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %.2.8.i, %bb.s ]
  %i.u = add i32 %i.d, -55
  %i.v = icmp ult i32 %i.u, 2147483136
  br i1 %i.v, label %.preheader43.preheader.i, label %succ_index_table_invert.exit

.preheader43.preheader.i:                         ; preds = %.preheader44.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count71.i = zext nneg i32 %smax.i to i64
  br label %.preheader43.i

bb.b:                                             ; preds = %.preheader45.i
  %i.w = getelementptr i8, ptr %.051.i, i64 4
  %i.x = trunc nuw i64 %i.r to i32
  store i32 %i.x, ptr %.051.i, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader45.i
  %.2.i = phi ptr [ %i.w, %bb.b ], [ %.051.i, %.preheader45.i ] ; 3 uses
  %i.y = lshr i32 %i.s, 7
  %i.z = and i32 %i.y, 127                        ; 2 uses
  %.not42.1.i = icmp eq i32 %i.t, %i.z
  br i1 %.not42.1.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %.2.i, i64 4
  %i.ab = trunc i64 %i.r to i32
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %.2.i, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2.1.i = phi ptr [ %i.aa, %bb.d ], [ %.2.i, %bb.c ] ; 3 uses
  %i.ad = lshr i32 %i.s, 14
  %i.ae = and i32 %i.ad, 127                      ; 2 uses
  %.not42.2.i = icmp eq i32 %i.z, %i.ae
  br i1 %.not42.2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %.2.1.i, i64 4
  %i.ag = trunc i64 %i.r to i32
  %i.ah = add i32 %i.ag, 2
  store i32 %i.ah, ptr %.2.1.i, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.2.i = phi ptr [ %i.af, %bb.f ], [ %.2.1.i, %bb.e ] ; 3 uses
  %i.ai = lshr i32 %i.s, 21
  %i.aj = and i32 %i.ai, 127                      ; 2 uses
  %.not42.3.i = icmp eq i32 %i.ae, %i.aj
  br i1 %.not42.3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %.2.2.i, i64 4
  %i.al = trunc i64 %i.r to i32
  %i.am = add i32 %i.al, 3
  store i32 %i.am, ptr %.2.2.i, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.3.i = phi ptr [ %i.ak, %bb.h ], [ %.2.2.i, %bb.g ] ; 3 uses
  %i.an = lshr i64 %i.q, 28
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 127                      ; 2 uses
  %.not42.4.i = icmp eq i32 %i.aj, %i.ap
  br i1 %.not42.4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %.2.3.i, i64 4
  %i.ar = trunc i64 %i.r to i32
  %i.as = add i32 %i.ar, 4
  store i32 %i.as, ptr %.2.3.i, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.4.i = phi ptr [ %i.aq, %bb.j ], [ %.2.3.i, %bb.i ] ; 3 uses
  %i.at = lshr i64 %i.q, 35
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = and i32 %i.au, 127                      ; 2 uses
  %.not42.5.i = icmp eq i32 %i.ap, %i.av
  br i1 %.not42.5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %.2.4.i, i64 4
  %i.ax = trunc i64 %i.r to i32
  %i.ay = add i32 %i.ax, 5
  store i32 %i.ay, ptr %.2.4.i, align 4, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.5.i = phi ptr [ %i.aw, %bb.l ], [ %.2.4.i, %bb.k ] ; 3 uses
  %i.az = lshr i64 %i.q, 42
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = and i32 %i.ba, 127                      ; 2 uses
  %.not42.6.i = icmp eq i32 %i.av, %i.bb
  br i1 %.not42.6.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr i8, ptr %.2.5.i, i64 4
  %i.bd = trunc i64 %i.r to i32
  %i.be = add i32 %i.bd, 6
  store i32 %i.be, ptr %.2.5.i, align 4, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.6.i = phi ptr [ %i.bc, %bb.n ], [ %.2.5.i, %bb.m ] ; 3 uses
  %i.bf = lshr i64 %i.q, 49
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 127                      ; 2 uses
  %.not42.7.i = icmp eq i32 %i.bb, %i.bh
  br i1 %.not42.7.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr i8, ptr %.2.6.i, i64 4
  %i.bj = trunc i64 %i.r to i32
  %i.bk = add i32 %i.bj, 7
  store i32 %i.bk, ptr %.2.6.i, align 4, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.7.i = phi ptr [ %i.bi, %bb.p ], [ %.2.6.i, %bb.o ] ; 3 uses
  %i.bl = lshr i64 %i.q, 56
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 127                      ; 2 uses
  %.not42.8.i = icmp eq i32 %i.bh, %i.bn
  br i1 %.not42.8.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr i8, ptr %.2.7.i, i64 4
  %i.bp = trunc i64 %i.r to i32
  %i.bq = add i32 %i.bp, 8
  store i32 %i.bq, ptr %.2.7.i, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.8.i = phi ptr [ %i.bo, %bb.r ], [ %.2.7.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader44.i, label %.preheader45.i, !llvm.loop !168

.preheader43.i:                                   ; preds = %bb.bh, %.preheader43.preheader.i
  %indvars.iv68.i = phi i64 [ 0, %.preheader43.preheader.i ], [ %indvars.iv.next69.i, %bb.bh ] ; 3 uses
  %.357.i = phi ptr [ %.0.lcssa.i, %.preheader43.preheader.i ], [ %.6.7.i.1, %bb.bh ]
  %i.br = getelementptr [80 x i8], ptr %i.f, i64 %indvars.iv68.i ; 8 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 64
  %i.bt = shl i64 %indvars.iv68.i, 9              ; 8 uses
  %i.bu = or disjoint i64 %i.bt, 54               ; 2 uses
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.preheader43.i
  %indvars.iv60.i = phi i64 [ 0, %.preheader43.i ], [ %indvars.iv.next61.i.1, %bb.x ] ; 5 uses
  %.553.i = phi ptr [ %.357.i, %.preheader43.i ], [ %.6.i.1, %bb.x ] ; 3 uses
  %i.bw = shl nuw i64 1, %indvars.iv60.i
  %i.bx = and i64 %i.bw, %i.bv
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = add nuw nsw i64 %i.bu, %indvars.iv60.i
  %i.bz = getelementptr i8, ptr %.553.i, i64 4
  %i.ca = trunc nuw nsw i64 %i.by to i32
  store i32 %i.ca, ptr %.553.i, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
end_hunk_0
begin_hunk_1_@rb_iseq_new:bb.a

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_iseq_new_with_opt(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %10 = alloca %struct.rb_compile_option_struct, align 8 ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @rb_ruby_ast_data_get(i64 noundef %0) #20 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  %.not3537 = icmp eq ptr %i.d, null
  %.not35 = or i1 %.not, %.not3537                ; 2 uses
  br i1 %.not35, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !205
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.g = tail call i64 @rb_imemo_new(i32 noundef 7, i64 noundef 0, i64 noundef 40, i1 noundef zeroext true) #20
  %i.h = inttoptr i64 %i.g to ptr                 ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, i8 noundef 0, i64 noundef 32, i1 noundef false) #20
  %i.j = tail call noalias noundef nonnull dereferenceable(360) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 360) #21
  %i.k = getelementptr i8, ptr %i.h, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %.not36 = icmp eq ptr %8, null
  %spec.store.select = select i1 %.not36, ptr @COMPILE_OPTION_DEFAULT, ptr %8 ; 3 uses
  br i1 %.not35, label %set_compile_option_from_ast.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %spec.store.select, align 4 ; 2 uses
  store i64 %i.l, ptr %10, align 8
  %i.m = getelementptr i8, ptr %i.c, i64 28
  %i.n = load i8, ptr %i.m, align 4               ; 2 uses
  %i.o = shl i8 %i.n, 4
  %i.p = ashr i8 %i.o, 6                          ; 2 uses
  %i.q = icmp slt i8 %i.p, 0
  %i.r = trunc i64 %i.l to i16                    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i8 %i.p, 0
  %i.s = select i1 %.not.i, i16 0, i16 512
  %i.t = and i16 %i.r, -513
  %i.u = or disjoint i16 %i.t, %i.s               ; 2 uses
  store i16 %i.u, ptr %10, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = phi i16 [ %i.u, %bb.e ], [ %i.r, %bb.d ]
  %i.w = shl i8 %i.n, 6
  %i.x = ashr exact i8 %i.w, 6                    ; 2 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.g, label %set_compile_option_from_ast.exit

bb.g:                                             ; preds = %bb.f
  %i.z = zext nneg i8 %i.x to i16
  %i.aa = shl nuw nsw i16 %i.z, 6
  %i.ab = and i16 %i.v, -193
  %i.ac = or i16 %i.ab, %i.aa
  store i16 %i.ac, ptr %10, align 8
  br label %set_compile_option_from_ast.exit

set_compile_option_from_ast.exit:                 ; preds = %bb.g, %bb.f
  %i.ad = icmp eq i64 %9, 4
  br i1 %i.ad, label %bb.h, label %bb.k

set_compile_option_from_ast.exit.thread:          ; preds = %bb.c
  %i.ae = icmp eq i64 %9, 4
  br i1 %i.ae, label %.thread, label %bb.k

bb.h:                                             ; preds = %set_compile_option_from_ast.exit
  %i.af = getelementptr i8, ptr %i.c, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !208 ; 2 uses
  %.not38 = icmp eq ptr %i.ag, null
  br i1 %.not38, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call i64 @rb_parser_build_script_lines_from(ptr noundef nonnull %i.ag) #20
  br label %bb.k

.thread:                                          ; preds = %set_compile_option_from_ast.exit.thread, %bb.h
  %.04446 = phi ptr [ %spec.store.select, %set_compile_option_from_ast.exit.thread ], [ %10, %bb.h ] ; 2 uses
  %.not39 = icmp eq ptr %5, null
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.ai = getelementptr i8, ptr %5, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18
  %i.ak = getelementptr i8, ptr %i.aj, i64 208
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !209
  br label %bb.k

bb.k:                                             ; preds = %set_compile_option_from_ast.exit.thread, %bb.i, %bb.j, %.thread, %set_compile_option_from_ast.exit
  %.043 = phi ptr [ %10, %bb.i ], [ %.04446, %bb.j ], [ %.04446, %.thread ], [ %10, %set_compile_option_from_ast.exit ], [ %spec.store.select, %set_compile_option_from_ast.exit.thread ]
  %.031 = phi i64 [ %i.ah, %bb.i ], [ %i.al, %bb.j ], [ 4, %.thread ], [ %9, %set_compile_option_from_ast.exit ], [ %9, %set_compile_option_from_ast.exit.thread ]
  %.not40 = icmp eq ptr %i.f, null
  %i.am = getelementptr i8, ptr %i.f, i64 8
  br i1 %.not40, label %prepare_node_id.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr %i.f, align 8, !tbaa !210
  %i.ao = and i64 %i.an, 32512
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr i8, ptr %i.f, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !212 ; 2 uses
  %.not7.i = icmp eq ptr %i.ar, null
  br i1 %.not7.i, label %bb.n, label %.sink.split.i

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.m
  %.sink10.i = phi ptr [ %i.f, %bb.n ], [ %i.ar, %bb.m ]
  %i.as = getelementptr i8, ptr %.sink10.i, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !216
  br label %prepare_node_id.exit

prepare_node_id.exit:                             ; preds = %bb.k, %.sink.split.i
  %i.au = phi ptr [ null, %bb.k ], [ %i.am, %.sink.split.i ]
  %.0.i = phi i32 [ -1, %bb.k ], [ %i.at, %.sink.split.i ]
  call fastcc void @prepare_iseq_build(ptr noundef nonnull %i.h, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %i.au, i32 noundef %.0.i, ptr noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %.031, ptr noundef nonnull %.043)
  %i.av = call i64 @rb_iseq_compile_node(ptr noundef nonnull %i.h, ptr noundef %i.f) #20 ; 0 uses
  call fastcc void @finish_iseq_build(ptr noundef nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %i.a, ptr %i.b, align 8, !tbaa !217
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #20, !srcloc !218
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ax = load volatile i64, ptr %i.aw, align 8, !tbaa !11 ; 0 uses
  %i.ay = call fastcc ptr @iseq_translate(ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  ret ptr %i.ay
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_iseq_new_top(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_ruby_ast_data_get(i64 noundef %0) #20
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !219  ; 2 uses
  %i.d = tail call i64 @rb_get_coverages() #20    ; 2 uses
  %i.e = and i64 %i.d, -5
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp sgt i32 %i.c, -1
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.b, label %iseq_new_setup_coverage.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @rb_get_coverage_mode() #20
  %i.i = and i32 %i.h, 8
  %.not.i.i = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not.i.i, i32 %i.c, i32 0
  %i.k = tail call i64 @rb_default_coverage(i32 noundef %i.j) #20
  %i.l = tail call i64 @rb_hash_aset(i64 noundef %i.d, i64 noundef %2, i64 noundef %i.k) #20 ; 0 uses
  br label %iseq_new_setup_coverage.exit

iseq_new_setup_coverage.exit:                     ; preds = %bb.a, %bb.b
  %i.m = tail call ptr @rb_iseq_new_with_opt(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef 0, ptr noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @COMPILE_OPTION_DEFAULT, i64 noundef 4)
  ret ptr %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @pm_iseq_new_top(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.c = getelementptr i8, ptr %i.b, i64 608
  %i.d = load i64, ptr %i.c, align 8, !tbaa !234
  %i.e = trunc i64 %i.d to i32
  %i.f = add i32 %i.e, -1                         ; 2 uses
  %i.g = tail call i64 @rb_get_coverages() #20    ; 2 uses
  %i.h = and i64 %i.g, -5
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp sgt i32 %i.f, -1
  %or.cond.i = and i1 %i.j, %i.i
  br i1 %or.cond.i, label %bb.b, label %iseq_new_setup_coverage.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @rb_get_coverage_mode() #20
  %i.l = and i32 %i.k, 8
  %.not.i.i = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not.i.i, i32 %i.f, i32 0
  %i.n = tail call i64 @rb_default_coverage(i32 noundef %i.m) #20
  %i.o = tail call i64 @rb_hash_aset(i64 noundef %i.g, i64 noundef %2, i64 noundef %i.n) #20 ; 0 uses
  br label %iseq_new_setup_coverage.exit

iseq_new_setup_coverage.exit:                     ; preds = %bb.a, %bb.b
  %i.p = tail call ptr @pm_iseq_new_with_opt(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef 0, ptr noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @COMPILE_OPTION_DEFAULT, ptr noundef %5)
  ret ptr %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @pm_iseq_new_with_opt(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(address_is_null) %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.rb_compile_option_struct, align 8 ; 5 uses
  %11 = alloca %struct.rb_code_location_struct, align 8 ; 5 uses
  %12 = alloca %struct.pm_iseq_new_with_opt_data, align 8 ; 5 uses
  %i.a = tail call i64 @rb_imemo_new(i32 noundef 7, i64 noundef 0, i64 noundef 40, i1 noundef zeroext true) #20
  %i.b = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 noundef 0, i64 noundef 32, i1 noundef false) #20
  %i.d = tail call noalias noundef nonnull dereferenceable(360) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 360) #21 ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store i8 1, ptr %i.f, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %.not = icmp eq ptr %8, null
  %spec.store.select = select i1 %.not, ptr @COMPILE_OPTION_DEFAULT, ptr %8
  %i.g = load i64, ptr %spec.store.select, align 4 ; 2 uses
  store i64 %i.g, ptr %10, align 8
  %i.h = getelementptr i8, ptr %0, i64 136
  %i.i = load i32, ptr %i.h, align 8, !tbaa !248
  %i.j = icmp slt i32 %i.i, 1
  %i.k = select i1 %i.j, i16 0, i16 512
  %i.l = trunc i64 %i.g to i16
  %i.m = and i16 %i.l, -513
  %i.n = or disjoint i16 %i.m, %i.k
  store i16 %i.n, ptr %10, align 8
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !222  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 664
  %i.s = load i32, ptr %i.r, align 8, !tbaa !249  ; 2 uses
  %i.t = getelementptr i8, ptr %i.q, i64 600
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !250
  %i.v = tail call i64 @pm_newline_list_line_column(ptr noundef %i.t, ptr noundef %i.u, i32 noundef %i.s) #20
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !222
  %i.x = getelementptr i8, ptr %i.w, i64 600
  %i.y = getelementptr i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !251
  %i.aa = tail call i64 @pm_newline_list_line_column(ptr noundef %i.x, ptr noundef %i.z, i32 noundef %i.s) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i64 %i.v, ptr %11, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !252
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !253
  %i.ag = getelementptr i8, ptr %0, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !254 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ak = phi i64 [ %i.aj, %bb.b ], [ 4, %bb.a ]
  call fastcc void @prepare_iseq_build(ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef nonnull %11, i32 noundef %i.af, ptr noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %i.ak, ptr noundef nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %i.b, ptr %12, align 8, !tbaa !255
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %0, ptr %i.al, align 8, !tbaa !257
  %i.am = ptrtoint ptr %12 to i64
  %i.an = call i64 @rb_protect(ptr noundef nonnull @pm_iseq_new_with_opt_try, i64 noundef %i.am, ptr noundef %9) #20 ; 0 uses
  %i.ao = load i32, ptr %9, align 4, !tbaa !7
  %.not35 = icmp eq i32 %i.ao, 0
  br i1 %.not35, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = call fastcc ptr @iseq_translate(ptr noundef nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.ap, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_iseq_new_main(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_ruby_ast_data_get(i64 noundef %0) #20
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !219  ; 2 uses
  %i.d = tail call i64 @rb_get_coverages() #20    ; 2 uses
  %i.e = and i64 %i.d, -5
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp sgt i32 %i.c, -1
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.b, label %iseq_new_setup_coverage.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @rb_get_coverage_mode() #20
  %i.i = and i32 %i.h, 8
  %.not.i.i = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not.i.i, i32 %i.c, i32 0
  %i.k = tail call i64 @rb_default_coverage(i32 noundef %i.j) #20
  %i.l = tail call i64 @rb_hash_aset(i64 noundef %i.d, i64 noundef %1, i64 noundef %i.k) #20 ; 0 uses
  br label %iseq_new_setup_coverage.exit

iseq_new_setup_coverage.exit:                     ; preds = %bb.a, %bb.b
  %i.m = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.1, i64 noundef 6) #20
  %.not = icmp eq i32 %4, 0
  %i.n = select i1 %.not, ptr @COMPILE_OPTION_FALSE, ptr @COMPILE_OPTION_DEFAULT
  %i.o = tail call ptr @rb_iseq_new_with_opt(i64 noundef %0, i64 noundef %i.m, i64 noundef %1, i64 noundef %2, i32 noundef 0, ptr noundef %3, i32 noundef 0, i32 noundef 7, ptr noundef nonnull %i.n, i64 noundef 4)
  ret ptr %i.o
}

declare i64 @rb_fstring_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @pm_iseq_new_main(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.c = getelementptr i8, ptr %i.b, i64 608
  %i.d = load i64, ptr %i.c, align 8, !tbaa !234
  %i.e = trunc i64 %i.d to i32
  %i.f = add i32 %i.e, -1                         ; 2 uses
  %i.g = tail call i64 @rb_get_coverages() #20    ; 2 uses
  %i.h = and i64 %i.g, -5
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp sgt i32 %i.f, -1
  %or.cond.i = and i1 %i.j, %i.i
  br i1 %or.cond.i, label %bb.b, label %iseq_new_setup_coverage.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @rb_get_coverage_mode() #20
  %i.l = and i32 %i.k, 8
  %.not.i.i = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not.i.i, i32 %i.f, i32 0
  %i.n = tail call i64 @rb_default_coverage(i32 noundef %i.m) #20
  %i.o = tail call i64 @rb_hash_aset(i64 noundef %i.g, i64 noundef %1, i64 noundef %i.n) #20 ; 0 uses
  br label %iseq_new_setup_coverage.exit

iseq_new_setup_coverage.exit:                     ; preds = %bb.a, %bb.b
  %i.p = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.1, i64 noundef 6) #20
  %.not = icmp eq i32 %4, 0
  %i.q = select i1 %.not, ptr @COMPILE_OPTION_FALSE, ptr @COMPILE_OPTION_DEFAULT
  %i.r = tail call ptr @pm_iseq_new_with_opt(ptr noundef nonnull %0, i64 noundef %i.p, i64 noundef %1, i64 noundef %2, i32 noundef 0, ptr noundef %3, i32 noundef 0, i32 noundef 7, ptr noundef nonnull %i.q, ptr noundef %5)
  ret ptr %i.r
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_iseq_new_eval(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_get_coverage_mode() #20
  %i.b = and i32 %i.a, 16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %iseq_setup_coverage.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_get_coverages() #20    ; 3 uses
  %i.d = and i64 %i.c, -5
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i64 %2, -5
  %i.g = icmp ne i64 %i.f, 0
  %or.cond = and i1 %i.g, %i.e
  br i1 %or.cond, label %bb.c, label %iseq_setup_coverage.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @rb_hash_has_key(i64 noundef %i.c, i64 noundef %2) #20
  %i.i = and i64 %i.h, -5
  %.not15 = icmp eq i64 %i.i, 0
  br i1 %.not15, label %bb.d, label %iseq_setup_coverage.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @rb_ruby_ast_data_get(i64 noundef %0) #20
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !219
  %i.m = add i32 %4, -1
  %i.n = add i32 %i.m, %i.l                       ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.e, label %iseq_setup_coverage.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @rb_get_coverage_mode() #20
  %i.q = and i32 %i.p, 8
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not.i, i32 %i.n, i32 0
  %i.s = tail call i64 @rb_default_coverage(i32 noundef %i.r) #20
  %i.t = tail call i64 @rb_hash_aset(i64 noundef %i.c, i64 noundef %2, i64 noundef %i.s) #20 ; 0 uses
  br label %iseq_setup_coverage.exit

iseq_setup_coverage.exit:                         ; preds = %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %i.u = tail call ptr @rb_iseq_new_with_opt(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 6, ptr noundef nonnull @COMPILE_OPTION_DEFAULT, i64 noundef 4)
  ret ptr %i.u
}

declare i32 @rb_get_coverage_mode() local_unnamed_addr #2

declare i64 @rb_get_coverages() local_unnamed_addr #2

declare i64 @rb_hash_has_key(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @pm_iseq_new_eval(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_get_coverage_mode() #20
  %i.b = and i32 %i.a, 16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %iseq_setup_coverage.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_get_coverages() #20    ; 3 uses
  %i.d = and i64 %i.c, -5
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i64 %2, -5
  %i.g = icmp ne i64 %i.f, 0
  %or.cond = and i1 %i.g, %i.e
  br i1 %or.cond, label %bb.c, label %iseq_setup_coverage.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @rb_hash_has_key(i64 noundef %i.c, i64 noundef %2) #20
  %i.i = and i64 %i.h, -5
  %.not16 = icmp eq i64 %i.i, 0
  br i1 %.not16, label %bb.d, label %iseq_setup_coverage.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !222
  %i.l = getelementptr i8, ptr %i.k, i64 608
  %i.m = load i64, ptr %i.l, align 8, !tbaa !234
  %i.n = trunc i64 %i.m to i32
  %i.o = add i32 %4, -2
  %i.p = add i32 %i.o, %i.n                       ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.e, label %iseq_setup_coverage.exit

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 @rb_get_coverage_mode() #20
  %i.s = and i32 %i.r, 8
  %.not.i = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not.i, i32 %i.p, i32 0
  %i.u = tail call i64 @rb_default_coverage(i32 noundef %i.t) #20
  %i.v = tail call i64 @rb_hash_aset(i64 noundef %i.c, i64 noundef %2, i64 noundef %i.u) #20 ; 0 uses
  br label %iseq_setup_coverage.exit

iseq_setup_coverage.exit:                         ; preds = %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %i.w = tail call ptr @pm_iseq_new_with_opt(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 6, ptr noundef nonnull @COMPILE_OPTION_DEFAULT, ptr noundef %7)
  ret ptr %i.w
}

declare ptr @rb_ruby_ast_data_get(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @rb_parser_build_script_lines_from(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @prepare_iseq_build(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i64 noundef %10, ptr noundef %11) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 9 uses
  %.not = icmp eq ptr %7, null                    ; 3 uses
  %switch.selectcmp.case1 = icmp ne i32 %9, 7     ; 2 uses
  %switch.selectcmp.case2 = icmp ne i32 %9, 0
  %switch.selectcmp.not = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.c = or i1 %.not, %switch.selectcmp.not
  %.059 = select i1 %i.c, i64 4, i64 0
  store i32 %9, ptr %i.b, align 8, !tbaa !160
  switch i32 %9, label %bb.b [
    i32 3, label %rb_obj_write.exit.i
    i32 1, label %rb_obj_write.exit.i
    i32 0, label %rb_obj_write.exit.i
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %rb_obj_write.exit22.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 176
  %i.e = getelementptr i8, ptr %7, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr i8, ptr %i.f, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !11
  %i.j = icmp eq ptr %i.h, null
  %i.k = and i64 %i.i, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rb_obj_write.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.n, i64 noundef %i.i) #20
  br label %rb_obj_write.exit.thread.i

rb_obj_write.exit.i:                              ; preds = %bb.a, %bb.a, %bb.a
  %i.o = getelementptr i8, ptr %i.b, i64 176
  store ptr %0, ptr %i.o, align 8, !tbaa !124
  br i1 %.not, label %set_relation.exit, label %rb_obj_write.exit.thread.i

rb_obj_write.exit.thread.i:                       ; preds = %rb_obj_write.exit.i, %bb.d, %bb.c
  %i.p = getelementptr i8, ptr %i.b, i64 168
  %i.q = ptrtoint ptr %7 to i64                   ; 3 uses
  store i64 %i.q, ptr %i.p, align 8, !tbaa !11
  %i.r = and i64 %i.q, 7
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.e, label %rb_obj_write.exit22.i

bb.e:                                             ; preds = %rb_obj_write.exit.thread.i
  %i.s = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.s, i64 noundef %i.q) #20
  br label %rb_obj_write.exit22.i

rb_obj_write.exit22.i:                            ; preds = %bb.e, %rb_obj_write.exit.thread.i, %bb.b
  br i1 %switch.selectcmp.case1, label %set_relation.exit, label %bb.f

bb.f:                                             ; preds = %rb_obj_write.exit22.i
  %i.t = getelementptr i8, ptr %i.b, i64 176
  store ptr %0, ptr %i.t, align 8, !tbaa !124
  br label %set_relation.exit

set_relation.exit:                                ; preds = %rb_obj_write.exit.i, %rb_obj_write.exit22.i, %bb.f
  %i.u = tail call i64 @rb_fstring(i64 noundef %1) #20 ; 8 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  %i.w = getelementptr i8, ptr %i.v, i64 64
  %i.x = tail call i64 @rb_iseq_pathobj_new(i64 noundef %2, i64 noundef %3) ; 4 uses
  store i64 %i.x, ptr %i.w, align 8, !tbaa !11
  %i.y = icmp eq i64 %i.x, 0
  %i.z = and i64 %i.x, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %rb_iseq_pathobj_set.exit.i, label %bb.g

bb.g:                                             ; preds = %set_relation.exit
  %i.ac = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.ac, i64 noundef %i.x) #20
  br label %rb_iseq_pathobj_set.exit.i

rb_iseq_pathobj_set.exit.i:                       ; preds = %bb.g, %set_relation.exit
  %i.ad = getelementptr i8, ptr %i.v, i64 80
  store i64 %i.u, ptr %i.ad, align 8, !tbaa !11
  %i.ae = icmp eq i64 %i.u, 0
  %i.af = and i64 %i.u, 7
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = or i1 %i.ae, %i.ag
  br i1 %i.ah, label %rb_obj_write.exit.thread.i67, label %bb.h

rb_obj_write.exit.thread.i67:                     ; preds = %rb_iseq_pathobj_set.exit.i
  %i.ai = getelementptr i8, ptr %i.v, i64 72
  store i64 %i.u, ptr %i.ai, align 8, !tbaa !11
  br label %rb_obj_write.exit25.i

bb.h:                                             ; preds = %rb_iseq_pathobj_set.exit.i
  %i.aj = ptrtoint ptr %0 to i64                  ; 2 uses
  tail call void @rb_gc_writebarrier(i64 noundef %i.aj, i64 noundef %i.u) #20
  %i.ak = getelementptr i8, ptr %i.v, i64 72
  store i64 %i.u, ptr %i.ak, align 8, !tbaa !11
  tail call void @rb_gc_writebarrier(i64 noundef %i.aj, i64 noundef %i.u) #20
  br label %rb_obj_write.exit25.i

rb_obj_write.exit25.i:                            ; preds = %bb.h, %rb_obj_write.exit.thread.i67
  %i.al = getelementptr i8, ptr %i.v, i64 88
  store i32 %4, ptr %i.al, align 8, !tbaa !258
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 176
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !124
  %i.ap = icmp eq ptr %i.ao, %0
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %rb_obj_write.exit25.i
  %i.aq = inttoptr i64 %i.u to ptr                ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !80
  %i.as = and i64 %i.ar, 8192
  %.not.i.i = icmp eq i64 %i.as, 0
  %i.at = getelementptr i8, ptr %i.aq, i64 24     ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !90
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.j, %bb.i
  %i.av = phi ptr [ %i.au, %bb.j ], [ %i.at, %bb.i ]
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(11) @.str.109) #24
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %RSTRING_PTR.exit.i
  %i.ay = getelementptr i8, ptr %i.am, i64 16     ; 2 uses
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = or i16 %i.az, 4096
  store i16 %i.ba, ptr %i.ay, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %RSTRING_PTR.exit.i, %rb_obj_write.exit25.i
  %.not.i66 = icmp eq ptr %5, null
  br i1 %.not.i66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr i8, ptr %i.v, i64 92
  store i32 %6, ptr %i.bb, align 4, !tbaa !259
  %i.bc = getelementptr i8, ptr %i.v, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !260
  br label %iseq_location_setup.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = getelementptr i8, ptr %i.v, i64 96
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %i.bd, align 8, !tbaa !7
  br label %iseq_location_setup.exit

iseq_location_setup.exit:                         ; preds = %bb.m, %bb.n
  %i.be = getelementptr i8, ptr %i.b, i64 176
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !124 ; 2 uses
  %.not62 = icmp eq ptr %0, %i.bf
  br i1 %.not62, label %rb_obj_write.exit, label %bb.o

bb.o:                                             ; preds = %iseq_location_setup.exit
  %i.bg = getelementptr i8, ptr %i.b, i64 72
  %i.bh = getelementptr i8, ptr %i.bf, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !18
  %i.bj = getelementptr i8, ptr %i.bi, i64 80
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !261 ; 4 uses
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !11
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = and i64 %i.bk, 7
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = or i1 %i.bl, %i.bn
  br i1 %i.bo, label %rb_obj_write.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.bp, i64 noundef %i.bk) #20
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.p, %bb.o, %iseq_location_setup.exit
  %i.bq = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
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
  store ptr %i.d, ptr %i.e, align 8, !tbaa !18
  %.not = icmp eq ptr %7, null
  %spec.store.select = select i1 %.not, ptr @COMPILE_OPTION_DEFAULT, ptr %7
  tail call fastcc void @prepare_iseq_build(ptr noundef %i.b, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef null, i32 noundef -1, ptr noundef %5, i32 noundef 0, i32 noundef %6, i64 noundef 4, ptr noundef nonnull %spec.store.select)
  %i.f = tail call i64 @rb_iseq_compile_callback(ptr noundef %i.b, ptr noundef %0) #20 ; 0 uses
  tail call fastcc void @finish_iseq_build(ptr noundef %i.b)
  ret ptr %i.b
}

declare i64 @rb_iseq_compile_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_iseq_load_iseq(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.b = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  %.pr.i = load i64, ptr @rb_iseq_load_iseq.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 9) #20 ; 3 uses
  store i64 %i.c, ptr @rb_iseq_load_iseq.rbimpl_id, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !272

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.c, %.lr.ph.i ]
  %i.d = call i64 @rb_check_funcall(i64 noundef %i.b, i64 noundef %.lcssa.i, i32 noundef 1, ptr noundef nonnull %i.a) #20 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %i.d, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %iseqw_check.exit, label %bb.b

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  %i.i = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !284
  %i.l = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %iseqw_check.exit

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.b
  %i.n = load i64, ptr %i.i, align 8, !tbaa !80
  %i.o = and i64 %i.n, 95
  %or.cond.not.i.i = icmp eq i64 %i.o, 76
  br i1 %or.cond.not.i.i, label %bb.c, label %.critedge.i.i, !prof !273

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.p = getelementptr i8, ptr %i.i, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !274  ; 2 uses
  %i.r = and i64 %i.q, -2                         ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = trunc i64 %i.q to i1
  %i.u = getelementptr i8, ptr %i.i, i64 32       ; 2 uses
  br i1 %i.t, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.w = phi ptr [ %i.v, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %i.x = icmp eq i64 %i.r, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.x, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !277

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.016.i.i = phi ptr [ %i.z, %bb.e ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.y = getelementptr i8, ptr %.016.i.i, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !278  ; 2 uses
  %i.aa = icmp eq ptr %i.z, @iseqw_data_type
  br i1 %i.aa, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !282

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.ab = call ptr @rb_check_typeddata(i64 noundef %i.d, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.e, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.ab, %.critedge.i.i ], [ %i.w, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.w, %bb.e ]
  %i.ac = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16     ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %.not.i4 = icmp eq ptr %i.ae, null
  br i1 %.not.i4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit.i
  call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.ac) #20
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %rbimpl_check_typeddata.exit.i
  %i.af = phi ptr [ %.pre.i, %bb.f ], [ %i.ae, %rbimpl_check_typeddata.exit.i ]
  %i.ag = getelementptr i8, ptr %i.af, i64 80
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.ah, 0
  br i1 %.not5.i, label %bb.h, label %iseqw_check.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.g, %rbimpl_intern_const.exit, %bb.b
  %.0 = phi ptr [ null, %rbimpl_intern_const.exit ], [ null, %bb.b ], [ %i.ac, %bb.g ]
  ret ptr %.0
}

declare i64 @rb_check_funcall(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @rbimpl_intern_const(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1) unnamed_addr #6 {
bb.a:
  %.pr = load i64, ptr %0, align 8, !tbaa !11     ; 2 uses
  %.not4 = icmp eq i64 %.pr, 0
  br i1 %.not4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull %1, i64 noundef %i.a) #20 ; 3 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !11
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !272

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i64 [ %.pr, %bb.a ], [ %i.b, %.lr.ph ]
  ret i64 %.lcssa
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_iseq_compile_iseq(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %0, ptr %i.a, align 16, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  %i.c = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  %.pr.i = load i64, ptr @rb_iseq_compile_iseq.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.d = tail call i64 @rb_intern2(ptr noundef nonnull @.str.3, i64 noundef 7) #20 ; 3 uses
  store i64 %i.d, ptr @rb_iseq_compile_iseq.rbimpl_id, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !272

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.d, %.lr.ph.i ]
  %i.e = call i64 @rb_check_funcall(i64 noundef %i.c, i64 noundef %.lcssa.i, i32 noundef 2, ptr noundef nonnull %i.a) #20 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = and i64 %i.e, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %iseqw_check.exit, label %bb.b

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  %i.j = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !284
  %i.m = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %iseqw_check.exit

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.b
  %i.o = load i64, ptr %i.j, align 8, !tbaa !80
  %i.p = and i64 %i.o, 95
  %or.cond.not.i.i = icmp eq i64 %i.p, 76
  br i1 %or.cond.not.i.i, label %bb.c, label %.critedge.i.i, !prof !273

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.q = getelementptr i8, ptr %i.j, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !274  ; 2 uses
  %i.s = and i64 %i.r, -2                         ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = trunc i64 %i.r to i1
  %i.v = getelementptr i8, ptr %i.j, i64 32       ; 2 uses
  br i1 %i.u, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.y = icmp eq i64 %i.s, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.y, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !277

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.016.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.t, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.z = getelementptr i8, ptr %.016.i.i, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !278 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, @iseqw_data_type
  br i1 %i.ab, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !282

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.ac = call ptr @rb_check_typeddata(i64 noundef %i.e, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.e, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.ac, %.critedge.i.i ], [ %i.x, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.x, %bb.e ]
  %i.ad = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16     ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %.not.i6 = icmp eq ptr %i.af, null
  br i1 %.not.i6, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit.i
  call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.ad) #20
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %rbimpl_check_typeddata.exit.i
  %i.ag = phi ptr [ %.pre.i, %bb.f ], [ %i.af, %rbimpl_check_typeddata.exit.i ]
  %i.ah = getelementptr i8, ptr %i.ag, i64 80
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.ai, 0
  br i1 %.not5.i, label %bb.h, label %iseqw_check.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.g, %rbimpl_intern_const.exit, %bb.b
  %.0 = phi ptr [ null, %rbimpl_intern_const.exit ], [ null, %bb.b ], [ %i.ad, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_iseq_load(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.rb_compile_option_struct, align 4 ; 6 uses
  %4 = alloca %struct.rb_code_location_struct, align 4 ; 8 uses
  %i.b = tail call i64 @rb_imemo_new(i32 noundef 7, i64 noundef 0, i64 noundef 40, i1 noundef zeroext true) #20
  %i.c = inttoptr i64 %i.b to ptr                 ; 7 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, i8 noundef 0, i64 noundef 32, i1 noundef false) #20
  %i.e = tail call noalias noundef nonnull dereferenceable(360) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 360) #21
  %i.f = getelementptr i8, ptr %i.c, i64 16       ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) @__const.iseq_load.tmp_loc, i64 16, i1 false)
  %i.g = tail call i64 @rb_to_array_type(i64 noundef %0) #20 ; 14 uses
  %i.h = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 0) #24
  %i.i = tail call i64 @rb_str_to_str(i64 noundef %i.h) #20 ; 0 uses
  %i.j = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 1) #24 ; 2 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %CHECK_INTEGER.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i64 @rb_num2long(i64 noundef %i.j) #20 ; 0 uses
  br label %CHECK_INTEGER.exit.i

CHECK_INTEGER.exit.i:                             ; preds = %bb.b, %bb.a
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 2) #24 ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %CHECK_INTEGER.exit66.i, label %bb.c

bb.c:                                             ; preds = %CHECK_INTEGER.exit.i
  %i.o = tail call i64 @rb_num2long(i64 noundef %i.m) #20 ; 0 uses
  br label %CHECK_INTEGER.exit66.i

CHECK_INTEGER.exit66.i:                           ; preds = %bb.c, %CHECK_INTEGER.exit.i
  %i.p = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 3) #24 ; 2 uses
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %CHECK_INTEGER.exit67.i, label %bb.d

bb.d:                                             ; preds = %CHECK_INTEGER.exit66.i
  %i.r = tail call i64 @rb_num2long(i64 noundef %i.p) #20 ; 0 uses
  br label %CHECK_INTEGER.exit67.i

CHECK_INTEGER.exit67.i:                           ; preds = %bb.d, %CHECK_INTEGER.exit66.i
  %i.s = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 4) #24
  %i.t = tail call i64 @rb_to_hash_type(i64 noundef %i.s) #20 ; 4 uses
  %i.u = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 5) #24
  %i.v = tail call i64 @rb_str_to_str(i64 noundef %i.u) #20
  %i.w = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 6) #24
  %i.x = tail call i64 @rb_str_to_str(i64 noundef %i.w) #20
  %i.y = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 7) #24 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %CHECK_INTEGER.exit67.i
  %i.aa = tail call i64 @rb_str_to_str(i64 noundef %i.y) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %CHECK_INTEGER.exit67.i
  %i.ab = phi i64 [ %i.aa, %bb.e ], [ 4, %CHECK_INTEGER.exit67.i ]
  %i.ac = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 8) #24 ; 3 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i64 @rb_fix2int(i64 noundef %i.ac) #20
  br label %rb_num2int_inline.exit.i

bb.h:                                             ; preds = %bb.f
  %i.af = tail call i64 @rb_num2int(i64 noundef %i.ac) #20
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.h, %bb.g
  %.0.i68.i = phi i64 [ %i.ae, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = tail call i64 @rb_ary_entry(i64 noundef %i.g, i64 noundef 9) #24
end_hunk_1
begin_hunk_2_@rb_iseq_load:bb.a
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i, %.lr.ph.i.i
  %i.bn = call i64 @rb_intern2(ptr noundef nonnull @.str.114, i64 noundef 7) #20 ; 3 uses
  store i64 %i.bn, ptr @iseq_load.rbimpl_id, align 8, !tbaa !11
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !272

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %select.unfold.i
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %select.unfold.i ], [ %i.bn, %.lr.ph.i.i ]
  %i.bo = call i64 @rb_id2sym(i64 noundef %.lcssa.i.i) #20
  %i.bp = call i64 @rb_hash_aref(i64 noundef %i.t, i64 noundef %i.bo) #20 ; 3 uses
  %.pr.i70.i = load i64, ptr @iseq_load.rbimpl_id.115, align 8, !tbaa !11 ; 2 uses
  %.not4.i71.i = icmp eq i64 %.pr.i70.i, 0
  br i1 %.not4.i71.i, label %.lr.ph.i73.i, label %rbimpl_intern_const.exit75.i

.lr.ph.i73.i:                                     ; preds = %rbimpl_intern_const.exit.i, %.lr.ph.i73.i
  %i.bq = call i64 @rb_intern2(ptr noundef nonnull @.str.116, i64 noundef 13) #20 ; 3 uses
  store i64 %i.bq, ptr @iseq_load.rbimpl_id.115, align 8, !tbaa !11
  %.not.i74.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i74.i, label %.lr.ph.i73.i, label %rbimpl_intern_const.exit75.i, !llvm.loop !272

rbimpl_intern_const.exit75.i:                     ; preds = %.lr.ph.i73.i, %rbimpl_intern_const.exit.i
  %.lcssa.i72.i = phi i64 [ %.pr.i70.i, %rbimpl_intern_const.exit.i ], [ %i.bq, %.lr.ph.i73.i ]
  %i.br = call i64 @rb_id2sym(i64 noundef %.lcssa.i72.i) #20
  %i.bs = call i64 @rb_hash_aref(i64 noundef %i.t, i64 noundef %i.br) #20 ; 7 uses
  %i.bt = icmp eq i64 %i.bs, 0
  %i.bu = and i64 %i.bs, 7
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = or i1 %i.bt, %i.bv
  br i1 %i.bw, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_intern_const.exit75.i
  %i.bx = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !80 ; 3 uses
  %i.bz = and i64 %i.by, 31
  %i.ca = icmp eq i64 %i.bz, 7
  br i1 %i.ca, label %bb.r, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.cb = and i64 %i.by, 8192
  %.not.i76.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i76.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = lshr i64 %i.by, 15
  %i.cd = and i64 %i.cc, 127
  br label %rb_array_len.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ce = getelementptr i8, ptr %i.bx, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !90
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.t, %bb.s
  %.0.i77.i = phi i64 [ %i.cd, %bb.s ], [ %i.cf, %bb.t ]
  %i.cg = icmp eq i64 %.0.i77.i, 4
  br i1 %i.cg, label %bb.u, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.u:                                             ; preds = %rb_array_len.exit.i
  %i.ch = call i64 @rb_ary_entry(i64 noundef %i.bs, i64 noundef 0) #24 ; 3 uses
  %i.ci = trunc i64 %i.ch to i1
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cj = call i64 @rb_fix2int(i64 noundef %i.ch) #20
  br label %rb_num2int_inline.exit79.i

bb.w:                                             ; preds = %bb.u
  %i.ck = call i64 @rb_num2int(i64 noundef %i.ch) #20
  br label %rb_num2int_inline.exit79.i

rb_num2int_inline.exit79.i:                       ; preds = %bb.w, %bb.v
  %.0.i78.i = phi i64 [ %i.cj, %bb.v ], [ %i.ck, %bb.w ]
  %i.cl = trunc i64 %.0.i78.i to i32
  store i32 %i.cl, ptr %4, align 4, !tbaa !285
  %i.cm = call i64 @rb_ary_entry(i64 noundef %i.bs, i64 noundef 1) #24 ; 3 uses
  %i.cn = trunc i64 %i.cm to i1
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %rb_num2int_inline.exit79.i
  %i.co = call i64 @rb_fix2int(i64 noundef %i.cm) #20
  br label %rb_num2int_inline.exit81.i

bb.y:                                             ; preds = %rb_num2int_inline.exit79.i
  %i.cp = call i64 @rb_num2int(i64 noundef %i.cm) #20
  br label %rb_num2int_inline.exit81.i

rb_num2int_inline.exit81.i:                       ; preds = %bb.y, %bb.x
  %.0.i80.i = phi i64 [ %i.co, %bb.x ], [ %i.cp, %bb.y ]
  %i.cq = trunc i64 %.0.i80.i to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !286
  %i.cs = call i64 @rb_ary_entry(i64 noundef %i.bs, i64 noundef 2) #24 ; 3 uses
  %i.ct = trunc i64 %i.cs to i1
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %rb_num2int_inline.exit81.i
  %i.cu = call i64 @rb_fix2int(i64 noundef %i.cs) #20
  br label %rb_num2int_inline.exit83.i

bb.aa:                                            ; preds = %rb_num2int_inline.exit81.i
  %i.cv = call i64 @rb_num2int(i64 noundef %i.cs) #20
  br label %rb_num2int_inline.exit83.i

rb_num2int_inline.exit83.i:                       ; preds = %bb.aa, %bb.z
  %.0.i82.i = phi i64 [ %i.cu, %bb.z ], [ %i.cv, %bb.aa ]
  %i.cw = trunc i64 %.0.i82.i to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !287
  %i.cy = call i64 @rb_ary_entry(i64 noundef %i.bs, i64 noundef 3) #24 ; 3 uses
  %i.cz = trunc i64 %i.cy to i1
  br i1 %i.cz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %rb_num2int_inline.exit83.i
  %i.da = call i64 @rb_fix2int(i64 noundef %i.cy) #20
  br label %rb_num2int_inline.exit85.i

bb.ac:                                            ; preds = %rb_num2int_inline.exit83.i
  %i.db = call i64 @rb_num2int(i64 noundef %i.cy) #20
  br label %rb_num2int_inline.exit85.i

rb_num2int_inline.exit85.i:                       ; preds = %bb.ac, %bb.ab
  %.0.i84.i = phi i64 [ %i.da, %bb.ab ], [ %i.db, %bb.ac ]
  %i.dc = trunc i64 %.0.i84.i to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !288
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rb_num2int_inline.exit85.i, %rb_array_len.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_intern_const.exit75.i
  %.pr.i86.i = load i64, ptr @iseq_load.rbimpl_id.117, align 8, !tbaa !11 ; 2 uses
  %.not4.i87.i = icmp eq i64 %.pr.i86.i, 0
  br i1 %.not4.i87.i, label %.lr.ph.i89.i, label %rbimpl_intern_const.exit91.i

.lr.ph.i89.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %.lr.ph.i89.i
  %i.de = call i64 @rb_intern2(ptr noundef nonnull @.str.118, i64 noundef 6) #20 ; 3 uses
  store i64 %i.de, ptr @iseq_load.rbimpl_id.117, align 8, !tbaa !11
  %.not.i90.i = icmp eq i64 %i.de, 0
  br i1 %.not.i90.i, label %.lr.ph.i89.i, label %rbimpl_intern_const.exit91.i, !llvm.loop !272

rbimpl_intern_const.exit91.i:                     ; preds = %.lr.ph.i89.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.lcssa.i88.i = phi i64 [ %.pr.i86.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.de, %.lr.ph.i89.i ]
  %i.df = call i64 @rb_id2sym(i64 noundef %.lcssa.i88.i) #20
  %i.dg = call i64 @rb_hash_aref(i64 noundef %i.t, i64 noundef %i.df) #20
  %i.dh = call i64 @rb_sym2id(i64 noundef %i.dg) #20
  %.pr.i92.i = load i64, ptr @iseq_load.rbimpl_id.119, align 8, !tbaa !11 ; 2 uses
  %.not4.i93.i = icmp eq i64 %.pr.i92.i, 0
  br i1 %.not4.i93.i, label %.lr.ph.i95.i, label %rbimpl_intern_const.exit97.i

.lr.ph.i95.i:                                     ; preds = %rbimpl_intern_const.exit91.i, %.lr.ph.i95.i
  %i.di = call i64 @rb_intern2(ptr noundef nonnull @.str.120, i64 noundef 5) #20 ; 3 uses
  store i64 %i.di, ptr @iseq_load.rbimpl_id.119, align 8, !tbaa !11
  %.not.i96.i = icmp eq i64 %i.di, 0
  br i1 %.not.i96.i, label %.lr.ph.i95.i, label %rbimpl_intern_const.exit97.i, !llvm.loop !272

rbimpl_intern_const.exit97.i:                     ; preds = %.lr.ph.i95.i, %rbimpl_intern_const.exit91.i
  %.lcssa.i94.i = phi i64 [ %.pr.i92.i, %rbimpl_intern_const.exit91.i ], [ %i.di, %.lr.ph.i95.i ]
  %i.dj = icmp eq i64 %i.dh, %.lcssa.i94.i
  br i1 %i.dj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %rbimpl_intern_const.exit97.i
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.dl = getelementptr i8, ptr %i.dk, i64 272
  store i8 1, ptr %i.dl, align 8, !tbaa !247
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %rbimpl_intern_const.exit97.i
  call fastcc void @make_compile_option(ptr noundef %3, i64 noundef %2)
  %i.dm = load i16, ptr %3, align 4
  %i.dn = and i16 %i.dm, -3
  store i16 %i.dn, ptr %3, align 4
  %i.do = trunc i64 %i.bp to i1
  br i1 %i.do, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dp = call i64 @rb_fix2int(i64 noundef %i.bp) #20
  br label %iseq_load.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dq = call i64 @rb_num2int(i64 noundef %i.bp) #20
  br label %iseq_load.exit

iseq_load.exit:                                   ; preds = %bb.af, %bb.ag
  %.0.i98.i = phi i64 [ %i.dp, %bb.af ], [ %i.dq, %bb.ag ]
  %i.dr = and i64 %1, -5
  %.not = icmp eq i64 %i.dr, 0
  %i.ds = inttoptr i64 %1 to ptr
  %i.dt = select i1 %.not, ptr null, ptr %i.ds
  %i.du = trunc i64 %.0.i68.i to i32
  %i.dv = trunc i64 %.0.i98.i to i32
  call fastcc void @prepare_iseq_build(ptr noundef nonnull %i.c, i64 noundef %i.v, i64 noundef %i.x, i64 noundef %i.ab, i32 noundef %i.du, ptr noundef nonnull %4, i32 noundef %i.dv, ptr noundef %i.dt, i32 noundef 0, i32 noundef %.0.i69.ph.i, i64 noundef 4, ptr noundef nonnull %3)
  call void @rb_iseq_build_from_ary(ptr noundef nonnull %i.c, i64 noundef %i.t, i64 noundef %i.aj, i64 noundef %i.al, i64 noundef %i.an, i64 noundef %i.ap) #20
  call fastcc void @finish_iseq_build(ptr noundef nonnull %i.c)
  %i.dw = call fastcc i64 @iseqw_new(ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i64 %i.dw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @rb_iseq_path(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !269  ; 4 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i64 %i.d, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not4 = and i1 %i.e, %i.g
  %.pre.i = inttoptr i64 %i.d to ptr              ; 3 uses
  %.pre = load i64, ptr %.pre.i, align 8, !tbaa !80 ; 2 uses
  %i.h = and i64 %.pre, 31
  %i.i = icmp eq i64 %i.h, 5
  %or.cond = select i1 %.not4, i1 %i.i, i1 false
  br i1 %or.cond, label %pathobj_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.a
  %i.j = and i64 %.pre, 8192
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.k = getelementptr i8, ptr %.pre.i, i64 16
  br label %RARRAY_AREF.exit.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.l = getelementptr i8, ptr %.pre.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ]
  %i.n = load i64, ptr %.0.i.i.i, align 8, !tbaa !11
  br label %pathobj_path.exit

pathobj_path.exit:                                ; preds = %bb.a, %RARRAY_AREF.exit.i
  %.0.i = phi i64 [ %i.n, %RARRAY_AREF.exit.i ], [ %i.d, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @rb_iseq_realpath(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !269  ; 4 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i64 %i.d, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not4 = and i1 %i.e, %i.g
  %.pre.i = inttoptr i64 %i.d to ptr              ; 3 uses
  %.pre = load i64, ptr %.pre.i, align 8, !tbaa !80 ; 2 uses
  %i.h = and i64 %.pre, 31
  %i.i = icmp eq i64 %i.h, 5
  %or.cond = select i1 %.not4, i1 %i.i, i1 false
  br i1 %or.cond, label %pathobj_realpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.a
  %i.j = and i64 %.pre, 8192
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.k = getelementptr i8, ptr %.pre.i, i64 16
  br label %RARRAY_AREF.exit.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.l = getelementptr i8, ptr %.pre.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ]
  %i.n = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  br label %pathobj_realpath.exit

pathobj_realpath.exit:                            ; preds = %bb.a, %RARRAY_AREF.exit.i
  %.0.i = phi i64 [ %i.o, %RARRAY_AREF.exit.i ], [ %i.d, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @rb_iseq_absolute_path(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !269  ; 4 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i64 %i.d, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not4.i = and i1 %i.e, %i.g
  %.pre.i.i = inttoptr i64 %i.d to ptr            ; 3 uses
  %.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !80 ; 2 uses
  %i.h = and i64 %.pre.i, 31
  %i.i = icmp eq i64 %i.h, 5
  %or.cond.i = select i1 %.not4.i, i1 %i.i, i1 false
  br i1 %or.cond.i, label %rb_iseq_realpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.a
  %i.j = and i64 %.pre.i, 8192
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.k = getelementptr i8, ptr %.pre.i.i, i64 16
  br label %RARRAY_AREF.exit.i.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.l = getelementptr i8, ptr %.pre.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90
  br label %RARRAY_AREF.exit.i.i

RARRAY_AREF.exit.i.i:                             ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ]
  %i.n = getelementptr i8, ptr %.0.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  br label %rb_iseq_realpath.exit

rb_iseq_realpath.exit:                            ; preds = %bb.a, %RARRAY_AREF.exit.i.i
  %.0.i.i = phi i64 [ %i.o, %RARRAY_AREF.exit.i.i ], [ %i.d, %bb.a ]
  ret i64 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @rb_iseq_from_eval_p(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !269  ; 4 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i64 %i.d, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not4.i = and i1 %i.e, %i.g
  %.pre.i.i = inttoptr i64 %i.d to ptr            ; 3 uses
  %.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !80 ; 2 uses
  %i.h = and i64 %.pre.i, 31
  %i.i = icmp eq i64 %i.h, 5
  %or.cond.i = select i1 %.not4.i, i1 %i.i, i1 false
  br i1 %or.cond.i, label %rb_iseq_realpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.a
  %i.j = and i64 %.pre.i, 8192
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.k = getelementptr i8, ptr %.pre.i.i, i64 16
  br label %RARRAY_AREF.exit.i.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.l = getelementptr i8, ptr %.pre.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90
  br label %RARRAY_AREF.exit.i.i

RARRAY_AREF.exit.i.i:                             ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ]
  %i.n = getelementptr i8, ptr %.0.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  br label %rb_iseq_realpath.exit

rb_iseq_realpath.exit:                            ; preds = %bb.a, %RARRAY_AREF.exit.i.i
  %.0.i.i = phi i64 [ %i.o, %RARRAY_AREF.exit.i.i ], [ %i.d, %bb.a ]
  %i.p = icmp eq i64 %.0.i.i, 4
  %i.q = zext i1 %i.p to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @rb_iseq_label(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !261
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @rb_iseq_base_label(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !289
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 1, 0) i64 @rb_iseq_first_lineno(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !290
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 1
  %i.g = or disjoint i64 %i.f, 1
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @rb_iseq_method_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !160
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.f, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !289
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.j, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @rb_iseq_code_location(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 96
  %i.d = load i32, ptr %i.c, align 4, !tbaa !285
  store i32 %i.d, ptr %1, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.b, i64 100
  %i.f = load i32, ptr %i.e, align 4, !tbaa !286
  store i32 %i.f, ptr %2, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %i.b, i64 104
  %i.h = load i32, ptr %i.g, align 4, !tbaa !287
  store i32 %i.h, ptr %3, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not18 = icmp eq ptr %4, null
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr i8, ptr %i.b, i64 108
  %i.j = load i32, ptr %i.i, align 4, !tbaa !288
  store i32 %i.j, ptr %4, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_iseq_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load i32, ptr %i.b, align 8, !tbaa !160
  %i.d = tail call fastcc i64 @iseq_type_id(i32 noundef %i.c)
  %i.e = tail call i64 @rb_id2sym(i64 noundef %i.d) #20
  ret i64 %i.e
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @iseq_type_id(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @iseq_type_id.id_top, align 8, !tbaa !11
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.pr.i = load i64, ptr @iseq_type_id.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str.121, i64 noundef 3) #20 ; 3 uses
  store i64 %i.c, ptr @iseq_type_id.rbimpl_id, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !272

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.b
  %.lcssa.i = phi i64 [ %.pr.i, %bb.b ], [ %i.c, %.lr.ph.i ]
  store i64 %.lcssa.i, ptr @iseq_type_id.id_top, align 8, !tbaa !11
  %.pr.i12 = load i64, ptr @iseq_type_id.rbimpl_id.192, align 8, !tbaa !11 ; 2 uses
  %.not4.i13 = icmp eq i64 %.pr.i12, 0
  br i1 %.not4.i13, label %.lr.ph.i15, label %rbimpl_intern_const.exit17

.lr.ph.i15:                                       ; preds = %rbimpl_intern_const.exit, %.lr.ph.i15
  %i.d = tail call i64 @rb_intern2(ptr noundef nonnull @.str.123, i64 noundef 6) #20 ; 3 uses
  store i64 %i.d, ptr @iseq_type_id.rbimpl_id.192, align 8, !tbaa !11
  %.not.i16 = icmp eq i64 %i.d, 0
  br i1 %.not.i16, label %.lr.ph.i15, label %rbimpl_intern_const.exit17, !llvm.loop !272

rbimpl_intern_const.exit17:                       ; preds = %.lr.ph.i15, %rbimpl_intern_const.exit
  %.lcssa.i14 = phi i64 [ %.pr.i12, %rbimpl_intern_const.exit ], [ %i.d, %.lr.ph.i15 ]
  store i64 %.lcssa.i14, ptr @iseq_type_id.id_method, align 8, !tbaa !11
  %.pr.i18 = load i64, ptr @iseq_type_id.rbimpl_id.193, align 8, !tbaa !11 ; 2 uses
  %.not4.i19 = icmp eq i64 %.pr.i18, 0
  br i1 %.not4.i19, label %.lr.ph.i21, label %rbimpl_intern_const.exit23

.lr.ph.i21:                                       ; preds = %rbimpl_intern_const.exit17, %.lr.ph.i21
  %i.e = tail call i64 @rb_intern2(ptr noundef nonnull @.str.67, i64 noundef 5) #20 ; 3 uses
  store i64 %i.e, ptr @iseq_type_id.rbimpl_id.193, align 8, !tbaa !11
  %.not.i22 = icmp eq i64 %i.e, 0
  br i1 %.not.i22, label %.lr.ph.i21, label %rbimpl_intern_const.exit23, !llvm.loop !272

rbimpl_intern_const.exit23:                       ; preds = %.lr.ph.i21, %rbimpl_intern_const.exit17
  %.lcssa.i20 = phi i64 [ %.pr.i18, %rbimpl_intern_const.exit17 ], [ %i.e, %.lr.ph.i21 ]
  store i64 %.lcssa.i20, ptr @iseq_type_id.id_block, align 8, !tbaa !11
  %.pr.i24 = load i64, ptr @iseq_type_id.rbimpl_id.194, align 8, !tbaa !11 ; 2 uses
  %.not4.i25 = icmp eq i64 %.pr.i24, 0
  br i1 %.not4.i25, label %.lr.ph.i27, label %rbimpl_intern_const.exit29

.lr.ph.i27:                                       ; preds = %rbimpl_intern_const.exit23, %.lr.ph.i27
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str.126, i64 noundef 5) #20 ; 3 uses
  store i64 %i.f, ptr @iseq_type_id.rbimpl_id.194, align 8, !tbaa !11
  %.not.i28 = icmp eq i64 %i.f, 0
  br i1 %.not.i28, label %.lr.ph.i27, label %rbimpl_intern_const.exit29, !llvm.loop !272

rbimpl_intern_const.exit29:                       ; preds = %.lr.ph.i27, %rbimpl_intern_const.exit23
  %.lcssa.i26 = phi i64 [ %.pr.i24, %rbimpl_intern_const.exit23 ], [ %i.f, %.lr.ph.i27 ]
  store i64 %.lcssa.i26, ptr @iseq_type_id.id_class, align 8, !tbaa !11
  %.pr.i30 = load i64, ptr @iseq_type_id.rbimpl_id.195, align 8, !tbaa !11 ; 2 uses
  %.not4.i31 = icmp eq i64 %.pr.i30, 0
  br i1 %.not4.i31, label %.lr.ph.i33, label %rbimpl_intern_const.exit35

.lr.ph.i33:                                       ; preds = %rbimpl_intern_const.exit29, %.lr.ph.i33
  %i.g = tail call i64 @rb_intern2(ptr noundef nonnull @.str.128, i64 noundef 6) #20 ; 3 uses
  store i64 %i.g, ptr @iseq_type_id.rbimpl_id.195, align 8, !tbaa !11
  %.not.i34 = icmp eq i64 %i.g, 0
  br i1 %.not.i34, label %.lr.ph.i33, label %rbimpl_intern_const.exit35, !llvm.loop !272

rbimpl_intern_const.exit35:                       ; preds = %.lr.ph.i33, %rbimpl_intern_const.exit29
  %.lcssa.i32 = phi i64 [ %.pr.i30, %rbimpl_intern_const.exit29 ], [ %i.g, %.lr.ph.i33 ]
  store i64 %.lcssa.i32, ptr @iseq_type_id.id_rescue, align 8, !tbaa !11
  %.pr.i36 = load i64, ptr @iseq_type_id.rbimpl_id.196, align 8, !tbaa !11 ; 2 uses
  %.not4.i37 = icmp eq i64 %.pr.i36, 0
  br i1 %.not4.i37, label %.lr.ph.i39, label %rbimpl_intern_const.exit41

.lr.ph.i39:                                       ; preds = %rbimpl_intern_const.exit35, %.lr.ph.i39
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.130, i64 noundef 6) #20 ; 3 uses
  store i64 %i.h, ptr @iseq_type_id.rbimpl_id.196, align 8, !tbaa !11
  %.not.i40 = icmp eq i64 %i.h, 0
  br i1 %.not.i40, label %.lr.ph.i39, label %rbimpl_intern_const.exit41, !llvm.loop !272

rbimpl_intern_const.exit41:                       ; preds = %.lr.ph.i39, %rbimpl_intern_const.exit35
  %.lcssa.i38 = phi i64 [ %.pr.i36, %rbimpl_intern_const.exit35 ], [ %i.h, %.lr.ph.i39 ]
  store i64 %.lcssa.i38, ptr @iseq_type_id.id_ensure, align 8, !tbaa !11
  %.pr.i42 = load i64, ptr @iseq_type_id.rbimpl_id.197, align 8, !tbaa !11 ; 2 uses
  %.not4.i43 = icmp eq i64 %.pr.i42, 0
  br i1 %.not4.i43, label %.lr.ph.i45, label %rbimpl_intern_const.exit47

.lr.ph.i45:                                       ; preds = %rbimpl_intern_const.exit41, %.lr.ph.i45
  %i.i = tail call i64 @rb_intern2(ptr noundef nonnull @.str.85, i64 noundef 4) #20 ; 3 uses
  store i64 %i.i, ptr @iseq_type_id.rbimpl_id.197, align 8, !tbaa !11
  %.not.i46 = icmp eq i64 %i.i, 0
  br i1 %.not.i46, label %.lr.ph.i45, label %rbimpl_intern_const.exit47, !llvm.loop !272

rbimpl_intern_const.exit47:                       ; preds = %.lr.ph.i45, %rbimpl_intern_const.exit41
  %.lcssa.i44 = phi i64 [ %.pr.i42, %rbimpl_intern_const.exit41 ], [ %i.i, %.lr.ph.i45 ]
  store i64 %.lcssa.i44, ptr @iseq_type_id.id_eval, align 8, !tbaa !11
  %.pr.i48 = load i64, ptr @iseq_type_id.rbimpl_id.198, align 8, !tbaa !11 ; 2 uses
  %.not4.i49 = icmp eq i64 %.pr.i48, 0
  br i1 %.not4.i49, label %.lr.ph.i51, label %rbimpl_intern_const.exit53

.lr.ph.i51:                                       ; preds = %rbimpl_intern_const.exit47, %.lr.ph.i51
  %i.j = tail call i64 @rb_intern2(ptr noundef nonnull @.str.133, i64 noundef 4) #20 ; 3 uses
  store i64 %i.j, ptr @iseq_type_id.rbimpl_id.198, align 8, !tbaa !11
  %.not.i52 = icmp eq i64 %i.j, 0
  br i1 %.not.i52, label %.lr.ph.i51, label %rbimpl_intern_const.exit53, !llvm.loop !272

rbimpl_intern_const.exit53:                       ; preds = %.lr.ph.i51, %rbimpl_intern_const.exit47
  %.lcssa.i50 = phi i64 [ %.pr.i48, %rbimpl_intern_const.exit47 ], [ %i.j, %.lr.ph.i51 ]
  store i64 %.lcssa.i50, ptr @iseq_type_id.id_main, align 8, !tbaa !11
  %.pr.i54 = load i64, ptr @iseq_type_id.rbimpl_id.199, align 8, !tbaa !11 ; 2 uses
  %.not4.i55 = icmp eq i64 %.pr.i54, 0
  br i1 %.not4.i55, label %.lr.ph.i57, label %rbimpl_intern_const.exit59

.lr.ph.i57:                                       ; preds = %rbimpl_intern_const.exit53, %.lr.ph.i57
  %i.k = tail call i64 @rb_intern2(ptr noundef nonnull @.str.135, i64 noundef 5) #20 ; 3 uses
  store i64 %i.k, ptr @iseq_type_id.rbimpl_id.199, align 8, !tbaa !11
  %.not.i58 = icmp eq i64 %i.k, 0
  br i1 %.not.i58, label %.lr.ph.i57, label %rbimpl_intern_const.exit59, !llvm.loop !272

rbimpl_intern_const.exit59:                       ; preds = %.lr.ph.i57, %rbimpl_intern_const.exit53
  %.lcssa.i56 = phi i64 [ %.pr.i54, %rbimpl_intern_const.exit53 ], [ %i.k, %.lr.ph.i57 ]
  store i64 %.lcssa.i56, ptr @iseq_type_id.id_plain, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %rbimpl_intern_const.exit59, %bb.a
  %i.l = icmp ult i32 %0, 9
  br i1 %i.l, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.200, i32 noundef %0) #23
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.m = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.iseq_type_id, i64 %i.m
  %switch.load = load ptr, ptr %switch.gep, align 8
  %.0 = load i64, ptr %switch.load, align 8, !tbaa !11
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @rb_iseq_coverage(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 216
  %i.d = load i64, ptr %i.c, align 8, !tbaa !270
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_iseq_remove_coverage_all() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_objspace_each_objects(ptr noundef nonnull @remove_coverage_i, ptr noundef null) #20
  ret void
}

declare void @rb_objspace_each_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @remove_coverage_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #9 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %rb_obj_is_iseq.exit.thread
  %.013 = phi i64 [ %i.m, %rb_obj_is_iseq.exit.thread ], [ %i.b, %.lr.ph.preheader ] ; 4 uses
  %i.c = icmp eq i64 %.013, 0
  %i.d = and i64 %.013, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rb_obj_is_iseq.exit.thread, label %rb_obj_is_iseq.exit, !prof !99

rb_obj_is_iseq.exit:                              ; preds = %.lr.ph
  %i.g = inttoptr i64 %.013 to ptr                ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = and i64 %i.h, 61471
  %.not11 = icmp eq i64 %i.i, 28698
  br i1 %.not11, label %bb.b, label %rb_obj_is_iseq.exit.thread

bb.b:                                             ; preds = %rb_obj_is_iseq.exit
  %i.j = getelementptr i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr i8, ptr %i.k, i64 216
  store i64 4, ptr %i.l, align 8, !tbaa !11
  br label %rb_obj_is_iseq.exit.thread

rb_obj_is_iseq.exit.thread:                       ; preds = %.lr.ph, %bb.b, %rb_obj_is_iseq.exit
  %i.m = add i64 %.013, %2                        ; 2 uses
  %.not = icmp eq i64 %i.m, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !291

._crit_edge:                                      ; preds = %rb_obj_is_iseq.exit.thread, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_iseqw_new(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @iseqw_new(ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @iseqw_new(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !292  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %i.b, ptr noundef nonnull @iseqw_data_type) #20
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !283
  %.not19 = icmp eq ptr %i.d, %0
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.f = load i64, ptr %i.a, align 8, !tbaa !292
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.156, i64 noundef %i.f, ptr noundef nonnull %0) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !292
  br label %rb_obj_write.exit20

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  %i.i = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.h, i64 noundef 8, ptr noundef nonnull @iseqw_data_type) #20 ; 10 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !274
  %i.m = trunc i64 %i.l to i1
  %i.n = getelementptr i8, ptr %i.j, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.o, %bb.f ], [ %i.n, %bb.e ]
  %i.q = ptrtoint ptr %0 to i64                   ; 3 uses
  store i64 %i.q, ptr %i.p, align 8, !tbaa !11
  tail call void @rb_gc_writebarrier(i64 noundef %i.i, i64 noundef %i.q) #20
  tail call void @rb_obj_freeze_inline(i64 noundef %i.i) #20
  %i.r = tail call i64 @rb_obj_set_shareable(i64 noundef %i.i) #20 ; 0 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !11
  %i.s = icmp eq i64 %i.i, 0
  %i.t = and i64 %i.i, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %rb_obj_write.exit20, label %bb.g

bb.g:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.q, i64 noundef %i.i) #20
  br label %rb_obj_write.exit20

rb_obj_write.exit20:                              ; preds = %bb.g, %RTYPEDDATA_GET_DATA.exit, %bb.d
  %.0 = phi i64 [ %i.g, %bb.d ], [ %i.i, %RTYPEDDATA_GET_DATA.exit ], [ %i.i, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_iseqw_to_iseq(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !293

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !273

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !274  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !277

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !278  ; 2 uses
  %i.s = icmp eq ptr %i.r, @iseqw_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !282

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.u) #20
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.x = phi ptr [ %.pre.i, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ]
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.z, 0
  br i1 %.not5.i, label %bb.g, label %iseqw_check.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.f
  ret ptr %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @rb_iseq_line_no(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 112
  %i.c = getelementptr i8, ptr %.val, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  switch i32 %i.d, label %bb.b [
    i32 0, label %get_insn_info.exit.thread
    i32 1, label %get_insn_info.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 2 uses
  %i.h = trunc i64 %1 to i32                      ; 4 uses
  %i.i = icmp slt i32 %i.h, 54
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = sdiv i32 %i.h, 9
  %i.k = srem i32 %i.h, 9
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr [8 x i8], ptr %i.g, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11
  %i.o = mul nsw i32 %i.k, 7
  %i.p = zext nneg i32 %i.o to i64
  %i.q = lshr i64 %i.n, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 127
  br label %succ_index_lookup.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.t = add nsw i32 %i.h, -54                    ; 3 uses
  %i.u = lshr i32 %i.t, 9
  %i.v = getelementptr i8, ptr %i.g, i64 48
  %i.w = zext nneg i32 %i.u to i64
  %i.x = getelementptr [80 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = lshr i32 %i.t, 6
  %i.z = and i32 %i.y, 7                          ; 3 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.x, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !164
  %i.ad = mul nuw nsw i32 %i.z, 9
  %i.ae = add nsw i32 %i.ad, -9
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.ac, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 511
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = phi i32 [ %i.ai, %bb.e ], [ 0, %bb.d ]
  %i.ak = getelementptr i8, ptr %i.x, i64 16
  %i.al = zext nneg i32 %i.z to i64
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %i.ao = and i32 %i.t, 63
  %i.ap = xor i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.an, %i.aq
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ar)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = load i32, ptr %i.x, align 8, !tbaa !162
  %i.av = add i32 %i.au, %i.aj
  %i.aw = add i32 %i.av, %i.at
  br label %succ_index_lookup.exit.i.i

succ_index_lookup.exit.i.i:                       ; preds = %bb.f, %bb.c
  %.0.i.i.i = phi i32 [ %i.s, %bb.c ], [ %i.aw, %bb.f ]
  %i.ax = add i32 %.0.i.i.i, -1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [12 x i8], ptr %i.e, i64 %i.ay
  br label %get_insn_info.exit

get_insn_info.exit:                               ; preds = %bb.a, %succ_index_lookup.exit.i.i
  %.0.i.i = phi ptr [ %i.az, %succ_index_lookup.exit.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %get_insn_info.exit.thread, label %bb.g

bb.g:                                             ; preds = %get_insn_info.exit
  %i.ba = load i32, ptr %.0.i.i, align 4, !tbaa !294
  br label %get_insn_info.exit.thread

get_insn_info.exit.thread:                        ; preds = %bb.a, %get_insn_info.exit, %bb.g
  %.0 = phi i32 [ %i.ba, %bb.g ], [ 0, %get_insn_info.exit ], [ %i.d, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @rb_iseq_node_id(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 112
  %i.c = getelementptr i8, ptr %.val, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  switch i32 %i.d, label %bb.b [
    i32 0, label %get_insn_info.exit.thread
    i32 1, label %get_insn_info.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 2 uses
  %i.h = trunc i64 %1 to i32                      ; 4 uses
  %i.i = icmp slt i32 %i.h, 54
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = sdiv i32 %i.h, 9
  %i.k = srem i32 %i.h, 9
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr [8 x i8], ptr %i.g, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11
  %i.o = mul nsw i32 %i.k, 7
  %i.p = zext nneg i32 %i.o to i64
  %i.q = lshr i64 %i.n, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 127
  br label %succ_index_lookup.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.t = add nsw i32 %i.h, -54                    ; 3 uses
  %i.u = lshr i32 %i.t, 9
  %i.v = getelementptr i8, ptr %i.g, i64 48
  %i.w = zext nneg i32 %i.u to i64
  %i.x = getelementptr [80 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = lshr i32 %i.t, 6
  %i.z = and i32 %i.y, 7                          ; 3 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.x, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !164
  %i.ad = mul nuw nsw i32 %i.z, 9
  %i.ae = add nsw i32 %i.ad, -9
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.ac, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 511
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = phi i32 [ %i.ai, %bb.e ], [ 0, %bb.d ]
  %i.ak = getelementptr i8, ptr %i.x, i64 16
  %i.al = zext nneg i32 %i.z to i64
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %i.ao = and i32 %i.t, 63
  %i.ap = xor i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.an, %i.aq
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ar)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = load i32, ptr %i.x, align 8, !tbaa !162
  %i.av = add i32 %i.au, %i.aj
  %i.aw = add i32 %i.av, %i.at
  br label %succ_index_lookup.exit.i.i

succ_index_lookup.exit.i.i:                       ; preds = %bb.f, %bb.c
  %.0.i.i.i = phi i32 [ %i.s, %bb.c ], [ %i.aw, %bb.f ]
  %i.ax = add i32 %.0.i.i.i, -1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [12 x i8], ptr %i.e, i64 %i.ay
  br label %get_insn_info.exit

get_insn_info.exit:                               ; preds = %bb.a, %succ_index_lookup.exit.i.i
  %.0.i.i = phi ptr [ %i.az, %succ_index_lookup.exit.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %get_insn_info.exit.thread, label %bb.g

bb.g:                                             ; preds = %get_insn_info.exit
  %i.ba = getelementptr i8, ptr %.0.i.i, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !295
  br label %get_insn_info.exit.thread

get_insn_info.exit.thread:                        ; preds = %bb.a, %get_insn_info.exit, %bb.g
  %.0 = phi i32 [ %i.bb, %bb.g ], [ 0, %get_insn_info.exit ], [ %i.d, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_iseq_event_flags(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 112
  %i.c = getelementptr i8, ptr %.val, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  switch i32 %i.d, label %bb.b [
    i32 0, label %get_insn_info.exit.thread
    i32 1, label %get_insn_info.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 2 uses
  %i.h = trunc i64 %1 to i32                      ; 4 uses
  %i.i = icmp slt i32 %i.h, 54
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = sdiv i32 %i.h, 9
  %i.k = srem i32 %i.h, 9
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr [8 x i8], ptr %i.g, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11
  %i.o = mul nsw i32 %i.k, 7
  %i.p = zext nneg i32 %i.o to i64
  %i.q = lshr i64 %i.n, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 127
  br label %succ_index_lookup.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.t = add nsw i32 %i.h, -54                    ; 3 uses
  %i.u = lshr i32 %i.t, 9
  %i.v = getelementptr i8, ptr %i.g, i64 48
  %i.w = zext nneg i32 %i.u to i64
  %i.x = getelementptr [80 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = lshr i32 %i.t, 6
  %i.z = and i32 %i.y, 7                          ; 3 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.x, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !164
  %i.ad = mul nuw nsw i32 %i.z, 9
  %i.ae = add nsw i32 %i.ad, -9
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.ac, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 511
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = phi i32 [ %i.ai, %bb.e ], [ 0, %bb.d ]
  %i.ak = getelementptr i8, ptr %i.x, i64 16
  %i.al = zext nneg i32 %i.z to i64
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %i.ao = and i32 %i.t, 63
  %i.ap = xor i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.an, %i.aq
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ar)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = load i32, ptr %i.x, align 8, !tbaa !162
  %i.av = add i32 %i.au, %i.aj
  %i.aw = add i32 %i.av, %i.at
  br label %succ_index_lookup.exit.i.i

succ_index_lookup.exit.i.i:                       ; preds = %bb.f, %bb.c
  %.0.i.i.i = phi i32 [ %i.s, %bb.c ], [ %i.aw, %bb.f ]
  %i.ax = add i32 %.0.i.i.i, -1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [12 x i8], ptr %i.e, i64 %i.ay
  br label %get_insn_info.exit

get_insn_info.exit:                               ; preds = %bb.a, %succ_index_lookup.exit.i.i
  %.0.i.i = phi ptr [ %i.az, %succ_index_lookup.exit.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %get_insn_info.exit.thread, label %bb.g

bb.g:                                             ; preds = %get_insn_info.exit
  %i.ba = getelementptr i8, ptr %.0.i.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !197
  br label %get_insn_info.exit.thread

get_insn_info.exit.thread:                        ; preds = %bb.a, %get_insn_info.exit, %bb.g
  %.0 = phi i32 [ %i.bb, %bb.g ], [ 0, %get_insn_info.exit ], [ %i.d, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_iseq_clear_event_flags(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !171
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #20
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = trunc i64 %1 to i32                      ; 4 uses
  %i.f = icmp slt i32 %i.e, 54
  %i.g = add nsw i32 %i.e, -54                    ; 3 uses
  %i.h = lshr i32 %i.g, 9
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i32 %i.g, 6
  %i.k = and i32 %i.j, 7                          ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  %i.m = mul nuw nsw i32 %i.k, 9
  %i.n = add nsw i32 %i.m, -9
  %i.o = zext nneg i32 %i.n to i64
  %i.p = zext nneg i32 %i.k to i64
  %i.q = and i32 %i.g, 63
  %i.r = xor i32 %i.q, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = sdiv i32 %i.e, 9
  %i.u = srem i32 %i.e, 9
  %i.v = sext i32 %i.t to i64
  %i.w = mul nsw i32 %i.u, 7
  %i.x = zext nneg i32 %i.w to i64
  %i.y = xor i32 %2, -1                           ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 28         ; 2 uses
  call void @rb_vm_barrier() #20
  %.val.us = load ptr, ptr %i.d, align 8, !tbaa !18 ; 6 uses
  %i.aa = getelementptr i8, ptr %.val.us, i64 112
  %i.ab = getelementptr i8, ptr %.val.us, i64 128
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !83 ; 4 uses
  br i1 %i.f, label %rb_vm_lock_enter.exit.split.us, label %rb_vm_lock_enter.exit.split

rb_vm_lock_enter.exit.split.us:                   ; preds = %rb_vm_lock_enter.exit
  switch i32 %i.ac, label %succ_index_lookup.exit.i.i.us [
    i32 0, label %get_insn_info.exit.thread.us
    i32 1, label %get_insn_info.exit.us
  ]

succ_index_lookup.exit.i.i.us:                    ; preds = %rb_vm_lock_enter.exit.split.us
  %i.ae = getelementptr i8, ptr %.val.us, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !85
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.v
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.ai = lshr i64 %i.ah, %i.x
  %i.aj = and i64 %i.ai, 127
  %i.ak = getelementptr [12 x i8], ptr %i.ad, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -12
  br label %get_insn_info.exit.us

get_insn_info.exit.us:                            ; preds = %succ_index_lookup.exit.i.i.us, %rb_vm_lock_enter.exit.split.us
  %.0.i.i.us = phi ptr [ %i.al, %succ_index_lookup.exit.i.i.us ], [ %i.ad, %rb_vm_lock_enter.exit.split.us ] ; 2 uses
  %.not10.us = icmp eq ptr %.0.i.i.us, null
  br i1 %.not10.us, label %get_insn_info.exit.thread.us, label %bb.c

bb.c:                                             ; preds = %get_insn_info.exit.us
  %i.am = getelementptr i8, ptr %.0.i.i.us, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !197
  %i.ao = and i32 %i.an, %i.y                     ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !197
  %i.ap = load i32, ptr %i.z, align 4, !tbaa !90
  %i.aq = and i32 %i.ap, %i.ao
  %.not11.us = icmp eq i32 %i.aq, 0
  br i1 %.not11.us, label %bb.d, label %get_insn_info.exit.thread.us

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %.val.us, i64 8
  %.val12.val.us = load ptr, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr [8 x i8], ptr %.val12.val.us, i64 %1 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.au = load ptr, ptr @encoded_insn_data, align 8, !tbaa !199
  %i.av = call i32 @rb_st_lookup(ptr noundef %i.au, i64 noundef %i.at, ptr noundef nonnull %i.a) #20
  %.not.i.i13.us = icmp eq i32 %i.av, 0
  br i1 %.not.i.i13.us, label %.split.us, label %rb_iseq_trace_flag_cleared.exit.us

rb_iseq_trace_flag_cleared.exit.us:               ; preds = %bb.d
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ax = inttoptr i64 %i.aw to ptr
  %.in.i.i.us = getelementptr i8, ptr %i.ax, i64 8
  %i.ay = load ptr, ptr %.in.i.i.us, align 8, !tbaa !202
  %i.az = ptrtoint ptr %i.ay to i64
  store i64 %i.az, ptr %i.as, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %get_insn_info.exit.thread.us

get_insn_info.exit.thread.us:                     ; preds = %rb_iseq_trace_flag_cleared.exit.us, %bb.c, %get_insn_info.exit.us, %rb_vm_lock_enter.exit.split.us
  %i.ba = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !171
  %.not.i.i14.us = icmp eq ptr %i.ba, null
  br i1 %.not.i.i14.us, label %.split18.us.sink.split, label %.split18.us

.split18.us.sink.split:                           ; preds = %get_insn_info.exit.thread.us, %get_insn_info.exit.thread
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #20
  br label %.split18.us

.split18.us:                                      ; preds = %.split18.us.sink.split, %get_insn_info.exit.thread, %get_insn_info.exit.thread.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret void

rb_vm_lock_enter.exit.split:                      ; preds = %rb_vm_lock_enter.exit
  switch i32 %i.ac, label %bb.e [
    i32 0, label %get_insn_info.exit.thread
    i32 1, label %get_insn_info.exit
  ]

bb.e:                                             ; preds = %rb_vm_lock_enter.exit.split
  %i.bb = getelementptr i8, ptr %.val.us, i64 136
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !85
  %i.bd = getelementptr i8, ptr %i.bc, i64 48
  %i.be = getelementptr [80 x i8], ptr %i.bd, i64 %i.i ; 3 uses
  br i1 %i.l, label %succ_index_lookup.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !164
  %i.bh = lshr i64 %i.bg, %i.o
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 511
  br label %succ_index_lookup.exit.i.i

succ_index_lookup.exit.i.i:                       ; preds = %bb.f, %bb.e
  %i.bk = phi i32 [ %i.bj, %bb.f ], [ 0, %bb.e ]
  %i.bl = getelementptr i8, ptr %i.be, i64 16
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.p
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = shl i64 %i.bn, %i.s
  %i.bp = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bo)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = load i32, ptr %i.be, align 8, !tbaa !162
  %i.bs = add i32 %i.br, %i.bk
  %i.bt = add i32 %i.bs, %i.bq
  %i.bu = add i32 %i.bt, -1
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr [12 x i8], ptr %i.ad, i64 %i.bv
  br label %get_insn_info.exit

get_insn_info.exit:                               ; preds = %rb_vm_lock_enter.exit.split, %succ_index_lookup.exit.i.i
  %.0.i.i = phi ptr [ %i.bw, %succ_index_lookup.exit.i.i ], [ %i.ad, %rb_vm_lock_enter.exit.split ] ; 2 uses
  %.not10 = icmp eq ptr %.0.i.i, null
  br i1 %.not10, label %get_insn_info.exit.thread, label %bb.g

bb.g:                                             ; preds = %get_insn_info.exit
  %i.bx = getelementptr i8, ptr %.0.i.i, i64 8    ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !197
  %i.bz = and i32 %i.by, %i.y                     ; 2 uses
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !197
  %i.ca = load i32, ptr %i.z, align 4, !tbaa !90
  %i.cb = and i32 %i.ca, %i.bz
  %.not11 = icmp eq i32 %i.cb, 0
  br i1 %.not11, label %bb.h, label %get_insn_info.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.cc = getelementptr i8, ptr %.val.us, i64 8
  %.val12.val = load ptr, ptr %i.cc, align 8, !tbaa !82
  %i.cd = getelementptr [8 x i8], ptr %.val12.val, i64 %1 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cf = load ptr, ptr @encoded_insn_data, align 8, !tbaa !199
  %i.cg = call i32 @rb_st_lookup(ptr noundef %i.cf, i64 noundef %i.ce, ptr noundef nonnull %i.a) #20
  %.not.i.i13 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i13, label %.split.us, label %rb_iseq_trace_flag_cleared.exit

.split.us:                                        ; preds = %bb.h, %bb.d
  %.us-phi = phi ptr [ %i.as, %bb.d ], [ %i.cd, %bb.h ]
  %i.ch = load i64, ptr %.us-phi, align 8, !tbaa !11
  %i.ci = inttoptr i64 %i.ch to ptr
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.201, ptr noundef %i.ci) #23
  unreachable

rb_iseq_trace_flag_cleared.exit:                  ; preds = %bb.h
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ck = inttoptr i64 %i.cj to ptr
  %.in.i.i = getelementptr i8, ptr %i.ck, i64 8
  %i.cl = load ptr, ptr %.in.i.i, align 8, !tbaa !202
  %i.cm = ptrtoint ptr %i.cl to i64
  store i64 %i.cm, ptr %i.cd, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %get_insn_info.exit.thread

get_insn_info.exit.thread:                        ; preds = %rb_vm_lock_enter.exit.split, %bb.g, %rb_iseq_trace_flag_cleared.exit, %get_insn_info.exit
  %i.cn = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !171
  %.not.i.i14 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i14, label %.split18.us.sink.split, label %.split18.us
}

declare void @rb_vm_barrier() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_insn_operand_intern(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.Dl_info, align 8            ; 4 uses
  %i.a = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %1
  %i.b = load i16, ptr %i.a, align 2, !tbaa !296
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.c ; 2 uses
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !90    ; 2 uses
  switch i8 %i.g, label %bb.dh [
    i8 79, label %bb.b
    i8 78, label %bb.c
    i8 76, label %bb.m
    i8 73, label %bb.r
    i8 86, label %bb.s
    i8 83, label %bb.aj
    i8 75, label %bb.an
    i8 65, label %bb.ao
    i8 74, label %bb.ao
    i8 84, label %bb.ao
    i8 67, label %bb.ap
    i8 72, label %bb.db
    i8 70, label %bb.dc
    i8 82, label %bb.dg
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %4 to i64
  %i.i = add i64 %3, %i.h
  %i.j = add i64 %i.i, %5
  %i.k = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.4, i64 noundef %i.j) #20
  br label %.thread222

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %1, 47
  %i.m = icmp eq i32 %2, 0                        ; 2 uses
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.n = trunc i64 %3 to i32                      ; 2 uses
  switch i32 %i.n, label %bb.h [
    i32 16, label %bb.e
    i32 15, label %bb.f
    i32 17, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.5, i64 noundef 4) #20
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.p = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.6, i64 noundef 3) #20
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.q = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.7, i64 noundef 13) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.r = tail call i64 @rb_iseq_defined_string(i32 noundef %i.n)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi i64 [ %i.r, %bb.h ], [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %i.q, %bb.g ] ; 2 uses
  %.not164 = icmp eq i64 %.0, 0
  br i1 %.not164, label %.thread, label %.thread222

bb.j:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %1, 51
  %or.cond3 = and i1 %i.s, %i.m
  br i1 %or.cond3, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.t = trunc i64 %3 to i32
  %i.u = tail call ptr @rb_type_str(i32 noundef %i.t) #20 ; 2 uses
  %.not163 = icmp eq ptr %i.u, null
  br i1 %.not163, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %i.u) #20
  br label %.thread222

.thread:                                          ; preds = %bb.k, %bb.i, %bb.j
  %i.w = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.8, i64 noundef %3) #20
  br label %.thread222

bb.m:                                             ; preds = %bb.a
  %i.x = add i32 %2, 1
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr i8, ptr %i.d, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !90
  %i.ab = icmp eq i8 %i.aa, 78
  %i.ac = icmp ne ptr %6, null
  %or.cond5 = and i1 %i.ac, %i.ab
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %6, align 8, !tbaa !11
  %i.ae = add i64 %3, -3
  %i.af = tail call fastcc i64 @local_var_name(ptr noundef %0, i64 noundef %i.ad, i64 noundef %i.ae)
  br label %.thread222

bb.o:                                             ; preds = %bb.m
  %i.ag = tail call i32 @rb_insn_unified_local_var_level(i64 noundef %1) #20 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ai = zext nneg i32 %i.ag to i64
  %i.aj = add i64 %3, -3
  %i.ak = tail call fastcc i64 @local_var_name(ptr noundef %0, i64 noundef %i.ai, i64 noundef %i.aj)
  br label %.thread222

bb.q:                                             ; preds = %bb.o
  %i.al = shl i64 %3, 1
  %i.am = or disjoint i64 %i.al, 1
  %i.an = tail call i64 @rb_inspect(i64 noundef %i.am) #20
  br label %.thread222

bb.r:                                             ; preds = %bb.a
  %i.ao = tail call i64 @rb_id2sym(i64 noundef %3) #20
  %i.ap = tail call i64 @rb_inspect(i64 noundef %i.ao) #20
  br label %.thread222

bb.s:                                             ; preds = %bb.a
  %i.aq = icmp eq i64 %3, 0
  %i.ar = and i64 %3, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %obj_resurrect.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = inttoptr i64 %3 to ptr                  ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !284
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %bb.u, label %obj_resurrect.exit

bb.u:                                             ; preds = %bb.t
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !80
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  switch i32 %i.az, label %obj_resurrect.exit [
    i32 5, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.ba = tail call i64 @rb_str_resurrect(i64 noundef %3) #20
  br label %obj_resurrect.exit

bb.w:                                             ; preds = %bb.u
  %i.bb = tail call i64 @rb_ary_resurrect(i64 noundef %3) #20
  br label %obj_resurrect.exit

bb.x:                                             ; preds = %bb.u
  %i.bc = tail call i64 @rb_hash_resurrect(i64 noundef %3) #20
  br label %obj_resurrect.exit

obj_resurrect.exit:                               ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i = phi i64 [ %3, %bb.s ], [ %3, %bb.t ], [ %3, %bb.u ], [ %i.ba, %bb.v ], [ %i.bb, %bb.w ], [ %i.bc, %bb.x ] ; 9 uses
  %i.bd = icmp eq i64 %1, 47
  %i.be = icmp eq i32 %2, 1
  %or.cond7 = and i1 %i.bd, %i.be
  %i.bf = trunc i64 %.0.i to i1                   ; 2 uses
  %or.cond232 = select i1 %or.cond7, i1 %i.bf, i1 false
  br i1 %or.cond232, label %rb_num2int_inline.exit, label %bb.ab

rb_num2int_inline.exit:                           ; preds = %obj_resurrect.exit
  %i.bg = tail call i64 @rb_fix2int(i64 noundef %.0.i) #20
  %i.bh = trunc i64 %i.bg to i32                  ; 3 uses
  %.not161 = icmp eq i32 %i.bh, 0
  br i1 %.not161, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %rb_num2int_inline.exit
  %i.bi = and i32 %i.bh, 1
  %.not162 = icmp eq i32 %i.bi, 0
  %i.bj = ashr i32 %i.bh, 1                       ; 2 uses
  br i1 %.not162, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.9, i32 noundef %i.bj) #20
  br label %.thread222

bb.aa:                                            ; preds = %bb.y
  %i.bl = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.10, i32 noundef %i.bj) #20
  br label %.thread222

bb.ab:                                            ; preds = %rb_num2int_inline.exit, %obj_resurrect.exit
  %i.bm = tail call i64 @rb_dump_literal(i64 noundef %.0.i) #20 ; 2 uses
  %i.bn = icmp eq i64 %.0.i, 0
  %i.bo = and i64 %.0.i, 7
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = or i1 %i.bn, %i.bp
  br i1 %i.bq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = inttoptr i64 %.0.i to ptr
end_hunk_2
begin_hunk_3_@rb_insn_operand_intern:bb.a
  %i.hq = getelementptr i8, ptr %i.dj, i64 24
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !302
  %i.hs = trunc i64 %i.hr to i32
  br label %vm_ci_flag.exit207

vm_ci_flag.exit207:                               ; preds = %bb.cg, %bb.ch
  %.0.i206 = phi i32 [ %i.hp, %bb.cg ], [ %i.hs, %bb.ch ]
  %i.ht = and i32 %.0.i206, 32
  %.not153 = icmp eq i32 %i.ht, 0
  br i1 %.not153, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %vm_ci_flag.exit207
  %i.hu = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.29, i64 noundef 5) #20
  %i.hv = tail call i64 @rb_ary_push(i64 noundef %i.ey, i64 noundef %i.hu) #20 ; 0 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %vm_ci_flag.exit207
  br i1 %.not.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.hw = trunc i64 %i.dl to i32
  %i.hx = lshr i32 %i.hw, 16
  br label %vm_ci_flag.exit210

bb.cl:                                            ; preds = %bb.cj
  %i.hy = getelementptr i8, ptr %i.dj, i64 24
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !302
  %i.ia = trunc i64 %i.hz to i32
  br label %vm_ci_flag.exit210

vm_ci_flag.exit210:                               ; preds = %bb.ck, %bb.cl
  %.0.i209 = phi i32 [ %i.hx, %bb.ck ], [ %i.ia, %bb.cl ]
  %i.ib = and i32 %.0.i209, 64
  %.not154 = icmp eq i32 %i.ib, 0
  br i1 %.not154, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %vm_ci_flag.exit210
  %i.ic = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.30, i64 noundef 8) #20
  %i.id = tail call i64 @rb_ary_push(i64 noundef %i.ey, i64 noundef %i.ic) #20 ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %vm_ci_flag.exit210
  br i1 %.not.i.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ie = trunc i64 %i.dl to i32
  %i.if = lshr i32 %i.ie, 16
  br label %vm_ci_flag.exit213

bb.cp:                                            ; preds = %bb.cn
  %i.ig = getelementptr i8, ptr %i.dj, i64 24
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !302
  %i.ii = trunc i64 %i.ih to i32
  br label %vm_ci_flag.exit213

vm_ci_flag.exit213:                               ; preds = %bb.co, %bb.cp
  %.0.i212 = phi i32 [ %i.if, %bb.co ], [ %i.ii, %bb.cp ]
  %i.ij = and i32 %.0.i212, 2048
  %.not155 = icmp eq i32 %i.ij, 0
  br i1 %.not155, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %vm_ci_flag.exit213
  %i.ik = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.31, i64 noundef 12) #20
  %i.il = tail call i64 @rb_ary_push(i64 noundef %i.ey, i64 noundef %i.ik) #20 ; 0 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %vm_ci_flag.exit213
  br i1 %.not.i.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.im = trunc i64 %i.dl to i32
  %i.in = lshr i32 %i.im, 16
  br label %vm_ci_flag.exit216

bb.ct:                                            ; preds = %bb.cr
  %i.io = getelementptr i8, ptr %i.dj, i64 24
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !302
  %i.iq = trunc i64 %i.ip to i32
  br label %vm_ci_flag.exit216

vm_ci_flag.exit216:                               ; preds = %bb.cs, %bb.ct
  %.0.i215 = phi i32 [ %i.in, %bb.cs ], [ %i.iq, %bb.ct ]
  %i.ir = and i32 %.0.i215, 8192
  %.not156 = icmp eq i32 %i.ir, 0
  br i1 %.not156, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %vm_ci_flag.exit216
  %i.is = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.32, i64 noundef 10) #20
  %i.it = tail call i64 @rb_ary_push(i64 noundef %i.ey, i64 noundef %i.is) #20 ; 0 uses
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %vm_ci_flag.exit216
  br i1 %.not.i.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.iu = trunc i64 %i.dl to i32
  %i.iv = lshr i32 %i.iu, 16
  br label %vm_ci_flag.exit219

bb.cx:                                            ; preds = %bb.cv
  %i.iw = getelementptr i8, ptr %i.dj, i64 24
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !302
  %i.iy = trunc i64 %i.ix to i32
  br label %vm_ci_flag.exit219

vm_ci_flag.exit219:                               ; preds = %bb.cw, %bb.cx
  %.0.i218 = phi i32 [ %i.iv, %bb.cw ], [ %i.iy, %bb.cx ]
  %i.iz = and i32 %.0.i218, 1024
  %.not157 = icmp eq i32 %i.iz, 0
  br i1 %.not157, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %vm_ci_flag.exit219
  %i.ja = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.33, i64 noundef 8) #20
  %i.jb = tail call i64 @rb_ary_push(i64 noundef %i.ey, i64 noundef %i.ja) #20 ; 0 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %vm_ci_flag.exit219
  %i.jc = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.34, i64 noundef 1) #20
  %i.jd = tail call i64 @rb_ary_join(i64 noundef %i.ey, i64 noundef %i.jc) #20
  %i.je = tail call i64 @rb_ary_push(i64 noundef %i.dk, i64 noundef %i.jd) #20 ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %vm_ci_flag.exit177.thread, %bb.cz, %vm_ci_flag.exit177
  %i.jf = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.36, i64 noundef 2) #20
  %i.jg = tail call i64 @rb_ary_join(i64 noundef %i.dk, i64 noundef %i.jf) #20
  %i.jh = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.35, i64 noundef %i.jg) #20
  br label %.thread222

bb.db:                                            ; preds = %bb.a
  %i.ji = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.37, i64 noundef 8) #20
  br label %.thread222

bb.dc:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.jj = inttoptr i64 %3 to ptr
  %i.jk = call i32 @dladdr(ptr noundef %i.jj, ptr noundef nonnull %8) #20
  %i.jl = icmp ne i32 %i.jk, 0
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8            ; 2 uses
  %i.jo = icmp ne ptr %i.jn, null
  %or.cond10 = select i1 %i.jl, i1 %i.jo, i1 false
  br i1 %or.cond10, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.jp = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.jn) #20
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.jq = call i64 @rb_str_new_static(ptr noundef nonnull @.str.38, i64 noundef 9) #20
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.5 = phi i64 [ %i.jp, %bb.dd ], [ %i.jq, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.thread222

bb.dg:                                            ; preds = %bb.a
  %i.jr = inttoptr i64 %3 to ptr                  ; 2 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !304
  %i.ju = getelementptr i8, ptr %i.jr, i64 8
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !306
  %i.jw = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.39, ptr noundef %i.jt, i32 noundef %i.jv) #20
  br label %.thread222

bb.dh:                                            ; preds = %bb.a
  %i.jx = sext i8 %i.g to i32
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.40, i32 noundef %i.jx) #23
  unreachable

.thread222:                                       ; preds = %bb.aa, %bb.z, %bb.l, %bb.i, %bb.ak, %bb.al, %bb.n, %bb.q, %bb.p, %bb.df, %bb.am, %rb_class_of.exit, %bb.ai, %bb.dg, %bb.db, %bb.da, %bb.ao, %._crit_edge, %bb.r, %.thread, %bb.b
  %.6 = phi i64 [ %i.k, %bb.b ], [ %i.w, %.thread ], [ %.0, %bb.i ], [ %i.v, %bb.l ], [ %i.jw, %bb.dg ], [ %i.ap, %bb.r ], [ %i.bm, %bb.ai ], [ %i.bm, %rb_class_of.exit ], [ %i.cd, %bb.ak ], [ %i.an, %bb.q ], [ %i.cf, %bb.am ], [ %i.co, %._crit_edge ], [ %i.dh, %bb.ao ], [ %i.jh, %bb.da ], [ %i.ji, %bb.db ], [ %.5, %bb.df ], [ %i.af, %bb.n ], [ %i.ak, %bb.p ], [ %i.cd, %bb.al ], [ %i.bk, %bb.z ], [ %i.bl, %bb.aa ]
  ret i64 %.6
}

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_iseq_defined_string(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1                           ; 2 uses
  %i.b = icmp ugt i32 %i.a, 13
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.77, i32 noundef %0) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr [18 x i8], ptr @rb_iseq_defined_string.expr_names, i64 %i.c
  %i.e = tail call i64 @rb_fstring_cstr(ptr noundef %i.d) #20
  ret i64 %i.e
}

declare ptr @rb_type_str(i32 noundef) local_unnamed_addr #2

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @local_var_name(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not21 = icmp eq i64 %1, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 7                       ; 3 uses
  %i.a = icmp ult i64 %1, 8
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.b = getelementptr i8, ptr %.020, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr i8, ptr %i.g, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.p = getelementptr i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !125
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr i8, ptr %i.s, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !125
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.x = getelementptr i8, ptr %i.w, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !125
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = getelementptr i8, ptr %i.aa, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !125
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.af = getelementptr i8, ptr %i.ae, i64 168
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !125 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !307

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.020.epil = phi ptr [ %i.ak, %.lr.ph.epil ], [ %.020.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = getelementptr i8, ptr %.020.epil, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !18
  %i.aj = getelementptr i8, ptr %i.ai, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !125 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !308

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ], [ %i.ak, %.lr.ph.epil ]
  %i.al = getelementptr i8, ptr %.0.lcssa, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 240
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !155
  %i.ap = trunc i64 %2 to i32
  %i.aq = xor i32 %i.ap, -1
  %i.ar = add i32 %i.ao, %i.aq                    ; 2 uses
  %i.as = getelementptr i8, ptr %i.am, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !95
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11 ; 2 uses
  %i.ax = tail call i64 @rb_id2str(i64 noundef %i.aw) #20 ; 3 uses
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.ay = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.159, i64 noundef 1) #20
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.az = tail call i32 @rb_is_local_id(i64 noundef %i.aw) #26
  %.not18 = icmp eq i32 %i.az, 0
  br i1 %.not18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ba = tail call i64 @rb_str_inspect(i64 noundef %i.ax) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bb = tail call i64 @rb_str_dup(i64 noundef %i.ax) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.016 = phi i64 [ %i.bb, %bb.e ], [ %i.ba, %bb.d ], [ %i.ay, %bb.b ] ; 2 uses
  %i.bc = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %.016, ptr noundef nonnull @.str.160, i32 noundef %i.ar) #20 ; 0 uses
  ret i64 %.016
}

declare i32 @rb_insn_unified_local_var_level(i64 noundef) local_unnamed_addr #2

declare i64 @rb_inspect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_dump_literal(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_ary_new() local_unnamed_addr #2

declare i64 @rb_id2str(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_new_from_values(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_ary_join(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dladdr(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 256) i32 @rb_iseq_disasm_insn(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr [8 x i8], ptr %1, i64 %2   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  %i.c = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !90
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.b
  %i.g = load i16, ptr %i.f, align 2, !tbaa !296
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.h ; 2 uses
  %i.j = tail call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #20 ; 6 uses
  %i.k = getelementptr [2 x i8], ptr @rb_vm_insn_name_offset, i64 %i.b
  %i.l = load i16, ptr %i.k, align 2, !tbaa !296
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr i8, ptr @rb_vm_insn_name_base, i64 %i.m
  %i.o = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.j, ptr noundef nonnull @.str.41, i64 noundef %2, i32 noundef 38, ptr noundef %i.n) #20 ; 0 uses
  %i.p = load i8, ptr %i.i, align 1, !tbaa !90
  %.not106 = icmp eq i8 %i.p, 0
  br i1 %.not106, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.q = phi i64 [ %i.y, %bb.b ], [ 0, %bb.a ]
  %.0107 = phi i32 [ %i.x, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr i8, ptr %i.r, i64 16
  %i.v = tail call i64 @rb_insn_operand_intern(ptr noundef %3, i64 noundef %i.b, i32 noundef %.0107, i64 noundef %i.t, i32 noundef %i.e, i64 noundef %2, ptr noundef %i.u, i64 noundef %4)
  %i.w = tail call i64 @rb_str_concat(i64 noundef %i.j, i64 noundef %i.v) #20 ; 0 uses
  %i.x = add i32 %.0107, 1                        ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !90
  %.not86 = icmp eq i8 %i.aa, 0
  br i1 %.not86, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ab = tail call i64 @rb_str_cat(i64 noundef %i.j, ptr noundef nonnull @.str.36, i64 noundef 2) #20 ; 0 uses
  br label %.lr.ph, !llvm.loop !310

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.ac = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %.val.i = load ptr, ptr %i.ac, align 8, !tbaa !18 ; 5 uses
  %i.ad = getelementptr i8, ptr %.val.i, i64 112
  %i.ae = getelementptr i8, ptr %.val.i, i64 128
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !154 ; 5 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !83 ; 5 uses
  switch i32 %i.af, label %bb.c [
    i32 0, label %rb_iseq_line_no.exit
    i32 1, label %get_insn_info.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.ah = getelementptr i8, ptr %.val.i, i64 136
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85 ; 2 uses
  %i.aj = trunc i64 %2 to i32                     ; 4 uses
  %i.ak = icmp slt i32 %i.aj, 54
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = sdiv i32 %i.aj, 9
  %i.am = srem i32 %i.aj, 9
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr [8 x i8], ptr %i.ai, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11
  %i.aq = mul nsw i32 %i.am, 7
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = lshr i64 %i.ap, %i.ar
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 127
  br label %succ_index_lookup.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.av = add nsw i32 %i.aj, -54                  ; 3 uses
  %i.aw = lshr i32 %i.av, 9
  %i.ax = getelementptr i8, ptr %i.ai, i64 48
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr [80 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  %i.ba = lshr i32 %i.av, 6
  %i.bb = and i32 %i.ba, 7                        ; 3 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr i8, ptr %i.az, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !164
  %i.bf = mul nuw nsw i32 %i.bb, 9
  %i.bg = add nsw i32 %i.bf, -9
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = lshr i64 %i.be, %i.bh
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 511
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bl = phi i32 [ %i.bk, %bb.f ], [ 0, %bb.e ]
  %i.bm = getelementptr i8, ptr %i.az, i64 16
  %i.bn = zext nneg i32 %i.bb to i64
  %i.bo = getelementptr [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.bq = and i32 %i.av, 63
  %i.br = xor i32 %i.bq, 63
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bp, %i.bs
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bt)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = load i32, ptr %i.az, align 8, !tbaa !162
  %i.bx = add i32 %i.bw, %i.bl
  %i.by = add i32 %i.bx, %i.bv
  br label %succ_index_lookup.exit.i.i.i

succ_index_lookup.exit.i.i.i:                     ; preds = %bb.g, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.au, %bb.d ], [ %i.by, %bb.g ]
  %i.bz = add i32 %.0.i.i.i.i, -1
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [12 x i8], ptr %i.ag, i64 %i.ca
  br label %get_insn_info.exit.i

get_insn_info.exit.i:                             ; preds = %succ_index_lookup.exit.i.i.i, %._crit_edge
  %.0.i.i.i = phi ptr [ %i.cb, %succ_index_lookup.exit.i.i.i ], [ %i.ag, %._crit_edge ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i, label %rb_iseq_line_no.exit, label %bb.h

bb.h:                                             ; preds = %get_insn_info.exit.i
  %i.cc = load i32, ptr %.0.i.i.i, align 4, !tbaa !294
  br label %rb_iseq_line_no.exit

rb_iseq_line_no.exit:                             ; preds = %._crit_edge, %get_insn_info.exit.i, %bb.h
  %.0.i = phi i32 [ %i.cc, %bb.h ], [ 0, %get_insn_info.exit.i ], [ %i.af, %._crit_edge ] ; 3 uses
  %i.cd = icmp eq i64 %2, 0
  br i1 %i.cd, label %rb_iseq_line_no.exit94, label %bb.i

bb.i:                                             ; preds = %rb_iseq_line_no.exit
  switch i32 %i.af, label %bb.j [
    i32 0, label %rb_iseq_line_no.exit94
    i32 1, label %get_insn_info.exit.i88
  ]

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr i8, ptr %.val.i, i64 136
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !85 ; 2 uses
  %i.cg = trunc i64 %2 to i32                     ; 2 uses
  %i.ch = add i32 %i.cg, -1                       ; 3 uses
  %i.ci = icmp slt i32 %i.ch, 54
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cj = sdiv i32 %i.ch, 9
  %i.ck = srem i32 %i.ch, 9
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr [8 x i8], ptr %i.cf, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !11
  %i.co = mul nsw i32 %i.ck, 7
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = lshr i64 %i.cn, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 127
  br label %succ_index_lookup.exit.i.i.i92

bb.l:                                             ; preds = %bb.j
  %i.ct = add i32 %i.cg, -55                      ; 3 uses
  %i.cu = lshr i32 %i.ct, 9
  %i.cv = getelementptr i8, ptr %i.cf, i64 48
  %i.cw = zext nneg i32 %i.cu to i64
  %i.cx = getelementptr [80 x i8], ptr %i.cv, i64 %i.cw ; 3 uses
  %i.cy = lshr i32 %i.ct, 6
  %i.cz = and i32 %i.cy, 7                        ; 3 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr i8, ptr %i.cx, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !164
  %i.dd = mul nuw nsw i32 %i.cz, 9
  %i.de = add nsw i32 %i.dd, -9
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = lshr i64 %i.dc, %i.df
  %i.dh = trunc i64 %i.dg to i32
  %i.di = and i32 %i.dh, 511
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dj = phi i32 [ %i.di, %bb.m ], [ 0, %bb.l ]
  %i.dk = getelementptr i8, ptr %i.cx, i64 16
  %i.dl = zext nneg i32 %i.cz to i64
  %i.dm = getelementptr [8 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.do = and i32 %i.ct, 63
  %i.dp = xor i32 %i.do, 63
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = shl i64 %i.dn, %i.dq
  %i.ds = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dr)
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = load i32, ptr %i.cx, align 8, !tbaa !162
  %i.dv = add i32 %i.du, %i.dj
  %i.dw = add i32 %i.dv, %i.dt
  br label %succ_index_lookup.exit.i.i.i92

succ_index_lookup.exit.i.i.i92:                   ; preds = %bb.n, %bb.k
  %.0.i.i.i.i93 = phi i32 [ %i.cs, %bb.k ], [ %i.dw, %bb.n ]
end_hunk_3
begin_hunk_4_@rb_iseq_disasm_recursive:bb.a

bb.aw:                                            ; preds = %bb.at, %bb.au, %bb.av
  %i.gy = phi ptr [ %i.gx, %bb.av ], [ @.str.43, %bb.au ], [ @.str.43, %bb.at ]
  %i.gz = and i16 %.pre263, 8
  %.not203 = icmp eq i16 %i.gz, 0
  br i1 %.not203, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ha = load i32, ptr %i.fi, align 4, !tbaa !326 ; 2 uses
  %.not204 = icmp sgt i32 %i.ha, %i.fn
  br i1 %.not204, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hb = load i32, ptr %i.eo, align 8, !tbaa !323
  %i.hc = add i32 %i.hb, %i.ha
  %i.hd = icmp slt i32 %i.fn, %i.hc
  %i.he = select i1 %i.hd, ptr @.str.177, ptr @.str.43
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.hf = phi ptr [ @.str.43, %bb.ax ], [ @.str.43, %bb.aw ], [ %i.he, %bb.ay ]
  %i.hg = and i16 %.pre263, 32
  %.not205 = icmp eq i16 %i.hg, 0
  br i1 %.not205, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hh = load i32, ptr %i.fj, align 4, !tbaa !325
  %i.hi = icmp eq i32 %i.hh, %i.fn
  br i1 %i.hi, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hj = and i16 %.pre263, 2048
  %.not206 = icmp eq i16 %i.hj, 0
  %i.hk = select i1 %.not206, ptr @.str.179, ptr @.str.178
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.ba, %bb.bb
  %i.hl = phi ptr [ %i.hk, %bb.bb ], [ @.str.43, %bb.ba ], [ @.str.43, %bb.az ]
  %i.hm = and i16 %.pre263, 64
  %.not207 = icmp eq i16 %i.hm, 0
  br i1 %.not207, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hn = load i32, ptr %i.fk, align 4, !tbaa !324
  %i.ho = icmp eq i32 %i.hn, %i.fn
  %i.hp = select i1 %i.ho, ptr @.str.180, ptr @.str.43
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hq = phi ptr [ @.str.43, %bb.bc ], [ %i.hp, %bb.bd ]
  %i.hr = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.b, i64 noundef 256, ptr noundef nonnull @.str.172, ptr noundef nonnull %i.gs, ptr noundef nonnull %i.c, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.hf, ptr noundef nonnull %i.hl, ptr noundef nonnull %i.hq) #20 ; 0 uses
  %i.hs = call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef %.2173232, i64 noundef %i.m) #20 ; 0 uses
  %i.ht = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.g, ptr noundef nonnull @.str.181, i32 noundef %.1242) #20 ; 0 uses
  %i.hu = load i64, ptr %i.au, align 8, !tbaa !311
  %i.hv = add i64 %i.hu, 11
  %i.hw = call i64 @rb_str_append(i64 noundef %i.g, i64 noundef %.016.i) #20 ; 0 uses
  %i.hx = load i8, ptr %i.b, align 16, !tbaa !90
  %.not208 = icmp eq i8 %i.hx, 0
  br i1 %.not208, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hy = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.g, ptr noundef nonnull @.str.182, ptr noundef nonnull %i.b) #20 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hz = load i64, ptr %i.au, align 8, !tbaa !311
  %i.ia = sub i64 %i.hv, %i.hz                    ; 2 uses
  %i.ib = icmp sgt i64 %i.ia, 0
  br i1 %i.ib, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ic = trunc i64 %i.ia to i32
  %i.id = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.g, ptr noundef nonnull @.str.183, i32 noundef %i.ic, ptr noundef nonnull @.str.43) #20 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %.not195 = icmp eq i32 %i.fm, 0
  br i1 %.not195, label %._crit_edge245, label %bb.am, !llvm.loop !327

._crit_edge245:                                   ; preds = %bb.bi, %bb.al
  %i.ie = load i64, ptr %i.at, align 8, !tbaa !80
  %i.if = and i64 %i.ie, 8192
  %.not.i.i = icmp eq i64 %i.if, 0
  %i.ig = getelementptr i8, ptr %i.at, i64 24     ; 2 uses
  br i1 %.not.i.i, label %RSTRING_END.exit.i, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge245
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !90
  br label %RSTRING_END.exit.i

RSTRING_END.exit.i:                               ; preds = %bb.bj, %._crit_edge245
  %i.ii = phi ptr [ %i.ih, %bb.bj ], [ %i.ig, %._crit_edge245 ] ; 4 uses
  %i.ij = load i64, ptr %i.au, align 8, !tbaa !311
  %i.ik = getelementptr i8, ptr %i.ii, i64 %i.ij  ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 -1     ; 2 uses
  %i.im = icmp ugt ptr %i.ik, %i.ii
  br i1 %i.im, label %.lr.ph279, label %right_strip.exit

bb.bk:                                            ; preds = %.lr.ph279
  %i.in = getelementptr i8, ptr %i.ip, i64 -1     ; 2 uses
  %i.io = icmp ugt ptr %i.ip, %i.ii
  br i1 %i.io, label %.lr.ph279, label %right_strip.exit, !llvm.loop !313

.lr.ph279:                                        ; preds = %RSTRING_END.exit.i, %bb.bk
  %i.ip = phi ptr [ %i.in, %bb.bk ], [ %i.il, %RSTRING_END.exit.i ] ; 4 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !90
  %i.ir = icmp eq i8 %i.iq, 32
  br i1 %i.ir, label %bb.bk, label %.right_strip.exit_crit_edge280, !llvm.loop !313

.right_strip.exit_crit_edge280:                   ; preds = %.lr.ph279
  br label %right_strip.exit, !llvm.loop !313

right_strip.exit:                                 ; preds = %bb.bk, %.right_strip.exit_crit_edge280, %RSTRING_END.exit.i
  %.lcssa = phi ptr [ %i.il, %RSTRING_END.exit.i ], [ %i.ip, %.right_strip.exit_crit_edge280 ], [ %i.in, %bb.bk ]
  %i.is = ptrtoint ptr %.lcssa to i64
  %i.it = ptrtoint ptr %i.ii to i64
  %reass.sub = sub i64 %i.is, %i.it
  %i.iu = add i64 %reass.sub, 1
  call void @rb_str_set_len(i64 noundef %i.g, i64 noundef %i.iu) #20
  %i.iv = call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.57, i64 noundef 1) #20 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %right_strip.exit, %RSTRING_PTR.exit220.thread
  %i.iw = call ptr @rb_iseq_original_iseq(ptr noundef %0) #20
  %i.ix = zext i32 %i.j to i64
  %.not250 = icmp eq i32 %i.j, 0
  br i1 %.not250, label %.preheader, label %.lr.ph248

.preheader:                                       ; preds = %.lr.ph248, %bb.bl
  %i.iy = inttoptr i64 %i.h to ptr                ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 16
  %.not196 = icmp eq ptr %.3233, null
  br label %bb.bm

.lr.ph248:                                        ; preds = %bb.bl, %.lr.ph248
  %.0168246 = phi i64 [ %i.jd, %.lr.ph248 ], [ 0, %bb.bl ] ; 2 uses
  %i.ja = call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef %.2173232, i64 noundef %i.m) #20 ; 0 uses
  %i.jb = call i32 @rb_iseq_disasm_insn(i64 noundef %i.g, ptr noundef %i.iw, i64 noundef %.0168246, ptr noundef %0, i64 noundef %i.h)
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = add nuw nsw i64 %.0168246, %i.jc        ; 2 uses
  %i.je = icmp samesign ult i64 %i.jd, %i.ix
  br i1 %i.je, label %.lr.ph248, label %.preheader, !llvm.loop !328

bb.bm:                                            ; preds = %.preheader, %RSTRING_PTR.exit226
  %.0167 = phi i64 [ %i.jr, %RSTRING_PTR.exit226 ], [ 0, %.preheader ] ; 3 uses
  %i.jf = load i64, ptr %i.iy, align 8, !tbaa !80 ; 2 uses
  %i.jg = and i64 %i.jf, 8192
  %.not.i223 = icmp eq i64 %i.jg, 0
  br i1 %.not.i223, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jh = lshr i64 %i.jf, 15
  %i.ji = and i64 %i.jh, 127
  br label %rb_array_len.exit

bb.bo:                                            ; preds = %bb.bm
  %i.jj = load i64, ptr %i.iz, align 8, !tbaa !90
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.bn, %bb.bo
  %.0.i224 = phi i64 [ %i.ji, %bb.bn ], [ %i.jj, %bb.bo ]
  %i.jk = icmp slt i64 %.0167, %.0.i224
  br i1 %i.jk, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %rb_array_len.exit
  %i.jl = call i64 @rb_ary_entry(i64 noundef %i.h, i64 noundef %.0167) #24 ; 2 uses
  br i1 %.not196, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jm = call i32 @rb_st_lookup(ptr noundef nonnull %.3233, i64 noundef %i.jl, ptr noundef null) #20
  %.not197 = icmp eq i32 %i.jm, 0
  br i1 %.not197, label %bb.br, label %RSTRING_PTR.exit226

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.jn = call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.57, i64 noundef 1) #20 ; 0 uses
  %i.jo = inttoptr i64 %i.jl to ptr
  %i.jp = call fastcc i64 @rb_iseq_disasm_recursive(ptr noundef %i.jo, i64 noundef %1)
  %i.jq = call i64 @rb_str_concat(i64 noundef %i.g, i64 noundef %i.jp) #20 ; 0 uses
  br label %RSTRING_PTR.exit226

RSTRING_PTR.exit226:                              ; preds = %bb.br, %bb.bq
  %i.jr = add nuw nsw i64 %.0167, 1
  br label %bb.bm, !llvm.loop !329

bb.bs:                                            ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store ptr %i.a, ptr %i.d, align 8, !tbaa !217
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #20, !srcloc !330
  %i.js = load ptr, ptr %i.d, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.jt = load volatile i64, ptr %i.js, align 8, !tbaa !11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %i.g
}

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i16 @rb_estimate_iv_count(i64 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_id_table_create(i64 noundef 0) #20 ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 252
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.f = tail call i64 @rb_id_table_size(ptr noundef %i.a) #20
  %i.g = trunc i64 %i.f to i16
  %i.h = tail call i64 @rb_class_superclass(i64 noundef %0) #24
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 144
  %i.k = load i16, ptr %i.j, align 8, !tbaa !331
  %i.l = add i16 %i.k, %i.g
  tail call void @rb_id_table_free(ptr noundef %i.a) #20
  ret i16 %i.l

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.m = phi ptr [ %i.t, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr [16 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !337  ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = tail call i32 @rb_id_table_insert(ptr noundef %i.a, i64 noundef %i.r, i64 noundef 20) #20 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.t = phi ptr [ %.pre, %bb.b ], [ %i.m, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 252
  %i.v = load i32, ptr %i.u, align 4, !tbaa !43
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !339
}

declare ptr @rb_id_table_create(i64 noundef) local_unnamed_addr #2

declare i32 @rb_id_table_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_id_table_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_class_superclass(i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_iseq_parameters(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 17 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 8 uses
  %i.d = getelementptr i8, ptr %i.b, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92   ; 6 uses
  %i.f = getelementptr i8, ptr %i.b, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !340
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i64 @rb_ary_new_capa(i64 noundef %i.h) #20 ; 15 uses
  %.pr.i = load i64, ptr @rb_iseq_parameters.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.j = tail call i64 @rb_intern2(ptr noundef nonnull @.str.59, i64 noundef 3) #20 ; 3 uses
  store i64 %i.j, ptr @rb_iseq_parameters.rbimpl_id, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !272

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %.pr.i178 = load i64, ptr @rb_iseq_parameters.rbimpl_id.60, align 8, !tbaa !11 ; 2 uses
  %.not4.i179 = icmp eq i64 %.pr.i178, 0
  br i1 %.not4.i179, label %.lr.ph.i181, label %rbimpl_intern_const.exit183

.lr.ph.i181:                                      ; preds = %rbimpl_intern_const.exit, %.lr.ph.i181
  %i.k = tail call i64 @rb_intern2(ptr noundef nonnull @.str.61, i64 noundef 3) #20 ; 3 uses
  store i64 %i.k, ptr @rb_iseq_parameters.rbimpl_id.60, align 8, !tbaa !11
  %.not.i182 = icmp eq i64 %i.k, 0
  br i1 %.not.i182, label %.lr.ph.i181, label %rbimpl_intern_const.exit183, !llvm.loop !272

rbimpl_intern_const.exit183:                      ; preds = %.lr.ph.i181, %rbimpl_intern_const.exit
  %.lcssa.i180 = phi i64 [ %.pr.i178, %rbimpl_intern_const.exit ], [ %i.k, %.lr.ph.i181 ] ; 3 uses
  %i.l = load i16, ptr %i.c, align 8
  %i.m = and i16 %i.l, 8192
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rbimpl_intern_const.exit183
  %.pr.i184 = load i64, ptr @rb_iseq_parameters.rbimpl_id.62, align 8, !tbaa !11 ; 2 uses
  %.not4.i185 = icmp eq i64 %.pr.i184, 0
  br i1 %.not4.i185, label %.lr.ph.i187, label %rbimpl_intern_const.exit189

.lr.ph.i187:                                      ; preds = %bb.b, %.lr.ph.i187
  %i.n = tail call i64 @rb_intern2(ptr noundef nonnull @.str.63, i64 noundef 4) #20 ; 3 uses
  store i64 %i.n, ptr @rb_iseq_parameters.rbimpl_id.62, align 8, !tbaa !11
  %.not.i188 = icmp eq i64 %i.n, 0
  br i1 %.not.i188, label %.lr.ph.i187, label %rbimpl_intern_const.exit189, !llvm.loop !272

rbimpl_intern_const.exit189:                      ; preds = %.lr.ph.i187, %bb.b
  %.lcssa.i186 = phi i64 [ %.pr.i184, %bb.b ], [ %i.n, %.lr.ph.i187 ]
  %.pr.i190 = load i64, ptr @rb_iseq_parameters.rbimpl_id.64, align 8, !tbaa !11 ; 2 uses
  %.not4.i191 = icmp eq i64 %.pr.i190, 0
  br i1 %.not4.i191, label %.lr.ph.i193, label %rbimpl_intern_const.exit195

.lr.ph.i193:                                      ; preds = %rbimpl_intern_const.exit189, %.lr.ph.i193
  %i.o = tail call i64 @rb_intern2(ptr noundef nonnull @.str.65, i64 noundef 7) #20 ; 3 uses
  store i64 %i.o, ptr @rb_iseq_parameters.rbimpl_id.64, align 8, !tbaa !11
  %.not.i194 = icmp eq i64 %i.o, 0
  br i1 %.not.i194, label %.lr.ph.i193, label %rbimpl_intern_const.exit195, !llvm.loop !272

rbimpl_intern_const.exit195:                      ; preds = %.lr.ph.i193, %rbimpl_intern_const.exit189
  %.lcssa.i192 = phi i64 [ %.pr.i190, %rbimpl_intern_const.exit189 ], [ %i.o, %.lr.ph.i193 ]
  %.pr.i196 = load i64, ptr @rb_iseq_parameters.rbimpl_id.66, align 8, !tbaa !11 ; 2 uses
  %.not4.i197 = icmp eq i64 %.pr.i196, 0
  br i1 %.not4.i197, label %.lr.ph.i199, label %rbimpl_intern_const.exit201

.lr.ph.i199:                                      ; preds = %rbimpl_intern_const.exit195, %.lr.ph.i199
  %i.p = tail call i64 @rb_intern2(ptr noundef nonnull @.str.67, i64 noundef 5) #20 ; 3 uses
  store i64 %i.p, ptr @rb_iseq_parameters.rbimpl_id.66, align 8, !tbaa !11
  %.not.i200 = icmp eq i64 %i.p, 0
  br i1 %.not.i200, label %.lr.ph.i199, label %rbimpl_intern_const.exit201, !llvm.loop !272

rbimpl_intern_const.exit201:                      ; preds = %.lr.ph.i199, %rbimpl_intern_const.exit195
  %.lcssa.i198 = phi i64 [ %.pr.i196, %rbimpl_intern_const.exit195 ], [ %i.p, %.lr.ph.i199 ]
  %i.q = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i186) #20
  %i.r = tail call i64 @rb_id2sym(i64 noundef 42) #20
  %i.s = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.q, i64 noundef %i.r) #20
  %i.t = tail call i64 @rb_ary_push(i64 noundef %i.i, i64 noundef %i.s) #20 ; 0 uses
  %i.u = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i192) #20
  %i.v = tail call i64 @rb_id2sym(i64 noundef 134) #20
  %i.w = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.u, i64 noundef %i.v) #20
  %i.x = tail call i64 @rb_ary_push(i64 noundef %i.i, i64 noundef %i.w) #20 ; 0 uses
  %i.y = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i198) #20
  %i.z = tail call i64 @rb_id2sym(i64 noundef 38) #20
  %i.aa = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.y, i64 noundef %i.z) #20
  %i.ab = tail call i64 @rb_ary_push(i64 noundef %i.i, i64 noundef %i.aa) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %rbimpl_intern_const.exit201, %rbimpl_intern_const.exit183
  %.not152 = icmp eq i32 %1, 0                    ; 2 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 24      ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !321 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 0                   ; 2 uses
  br i1 %.not152, label %.preheader242, label %.preheader244

.preheader244:                                    ; preds = %bb.c
  br i1 %i.ae, label %.lr.ph, label %.loopexit243

.lr.ph:                                           ; preds = %.preheader244
  %i.af = getelementptr i8, ptr %i.b, i64 144     ; 2 uses
  br label %bb.d

.preheader242:                                    ; preds = %bb.c
  br i1 %i.ae, label %.lr.ph258, label %.loopexit243

.lr.ph258:                                        ; preds = %.preheader242
  %i.ag = getelementptr i8, ptr %i.b, i64 144     ; 2 uses
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ah = tail call i64 @rb_ary_new_capa(i64 noundef 2) #20 ; 4 uses
  %i.ai = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i180) #20
  %i.aj = tail call i64 @rb_ary_push(i64 noundef %i.ah, i64 noundef %i.ai) #20 ; 0 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !95
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11 ; 2 uses
  %.not176 = icmp eq i64 %i.am, 153
  br i1 %.not176, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = tail call i64 @rb_id2str(i64 noundef %i.am) #20
  %.not177 = icmp eq i64 %i.an, 0
  br i1 %.not177, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !95
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11
  %i.ar = tail call i64 @rb_id2sym(i64 noundef %i.aq) #20
  %i.as = tail call i64 @rb_ary_push(i64 noundef %i.ah, i64 noundef %i.ar) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.at = phi i64 [ %i.as, %bb.f ], [ %i.ah, %bb.e ], [ %i.ah, %bb.d ]
  %i.au = tail call i64 @rb_ary_push(i64 noundef %i.i, i64 noundef %i.at) #20 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.av = load i32, ptr %i.ac, align 8, !tbaa !321 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %bb.d, label %.loopexit243.loopexit272, !llvm.loop !341

bb.h:                                             ; preds = %.lr.ph258, %bb.k
  %indvars.iv287 = phi i64 [ 0, %.lr.ph258 ], [ %indvars.iv.next288, %bb.k ] ; 3 uses
  %i.ay = tail call i64 @rb_ary_new_capa(i64 noundef 2) #20 ; 4 uses
  %i.az = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #20
  %i.ba = tail call i64 @rb_ary_push(i64 noundef %i.ay, i64 noundef %i.az) #20 ; 0 uses
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !95
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %indvars.iv287
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %.not153 = icmp eq i64 %i.bd, 153
  br i1 %.not153, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = tail call i64 @rb_id2str(i64 noundef %i.bd) #20
  %.not154 = icmp eq i64 %i.be, 0
  br i1 %.not154, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !95
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv287
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = tail call i64 @rb_id2sym(i64 noundef %i.bh) #20
  %i.bj = tail call i64 @rb_ary_push(i64 noundef %i.ay, i64 noundef %i.bi) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.bk = phi i64 [ %i.bj, %bb.j ], [ %i.ay, %bb.i ], [ %i.ay, %bb.h ]
  %i.bl = tail call i64 @rb_ary_push(i64 noundef %i.i, i64 noundef %i.bk) #20 ; 0 uses
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 3 uses
  %i.bm = load i32, ptr %i.ac, align 8, !tbaa !321 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next288, %i.bn
  br i1 %i.bo, label %bb.h, label %.loopexit243.loopexit, !llvm.loop !342

.loopexit243.loopexit:                            ; preds = %bb.k
  %i.bp = trunc nuw nsw i64 %indvars.iv.next288 to i32
  br label %.loopexit243

.loopexit243.loopexit272:                         ; preds = %bb.g
  %i.bq = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit243

.loopexit243:                                     ; preds = %.loopexit243.loopexit272, %.loopexit243.loopexit, %.preheader244, %.preheader242
  %i.br = phi i32 [ %i.bm, %.loopexit243.loopexit ], [ %i.ad, %.preheader242 ], [ %i.ad, %.preheader244 ], [ %i.av, %.loopexit243.loopexit272 ]
  %.2 = phi i32 [ %i.bp, %.loopexit243.loopexit ], [ 0, %.preheader242 ], [ 0, %.preheader244 ], [ %i.bq, %.loopexit243.loopexit272 ] ; 2 uses
  %i.bs = getelementptr i8, ptr %i.b, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !156
  %i.bu = add i32 %i.bt, %i.br                    ; 2 uses
  %i.bv = icmp slt i32 %.2, %i.bu
  br i1 %i.bv, label %.lr.ph261, label %._crit_edge

.lr.ph261:                                        ; preds = %.loopexit243
  %i.bw = getelementptr i8, ptr %i.b, i64 144     ; 2 uses
  %i.bx = zext nneg i32 %.2 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph261, %bb.o
end_hunk_4
begin_hunk_5_@iseq_remove_local_tracepoint_i:bb.a
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = call ptr @rb_ractor_targeted_hooks(ptr noundef %i.f) #20
  %i.w = call i32 @rb_st_delete(ptr noundef %i.v, ptr noundef nonnull %i.c, ptr noundef null) #20 ; 0 uses
  call void @rb_hook_list_free(ptr noundef nonnull %i.k) #20
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !283
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi ptr [ %.pre.i, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !90
  %i.aa = icmp eq i32 %i.z, %i.s
  br i1 %i.aa, label %bb.f, label %iseq_remove_local_tracepoint.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.x, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !82
  %i.af = getelementptr i8, ptr %i.ac, i64 4      ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !89
  %.not36.i = icmp eq i32 %i.ag, 0
  br i1 %.not36.i, label %iseq_remove_local_tracepoint.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ah = shl i32 %i.r, 5
  %i.ai = and i32 %i.ah, 768
  %invariant.op = or i32 %i.ai, %i.r
  br label %bb.g

bb.g:                                             ; preds = %encoded_iseq_trace_instrument.exit.i, %.lr.ph.i
  %.02533.i = phi i32 [ 0, %.lr.ph.i ], [ %i.db, %encoded_iseq_trace_instrument.exit.i ] ; 6 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !283 ; 2 uses
  %i.ak = zext i32 %.02533.i to i64
  %i.al = getelementptr i8, ptr %i.aj, i64 16
  %.val.i.i = load ptr, ptr %i.al, align 8, !tbaa !18 ; 3 uses
  %i.am = getelementptr i8, ptr %.val.i.i, i64 112
  %i.an = getelementptr i8, ptr %.val.i.i, i64 128
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !154 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !83 ; 2 uses
  switch i32 %i.ao, label %bb.h [
    i32 0, label %rb_iseq_event_flags.exit.i
    i32 1, label %get_insn_info.exit.i.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr i8, ptr %.val.i.i, i64 136
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !85 ; 2 uses
  %i.as = icmp slt i32 %.02533.i, 54
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = sdiv i32 %.02533.i, 9
  %i.au = srem i32 %.02533.i, 9
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr [8 x i8], ptr %i.ar, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.ay = mul nsw i32 %i.au, 7
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.ax, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 127
  br label %succ_index_lookup.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bd = add nsw i32 %.02533.i, -54              ; 3 uses
  %i.be = lshr i32 %i.bd, 9
  %i.bf = getelementptr i8, ptr %i.ar, i64 48
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr [80 x i8], ptr %i.bf, i64 %i.bg ; 3 uses
  %i.bi = lshr i32 %i.bd, 6
  %i.bj = and i32 %i.bi, 7                        ; 3 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !164
  %i.bn = mul nuw nsw i32 %i.bj, 9
  %i.bo = add nsw i32 %i.bn, -9
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = lshr i64 %i.bm, %i.bp
  %i.br = trunc i64 %i.bq to i32
  %i.bs = and i32 %i.br, 511
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bt = phi i32 [ %i.bs, %bb.k ], [ 0, %bb.j ]
  %i.bu = getelementptr i8, ptr %i.bh, i64 16
  %i.bv = zext nneg i32 %i.bj to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !11
  %i.by = and i32 %i.bd, 63
  %i.bz = xor i32 %i.by, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl i64 %i.bx, %i.ca
  %i.cc = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cb)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = load i32, ptr %i.bh, align 8, !tbaa !162
  %i.cf = add i32 %i.ce, %i.bt
  %i.cg = add i32 %i.cf, %i.cd
  br label %succ_index_lookup.exit.i.i.i.i

succ_index_lookup.exit.i.i.i.i:                   ; preds = %bb.l, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.bc, %bb.i ], [ %i.cg, %bb.l ]
  %i.ch = add i32 %.0.i.i.i.i.i, -1
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr [12 x i8], ptr %i.ap, i64 %i.ci
  br label %get_insn_info.exit.i.i

get_insn_info.exit.i.i:                           ; preds = %succ_index_lookup.exit.i.i.i.i, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.cj, %succ_index_lookup.exit.i.i.i.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.not.i27.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i27.i, label %rb_iseq_event_flags.exit.i, label %bb.m

bb.m:                                             ; preds = %get_insn_info.exit.i.i
  %i.ck = getelementptr i8, ptr %.0.i.i.i.i, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !197
  br label %rb_iseq_event_flags.exit.i

rb_iseq_event_flags.exit.i:                       ; preds = %bb.m, %get_insn_info.exit.i.i, %bb.g
  %.0.i28.i = phi i32 [ %i.cl, %bb.m ], [ 0, %get_insn_info.exit.i.i ], [ %i.ao, %bb.g ]
  %i.cm = getelementptr [8 x i8], ptr %i.ae, i64 %i.ak ; 3 uses
  %i.cn = getelementptr i8, ptr %i.aj, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !90
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cq = load ptr, ptr @encoded_insn_data, align 8, !tbaa !199
  %i.cr = call i32 @rb_st_lookup(ptr noundef %i.cq, i64 noundef %i.cp, ptr noundef nonnull %i.a) #20
  %.not.i29.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i29.i, label %bb.n, label %encoded_iseq_trace_instrument.exit.i

bb.n:                                             ; preds = %rb_iseq_event_flags.exit.i
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !11
  %i.ct = inttoptr i64 %i.cs to ptr
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.201, ptr noundef %i.ct) #23
  unreachable

encoded_iseq_trace_instrument.exit.i:             ; preds = %rb_iseq_event_flags.exit.i
  %.reass.i.reass.reass = or i32 %i.co, %invariant.op
  %i.cu = and i32 %.reass.i.reass.reass, %.0.i28.i
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !11
  %i.cw = inttoptr i64 %i.cv to ptr               ; 2 uses
  %.not10.i.i = icmp eq i32 %i.cu, 0
  %.in.v.i.i = select i1 %.not10.i.i, i64 8, i64 16
  %.in.i.i = getelementptr i8, ptr %i.cw, i64 %.in.v.i.i
  %i.cx = load ptr, ptr %.in.i.i, align 8, !tbaa !202
  %i.cy = ptrtoint ptr %i.cx to i64
  store i64 %i.cy, ptr %i.cm, align 8, !tbaa !11
  %i.cz = getelementptr i8, ptr %i.cw, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.db = add i32 %i.da, %.02533.i                ; 2 uses
  %i.dc = load i32, ptr %i.af, align 4, !tbaa !89
  %i.dd = icmp ult i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.g, label %iseq_remove_local_tracepoint.exit, !llvm.loop !364

iseq_remove_local_tracepoint.exit:                ; preds = %encoded_iseq_trace_instrument.exit.i, %rb_iseq_local_hooks.exit.thread.i, %rb_iseq_local_hooks.exit.i, %bb.b, %bb.e, %bb.f
  %.1.i = phi i32 [ 0, %rb_iseq_local_hooks.exit.i ], [ 0, %bb.b ], [ 0, %rb_iseq_local_hooks.exit.thread.i ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %encoded_iseq_trace_instrument.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.de = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !362
  %i.dg = add i32 %i.df, %.1.i
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !362
  call fastcc void @iseq_iterate_children(ptr noundef %0, ptr noundef nonnull @iseq_remove_local_tracepoint_i, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_clear_attr_ccs() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !171
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #20
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.a
  call void @rb_vm_barrier() #20
  call void @rb_objspace_each_objects(ptr noundef nonnull @clear_attr_ccs_i, ptr noundef null) #20
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !171
  %.not.i.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i.i1, label %bb.c, label %rb_vm_lock_leave.exit

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #20
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_enter.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @clear_attr_ccs_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %.not5 = icmp eq ptr %0, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clear_attr_cc.exit
  %.06 = phi i64 [ %i.j, %clear_attr_cc.exit ], [ %i.b, %.lr.ph.preheader ] ; 4 uses
  %i.c = icmp eq i64 %.06, 0
  %i.d = and i64 %.06, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %clear_attr_cc.exit, label %imemo_type_p.exit.i, !prof !99

imemo_type_p.exit.i:                              ; preds = %.lr.ph
  %i.g = inttoptr i64 %.06 to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = and i64 %i.h, 127007
  %or.cond.not.i = icmp eq i64 %i.i, 110618
  br i1 %or.cond.not.i, label %bb.b, label %clear_attr_cc.exit

bb.b:                                             ; preds = %imemo_type_p.exit.i
  tail call void @rb_vm_cc_general(ptr noundef nonnull %i.g) #20
  br label %clear_attr_cc.exit

clear_attr_cc.exit:                               ; preds = %.lr.ph, %imemo_type_p.exit.i, %bb.b
  %i.j = add i64 %.06, %2                         ; 2 uses
  %.not = icmp eq i64 %i.j, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !365

._crit_edge:                                      ; preds = %clear_attr_cc.exit, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_clear_bf_ccs() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_objspace_each_objects(ptr noundef nonnull @clear_bf_ccs_i, ptr noundef null) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @clear_bf_ccs_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %.not5 = icmp eq ptr %0, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clear_bf_cc.exit
  %.06 = phi i64 [ %i.j, %clear_bf_cc.exit ], [ %i.b, %.lr.ph.preheader ] ; 4 uses
  %i.c = icmp eq i64 %.06, 0
  %i.d = and i64 %.06, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %clear_bf_cc.exit, label %imemo_type_p.exit.i, !prof !99

imemo_type_p.exit.i:                              ; preds = %.lr.ph
  %i.g = inttoptr i64 %.06 to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = and i64 %i.h, 192543
  %or.cond.not.i = icmp eq i64 %i.i, 176154
  br i1 %or.cond.not.i, label %bb.b, label %clear_bf_cc.exit

bb.b:                                             ; preds = %imemo_type_p.exit.i
  tail call void @rb_vm_cc_general(ptr noundef nonnull %i.g) #20
  br label %clear_bf_cc.exit

clear_bf_cc.exit:                                 ; preds = %.lr.ph, %imemo_type_p.exit.i, %bb.b
  %i.j = add i64 %.06, %2                         ; 2 uses
  %.not = icmp eq i64 %i.j, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !366

._crit_edge:                                      ; preds = %clear_bf_cc.exit, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_iseq_trace_set_all(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !171
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #20
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.a
  call void @rb_vm_barrier() #20
  call void @rb_objspace_each_objects(ptr noundef nonnull @trace_set_i, ptr noundef nonnull %i.a) #20
  %i.d = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !171
  %.not.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i1, label %bb.c, label %rb_vm_lock_leave.exit

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #20
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_enter.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @trace_set_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !7
  %i.b = ptrtoint ptr %1 to i64
  %.not19 = icmp eq ptr %0, %1
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clear_bf_cc.exit
  %.020 = phi i64 [ %i.m, %clear_bf_cc.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = icmp eq i64 %.020, 0
  %i.e = and i64 %.020, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %clear_bf_cc.exit, label %rb_obj_is_iseq.exit, !prof !99

rb_obj_is_iseq.exit:                              ; preds = %.lr.ph
  %i.h = inttoptr i64 %.020 to ptr                ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !80   ; 3 uses
  %i.j = and i64 %i.i, 61471
  %.not18 = icmp eq i64 %i.j, 28698
  br i1 %.not18, label %bb.b, label %imemo_type_p.exit.i

bb.b:                                             ; preds = %rb_obj_is_iseq.exit
  tail call void @rb_iseq_trace_set(ptr noundef nonnull %i.h, i32 noundef %i.a)
  br label %clear_bf_cc.exit

imemo_type_p.exit.i:                              ; preds = %rb_obj_is_iseq.exit
  %i.k = and i64 %i.i, 127007
  %or.cond.not.i = icmp eq i64 %i.k, 110618
  br i1 %or.cond.not.i, label %clear_attr_cc.exit, label %imemo_type_p.exit.i11

clear_attr_cc.exit:                               ; preds = %imemo_type_p.exit.i
  tail call void @rb_vm_cc_general(ptr noundef nonnull %i.h) #20
  br label %clear_bf_cc.exit

imemo_type_p.exit.i11:                            ; preds = %imemo_type_p.exit.i
  %i.l = and i64 %i.i, 192543
  %or.cond.not.i12 = icmp eq i64 %i.l, 176154
  br i1 %or.cond.not.i12, label %bb.c, label %clear_bf_cc.exit

bb.c:                                             ; preds = %imemo_type_p.exit.i11
  tail call void @rb_vm_cc_general(ptr noundef nonnull %i.h) #20
  br label %clear_bf_cc.exit

clear_bf_cc.exit:                                 ; preds = %.lr.ph, %bb.c, %imemo_type_p.exit.i11, %clear_attr_cc.exit, %bb.b
  %i.m = add i64 %.020, %2                        ; 2 uses
  %.not = icmp eq i64 %i.m, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !367

._crit_edge:                                      ; preds = %clear_bf_cc.exit, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_iseqw_local_variables(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !293

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !273

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !274  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !277

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !278  ; 2 uses
  %i.s = icmp eq ptr %i.r, @iseqw_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !282

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.u) #20
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.x = phi ptr [ %.pre.i, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ]
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.z, 0
  br i1 %.not5.i, label %bb.g, label %iseqw_check.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.f
  %i.ab = tail call i64 @rb_iseq_local_variables(ptr noundef nonnull %i.u) #20
  ret i64 %i.ab
}

declare i64 @rb_iseq_local_variables(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_ISeq() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cRubyVM, align 8, !tbaa !11
  %i.b = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.c = tail call i64 @rb_define_class_under(i64 noundef %i.a, ptr noundef nonnull @.str.80, i64 noundef %i.b) #20 ; 2 uses
  store i64 %i.c, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_undef_alloc_func(i64 noundef %i.c) #20
  %i.d = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.d, ptr noundef nonnull @.str.81, ptr noundef nonnull @iseqw_inspect, i32 noundef 0) #20
  %i.e = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.e, ptr noundef nonnull @.str.82, ptr noundef nonnull @iseqw_disasm, i32 noundef 0) #20
  %i.f = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.83, ptr noundef nonnull @iseqw_disasm, i32 noundef 0) #20
  %i.g = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.g, ptr noundef nonnull @.str.84, ptr noundef nonnull @iseqw_to_a, i32 noundef 0) #20
  %i.h = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.h, ptr noundef nonnull @.str.85, ptr noundef nonnull @iseqw_eval, i32 noundef 0) #20
  %i.i = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.i, ptr noundef nonnull @.str.86, ptr noundef nonnull @iseqw_to_binary, i32 noundef -1) #20
  %i.j = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.j, ptr noundef nonnull @.str.87, ptr noundef nonnull @iseqw_s_load_from_binary, i32 noundef 1) #20
  %i.k = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.k, ptr noundef nonnull @.str.88, ptr noundef nonnull @iseqw_s_load_from_binary_extra_data, i32 noundef 1) #20
  %i.l = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.l, ptr noundef nonnull @.str.89, ptr noundef nonnull @iseqw_path, i32 noundef 0) #20
  %i.m = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.90, ptr noundef nonnull @iseqw_absolute_path, i32 noundef 0) #20
  %i.n = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.91, ptr noundef nonnull @iseqw_label, i32 noundef 0) #20
  %i.o = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.o, ptr noundef nonnull @.str.92, ptr noundef nonnull @iseqw_base_label, i32 noundef 0) #20
  %i.p = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.p, ptr noundef nonnull @.str.93, ptr noundef nonnull @iseqw_first_lineno, i32 noundef 0) #20
  %i.q = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.q, ptr noundef nonnull @.str.94, ptr noundef nonnull @iseqw_trace_points, i32 noundef 0) #20
  %i.r = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.r, ptr noundef nonnull @.str.95, ptr noundef nonnull @iseqw_each_child, i32 noundef 0) #20
  %i.s = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.s, ptr noundef nonnull @.str.3, ptr noundef nonnull @iseqw_s_compile, i32 noundef -1) #20
  %i.t = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.t, ptr noundef nonnull @.str.96, ptr noundef nonnull @iseqw_s_compile_parsey, i32 noundef -1) #20
  %i.u = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.u, ptr noundef nonnull @.str.97, ptr noundef nonnull @iseqw_s_compile_prism, i32 noundef -1) #20
  %i.v = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.v, ptr noundef nonnull @.str.98, ptr noundef nonnull @iseqw_s_compile_file_prism, i32 noundef -1) #20
  %i.w = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.w, ptr noundef nonnull @.str.99, ptr noundef nonnull @iseqw_s_compile, i32 noundef -1) #20
  %i.x = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.x, ptr noundef nonnull @.str.100, ptr noundef nonnull @iseqw_s_compile_file, i32 noundef -1) #20
  %i.y = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.y, ptr noundef nonnull @.str.101, ptr noundef nonnull @iseqw_s_compile_option_get, i32 noundef 0) #20
  %i.z = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.z, ptr noundef nonnull @.str.102, ptr noundef nonnull @iseqw_s_compile_option_set, i32 noundef 1) #20
  %i.aa = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.aa, ptr noundef nonnull @.str.82, ptr noundef nonnull @iseqw_s_disasm, i32 noundef 1) #20
  %i.ab = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ab, ptr noundef nonnull @.str.83, ptr noundef nonnull @iseqw_s_disasm, i32 noundef 1) #20
  %i.ac = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ac, ptr noundef nonnull @.str.103, ptr noundef nonnull @iseqw_s_of, i32 noundef 1) #20
  %i.ad = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ad, ptr noundef nonnull @.str.104, ptr noundef nonnull @iseqw_script_lines, i32 noundef 0) #20
  %i.ae = load i64, ptr @rb_cISeq, align 8, !tbaa !11 ; 6 uses
end_hunk_5
begin_hunk_6_@iseqw_disasm:bb.a
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.u) #20
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.x = phi ptr [ %.pre.i, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ]
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.z, 0
  br i1 %.not5.i, label %bb.g, label %iseqw_check.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.f
  %i.ab = tail call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #20
  %i.ac = tail call fastcc i64 @rb_iseq_disasm_recursive(ptr noundef nonnull %i.u, i64 noundef %i.ab) ; 3 uses
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !311
  %i.ag = tail call i64 @rb_str_resize(i64 noundef %i.ac, i64 noundef %i.af) #20 ; 0 uses
  ret i64 %i.ac
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_to_a(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !293

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !273

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !274  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !277

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !278  ; 2 uses
  %i.s = icmp eq ptr %i.r, @iseqw_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !282

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.u) #20
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.x = phi ptr [ %.pre.i, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ]
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.z, 0
  br i1 %.not5.i, label %bb.g, label %iseqw_check.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.f
  %i.ab = tail call fastcc i64 @iseq_data_to_ary(ptr noundef nonnull %i.u)
  ret i64 %i.ab
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_eval(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !293

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !273

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !274  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !277

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !278  ; 2 uses
  %i.s = icmp eq ptr %i.r, @iseqw_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !282

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.u) #20
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.x = phi ptr [ %.pre.i, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.z, 0
  br i1 %.not5.i, label %bb.g, label %iseqw_check.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %i.x, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !89
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %iseqw_check.exit
  %i.ae = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.284) #22
  unreachable

bb.i:                                             ; preds = %iseqw_check.exit
  %i.af = tail call ptr @rb_current_box() #20
  %i.ag = tail call i64 @rb_iseq_eval(ptr noundef nonnull %i.u, ptr noundef %i.af) #20
  ret i64 %i.ag
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_to_binary(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #22
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.a = load i64, ptr %1, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %rb_check_arity.exit, %bb.c
  %i.b = phi i64 [ %i.a, %bb.c ], [ 4, %rb_check_arity.exit ]
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !293

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.d
  %i.g = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i, label %bb.e, label %.critedge.i.i, !prof !273

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !274  ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %i.p, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.r, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !277

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.g
  %.016.i.i = phi ptr [ %i.t, %bb.g ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i
  %i.s = getelementptr i8, ptr %.016.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !278  ; 2 uses
  %i.u = icmp eq ptr %i.t, @iseqw_data_type
  br i1 %i.u, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !282

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.g, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.v, %.critedge.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.q, %bb.g ]
  %i.w = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16       ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.w) #20
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rbimpl_check_typeddata.exit.i
  %i.z = phi ptr [ %.pre.i, %bb.h ], [ %i.y, %rbimpl_check_typeddata.exit.i ]
  %i.aa = getelementptr i8, ptr %i.z, i64 80
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.ab, 0
  br i1 %.not5.i, label %bb.j, label %iseqw_check.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ac, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.i
  %i.ad = tail call i64 @rb_iseq_ibf_dump(ptr noundef nonnull %i.w, i64 noundef %i.b) #20
  ret i64 %i.ad
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_load_from_binary(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @rb_iseq_ibf_load(i64 noundef %1) #20
  %i.b = tail call fastcc i64 @iseqw_new(ptr noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_load_from_binary_extra_data(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_iseq_ibf_load_extra_data(i64 noundef %1) #20
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_path(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !293

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !273

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !274  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !277

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !278  ; 2 uses
  %i.s = icmp eq ptr %i.r, @iseqw_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !282

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.u) #20
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.x = phi ptr [ %.pre.i, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.z, 0
  br i1 %.not5.i, label %bb.g, label %iseqw_check.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %i.x, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !269 ; 4 uses
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = and i64 %i.ac, 7
  %i.af = icmp eq i64 %i.ae, 0
  %.not4.i = and i1 %i.ad, %i.af
  %.pre.i.i = inttoptr i64 %i.ac to ptr           ; 3 uses
  %.pre.i1 = load i64, ptr %.pre.i.i, align 8, !tbaa !80 ; 2 uses
  %i.ag = and i64 %.pre.i1, 31
  %i.ah = icmp eq i64 %i.ag, 5
  %or.cond.i = select i1 %.not4.i, i1 %i.ah, i1 false
  br i1 %or.cond.i, label %rb_iseq_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %iseqw_check.exit
end_hunk_6
begin_hunk_7_@iseqw_each_child:bb.a
.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16       ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.u) #20
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.x = phi ptr [ %.pre.i, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ]
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.z, 0
  br i1 %.not5.i, label %bb.g, label %iseqw_check.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.f
  %i.ab = tail call ptr @rb_iseq_original_iseq(ptr noundef nonnull %i.u) #20 ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !18  ; 2 uses
  %i.ad = tail call i64 @rb_ident_hash_new() #20
  %i.ae = tail call i64 @rb_obj_hide(i64 noundef %i.ad) #20 ; 4 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 160    ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !87 ; 3 uses
  %.not.i2 = icmp eq ptr %i.ag, null
  br i1 %.not.i2, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %iseqw_check.exit
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !7
  %.not53.i = icmp eq i32 %i.ah, 0
  br i1 %.not53.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %.preheader.i ] ; 2 uses
  %i.ai = phi ptr [ %i.as, %bb.j ], [ %i.ag, %.preheader.i ]
  %i.aj = getelementptr [32 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 12
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !143 ; 3 uses
  %.not49.i = icmp eq ptr %i.al, null
  br i1 %.not49.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = tail call i64 @rb_hash_aref(i64 noundef %i.ae, i64 noundef %i.am) #20
  %i.ao = icmp eq i64 %i.an, 4
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call i64 @rb_hash_aset(i64 noundef %i.ae, i64 noundef %i.am, i64 noundef 20) #20 ; 0 uses
  %i.aq = tail call fastcc i64 @iseqw_new(ptr noundef nonnull %i.al)
  %i.ar = tail call i64 @rb_yield(i64 noundef %i.aq) #20 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !87 ; 2 uses
  %i.at = load i32, ptr %i.as, align 1, !tbaa !7
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next.i, %i.au
  br i1 %i.av, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !369

.loopexit.i:                                      ; preds = %bb.j, %.preheader.i, %iseqw_check.exit
  %i.aw = getelementptr i8, ptr %i.ac, i64 4      ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !89
  %.not54.i = icmp eq i32 %i.ax, 0
  br i1 %.not54.i, label %iseq_iterate_children.exit, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.loopexit.i, %bb.w
  %.151.i = phi i32 [ %i.cs, %bb.w ], [ 0, %.loopexit.i ] ; 3 uses
  %i.ay = zext i32 %.151.i to i64
  %i.az = getelementptr [8 x i8], ptr %i.ab, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %i.bb = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !90
  %i.bd = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.ba
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !296
  %i.bf = zext i16 %i.be to i64
  %i.bg = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.bf
  %i.bh = add nuw i32 %.151.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.v, %.lr.ph52.i
  %.0.i = phi i32 [ 0, %.lr.ph52.i ], [ %i.cq, %bb.v ] ; 3 uses
  %i.bi = sext i32 %.0.i to i64
  %i.bj = getelementptr i8, ptr %i.bg, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !90
  switch i8 %i.bk, label %bb.v [
    i8 0, label %bb.w
    i8 83, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bl = add i32 %i.bh, %.0.i
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr [8 x i8], ptr %i.ab, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11 ; 8 uses
  %i.bp = inttoptr i64 %i.bo to ptr               ; 3 uses
  %.not48.i = icmp eq i64 %i.bo, 0
  br i1 %.not48.i, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = tail call i64 @rb_hash_aref(i64 noundef %i.ae, i64 noundef %i.bo) #20
  %i.br = icmp eq i64 %i.bq, 4
  br i1 %i.br, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bs = tail call i64 @rb_hash_aset(i64 noundef %i.ae, i64 noundef %i.bo, i64 noundef 20) #20 ; 0 uses
  %i.bt = getelementptr i8, ptr %i.bp, i64 8      ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !292 ; 2 uses
  %.not.i3 = icmp eq i64 %i.bu, 0
  br i1 %.not.i3, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = tail call ptr @rb_check_typeddata(i64 noundef %i.bu, ptr noundef nonnull @iseqw_data_type) #20
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !283
  %.not19.i = icmp eq ptr %i.bw, %i.bp
  br i1 %.not19.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.by = load i64, ptr %i.bt, align 8, !tbaa !292
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bx, ptr noundef nonnull @.str.156, i64 noundef %i.by, ptr noundef nonnull %i.bp) #22
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !292
  br label %iseqw_new.exit

bb.r:                                             ; preds = %bb.n
  %i.ca = load i64, ptr @rb_cISeq, align 8, !tbaa !11
  %i.cb = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.ca, i64 noundef 8, ptr noundef nonnull @iseqw_data_type) #20 ; 10 uses
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !274
  %i.cf = trunc i64 %i.ce to i1
  %i.cg = getelementptr i8, ptr %i.cc, i64 32     ; 2 uses
  br i1 %i.cf, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.s, %bb.r
  %i.ci = phi ptr [ %i.ch, %bb.s ], [ %i.cg, %bb.r ]
  store i64 %i.bo, ptr %i.ci, align 8, !tbaa !11
  %i.cj = and i64 %i.bo, 7
  %.not24.i = icmp eq i64 %i.cj, 0
  br i1 %.not24.i, label %bb.t, label %rb_obj_write.exit.i

bb.t:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.cb, i64 noundef %i.bo) #20
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.t, %RTYPEDDATA_GET_DATA.exit.i
  tail call void @rb_obj_freeze_inline(i64 noundef %i.cb) #20
  %i.ck = tail call i64 @rb_obj_set_shareable(i64 noundef %i.cb) #20 ; 0 uses
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !11
  %i.cl = icmp eq i64 %i.cb, 0
  %i.cm = and i64 %i.cb, 7
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = or i1 %i.cl, %i.cn
  br i1 %i.co, label %iseqw_new.exit, label %bb.u

bb.u:                                             ; preds = %rb_obj_write.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.bo, i64 noundef %i.cb) #20
  br label %iseqw_new.exit

iseqw_new.exit:                                   ; preds = %bb.q, %rb_obj_write.exit.i, %bb.u
  %.0.i4 = phi i64 [ %i.bz, %bb.q ], [ %i.cb, %rb_obj_write.exit.i ], [ %i.cb, %bb.u ]
  %i.cp = tail call i64 @rb_yield(i64 noundef %.0.i4) #20 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %iseqw_new.exit, %bb.m, %bb.l, %bb.k
  %i.cq = add i32 %.0.i, 1
  br label %bb.k, !llvm.loop !370

bb.w:                                             ; preds = %bb.k
  %i.cr = zext i8 %i.bc to i32
  %i.cs = add i32 %.151.i, %i.cr                  ; 2 uses
  %i.ct = load i32, ptr %i.aw, align 4, !tbaa !89
  %i.cu = icmp ult i32 %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph52.i, label %iseq_iterate_children.exit, !llvm.loop !371

iseq_iterate_children.exit:                       ; preds = %bb.w, %.loopexit.i
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_ruby_default_parser() #20
  %i.b = icmp eq i32 %i.a, 1
  %i.c = tail call fastcc i64 @iseqw_s_compile_parser(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %i.b)
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile_parsey(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @iseqw_s_compile_parser(i32 noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile_prism(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @iseqw_s_compile_parser(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile_file_prism(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %3 = alloca %struct.rb_compile_option_struct, align 4 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.pm_parse_result_t, align 8  ; 9 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %0 to i64
  %i.k = getelementptr [8 x i8], ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = tail call i32 @rb_keyword_given_p() #20
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %.thread27, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i64 @rb_hash_dup(i64 noundef %i.m) #20
  %i.p = add nsw i32 %0, -1                       ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread, label %.thread27

.thread27:                                        ; preds = %bb.b, %bb.c
  %.1.i31 = phi i32 [ %i.p, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.188.i30 = phi i64 [ %i.o, %bb.c ], [ 4, %bb.b ] ; 3 uses
  %i.r = load i64, ptr %1, align 8, !tbaa !11     ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !11
  %i.s = icmp samesign ugt i32 %.1.i31, 1
  br i1 %i.s, label %rb_scan_args_set.exit, label %.thread34

.thread:                                          ; preds = %bb.a, %bb.c
  %.1.i20 = phi i32 [ 0, %bb.c ], [ %0, %bb.a ]
  tail call void @rb_error_arity(i32 noundef %.1.i20, i32 noundef 1, i32 noundef -1) #22
  unreachable

rb_scan_args_set.exit:                            ; preds = %.thread27
  %i.t = icmp eq i64 %.188.i30, 4
  %i.u = select i1 %i.t, i32 2, i32 1
  %i.v = icmp samesign ugt i32 %.1.i31, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_scan_args_set.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #22
  unreachable

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %cond = icmp eq i32 %.1.i31, 2
  br i1 %cond, label %bb.f, label %.thread34

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  br label %.thread34

.thread34:                                        ; preds = %.thread27, %bb.e, %bb.f
  %i.y = phi i64 [ %.188.i30, %bb.e ], [ %i.x, %bb.f ], [ %.188.i30, %.thread27 ]
  %i.z = tail call i64 @rb_get_path(i64 noundef %i.r) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store ptr %i.b, ptr %i.c, align 8, !tbaa !217
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #20, !srcloc !372
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  store volatile i64 %i.z, ptr %i.aa, align 8, !tbaa !11
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !11
  %i.ac = call i64 @rb_fstring(i64 noundef %i.ab) #20 ; 2 uses
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !172
  store volatile ptr %i.ae, ptr %i.a, align 8, !tbaa !172
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !172 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.af = call i64 @rb_vm_push_frame_fname(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.ac) #20
  store i64 %i.af, ptr %i.d, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1000) %4, i8 0, i64 1000, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 752
  store i32 1, ptr %i.ag, align 8, !tbaa !373
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 976
  store i32 1, ptr %i.ah, align 8, !tbaa !377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !11
  %i.aj = load i8, ptr @ruby_vm_keep_script_lines, align 1, !tbaa !378, !range !151, !noundef !152
  %i.ak = trunc nuw i8 %i.aj to i1
  %. = select i1 %i.ak, ptr %i.e, ptr null
  %i.al = call i64 @pm_load_parse_file(ptr noundef nonnull %4, i64 noundef %i.ai, ptr noundef %.) #20 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4
  br i1 %i.am, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.thread34
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 840
  call fastcc void @make_compile_option(ptr noundef %3, i64 noundef %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.ao = call i64 @rb_fstring_new(ptr noundef nonnull @.str.1, i64 noundef 6) #20
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.aq = call i64 @rb_realpath_internal(i64 noundef 4, i64 noundef %i.ap, i32 noundef 1) #20
  %i.ar = call ptr @pm_iseq_new_with_opt(ptr noundef nonnull %i.an, i64 noundef %i.ao, i64 noundef %i.ap, i64 noundef %i.aq, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.f)
  call void @pm_parse_result_free(ptr noundef nonnull %4) #20
  %i.as = load i32, ptr %i.f, align 4, !tbaa !7   ; 2 uses
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @rb_jump_tag(i32 noundef %i.as) #22
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.at = call fastcc i64 @iseqw_new(ptr noundef %i.ar)
  call void @rb_vm_pop_frame(ptr noundef %.0..0..0..0..0..0..i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store ptr %i.d, ptr %i.g, align 8, !tbaa !217
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #20, !srcloc !379
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.av = load volatile i64, ptr %i.au, align 8, !tbaa !11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i64 %i.at

bb.j:                                             ; preds = %.thread34
  call void @pm_parse_result_free(ptr noundef nonnull %4) #20
  call void @rb_vm_pop_frame(ptr noundef %.0..0..0..0..0..0..i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store ptr %i.d, ptr %i.h, align 8, !tbaa !217
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.h) #20, !srcloc !380
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  %i.ax = load volatile i64, ptr %i.aw, align 8, !tbaa !11 ; 0 uses
  call void @rb_exc_raise(i64 noundef %i.al) #22
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile_file(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.rb_compile_option_struct, align 4 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %0 to i64
  %i.k = getelementptr [8 x i8], ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = tail call i32 @rb_keyword_given_p() #20
  %.not26 = icmp eq i32 %i.n, 0
  br i1 %.not26, label %.thread31, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i64 @rb_hash_dup(i64 noundef %i.m) #20
  %i.p = add nsw i32 %0, -1                       ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread, label %.thread31

.thread31:                                        ; preds = %bb.b, %bb.c
  %.1.i35 = phi i32 [ %i.p, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.188.i34 = phi i64 [ %i.o, %bb.c ], [ 4, %bb.b ] ; 3 uses
  %i.r = load i64, ptr %1, align 8, !tbaa !11     ; 2 uses
  store i64 %i.r, ptr %i.c, align 8, !tbaa !11
  %i.s = icmp samesign ugt i32 %.1.i35, 1
  br i1 %i.s, label %rb_scan_args_set.exit, label %.thread38

.thread:                                          ; preds = %bb.a, %bb.c
  %.1.i25 = phi i32 [ 0, %bb.c ], [ %0, %bb.a ]
  tail call void @rb_error_arity(i32 noundef %.1.i25, i32 noundef 1, i32 noundef -1) #22
  unreachable

rb_scan_args_set.exit:                            ; preds = %.thread31
  %i.t = icmp eq i64 %.188.i34, 4
  %i.u = select i1 %i.t, i32 2, i32 1
  %i.v = icmp samesign ugt i32 %.1.i35, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_scan_args_set.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #22
  unreachable

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %cond = icmp eq i32 %.1.i35, 2
  br i1 %cond, label %bb.f, label %.thread38

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  br label %.thread38

.thread38:                                        ; preds = %.thread31, %bb.e, %bb.f
  %i.y = phi i64 [ %.188.i34, %bb.e ], [ %i.x, %bb.f ], [ %.188.i34, %.thread31 ]
  %i.z = tail call i64 @rb_get_path(i64 noundef %i.r) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store ptr %i.c, ptr %i.e, align 8, !tbaa !217
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #20, !srcloc !381
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  store volatile i64 %i.z, ptr %i.aa, align 8, !tbaa !11
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ac = call i64 @rb_fstring(i64 noundef %i.ab) #20 ; 2 uses
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !11
  %i.ad = call i64 @rb_file_open_str(i64 noundef %i.ac, ptr noundef nonnull @.str.302) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ae = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !172
  store volatile ptr %i.af, ptr %i.b, align 8, !tbaa !172
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ah = call i64 @rb_vm_push_frame_fname(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.ag) #20
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !11
  %i.ai = call i64 @rb_parser_new() #20           ; 2 uses
  %i.aj = call i64 @rb_parser_set_context(i64 noundef %i.ai, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !11
  %i.al = call i64 @rb_parser_load_file(i64 noundef %i.ai, i64 noundef %i.ak) #20 ; 3 uses
  store i64 %i.al, ptr %i.d, align 8, !tbaa !11
  %i.am = call ptr @rb_ruby_ast_data_get(i64 noundef %i.al) #20 ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !382
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !172
  store volatile ptr %i.ap, ptr %i.a, align 8, !tbaa !172
  %.0..0..0..0..0..0..i22 = load volatile ptr, ptr %i.a, align 8, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = getelementptr i8, ptr %.0..0..0..0..0..0..i22, i64 128
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !383
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread38
  %.0 = phi i64 [ 4, %.thread38 ], [ %i.ar, %bb.g ]
  %i.as = call i64 @rb_io_close(i64 noundef %i.ad) #20 ; 0 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !382
  %.not21 = icmp eq ptr %i.at, null
  br i1 %.not21, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @rb_ast_dispose(ptr noundef nonnull %i.am) #20
  call void @rb_exc_raise(i64 noundef %.0) #22
  unreachable

bb.j:                                             ; preds = %bb.h
  call fastcc void @make_compile_option(ptr noundef %3, i64 noundef %i.y)
  %i.au = call i64 @rb_fstring_new(ptr noundef nonnull @.str.1, i64 noundef 6) #20
  %i.av = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.aw = call i64 @rb_realpath_internal(i64 noundef 4, i64 noundef %i.av, i32 noundef 1) #20
  %i.ax = call ptr @rb_iseq_new_with_opt(i64 noundef %i.al, i64 noundef %i.au, i64 noundef %i.av, i64 noundef %i.aw, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, i64 noundef 4)
  %i.ay = call fastcc i64 @iseqw_new(ptr noundef %i.ax)
  call void @rb_ast_dispose(ptr noundef nonnull %i.am) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store ptr %i.d, ptr %i.g, align 8, !tbaa !217
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #20, !srcloc !384
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.ba = load volatile i64, ptr %i.az, align 8, !tbaa !11 ; 0 uses
  call void @rb_vm_pop_frame(ptr noundef %.0..0..0..0..0..0..i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store ptr %i.f, ptr %i.h, align 8, !tbaa !217
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.h) #20, !srcloc !385
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  %i.bc = load volatile i64, ptr %i.bb, align 8, !tbaa !11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  ret i64 %i.ay
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile_option_get(i64 %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_hash_new_with_size(i64 noundef 11) #20 ; 11 uses
  %.pr.i.i = load i64, ptr @make_compile_option_value.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str.137, i64 noundef 18) #20 ; 3 uses
  store i64 %i.b, ptr @make_compile_option_value.rbimpl_id, align 8, !tbaa !11
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !272

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.a
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.a ], [ %i.b, %.lr.ph.i.i ]
  %i.c = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i.i) #20
  %i.d = load i16, ptr @COMPILE_OPTION_DEFAULT, align 4
  %i.e = and i16 %i.d, 1
  %.not.i = icmp eq i16 %i.e, 0
  %i.f = select i1 %.not.i, i64 0, i64 20
  %i.g = tail call i64 @rb_hash_aset(i64 noundef %i.a, i64 noundef %i.c, i64 noundef %i.f) #20 ; 0 uses
  %.pr.i40.i = load i64, ptr @make_compile_option_value.rbimpl_id.303, align 8, !tbaa !11 ; 2 uses
  %.not4.i41.i = icmp eq i64 %.pr.i40.i, 0
  br i1 %.not4.i41.i, label %.lr.ph.i43.i, label %rbimpl_intern_const.exit45.i

.lr.ph.i43.i:                                     ; preds = %rbimpl_intern_const.exit.i, %.lr.ph.i43.i
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.139, i64 noundef 21) #20 ; 3 uses
  store i64 %i.h, ptr @make_compile_option_value.rbimpl_id.303, align 8, !tbaa !11
  %.not.i44.i = icmp eq i64 %i.h, 0
  br i1 %.not.i44.i, label %.lr.ph.i43.i, label %rbimpl_intern_const.exit45.i, !llvm.loop !272

rbimpl_intern_const.exit45.i:                     ; preds = %.lr.ph.i43.i, %rbimpl_intern_const.exit.i
  %.lcssa.i42.i = phi i64 [ %.pr.i40.i, %rbimpl_intern_const.exit.i ], [ %i.h, %.lr.ph.i43.i ]
  %i.i = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i42.i) #20
  %i.j = load i16, ptr @COMPILE_OPTION_DEFAULT, align 4
  %i.k = and i16 %i.j, 2
  %.not32.i = icmp eq i16 %i.k, 0
  %i.l = select i1 %.not32.i, i64 0, i64 20
  %i.m = tail call i64 @rb_hash_aset(i64 noundef %i.a, i64 noundef %i.i, i64 noundef %i.l) #20 ; 0 uses
  %.pr.i46.i = load i64, ptr @make_compile_option_value.rbimpl_id.304, align 8, !tbaa !11 ; 2 uses
  %.not4.i47.i = icmp eq i64 %.pr.i46.i, 0
  br i1 %.not4.i47.i, label %.lr.ph.i49.i, label %rbimpl_intern_const.exit51.i

.lr.ph.i49.i:                                     ; preds = %rbimpl_intern_const.exit45.i, %.lr.ph.i49.i
  %i.n = tail call i64 @rb_intern2(ptr noundef nonnull @.str.141, i64 noundef 21) #20 ; 3 uses
  store i64 %i.n, ptr @make_compile_option_value.rbimpl_id.304, align 8, !tbaa !11
  %.not.i50.i = icmp eq i64 %i.n, 0
  br i1 %.not.i50.i, label %.lr.ph.i49.i, label %rbimpl_intern_const.exit51.i, !llvm.loop !272

rbimpl_intern_const.exit51.i:                     ; preds = %.lr.ph.i49.i, %rbimpl_intern_const.exit45.i
  %.lcssa.i48.i = phi i64 [ %.pr.i46.i, %rbimpl_intern_const.exit45.i ], [ %i.n, %.lr.ph.i49.i ]
  %i.o = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i48.i) #20
end_hunk_7
begin_hunk_8_@iseqw_s_of:bb.a

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @rb_method_iseq(i64 noundef %1) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = icmp eq i64 %1, 0
  %i.u = and i64 %1, 7
  %i.v = icmp ne i64 %i.u, 0
  %i.w = or i1 %i.t, %i.v
  br i1 %i.w, label %.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.h
  %i.x = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80
  %i.z = and i64 %i.y, 95
  %or.cond.not.i = icmp eq i64 %i.z, 76
  br i1 %or.cond.not.i, label %rb_typeddata_is_instance_of_inline.exit, label %.thread

rb_typeddata_is_instance_of_inline.exit:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.aa = getelementptr i8, ptr %i.x, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !274
  %i.ac = and i64 %i.ab, -2
  %i.ad = icmp eq i64 %i.ac, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.ad, label %bb.j, label %.thread

.thread:                                          ; preds = %tailrecurse.i, %tailrecurse.i, %rb_typeddata_is_instance_of_inline.exit, %vm_proc_iseq.exit, %rb_obj_is_iseq.exit, %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit.i
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.s, %bb.g ]  ; 2 uses
  %.not15 = icmp eq ptr %.0, null
  br i1 %.not15, label %bb.j, label %.thread22

.thread22:                                        ; preds = %rb_obj_is_iseq.exit, %bb.i
  %.025 = phi ptr [ %.0, %bb.i ], [ %i.j, %rb_obj_is_iseq.exit ]
  %i.ae = tail call fastcc i64 @iseqw_new(ptr noundef nonnull %.025)
  br label %bb.j

bb.j:                                             ; preds = %.thread, %.thread22, %bb.i, %rb_typeddata_is_instance_of_inline.exit
  %.011 = phi i64 [ %1, %rb_typeddata_is_instance_of_inline.exit ], [ %i.ae, %.thread22 ], [ 4, %bb.i ], [ 4, %.thread ]
  ret i64 %.011
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_script_lines(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !293

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !273

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !274  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !276
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !277

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !278  ; 2 uses
  %i.s = icmp eq ptr %i.r, @iseqw_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !282

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !283 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.u) #20
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.x = phi ptr [ %.pre.i, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !261
  %.not5.i = icmp eq i64 %i.z, 0
  br i1 %.not5.i, label %bb.g, label %iseqw_check.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %i.x, i64 208
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !209
  ret i64 %i.ac
}

declare void @rb_undef_method(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_id_table_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_set_table_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_id_table_delete(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_set_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

declare ptr @rb_vm_empty_cc_for_super() local_unnamed_addr #2

declare i64 @rb_gc_location(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_fatal(ptr noundef, ...) local_unnamed_addr #15

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_imemo_new(i32 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #2

declare i64 @rb_default_coverage(i32 noundef) local_unnamed_addr #2

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_ractor_make_shareable(i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_lookup(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_hidden_new(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_funcallv(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #15

declare i64 @rb_exc_new(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_respond_to(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #2

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_to_array_type(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_to_str(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #12

declare i64 @rb_to_hash_type(i64 noundef) local_unnamed_addr #2

declare i64 @rb_to_symbol_type(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #15

declare i64 @rb_sym2str(i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_sym2id(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @make_compile_option(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.d [
    i64 4, label %bb.b
    i64 0, label %bb.c
    i64 20, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.a
  store i32 1, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr i8, ptr %0, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !7
  br label %set_compile_option_from_hash.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @COMPILE_OPTION_DEFAULT, align 8
  store i64 %i.b, ptr %0, align 4
  br label %set_compile_option_from_hash.exit

bb.c:                                             ; preds = %bb.a
  store i64 192, ptr %0, align 4
  br label %set_compile_option_from_hash.exit

bb.d:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.d
  %i.g = inttoptr i64 %1 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 8
  br i1 %i.j, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = load i64, ptr @COMPILE_OPTION_DEFAULT, align 8
  store i64 %i.k, ptr %0, align 4
  %.pr.i.i = load i64, ptr @set_compile_option_from_hash.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.l = tail call i64 @rb_intern2(ptr noundef nonnull @.str.137, i64 noundef 18) #20 ; 3 uses
  store i64 %i.l, ptr @set_compile_option_from_hash.rbimpl_id, align 8, !tbaa !11
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !272

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.e
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.e ], [ %i.l, %.lr.ph.i.i ]
  %i.m = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i.i) #20
  %i.n = tail call i64 @rb_hash_aref(i64 noundef range(i64 1, 0) %1, i64 noundef %i.m) #20
  switch i64 %i.n, label %bb.h [
    i64 20, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %rbimpl_intern_const.exit.i
  %i.o = load i16, ptr %0, align 4
  %i.p = or i16 %i.o, 1
  br label %.sink.split.i

bb.g:                                             ; preds = %rbimpl_intern_const.exit.i
  %i.q = load i16, ptr %0, align 4
  %i.r = and i16 %i.q, -2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  %.sink.i = phi i16 [ %i.r, %bb.g ], [ %i.p, %bb.f ]
  store i16 %.sink.i, ptr %0, align 4
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %rbimpl_intern_const.exit.i
  %.pr.i66.i = load i64, ptr @set_compile_option_from_hash.rbimpl_id.138, align 8, !tbaa !11 ; 2 uses
  %.not4.i67.i = icmp eq i64 %.pr.i66.i, 0
  br i1 %.not4.i67.i, label %.lr.ph.i69.i, label %rbimpl_intern_const.exit71.i

.lr.ph.i69.i:                                     ; preds = %bb.h, %.lr.ph.i69.i
  %i.s = tail call i64 @rb_intern2(ptr noundef nonnull @.str.139, i64 noundef 21) #20 ; 3 uses
  store i64 %i.s, ptr @set_compile_option_from_hash.rbimpl_id.138, align 8, !tbaa !11
  %.not.i70.i = icmp eq i64 %i.s, 0
  br i1 %.not.i70.i, label %.lr.ph.i69.i, label %rbimpl_intern_const.exit71.i, !llvm.loop !272

rbimpl_intern_const.exit71.i:                     ; preds = %.lr.ph.i69.i, %bb.h
  %.lcssa.i68.i = phi i64 [ %.pr.i66.i, %bb.h ], [ %i.s, %.lr.ph.i69.i ]
  %i.t = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i68.i) #20
  %i.u = tail call i64 @rb_hash_aref(i64 noundef range(i64 1, 0) %1, i64 noundef %i.t) #20
  switch i64 %i.u, label %bb.k [
    i64 20, label %bb.i
    i64 0, label %bb.j
  ]

bb.i:                                             ; preds = %rbimpl_intern_const.exit71.i
  %i.v = load i16, ptr %0, align 4
  %i.w = or i16 %i.v, 2
  br label %.sink.split157.i

bb.j:                                             ; preds = %rbimpl_intern_const.exit71.i
  %i.x = load i16, ptr %0, align 4
  %i.y = and i16 %i.x, -3
  br label %.sink.split157.i

.sink.split157.i:                                 ; preds = %bb.j, %bb.i
  %.sink158.i = phi i16 [ %i.y, %bb.j ], [ %i.w, %bb.i ]
  store i16 %.sink158.i, ptr %0, align 4
  br label %bb.k

bb.k:                                             ; preds = %.sink.split157.i, %rbimpl_intern_const.exit71.i
  %.pr.i72.i = load i64, ptr @set_compile_option_from_hash.rbimpl_id.140, align 8, !tbaa !11 ; 2 uses
  %.not4.i73.i = icmp eq i64 %.pr.i72.i, 0
  br i1 %.not4.i73.i, label %.lr.ph.i75.i, label %rbimpl_intern_const.exit77.i

.lr.ph.i75.i:                                     ; preds = %bb.k, %.lr.ph.i75.i
  %i.z = tail call i64 @rb_intern2(ptr noundef nonnull @.str.141, i64 noundef 21) #20 ; 3 uses
  store i64 %i.z, ptr @set_compile_option_from_hash.rbimpl_id.140, align 8, !tbaa !11
  %.not.i76.i = icmp eq i64 %i.z, 0
  br i1 %.not.i76.i, label %.lr.ph.i75.i, label %rbimpl_intern_const.exit77.i, !llvm.loop !272

rbimpl_intern_const.exit77.i:                     ; preds = %.lr.ph.i75.i, %bb.k
  %.lcssa.i74.i = phi i64 [ %.pr.i72.i, %bb.k ], [ %i.z, %.lr.ph.i75.i ]
  %i.aa = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i74.i) #20
  %i.ab = tail call i64 @rb_hash_aref(i64 noundef range(i64 1, 0) %1, i64 noundef %i.aa) #20
  switch i64 %i.ab, label %bb.n [
    i64 20, label %bb.l
    i64 0, label %bb.m
  ]

bb.l:                                             ; preds = %rbimpl_intern_const.exit77.i
  %i.ac = load i16, ptr %0, align 4
  %i.ad = or i16 %i.ac, 4
  br label %.sink.split159.i

bb.m:                                             ; preds = %rbimpl_intern_const.exit77.i
  %i.ae = load i16, ptr %0, align 4
  %i.af = and i16 %i.ae, -5
  br label %.sink.split159.i

.sink.split159.i:                                 ; preds = %bb.m, %bb.l
  %.sink160.i = phi i16 [ %i.af, %bb.m ], [ %i.ad, %bb.l ]
  store i16 %.sink160.i, ptr %0, align 4
  br label %bb.n

bb.n:                                             ; preds = %.sink.split159.i, %rbimpl_intern_const.exit77.i
  %.pr.i78.i = load i64, ptr @set_compile_option_from_hash.rbimpl_id.142, align 8, !tbaa !11 ; 2 uses
  %.not4.i79.i = icmp eq i64 %.pr.i78.i, 0
  br i1 %.not4.i79.i, label %.lr.ph.i81.i, label %rbimpl_intern_const.exit83.i

.lr.ph.i81.i:                                     ; preds = %bb.n, %.lr.ph.i81.i
  %i.ag = tail call i64 @rb_intern2(ptr noundef nonnull @.str.143, i64 noundef 23) #20 ; 3 uses
  store i64 %i.ag, ptr @set_compile_option_from_hash.rbimpl_id.142, align 8, !tbaa !11
  %.not.i82.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i82.i, label %.lr.ph.i81.i, label %rbimpl_intern_const.exit83.i, !llvm.loop !272

rbimpl_intern_const.exit83.i:                     ; preds = %.lr.ph.i81.i, %bb.n
  %.lcssa.i80.i = phi i64 [ %.pr.i78.i, %bb.n ], [ %i.ag, %.lr.ph.i81.i ]
  %i.ah = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i80.i) #20
  %i.ai = tail call i64 @rb_hash_aref(i64 noundef range(i64 1, 0) %1, i64 noundef %i.ah) #20
  switch i64 %i.ai, label %bb.q [
    i64 20, label %bb.o
    i64 0, label %bb.p
  ]

bb.o:                                             ; preds = %rbimpl_intern_const.exit83.i
  %i.aj = load i16, ptr %0, align 4
  %i.ak = or i16 %i.aj, 8
  br label %.sink.split161.i

bb.p:                                             ; preds = %rbimpl_intern_const.exit83.i
  %i.al = load i16, ptr %0, align 4
  %i.am = and i16 %i.al, -9
  br label %.sink.split161.i

.sink.split161.i:                                 ; preds = %bb.p, %bb.o
  %.sink162.i = phi i16 [ %i.am, %bb.p ], [ %i.ak, %bb.o ]
  store i16 %.sink162.i, ptr %0, align 4
  br label %bb.q

bb.q:                                             ; preds = %.sink.split161.i, %rbimpl_intern_const.exit83.i
  %.pr.i84.i = load i64, ptr @set_compile_option_from_hash.rbimpl_id.144, align 8, !tbaa !11 ; 2 uses
  %.not4.i85.i = icmp eq i64 %.pr.i84.i, 0
  br i1 %.not4.i85.i, label %.lr.ph.i87.i, label %rbimpl_intern_const.exit89.i

.lr.ph.i87.i:                                     ; preds = %bb.q, %.lr.ph.i87.i
  %i.an = tail call i64 @rb_intern2(ptr noundef nonnull @.str.145, i64 noundef 20) #20 ; 3 uses
  store i64 %i.an, ptr @set_compile_option_from_hash.rbimpl_id.144, align 8, !tbaa !11
  %.not.i88.i = icmp eq i64 %i.an, 0
  br i1 %.not.i88.i, label %.lr.ph.i87.i, label %rbimpl_intern_const.exit89.i, !llvm.loop !272

rbimpl_intern_const.exit89.i:                     ; preds = %.lr.ph.i87.i, %bb.q
  %.lcssa.i86.i = phi i64 [ %.pr.i84.i, %bb.q ], [ %i.an, %.lr.ph.i87.i ]
  %i.ao = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i86.i) #20
  %i.ap = tail call i64 @rb_hash_aref(i64 noundef range(i64 1, 0) %1, i64 noundef %i.ao) #20
  switch i64 %i.ap, label %bb.t [
    i64 20, label %bb.r
    i64 0, label %bb.s
  ]

bb.r:                                             ; preds = %rbimpl_intern_const.exit89.i
  %i.aq = load i16, ptr %0, align 4
end_hunk_8
begin_hunk_9_@make_compile_option:bb.a

rbimpl_intern_const.exit95.i:                     ; preds = %.lr.ph.i93.i, %bb.t
  %.lcssa.i92.i = phi i64 [ %.pr.i90.i, %bb.t ], [ %i.au, %.lr.ph.i93.i ]
  %i.av = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i92.i) #20
  %i.aw = tail call i64 @rb_hash_aref(i64 noundef range(i64 1, 0) %1, i64 noundef %i.av) #20
  switch i64 %i.aw, label %bb.w [
    i64 20, label %bb.u
    i64 0, label %bb.v
  ]

bb.u:                                             ; preds = %rbimpl_intern_const.exit95.i
  %i.ax = load i16, ptr %0, align 4
  %i.ay = or i16 %i.ax, 32
  br label %.sink.split165.i

bb.v:                                             ; preds = %rbimpl_intern_const.exit95.i
  %i.az = load i16, ptr %0, align 4
  %i.ba = and i16 %i.az, -33
  br label %.sink.split165.i

.sink.split165.i:                                 ; preds = %bb.v, %bb.u
  %.sink166.i = phi i16 [ %i.ba, %bb.v ], [ %i.ay, %bb.u ]
  store i16 %.sink166.i, ptr %0, align 4
  br label %bb.w

bb.w:                                             ; preds = %.sink.split165.i, %rbimpl_intern_const.exit95.i
  %.pr.i96.i = load i64, ptr @set_compile_option_from_hash.rbimpl_id.148, align 8, !tbaa !11 ; 2 uses
  %.not4.i97.i = icmp eq i64 %.pr.i96.i, 0
  br i1 %.not4.i97.i, label %.lr.ph.i99.i, label %rbimpl_intern_const.exit101.i

.lr.ph.i99.i:                                     ; preds = %bb.w, %.lr.ph.i99.i
  %i.bb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.149, i64 noundef 21) #20 ; 3 uses
  store i64 %i.bb, ptr @set_compile_option_from_hash.rbimpl_id.148, align 8, !tbaa !11
  %.not.i100.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i100.i, label %.lr.ph.i99.i, label %rbimpl_intern_const.exit101.i, !llvm.loop !272

rbimpl_intern_const.exit101.i:                    ; preds = %.lr.ph.i99.i, %bb.w
  %.lcssa.i98.i = phi i64 [ %.pr.i96.i, %bb.w ], [ %i.bb, %.lr.ph.i99.i ]
  %i.bc = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i98.i) #20
  %i.bd = tail call i64 @rb_hash_aref(i64 noundef range(i64 1, 0) %1, i64 noundef %i.bc) #20
  switch i64 %i.bd, label %bb.z [
    i64 20, label %bb.x
    i64 0, label %bb.y
  ]

bb.x:                                             ; preds = %rbimpl_intern_const.exit101.i
  %i.be = load i16, ptr %0, align 4
  %i.bf = and i16 %i.be, -193
  %i.bg = or disjoint i16 %i.bf, 64
  br label %.sink.split167.i

bb.y:                                             ; preds = %rbimpl_intern_const.exit101.i
  %i.bh = load i16, ptr %0, align 4
  %i.bi = and i16 %i.bh, -193
  br label %.sink.split167.i

.sink.split167.i:                                 ; preds = %bb.y, %bb.x
  %.sink168.i = phi i16 [ %i.bi, %bb.y ], [ %i.bg, %bb.x ]
  store i16 %.sink168.i, ptr %0, align 4
  br label %bb.z

bb.z:                                             ; preds = %.sink.split167.i, %rbimpl_intern_const.exit101.i
  %.pr.i102.i = load i64, ptr @set_compile_option_from_hash.rbimpl_id.150, align 8, !tbaa !11 ; 2 uses
  %.not4.i103.i = icmp eq i64 %.pr.i102.i, 0
  br i1 %.not4.i103.i, label %.lr.ph.i105.i, label %rbimpl_intern_const.exit107.i

.lr.ph.i105.i:                                    ; preds = %bb.z, %.lr.ph.i105.i
  %i.bj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.151, i64 noundef 27) #20 ; 3 uses
  store i64 %i.bj, ptr @set_compile_option_from_hash.rbimpl_id.150, align 8, !tbaa !11
  %.not.i106.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i106.i, label %.lr.ph.i105.i, label %rbimpl_intern_const.exit107.i, !llvm.loop !272

rbimpl_intern_const.exit107.i:                    ; preds = %.lr.ph.i105.i, %bb.z
  %.lcssa.i104.i = phi i64 [ %.pr.i102.i, %bb.z ], [ %i.bj, %.lr.ph.i105.i ]
  %i.bk = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i104.i) #20
  %i.bl = tail call i64 @rb_hash_aref(i64 noundef range(i64 1, 0) %1, i64 noundef %i.bk) #20
  switch i64 %i.bl, label %bb.ac [
    i64 20, label %bb.aa
    i64 0, label %bb.ab
  ]

bb.aa:                                            ; preds = %rbimpl_intern_const.exit107.i
  %i.bm = load i16, ptr %0, align 4
  %i.bn = or i16 %i.bm, 256
  br label %.sink.split169.i

bb.ab:                                            ; preds = %rbimpl_intern_const.exit107.i
  %i.bo = load i16, ptr %0, align 4
  %i.bp = and i16 %i.bo, -257
  br label %.sink.split169.i

.sink.split169.i:                                 ; preds = %bb.ab, %bb.aa
  %.sink170.i = phi i16 [ %i.bp, %bb.ab ], [ %i.bn, %bb.aa ]
  store i16 %.sink170.i, ptr %0, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split169.i, %rbimpl_intern_const.exit107.i
  %.pr.i108.i = load i64, ptr @set_compile_option_from_hash.rbimpl_id.152, align 8, !tbaa !11 ; 2 uses
  %.not4.i109.i = icmp eq i64 %.pr.i108.i, 0
  br i1 %.not4.i109.i, label %.lr.ph.i111.i, label %rbimpl_intern_const.exit113.i

.lr.ph.i111.i:                                    ; preds = %bb.ac, %.lr.ph.i111.i
  %i.bq = tail call i64 @rb_intern2(ptr noundef nonnull @.str.153, i64 noundef 16) #20 ; 3 uses
  store i64 %i.bq, ptr @set_compile_option_from_hash.rbimpl_id.152, align 8, !tbaa !11
  %.not.i112.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i112.i, label %.lr.ph.i111.i, label %rbimpl_intern_const.exit113.i, !llvm.loop !272

rbimpl_intern_const.exit113.i:                    ; preds = %.lr.ph.i111.i, %bb.ac
  %.lcssa.i110.i = phi i64 [ %.pr.i108.i, %bb.ac ], [ %i.bq, %.lr.ph.i111.i ]
  %i.br = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i110.i) #20
  %i.bs = tail call i64 @rb_hash_aref(i64 noundef range(i64 1, 0) %1, i64 noundef %i.br) #20
  switch i64 %i.bs, label %bb.af [
    i64 20, label %bb.ad
    i64 0, label %bb.ae
  ]

bb.ad:                                            ; preds = %rbimpl_intern_const.exit113.i
  %i.bt = load i16, ptr %0, align 4
  %i.bu = or i16 %i.bt, 512
  br label %.sink.split171.i

bb.ae:                                            ; preds = %rbimpl_intern_const.exit113.i
  %i.bv = load i16, ptr %0, align 4
  %i.bw = and i16 %i.bv, -513
  br label %.sink.split171.i

.sink.split171.i:                                 ; preds = %bb.ae, %bb.ad
  %.sink172.i = phi i16 [ %i.bw, %bb.ae ], [ %i.bu, %bb.ad ]
  store i16 %.sink172.i, ptr %0, align 4
  br label %bb.af

bb.af:                                            ; preds = %.sink.split171.i, %rbimpl_intern_const.exit113.i
  %.pr.i114.i = load i64, ptr @set_compile_option_from_hash.rbimpl_id.154, align 8, !tbaa !11 ; 2 uses
  %.not4.i115.i = icmp eq i64 %.pr.i114.i, 0
  br i1 %.not4.i115.i, label %.lr.ph.i117.i, label %rbimpl_intern_const.exit119.i

.lr.ph.i117.i:                                    ; preds = %bb.af, %.lr.ph.i117.i
  %i.bx = tail call i64 @rb_intern2(ptr noundef nonnull @.str.155, i64 noundef 11) #20 ; 3 uses
  store i64 %i.bx, ptr @set_compile_option_from_hash.rbimpl_id.154, align 8, !tbaa !11
  %.not.i118.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i118.i, label %.lr.ph.i117.i, label %rbimpl_intern_const.exit119.i, !llvm.loop !272

rbimpl_intern_const.exit119.i:                    ; preds = %.lr.ph.i117.i, %bb.af
  %.lcssa.i116.i = phi i64 [ %.pr.i114.i, %bb.af ], [ %i.bx, %.lr.ph.i117.i ]
  %i.by = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i116.i) #20
  %i.bz = tail call i64 @rb_hash_aref(i64 noundef range(i64 1, 0) %1, i64 noundef %i.by) #20 ; 4 uses
  %i.ca = icmp eq i64 %i.bz, 4
  br i1 %i.ca, label %set_compile_option_from_hash.exit, label %bb.ag

bb.ag:                                            ; preds = %rbimpl_intern_const.exit119.i
  %i.cb = trunc i64 %i.bz to i1
  br i1 %i.cb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cc = tail call i64 @rb_fix2int(i64 noundef %i.bz) #20
  br label %rb_num2int_inline.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.cd = tail call i64 @rb_num2int(i64 noundef %i.bz) #20
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.ai, %bb.ah
  %.0.i.i = phi i64 [ %i.cc, %bb.ah ], [ %i.cd, %bb.ai ]
  %i.ce = trunc i64 %.0.i.i to i32
  %i.cf = getelementptr i8, ptr %0, i64 4
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !386
  br label %set_compile_option_from_hash.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cg = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cg, ptr noundef nonnull @.str.136) #22
  unreachable

set_compile_option_from_hash.exit:                ; preds = %.preheader.preheader, %rb_num2int_inline.exit.i, %rbimpl_intern_const.exit119.i, %bb.c, %bb.b
  ret void
}

declare void @rb_iseq_build_from_ary(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #2

declare i64 @rb_check_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #2

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @iseqw_mark_and_move(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_gc_mark_and_move(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_memsize(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !283
  %i.b = tail call i64 @rb_iseq_memsize(ptr noundef %i.a)
  ret i64 %i.b
}

declare void @rb_ibf_load_iseq_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #17

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #2

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_is_local_id(i64 noundef) local_unnamed_addr #18

declare i64 @rb_str_inspect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_resurrect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_resurrect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_resurrect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_str_modify_expand(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @rb_st_init_numtable() local_unnamed_addr #2

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @rb_iseq_original_iseq(ptr noundef) local_unnamed_addr #2

declare void @rb_mark_set(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @iseq_iterate_children(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_iseq_original_iseq(ptr noundef %0) #20 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = tail call i64 @rb_ident_hash_new() #20
  %i.e = tail call i64 @rb_obj_hide(i64 noundef %i.d) #20 ; 4 uses
  %i.f = getelementptr i8, ptr %i.c, i64 160      ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = load i32, ptr %i.g, align 1, !tbaa !7
  %.not53 = icmp eq i32 %i.h, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.i = phi ptr [ %i.q, %bb.d ], [ %i.g, %.preheader ]
  %i.j = getelementptr [32 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = getelementptr i8, ptr %i.j, i64 12
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !143  ; 3 uses
  %.not49 = icmp eq ptr %i.l, null
  br i1 %.not49, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = tail call i64 @rb_hash_aref(i64 noundef %i.e, i64 noundef %i.m) #20
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i64 @rb_hash_aset(i64 noundef %i.e, i64 noundef %i.m, i64 noundef 20) #20 ; 0 uses
  tail call void %1(ptr noundef nonnull %i.l, ptr noundef %2) #20, !callees !391
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %i.r = load i32, ptr %i.q, align 1, !tbaa !7
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %.loopexit, !llvm.loop !369

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.a
  %i.u = getelementptr i8, ptr %i.c, i64 4        ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !89
  %.not54 = icmp eq i32 %i.v, 0
  br i1 %.not54, label %RHASH_SIZE.exit, label %.lr.ph52

.lr.ph52:                                         ; preds = %.loopexit, %bb.j
  %.151 = phi i32 [ %i.at, %bb.j ], [ 0, %.loopexit ] ; 3 uses
  %i.w = zext i32 %.151 to i64
  %i.x = getelementptr [8 x i8], ptr %i.a, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11   ; 2 uses
  %i.z = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !90
  %i.ab = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.y
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !296
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.ad
  %i.af = add nuw i32 %.151, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph52
  %.0 = phi i32 [ 0, %.lr.ph52 ], [ %i.ar, %bb.i ] ; 3 uses
  %i.ag = sext i32 %.0 to i64
  %i.ah = getelementptr i8, ptr %i.ae, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !90
  switch i8 %i.ai, label %bb.i [
    i8 0, label %bb.j
    i8 83, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.aj = add i32 %i.af, %.0
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr [8 x i8], ptr %i.a, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11 ; 4 uses
  %i.an = inttoptr i64 %i.am to ptr
  %.not48 = icmp eq i64 %i.am, 0
  br i1 %.not48, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call i64 @rb_hash_aref(i64 noundef %i.e, i64 noundef %i.am) #20
  %i.ap = icmp eq i64 %i.ao, 4
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call i64 @rb_hash_aset(i64 noundef %i.e, i64 noundef %i.am, i64 noundef 20) #20 ; 0 uses
  tail call void %1(ptr noundef nonnull %i.an, ptr noundef %2) #20, !callees !391
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f
  %i.ar = add i32 %.0, 1
  br label %bb.e, !llvm.loop !370

bb.j:                                             ; preds = %bb.e
  %i.as = zext i8 %i.aa to i32
  %i.at = add i32 %.151, %i.as                    ; 2 uses
  %i.au = load i32, ptr %i.u, align 4, !tbaa !89
  %i.av = icmp ult i32 %i.at, %i.au
  br i1 %i.av, label %.lr.ph52, label %RHASH_SIZE.exit, !llvm.loop !371

RHASH_SIZE.exit:                                  ; preds = %bb.j, %.loopexit
  ret void
}

declare void @rb_hook_list_connect_local_tracepoint(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_obj_hide(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ident_hash_new() local_unnamed_addr #2

declare zeroext i1 @rb_hook_list_remove_local_tracepoint(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_hook_list_count(ptr noundef) local_unnamed_addr #2

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_hook_list_free(ptr noundef) local_unnamed_addr #2

declare void @rb_vm_cc_general(ptr noundef) local_unnamed_addr #2

declare noalias ptr @rb_xcalloc_mul_add_mul(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_class_name(i64 noundef) local_unnamed_addr #2

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @iseq_data_to_ary(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 24 uses
  %i.h = tail call i64 @rb_ary_new() #20          ; 15 uses
  %i.i = tail call i64 @rb_ary_new() #20          ; 2 uses
  %i.j = tail call i64 @rb_hash_new() #20         ; 12 uses
  %i.k = tail call i64 @rb_ary_new() #20          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.l = tail call i64 @rb_ary_new() #20          ; 2 uses
  %i.m = tail call i64 @rb_hash_new() #20         ; 8 uses
  %i.n = tail call ptr @rb_st_init_numtable() #20 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.o = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef %i.n, ptr noundef nonnull @label_wrapper) #20
  store i64 %i.o, ptr %i.b, align 8, !tbaa !11
  %i.p = load i64, ptr @iseq_data_to_ary.insn_syms, align 16, !tbaa !11
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.preheader666, label %.loopexit667

.preheader666:                                    ; preds = %bb.a, %.preheader666
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader666 ], [ 0, %bb.a ] ; 3 uses
  %i.r = getelementptr [2 x i8], ptr @rb_vm_insn_name_offset, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2, !tbaa !296
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr i8, ptr @rb_vm_insn_name_base, i64 %i.t
  %i.v = tail call i64 @rb_intern(ptr noundef %i.u) #20
  %i.w = getelementptr [8 x i8], ptr @iseq_data_to_ary.insn_syms, i64 %indvars.iv
  store i64 %i.v, ptr %i.w, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 109
  br i1 %exitcond.not, label %.loopexit667, label %.preheader666, !llvm.loop !392

.loopexit667:                                     ; preds = %.preheader666, %bb.a
  %i.x = load i32, ptr %i.g, align 8, !tbaa !160
  %i.y = tail call fastcc i64 @iseq_type_id(i32 noundef %i.x)
  %i.z = getelementptr i8, ptr %i.g, i64 240      ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !155 ; 2 uses
  %.not751 = icmp eq i32 %i.aa, 0
  br i1 %.not751, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit667
  %i.ab = getelementptr i8, ptr %i.g, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.ac = phi i32 [ %i.aa, %.lr.ph ], [ %i.ar, %bb.g ]
  %indvars.iv808 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next809, %bb.g ] ; 3 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !95
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv808
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11 ; 3 uses
  switch i64 %i.af, label %bb.c [
    i64 0, label %bb.f
    i64 153, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.ag = tail call i64 @rb_id2str(i64 noundef %i.af) #20
  %.not392 = icmp eq i64 %i.ag, 0
  br i1 %.not392, label %._crit_edge832, label %bb.d

._crit_edge832:                                   ; preds = %bb.c
  %.pre = load i32, ptr %i.z, align 8, !tbaa !155
  br label %bb.e

end_hunk_9
begin_hunk_10_@iseq_data_to_ary:bb.a
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
end_hunk_10
begin_hunk_11_@iseq_data_to_ary:bb.a
  %.not4.i633 = icmp eq i64 %.pr.i632, 0
  br i1 %.not4.i633, label %.lr.ph.i635, label %rbimpl_intern_const.exit631

.lr.ph.i635:                                      ; preds = %bb.de, %.lr.ph.i635
  %i.ye = call i64 @rb_intern2(ptr noundef nonnull @.str.273, i64 noundef 7) #20 ; 3 uses
  store i64 %i.ye, ptr @iseq_data_to_ary.rbimpl_id.272, align 8, !tbaa !11
  %.not.i636 = icmp eq i64 %i.ye, 0
  br i1 %.not.i636, label %.lr.ph.i635, label %rbimpl_intern_const.exit631, !llvm.loop !272

rbimpl_intern_const.exit631:                      ; preds = %.lr.ph.i635, %.lr.ph.i629, %bb.de, %bb.dd
  %.lcssa.i634.sink = phi i64 [ %i.yd, %.lr.ph.i629 ], [ %.pr.i626, %bb.dd ], [ %.pr.i632, %bb.de ], [ %i.ye, %.lr.ph.i635 ]
  %i.yf = call i64 @rb_id2sym(i64 noundef %.lcssa.i634.sink) #20
  %i.yg = call i64 @rb_hash_aset(i64 noundef %i.m, i64 noundef %i.xz, i64 noundef %i.yf) #20 ; 0 uses
  %i.yh = call i64 @rb_str_new_static(ptr noundef nonnull @.str.274, i64 noundef 40) #20
  %i.yi = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.yh) #20 ; 0 uses
  %i.yj = load i32, ptr @ruby_api_version, align 4, !tbaa !7
  %i.yk = zext i32 %i.yj to i64
  %i.yl = shl nuw nsw i64 %i.yk, 1
  %i.ym = or disjoint i64 %i.yl, 1
  %i.yn = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.ym) #20 ; 0 uses
  %i.yo = load i32, ptr getelementptr (i8, ptr @ruby_api_version, i64 4), align 4, !tbaa !7
  %i.yp = zext i32 %i.yo to i64
  %i.yq = shl nuw nsw i64 %i.yp, 1
  %i.yr = or disjoint i64 %i.yq, 1
  %i.ys = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.yr) #20 ; 0 uses
  %i.yt = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef 3) #20 ; 0 uses
  %i.yu = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.m) #20 ; 0 uses
  %i.yv = getelementptr i8, ptr %i.g, i64 80
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !261
  %i.yx = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.yw) #20 ; 0 uses
  %i.yy = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.yz = getelementptr i8, ptr %i.yy, i64 64
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !269 ; 4 uses
  %i.zb = icmp ne i64 %i.za, 0
  %i.zc = and i64 %i.za, 7
  %i.zd = icmp eq i64 %i.zc, 0
  %.not4.i638 = and i1 %i.zb, %i.zd
  %.pre.i.i = inttoptr i64 %i.za to ptr           ; 3 uses
  %.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !80 ; 2 uses
  %i.ze = and i64 %.pre.i, 31
  %i.zf = icmp eq i64 %i.ze, 5
  %or.cond.i639 = select i1 %.not4.i638, i1 %i.zf, i1 false
  br i1 %or.cond.i639, label %rb_iseq_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_intern_const.exit631
  %i.zg = and i64 %.pre.i, 8192
  %.not.i.i.i.i = icmp eq i64 %i.zg, 0
  br i1 %.not.i.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.zh = getelementptr i8, ptr %.pre.i.i, i64 16
  br label %RARRAY_AREF.exit.i.i

bb.dg:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.zi = getelementptr i8, ptr %.pre.i.i, i64 32
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !90
  br label %RARRAY_AREF.exit.i.i

RARRAY_AREF.exit.i.i:                             ; preds = %bb.dg, %bb.df
  %.0.i.i.i.i = phi ptr [ %i.zh, %bb.df ], [ %i.zj, %bb.dg ]
  %i.zk = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !11
  br label %rb_iseq_path.exit

rb_iseq_path.exit:                                ; preds = %rbimpl_intern_const.exit631, %RARRAY_AREF.exit.i.i
  %.0.i.i640 = phi i64 [ %i.zk, %RARRAY_AREF.exit.i.i ], [ %i.za, %rbimpl_intern_const.exit631 ]
  %i.zl = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %.0.i.i640) #20 ; 0 uses
  %i.zm = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.zn = getelementptr i8, ptr %i.zm, i64 64
  %i.zo = load i64, ptr %i.zn, align 8, !tbaa !269 ; 4 uses
  %i.zp = icmp ne i64 %i.zo, 0
  %i.zq = and i64 %i.zo, 7
  %i.zr = icmp eq i64 %i.zq, 0
  %.not4.i641 = and i1 %i.zp, %i.zr
  %.pre.i.i642 = inttoptr i64 %i.zo to ptr        ; 3 uses
  %.pre.i643 = load i64, ptr %.pre.i.i642, align 8, !tbaa !80 ; 2 uses
  %i.zs = and i64 %.pre.i643, 31
  %i.zt = icmp eq i64 %i.zs, 5
  %or.cond.i644 = select i1 %.not4.i641, i1 %i.zt, i1 false
  br i1 %or.cond.i644, label %rb_iseq_realpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i645

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i645:     ; preds = %rb_iseq_path.exit
  %i.zu = and i64 %.pre.i643, 8192
  %.not.i.i.i.i646 = icmp eq i64 %i.zu, 0
  br i1 %.not.i.i.i.i646, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i645
  %i.zv = getelementptr i8, ptr %.pre.i.i642, i64 16
  br label %RARRAY_AREF.exit.i.i647

bb.di:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i645
  %i.zw = getelementptr i8, ptr %.pre.i.i642, i64 32
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !90
  br label %RARRAY_AREF.exit.i.i647

RARRAY_AREF.exit.i.i647:                          ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i648 = phi ptr [ %i.zv, %bb.dh ], [ %i.zx, %bb.di ]
  %i.zy = getelementptr i8, ptr %.0.i.i.i.i648, i64 8
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !11
  br label %rb_iseq_realpath.exit

rb_iseq_realpath.exit:                            ; preds = %rb_iseq_path.exit, %RARRAY_AREF.exit.i.i647
  %.0.i.i649 = phi i64 [ %i.zz, %RARRAY_AREF.exit.i.i647 ], [ %i.zo, %rb_iseq_path.exit ]
  %i.aaa = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %.0.i.i649) #20 ; 0 uses
  %i.aab = getelementptr i8, ptr %i.g, i64 88
  %i.aac = load i32, ptr %i.aab, align 8, !tbaa !290
  %i.aad = sext i32 %i.aac to i64
  %i.aae = shl nsw i64 %i.aad, 1
  %i.aaf = or disjoint i64 %i.aae, 1
  %i.aag = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.aaf) #20 ; 0 uses
  %i.aah = call i64 @rb_id2sym(i64 noundef %i.y) #20
  %i.aai = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.aah) #20 ; 0 uses
  %i.aaj = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.i) #20 ; 0 uses
  %i.aak = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.j) #20 ; 0 uses
  %i.aal = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.l) #20 ; 0 uses
  %i.aam = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.qp) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %i.h
}

declare i64 @rb_hash_new() local_unnamed_addr #2

declare i64 @rb_intern(ptr noundef) local_unnamed_addr #2

declare void @rb_hash_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @cdhash_each(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %obj_resurrect.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !284
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %obj_resurrect.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.e, align 8, !tbaa !80
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 31
  switch i32 %i.j, label %obj_resurrect.exit [
    i32 5, label %bb.d
    i32 7, label %bb.e
    i32 8, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @rb_str_resurrect(i64 noundef %0) #20
  br label %obj_resurrect.exit

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i64 @rb_ary_resurrect(i64 noundef %0) #20
  br label %obj_resurrect.exit

bb.f:                                             ; preds = %bb.c
  %i.m = tail call i64 @rb_hash_resurrect(i64 noundef %0) #20
  br label %obj_resurrect.exit

obj_resurrect.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %0, %bb.a ], [ %0, %bb.b ], [ %0, %bb.c ], [ %i.k, %bb.d ], [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  %i.n = tail call i64 @rb_ary_push(i64 noundef %2, i64 noundef %.0.i) #20 ; 0 uses
  %i.o = tail call i64 @rb_ary_push(i64 noundef %2, i64 noundef %1) #20 ; 0 uses
  ret i32 0
}

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_mark_tbl(ptr noundef) #2

declare i64 @rb_str_intern(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #11

declare i64 @rb_iseq_eval(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_current_box() local_unnamed_addr #2

declare i64 @rb_iseq_ibf_dump(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

declare ptr @rb_iseq_ibf_load(i64 noundef) local_unnamed_addr #2

declare i64 @rb_iseq_ibf_load_extra_data(i64 noundef) local_unnamed_addr #2

declare i64 @rb_yield(i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #2

declare i32 @rb_keyword_given_p() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @iseqw_s_compile_parser(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.rb_compile_option_struct, align 4 ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.rb_compile_option_struct, align 4 ; 5 uses
  %5 = alloca %struct.pm_parse_result_t, align 8  ; 10 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.l = zext nneg i32 %0 to i64
  %i.m = getelementptr [8 x i8], ptr %1, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = tail call i32 @rb_keyword_given_p() #20
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.thread68, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call i64 @rb_hash_dup(i64 noundef %i.o) #20
  %i.r = add nsw i32 %0, -1                       ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %.thread68

.thread68:                                        ; preds = %bb.b, %bb.c
  %.1.i72 = phi i32 [ %i.r, %bb.c ], [ %0, %bb.b ] ; 2 uses
  %.188.i71 = phi i64 [ %i.q, %bb.c ], [ 4, %bb.b ] ; 5 uses
  %i.t = load i64, ptr %1, align 8, !tbaa !11     ; 9 uses
  %i.u = icmp eq i64 %.188.i71, 4
  %i.v = select i1 %i.u, i32 5, i32 4
  %i.w = icmp samesign ugt i32 %.1.i72, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.c
  %.1.i50 = phi i32 [ 0, %bb.c ], [ %0, %bb.a ]
  tail call void @rb_error_arity(i32 noundef %.1.i50, i32 noundef 1, i32 noundef -1) #22
  unreachable

bb.d:                                             ; preds = %.thread68
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 5) #22
  unreachable

bb.e:                                             ; preds = %.thread68
  switch i32 %.1.i72, label %.thread51 [
    i32 5, label %bb.f
    i32 4, label %bb.g
    i32 3, label %bb.h
    i32 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = phi i64 [ %i.y, %bb.f ], [ %.188.i71, %bb.e ]
  %i.aa = getelementptr i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ac = phi i64 [ %i.z, %bb.g ], [ %.188.i71, %bb.e ]
  %.027 = phi i64 [ %i.ab, %bb.g ], [ 4, %bb.e ]
  %i.ad = getelementptr i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %i.af = phi i64 [ %i.ac, %bb.h ], [ %.188.i71, %bb.e ] ; 2 uses
  %.030 = phi i64 [ %i.ae, %bb.h ], [ 4, %bb.e ]  ; 2 uses
  %.128 = phi i64 [ %.027, %bb.h ], [ 4, %bb.e ]  ; 2 uses
  %i.ag = getelementptr i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4
  br i1 %i.ai, label %.thread51, label %bb.j

.thread51:                                        ; preds = %bb.e, %bb.i
  %i.aj = phi i64 [ %i.af, %bb.i ], [ %.188.i71, %bb.e ]
  %.22958 = phi i64 [ %.128, %bb.i ], [ 4, %bb.e ]
  %.13156 = phi i64 [ %.030, %bb.i ], [ 4, %bb.e ]
  %i.ak = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.300, i64 noundef 10) #20
  br label %bb.j

bb.j:                                             ; preds = %.thread51, %bb.i
  %i.al = phi i64 [ %i.aj, %.thread51 ], [ %i.af, %bb.i ] ; 2 uses
  %.22957 = phi i64 [ %.22958, %.thread51 ], [ %.128, %bb.i ] ; 2 uses
  %.13155 = phi i64 [ %.13156, %.thread51 ], [ %.030, %bb.i ] ; 2 uses
  %.134 = phi i64 [ %i.ak, %.thread51 ], [ %i.ah, %bb.i ] ; 7 uses
  %i.am = icmp eq i64 %.13155, 4
  %spec.select = select i1 %i.am, i64 %.134, i64 %.13155 ; 6 uses
  %i.an = icmp eq i64 %.22957, 4
  %spec.store.select = select i1 %i.an, i64 3, i64 %.22957 ; 7 uses
  %i.ao = icmp eq i64 %spec.select, 0
  %i.ap = and i64 %spec.select, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !293

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.j
  %i.as = inttoptr i64 %spec.select to ptr
  %i.at = load i64, ptr %i.as, align 8, !tbaa !80
  %i.au = and i64 %i.at, 31
  %i.av = icmp eq i64 %i.au, 5
  br i1 %i.av, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !414

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.j
  tail call void @rb_unexpected_type(i64 noundef %spec.select, i32 noundef 5) #23
  unreachable

Check_Type.exit:                                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.aw = icmp eq i64 %.134, 0
  %i.ax = and i64 %.134, 7
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = or i1 %i.aw, %i.ay
  br i1 %i.az, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i37, label %rbimpl_RB_TYPE_P_fastpath.exit.i36, !prof !293

rbimpl_RB_TYPE_P_fastpath.exit.i36:               ; preds = %Check_Type.exit
  %i.ba = inttoptr i64 %.134 to ptr
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !80
  %i.bc = and i64 %i.bb, 31
  %i.bd = icmp eq i64 %i.bc, 5
  br i1 %i.bd, label %Check_Type.exit38, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i37, !prof !414

rbimpl_RB_TYPE_P_fastpath.exit.thread.i37:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i36, %Check_Type.exit
  tail call void @rb_unexpected_type(i64 noundef %.134, i32 noundef 5) #23
  unreachable

Check_Type.exit38:                                ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i36
  %i.be = trunc i64 %spec.store.select to i1      ; 3 uses
  br i1 %2, label %bb.k, label %bb.aa

bb.k:                                             ; preds = %Check_Type.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.t, ptr %i.f, align 8, !tbaa !11
  store i64 %.134, ptr %i.g, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bf = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.300, i64 noundef 10) #20
  call fastcc void @make_compile_option(ptr noundef %4, i64 noundef %i.al)
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = tail call i64 @rb_fix2int(i64 noundef %spec.store.select) #20
  br label %rb_num2int_inline.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bh = tail call i64 @rb_num2int(i64 noundef %spec.store.select) #20
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.m, %bb.l
  %.0.i13.i = phi i64 [ %i.bg, %bb.l ], [ %i.bh, %bb.m ]
  %i.bi = trunc i64 %.0.i13.i to i32
  %i.bj = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.g) #20 ; 0 uses
  %i.bk = icmp eq i64 %i.t, 0
  %i.bl = and i64 %i.t, 7
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = or i1 %i.bk, %i.bm
  br i1 %i.bn, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i40, label %rbimpl_RB_TYPE_P_fastpath.exit.i39

rbimpl_RB_TYPE_P_fastpath.exit.i39:               ; preds = %rb_num2int_inline.exit.i
  %i.bo = inttoptr i64 %i.t to ptr
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !80
  %i.bq = and i64 %i.bp, 31
  %i.br = icmp eq i64 %i.bq, 11
  br i1 %i.br, label %bb.n, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i40

bb.n:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i39
  %i.bs = call i64 @rb_io_path(i64 noundef %i.t) #20
  br label %bb.o

rbimpl_RB_TYPE_P_fastpath.exit.thread.i40:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i39, %rb_num2int_inline.exit.i
  %i.bt = call i64 @rb_string_value(ptr noundef nonnull %i.f) #20
  br label %bb.o

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i40, %bb.n
  %.0.i17.i = phi i1 [ false, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i40 ], [ true, %bb.n ]
  %storemerge.i = phi i64 [ %i.bt, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i40 ], [ %i.bs, %bb.n ]
  store i64 %storemerge.i, ptr %i.f, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1000) %5, i8 0, i64 1000, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 712 ; 3 uses
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = call i64 @rb_fix2int(i64 noundef %spec.store.select) #20
  br label %rb_num2int_inline.exit15.i

bb.q:                                             ; preds = %bb.o
  %i.bw = call i64 @rb_num2int(i64 noundef %spec.store.select) #20
  br label %rb_num2int_inline.exit15.i

end_hunk_11
