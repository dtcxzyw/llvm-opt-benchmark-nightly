inline.NumInlined: 615
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@rb_iseq_mark_and_move:bb.a
bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.dc = getelementptr i8, ptr %i.j, i64 296     ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !126 ; 2 uses
  %.not104 = icmp eq ptr %i.dd, null
  br i1 %.not104, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.de = ptrtoint ptr %i.dd to i64
  store i64 %i.de, ptr %i.d, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.d) #20
  %i.df = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !126
  %i.dh = ptrtoint ptr %i.dg to i64
  %.not105 = icmp eq i64 %i.df, %i.dh
  br i1 %.not105, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = inttoptr i64 %i.df to ptr
  store ptr %i.di, ptr %i.dc, align 8, !tbaa !126
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %i.dj = getelementptr i8, ptr %i.j, i64 192     ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !86
  %.not106 = icmp eq ptr %i.dk, null
  br i1 %.not106, label %.loopexit147, label %.preheader146

.preheader146:                                    ; preds = %bb.ad
  %i.dl = getelementptr i8, ptr %i.j, i64 260     ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !127
  %.not158 = icmp eq i32 %i.dm, 0
  br i1 %.not158, label %.loopexit147, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader146, %bb.av
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %.preheader146 ] ; 2 uses
  %i.dn = load ptr, ptr %i.dj, align 8, !tbaa !86
  %i.do = getelementptr [16 x i8], ptr %i.dn, i64 %indvars.iv ; 5 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !128
  %.not115 = icmp eq ptr %i.dp, null
  br i1 %.not115, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !128
  %i.dr = ptrtoint ptr %i.dq to i64
  store i64 %i.dr, ptr %i.e, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.e) #20
  %i.ds = load i64, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !128
  %i.du = ptrtoint ptr %i.dt to i64
  %.not116 = icmp eq i64 %i.ds, %i.du
  br i1 %.not116, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = inttoptr i64 %i.ds to ptr
  store ptr %i.dv, ptr %i.do, align 8, !tbaa !128
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph
  %i.dw = getelementptr i8, ptr %i.do, i64 8      ; 6 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !132 ; 4 uses
  %.not.i121 = icmp eq ptr %i.dx, null
  br i1 %.not.i121, label %bb.at, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dy = call ptr @rb_vm_empty_cc() #20
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %bb.at, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = call ptr @rb_vm_empty_cc_for_super() #20
  %.not15.i = icmp eq ptr %i.ea, null
  br i1 %.not15.i, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  br i1 %1, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = call i64 @rb_gc_location(i64 noundef %i.eb) #20
  %i.ed = inttoptr i64 %i.ec to ptr
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.013.i = phi ptr [ %i.ed, %bb.al ], [ %i.dx, %bb.ak ] ; 3 uses
  %i.ee = load i64, ptr %.013.i, align 8, !tbaa !80
  %i.ef = and i64 %i.ee, 1048576
  %.not19.i122 = icmp eq i64 %i.ef, 0
  br i1 %.not19.i122, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr i8, ptr %.013.i, i64 8
  %.013.val.i = load i64, ptr %i.eg, align 8, !tbaa !133
  %.not20.i = icmp eq i64 %.013.val.i, 36
  br i1 %.not20.i, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eh = getelementptr i8, ptr %.013.i, i64 16
  %.013.val18.i = load ptr, ptr %i.eh, align 8, !tbaa !136 ; 2 uses
  br i1 %1, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ei = ptrtoint ptr %.013.val18.i to i64
  %i.ej = call i64 @rb_gc_location(i64 noundef %i.ei) #20
  %i.ek = inttoptr i64 %i.ej to ptr
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.011.i = phi ptr [ %i.ek, %bb.ap ], [ %.013.val18.i, %bb.ao ]
  %i.el = load i64, ptr %.011.i, align 8, !tbaa !137
  %i.em = and i64 %i.el, 2097152
  %.not17.not.i = icmp eq i64 %i.em, 0
  br i1 %.not17.not.i, label %cc_is_active.exit, label %bb.at

cc_is_active.exit:                                ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.en = load ptr, ptr %i.dw, align 8, !tbaa !132
  %i.eo = ptrtoint ptr %i.en to i64
  store i64 %i.eo, ptr %i.f, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.f) #20
  %i.ep = load i64, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %i.eq = load ptr, ptr %i.dw, align 8, !tbaa !132
  %i.er = ptrtoint ptr %i.eq to i64
  %.not118 = icmp eq i64 %i.ep, %i.er
  br i1 %.not118, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %cc_is_active.exit
  %i.es = inttoptr i64 %i.ep to ptr
  store ptr %i.es, ptr %i.dw, align 8, !tbaa !132
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %cc_is_active.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %bb.av

bb.at:                                            ; preds = %bb.ah, %bb.am, %bb.an, %bb.aq, %bb.aj, %bb.ai
  %i.et = load ptr, ptr %i.dw, align 8, !tbaa !132
  %i.eu = call ptr @rb_vm_empty_cc() #20
  %.not117 = icmp eq ptr %i.et, %i.eu
  br i1 %.not117, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ev = call ptr @rb_vm_empty_cc() #20
  store ptr %i.ev, ptr %i.dw, align 8, !tbaa !132
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.as
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ew = load i32, ptr %i.dl, align 4, !tbaa !127
  %i.ex = zext i32 %i.ew to i64
  %i.ey = icmp samesign ult i64 %indvars.iv.next, %i.ex
  br i1 %i.ey, label %.lr.ph, label %.loopexit147, !llvm.loop !140

.loopexit147:                                     ; preds = %bb.av, %.preheader146, %bb.ad
  %i.ez = getelementptr i8, ptr %i.j, i64 16
  %i.fa = load i16, ptr %i.ez, align 8
  %i.fb = and i16 %i.fa, 16
  %.not107 = icmp eq i16 %i.fb, 0
  br i1 %.not107, label %.loopexit145, label %bb.aw

bb.aw:                                            ; preds = %.loopexit147
  %i.fc = getelementptr i8, ptr %i.j, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !92 ; 5 uses
  %.not108 = icmp eq ptr %i.fd, null
  br i1 %.not108, label %.loopexit145, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fe = getelementptr i8, ptr %i.fd, i64 24     ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !98
  %.not109 = icmp eq ptr %i.ff, null
  br i1 %.not109, label %.loopexit145, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fg = getelementptr i8, ptr %i.fd, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !141 ; 2 uses
  %i.fi = load i32, ptr %i.fd, align 8, !tbaa !97
  %i.fj = icmp slt i32 %i.fh, %i.fi
  br i1 %i.fj, label %.lr.ph155, label %.loopexit145

.lr.ph155:                                        ; preds = %bb.ay, %.lr.ph155
  %.089154 = phi i32 [ %i.fn, %.lr.ph155 ], [ %i.fh, %bb.ay ]
  %.090153 = phi i32 [ %i.fo, %.lr.ph155 ], [ 0, %bb.ay ] ; 2 uses
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !98
  %i.fl = sext i32 %.090153 to i64
  %i.fm = getelementptr [8 x i8], ptr %i.fk, i64 %i.fl
  call void @rb_gc_mark_and_move(ptr noundef %i.fm) #20
  %i.fn = add nsw i32 %.089154, 1                 ; 2 uses
  %i.fo = add nuw i32 %.090153, 1
  %i.fp = load i32, ptr %i.fd, align 8, !tbaa !97
  %i.fq = icmp slt i32 %i.fn, %i.fp
  br i1 %i.fq, label %.lr.ph155, label %.loopexit145, !llvm.loop !142

.loopexit145:                                     ; preds = %.lr.ph155, %bb.ay, %bb.ax, %bb.aw, %.loopexit147
  %i.fr = getelementptr i8, ptr %i.j, i64 160
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !87 ; 4 uses
  %.not110 = icmp eq ptr %i.fs, null
  br i1 %.not110, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit145
  %i.ft = load i32, ptr %i.fs, align 1, !tbaa !7  ; 2 uses
  %.not159 = icmp eq i32 %i.ft, 0
  br i1 %.not159, label %.loopexit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader, %bb.bc
  %i.fu = phi i32 [ %i.ge, %bb.bc ], [ %i.ft, %.preheader ]
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %bb.bc ], [ 0, %.preheader ] ; 2 uses
  %i.fv = getelementptr [32 x i8], ptr %i.fs, i64 %indvars.iv168
  %i.fw = getelementptr i8, ptr %i.fv, i64 12     ; 4 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !143
  %.not113 = icmp eq ptr %i.fx, null
  br i1 %.not113, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %.lr.ph157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !143
  %i.fz = ptrtoint ptr %i.fy to i64
  store i64 %i.fz, ptr %i.g, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.g) #20
  %i.ga = load i64, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.gb = load ptr, ptr %i.fw, align 8, !tbaa !143
  %i.gc = ptrtoint ptr %i.gb to i64
  %.not114 = icmp eq i64 %i.ga, %i.gc
  br i1 %.not114, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gd = inttoptr i64 %i.ga to ptr
  store ptr %i.gd, ptr %i.fw, align 8, !tbaa !143
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %.pre = load i32, ptr %i.fs, align 1, !tbaa !7
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph157
  %i.ge = phi i32 [ %.pre, %bb.bb ], [ %i.fu, %.lr.ph157 ] ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.gf = zext i32 %i.ge to i64
  %i.gg = icmp samesign ult i64 %indvars.iv.next169, %i.gf
  br i1 %i.gg, label %.lr.ph157, label %.loopexit, !llvm.loop !145

.loopexit:                                        ; preds = %bb.bc, %.preheader, %.loopexit145
  br i1 %1, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.loopexit
  call void @rb_yjit_iseq_update_references(ptr noundef %0) #20
  %i.gh = getelementptr i8, ptr %i.j, i64 352
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !146
  call void @rb_zjit_iseq_update_references(ptr noundef %i.gi) #20
  br label %bb.bg

bb.be:                                            ; preds = %.loopexit
  %i.gj = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gj, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gk = getelementptr i8, ptr %i.j, i64 336
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !147
  call void @rb_yjit_iseq_mark(ptr noundef %i.gl) #20
  %i.gm = getelementptr i8, ptr %i.j, i64 352
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !146
  call void @rb_zjit_iseq_mark(ptr noundef %i.gn) #20
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %i.go = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.go, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gp = getelementptr i8, ptr %i.j, i64 216
  call void @rb_gc_mark_and_move(ptr noundef %i.gp) #20
  %i.gq = getelementptr i8, ptr %i.j, i64 224
  call void @rb_gc_mark_and_move(ptr noundef %i.gq) #20
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.a
  %i.gr = load i64, ptr %0, align 8, !tbaa !80    ; 2 uses
  %i.gs = and i64 %i.gr, 131072
  %.not111 = icmp eq i64 %i.gs, 0
  br i1 %.not111, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gt = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gt, label %bb.bu, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gu = getelementptr i8, ptr %0, i64 24
  br label %.sink.split

bb.bl:                                            ; preds = %bb.bi
  %i.gv = and i64 %i.gr, 262144
  %.not112 = icmp eq i64 %i.gv, 0
  br i1 %.not112, label %bb.bu, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gw = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gw, label %bb.bu, label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.bm
  %i.gx = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !90 ; 3 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 104
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !112
  call void @rb_iseq_mark_and_move_insn_storage(ptr noundef %i.ha) #20
  br i1 %1, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %ISEQ_COMPILE_DATA.exit
  %.val = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.hb = getelementptr i8, ptr %.val, i64 232
  %.val.val = load ptr, ptr %i.hb, align 8, !tbaa !91
  br label %bb.bo

bb.bo:                                            ; preds = %ISEQ_COMPILE_DATA.exit, %bb.bn
  %i.hc = phi ptr [ %.val.val, %bb.bn ], [ null, %ISEQ_COMPILE_DATA.exit ] ; 4 uses
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !90 ; 4 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 16
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !148
  %i.hg = getelementptr i8, ptr %i.hd, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !149 ; 4 uses
  %i.hi = getelementptr i8, ptr %i.hd, i64 40     ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8            ; 2 uses
  %.not.i125 = icmp eq ptr %i.hj, null
  %i.hk = ptrtoint ptr %i.hj to i64               ; 2 uses
  br i1 %.not.i125, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hl = getelementptr i8, ptr %i.hd, i64 32
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !150, !range !151, !noundef !152
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %.lr.ph.i.i132, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bp
  %i.ho = zext i32 %i.hf to i64
  %i.hp = add nuw nsw i64 %i.ho, 63
  %i.hq = lshr i64 %i.hp, 6                       ; 3 uses
  %.not35.i = icmp eq i64 %i.hq, 0
  br i1 %.not35.i, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.preheader.i
  %.not22.i20.i = icmp eq ptr %i.hc, null
  br i1 %.not22.i20.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i126, %iseq_scan_bits.exit30.us.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %iseq_scan_bits.exit30.us.i ], [ 0, %.lr.ph.i126 ] ; 3 uses
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !90
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %indvars.iv40.i
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !11 ; 2 uses
  %.not24.i18.us.i = icmp eq i64 %i.ht, 0
  br i1 %.not24.i18.us.i, label %iseq_scan_bits.exit30.us.i, label %.lr.ph.i19.us.i

.lr.ph.i19.us.i:                                  ; preds = %.lr.ph.split.us.i
  %invariant.gep.i.us.idx.i130 = shl nuw nsw i64 %indvars.iv40.i, 9
  %invariant.gep.i.us.i131 = getelementptr i8, ptr %i.hh, i64 %invariant.gep.i.us.idx.i130
  br label %.lr.ph.split.us.i26.us.i

.lr.ph.split.us.i26.us.i:                         ; preds = %.lr.ph.split.us.i26.us.i, %.lr.ph.i19.us.i
  %.025.us.i27.us.i = phi i64 [ %i.hw, %.lr.ph.split.us.i26.us.i ], [ %i.ht, %.lr.ph.i19.us.i ] ; 3 uses
  %i.hu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i27.us.i, i1 true)
  %gep.i28.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.i131, i64 %i.hu
  call void @rb_gc_mark_and_move(ptr noundef nonnull %gep.i28.us.i) #20
  %i.hv = add i64 %.025.us.i27.us.i, -1
  %i.hw = and i64 %i.hv, %.025.us.i27.us.i        ; 2 uses
  %.not.us.i29.us.i = icmp eq i64 %i.hw, 0
  br i1 %.not.us.i29.us.i, label %iseq_scan_bits.exit30.us.i, label %.lr.ph.split.us.i26.us.i, !llvm.loop !122

iseq_scan_bits.exit30.us.i:                       ; preds = %.lr.ph.split.us.i26.us.i, %.lr.ph.split.us.i
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next41.i, %i.hq
  br i1 %exitcond43.not.i, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.us.i, !llvm.loop !153

.lr.ph.i.i132:                                    ; preds = %bb.bp
  %.not22.i.i133 = icmp eq ptr %i.hc, null
  br i1 %.not22.i.i133, label %.lr.ph.split.us.i.i137, label %.lr.ph.split.i.i134

.lr.ph.split.us.i.i137:                           ; preds = %.lr.ph.i.i132, %.lr.ph.split.us.i.i137
  %.025.us.i.i138 = phi i64 [ %i.hz, %.lr.ph.split.us.i.i137 ], [ %i.hk, %.lr.ph.i.i132 ] ; 3 uses
  %i.hx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i.i138, i1 true)
  %gep.i.i139 = getelementptr [8 x i8], ptr %i.hh, i64 %i.hx
  call void @rb_gc_mark_and_move(ptr noundef nonnull %gep.i.i139) #20
  %i.hy = add i64 %.025.us.i.i138, -1
  %i.hz = and i64 %i.hy, %.025.us.i.i138          ; 2 uses
  %.not.us.i.i140 = icmp eq i64 %i.hz, 0
  br i1 %.not.us.i.i140, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.us.i.i137, !llvm.loop !122

.lr.ph.split.i.i134:                              ; preds = %.lr.ph.i.i132, %bb.br
  %.025.i.i135 = phi i64 [ %i.ig, %bb.br ], [ %i.hk, %.lr.ph.i.i132 ] ; 3 uses
  %i.ia = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i.i135, i1 true) ; 2 uses
  %i.ib = getelementptr [8 x i8], ptr %i.hh, i64 %i.ia ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.ib) #20
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !11 ; 2 uses
  %.not23.i.i136 = icmp eq i64 %i.id, %i.ic
  br i1 %.not23.i.i136, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.split.i.i134
  %i.ie = getelementptr [8 x i8], ptr %i.hc, i64 %i.ia
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !11
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.split.i.i134
  %i.if = add i64 %.025.i.i135, -1
  %i.ig = and i64 %i.if, %.025.i.i135             ; 2 uses
  %.not.i17.i = icmp eq i64 %i.ig, 0
  br i1 %.not.i17.i, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.i.i134, !llvm.loop !122

.lr.ph.split.i:                                   ; preds = %.lr.ph.i126, %iseq_scan_bits.exit30.i
  %indvars.iv.i127 = phi i64 [ %indvars.iv.next.i128, %iseq_scan_bits.exit30.i ], [ 0, %.lr.ph.i126 ] ; 3 uses
  %i.ih = load ptr, ptr %i.hi, align 8, !tbaa !90
  %i.ii = getelementptr [8 x i8], ptr %i.ih, i64 %indvars.iv.i127
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !11 ; 2 uses
  %.not24.i18.i = icmp eq i64 %i.ij, 0
  br i1 %.not24.i18.i, label %iseq_scan_bits.exit30.i, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.split.i
  %i.ik = shl nuw nsw i64 %indvars.iv.i127, 6
  br label %.lr.ph.split.i21.i

.lr.ph.split.i21.i:                               ; preds = %bb.bt, %.lr.ph.i19.i
  %.025.i22.i = phi i64 [ %i.is, %bb.bt ], [ %i.ij, %.lr.ph.i19.i ] ; 3 uses
  %i.il = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i22.i, i1 true)
  %i.im = or disjoint i64 %i.il, %i.ik            ; 2 uses
  %i.in = getelementptr [8 x i8], ptr %i.hh, i64 %i.im ; 3 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.in) #20
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !11 ; 2 uses
  %.not23.i23.i = icmp eq i64 %i.ip, %i.io
  br i1 %.not23.i23.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.split.i21.i
  %i.iq = getelementptr [8 x i8], ptr %i.hc, i64 %i.im
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !11
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph.split.i21.i
  %i.ir = add i64 %.025.i22.i, -1
  %i.is = and i64 %i.ir, %.025.i22.i              ; 2 uses
  %.not.i24.i = icmp eq i64 %i.is, 0
  br i1 %.not.i24.i, label %iseq_scan_bits.exit30.i, label %.lr.ph.split.i21.i, !llvm.loop !122

iseq_scan_bits.exit30.i:                          ; preds = %bb.bt, %.lr.ph.split.i
  %indvars.iv.next.i128 = add nuw nsw i64 %indvars.iv.i127, 1 ; 2 uses
  %exitcond.not.i129 = icmp eq i64 %indvars.iv.next.i128, %i.hq
  br i1 %exitcond.not.i129, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.i, !llvm.loop !153

rb_iseq_mark_and_move_each_compile_data_value.exit: ; preds = %iseq_scan_bits.exit30.i, %iseq_scan_bits.exit30.us.i, %bb.br, %.lr.ph.split.us.i.i137, %bb.bo, %.preheader.i
  call void @rb_gc_mark_and_move(ptr noundef %i.gy) #20
  %i.it = getelementptr i8, ptr %i.gy, i64 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bk, %rb_iseq_mark_and_move_each_compile_data_value.exit
  %.sink = phi ptr [ %i.it, %rb_iseq_mark_and_move_each_compile_data_value.exit ], [ %i.gu, %bb.bk ]
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
  %.051 = phi i64 [ %i.ad, %iseq_catch_table_bytes.exit ], [ %i.v, %bb.b ]
  %i.ae = getelementptr i8, ptr %i.b, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !156
  %i.ag = add i32 %i.af, 1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %.051
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
  %1 = zext i32 %i.bl to i64
  %wide.trip.count = zext i32 %i.av to i64
  %invariant.gep = getelementptr [16 x i8], ptr %i.bj, i64 %1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph71, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.169 = phi i64 [ %i.bh, %.lr.ph71 ], [ %.3, %bb.h ] ; 3 uses
  %i.bm = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !44 ; 3 uses
  %.not59 = icmp eq ptr %i.bo, null
  br i1 %.not59, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %.not6066 = icmp eq i64 %i.bp, 0
  br i1 %.not6066, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.04968 = phi ptr [ %i.bq, %.lr.ph ], [ %i.bo, %.preheader ]
  %.267 = phi i64 [ %i.br, %.lr.ph ], [ %.169, %.preheader ]
  %i.bq = getelementptr i8, ptr %.04968, i64 8    ; 2 uses
  %i.br = add i64 %.267, 8                        ; 2 uses
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !11
  %.not60 = icmp eq i64 %i.bs, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph, !llvm.loop !157

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.2.lcssa = phi i64 [ %.169, %.preheader ], [ %i.br, %.lr.ph ]
  %i.bt = add i64 %.2.lcssa, 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.3 = phi i64 [ %i.bt, %._crit_edge ], [ %.169, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !158

.loopexit:                                        ; preds = %bb.h, %param_keyword_size.exit
  %.4 = phi i64 [ %i.bh, %param_keyword_size.exit ], [ %.3, %bb.h ]
  %i.bu = getelementptr i8, ptr %i.b, i64 260
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !127
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 4
  %i.by = add i64 %i.bx, %.4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.a
  %.5 = phi i64 [ %i.by, %.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.bz = and i64 %i.c, 262144
  %.not.i61 = icmp eq i64 %i.bz, 0
  br i1 %.not.i61, label %ISEQ_COMPILE_DATA.exit.thread, label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.i
  %i.ca = getelementptr i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !90 ; 2 uses
  %.not57 = icmp eq ptr %i.cb, null
  br i1 %.not57, label %ISEQ_COMPILE_DATA.exit.thread, label %bb.j

bb.j:                                             ; preds = %ISEQ_COMPILE_DATA.exit
  %i.cc = add i64 %.5, 192                        ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 88
  %.073 = load ptr, ptr %i.cd, align 8, !tbaa !110 ; 2 uses
  %.not5874 = icmp eq ptr %.073, null
  br i1 %.not5874, label %ISEQ_COMPILE_DATA.exit.thread, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.j, %.lr.ph78
  %.076 = phi ptr [ %.0, %.lr.ph78 ], [ %.073, %bb.j ] ; 2 uses
  %.675 = phi i64 [ %i.ci, %.lr.ph78 ], [ %i.cc, %bb.j ]
  %i.ce = getelementptr i8, ptr %.076, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = zext i32 %i.cf to i64
  %i.ch = add i64 %.675, 16
  %i.ci = add i64 %i.ch, %i.cg                    ; 2 uses
  %.0 = load ptr, ptr %.076, align 8, !tbaa !110  ; 2 uses
  %.not58 = icmp eq ptr %.0, null
  br i1 %.not58, label %ISEQ_COMPILE_DATA.exit.thread, label %.lr.ph78, !llvm.loop !159

ISEQ_COMPILE_DATA.exit.thread:                    ; preds = %.lr.ph78, %bb.j, %bb.i, %ISEQ_COMPILE_DATA.exit
  %.7 = phi i64 [ %.5, %ISEQ_COMPILE_DATA.exit ], [ %.5, %bb.i ], [ %i.cc, %bb.j ], [ %i.ci, %.lr.ph78 ]
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
end_hunk_0
begin_hunk_1_@rb_iseq_insns_info_encode_positions:bb.a
  %.053.lcssa.i = phi i32 [ 0, %bb.c ], [ %.2.8.i, %bb.u ]
  %i.y = icmp sgt i32 %i.q, 0
  br i1 %i.y, label %.lr.ph.i, label %succ_index_table_create.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.z = getelementptr i8, ptr %i.t, i64 48
  %wide.trip.count86.i = zext nneg i32 %i.q to i64
  br label %bb.v

bb.d:                                             ; preds = %.preheader60.i
  %i.aa = sext i32 %.05364.i to i64
  %i.ab = getelementptr [4 x i8], ptr %i.h, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp eq i64 %i.w, %i.ad
  %i.af = zext i1 %i.ae to i32
  %spec.select.i = add nsw i32 %.05364.i, %i.af
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader60.i
  %.2.i = phi i32 [ %.05364.i, %.preheader60.i ], [ %spec.select.i, %bb.d ] ; 4 uses
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
  %.372.i = phi i32 [ %.053.lcssa.i, %.lr.ph.i ], [ %.6.i.1, %bb.ah ] ; 2 uses
  %i.dd = getelementptr [80 x i8], ptr %i.z, i64 %indvars.iv83.i ; 3 uses
  store i32 %.372.i, ptr %i.dd, align 8, !tbaa !162
  %i.de = shl nuw nsw i64 %indvars.iv83.i, 9
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
  %i.dk = add nuw nsw i64 %i.dj, 4294967287
  %i.dl = shl nuw nsw i64 %i.di, %i.dk
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
  %.566.i = phi i32 [ %.469.i, %bb.y ], [ %.6.i.1, %bb.af ] ; 5 uses
  %i.dq = icmp slt i32 %.566.i, %i.d
  br i1 %i.dq, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dr = sext i32 %.566.i to i64
  %i.ds = getelementptr [4 x i8], ptr %i.h, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
  %i.du = add nuw nsw i64 %i.dp, %indvars.iv75.i
  %i.dv = zext i32 %i.dt to i64
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dx = shl nuw i64 1, %indvars.iv75.i
  %i.dy = or i64 %.067.i, %i.dx
  %i.dz = add nsw i32 %.566.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.6.i = phi i32 [ %i.dz, %bb.ab ], [ %.566.i, %bb.aa ], [ %.566.i, %bb.z ] ; 5 uses
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
  %i.ei = or i64 %.1.i, %i.eh
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
  %i.k = add nuw nsw i32 %i.d, 457
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
  %.051.i = phi i32 [ -1, %.preheader45.preheader.i ], [ %i.bn, %bb.s ]
  %.04049.i = phi ptr [ %i.n, %.preheader45.preheader.i ], [ %.2.8.i, %bb.s ] ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 6 uses
  %i.r = mul nuw nsw i64 %indvars.iv.i, 9         ; 9 uses
  %i.s = trunc i64 %i.q to i32                    ; 4 uses
  %i.t = and i32 %i.s, 127                        ; 2 uses
  %.not42.i = icmp eq i32 %.051.i, %i.t
  br i1 %.not42.i, label %bb.c, label %bb.b

.preheader44.i:                                   ; preds = %bb.s, %bb.a
  %.040.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %.2.8.i, %bb.s ]
  %i.u = add i32 %i.d, -55
  %i.v = icmp ult i32 %i.u, 2147483136
  br i1 %i.v, label %.preheader43.preheader.i, label %succ_index_table_invert.exit

.preheader43.preheader.i:                         ; preds = %.preheader44.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count71.i = zext nneg i32 %smax.i to i64
  br label %.preheader43.i

bb.b:                                             ; preds = %.preheader45.i
  %i.w = getelementptr i8, ptr %.04049.i, i64 4
  %i.x = trunc nuw i64 %i.r to i32
  store i32 %i.x, ptr %.04049.i, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader45.i
  %.2.i = phi ptr [ %i.w, %bb.b ], [ %.04049.i, %.preheader45.i ] ; 3 uses
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
end_hunk_1
begin_hunk_2_@iseq_data_to_ary:bb.a
  br i1 %.not4.i400, label %.lr.ph.i402, label %rbimpl_intern_const.exit404

.lr.ph.i402:                                      ; preds = %bb.k, %.lr.ph.i402
  %i.bs = tail call i64 @rb_intern2(ptr noundef nonnull @.str.208, i64 noundef 8) #20 ; 3 uses
  store i64 %i.bs, ptr @iseq_data_to_ary.rbimpl_id.207, align 8, !tbaa !11
  %.not.i403 = icmp eq i64 %i.bs, 0
  br i1 %.not.i403, label %.lr.ph.i402, label %rbimpl_intern_const.exit404, !llvm.loop !272

rbimpl_intern_const.exit404:                      ; preds = %.lr.ph.i402, %bb.k
  %.lcssa.i401 = phi i64 [ %.pr.i399, %bb.k ], [ %i.bs, %.lr.ph.i402 ]
  %i.bt = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i401) #20
  %i.bu = getelementptr i8, ptr %i.g, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !321
  %i.bw = sext i32 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 1
  %i.by = or disjoint i64 %i.bx, 1
  %i.bz = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.bt, i64 noundef %i.by) #20 ; 0 uses
  %.pre834 = load i16, ptr %i.au, align 8
  br label %bb.l

bb.l:                                             ; preds = %rbimpl_intern_const.exit404, %bb.j
  %i.ca = phi i16 [ %.pre834, %rbimpl_intern_const.exit404 ], [ %i.bq, %bb.j ] ; 2 uses
  %i.cb = and i16 %i.ca, 8
  %.not365 = icmp eq i16 %i.cb, 0
  br i1 %.not365, label %.thread899, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pr.i405 = load i64, ptr @iseq_data_to_ary.rbimpl_id.209, align 8, !tbaa !11 ; 2 uses
  %.not4.i406 = icmp eq i64 %.pr.i405, 0
  br i1 %.not4.i406, label %.lr.ph.i408, label %.loopexit906

.lr.ph.i408:                                      ; preds = %bb.m, %.lr.ph.i408
  %i.cc = tail call i64 @rb_intern2(ptr noundef nonnull @.str.210, i64 noundef 8) #20 ; 3 uses
  store i64 %i.cc, ptr @iseq_data_to_ary.rbimpl_id.209, align 8, !tbaa !11
  %.not.i409 = icmp eq i64 %i.cc, 0
  br i1 %.not.i409, label %.lr.ph.i408, label %.loopexit906, !llvm.loop !272

.loopexit906:                                     ; preds = %.lr.ph.i408, %bb.m
  %.lcssa.i407 = phi i64 [ %.pr.i405, %bb.m ], [ %i.cc, %.lr.ph.i408 ]
  %i.cd = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i407) #20
  %i.ce = getelementptr i8, ptr %i.g, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !323
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 1
  %i.ci = or disjoint i64 %i.ch, 1
  %i.cj = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.cd, i64 noundef %i.ci) #20 ; 0 uses
  %.pre835 = load i16, ptr %i.au, align 8         ; 2 uses
  %.pre843 = and i16 %.pre835, 8
  %i.ck = icmp eq i16 %.pre843, 0
  br i1 %i.ck, label %.thread899, label %bb.n

bb.n:                                             ; preds = %.loopexit906
  %.pr.i411 = load i64, ptr @iseq_data_to_ary.rbimpl_id.211, align 8, !tbaa !11 ; 2 uses
  %.not4.i412 = icmp eq i64 %.pr.i411, 0
  br i1 %.not4.i412, label %.lr.ph.i414, label %rbimpl_intern_const.exit416

.lr.ph.i414:                                      ; preds = %bb.n, %.lr.ph.i414
  %i.cl = tail call i64 @rb_intern2(ptr noundef nonnull @.str.212, i64 noundef 10) #20 ; 3 uses
  store i64 %i.cl, ptr @iseq_data_to_ary.rbimpl_id.211, align 8, !tbaa !11
  %.not.i415 = icmp eq i64 %i.cl, 0
  br i1 %.not.i415, label %.lr.ph.i414, label %rbimpl_intern_const.exit416, !llvm.loop !272

rbimpl_intern_const.exit416:                      ; preds = %.lr.ph.i414, %bb.n
  %.lcssa.i413 = phi i64 [ %.pr.i411, %bb.n ], [ %i.cl, %.lr.ph.i414 ]
  %i.cm = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i413) #20
  %i.cn = getelementptr i8, ptr %i.g, i64 36
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !326
  %i.cp = sext i32 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 1
  %i.cr = or disjoint i64 %i.cq, 1
  %i.cs = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.cm, i64 noundef %i.cr) #20 ; 0 uses
  %.pre836 = load i16, ptr %i.au, align 8
  br label %.thread899

.thread899:                                       ; preds = %bb.l, %rbimpl_intern_const.exit416, %.loopexit906
  %i.ct = phi i16 [ %.pre836, %rbimpl_intern_const.exit416 ], [ %.pre835, %.loopexit906 ], [ %i.ca, %bb.l ] ; 2 uses
  %i.cu = and i16 %i.ct, 4
  %.not367 = icmp eq i16 %i.cu, 0
  br i1 %.not367, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread899
  %.pr.i417 = load i64, ptr @iseq_data_to_ary.rbimpl_id.213, align 8, !tbaa !11 ; 2 uses
  %.not4.i418 = icmp eq i64 %.pr.i417, 0
  br i1 %.not4.i418, label %.lr.ph.i420, label %rbimpl_intern_const.exit422

.lr.ph.i420:                                      ; preds = %bb.o, %.lr.ph.i420
  %i.cv = tail call i64 @rb_intern2(ptr noundef nonnull @.str.214, i64 noundef 10) #20 ; 3 uses
  store i64 %i.cv, ptr @iseq_data_to_ary.rbimpl_id.213, align 8, !tbaa !11
  %.not.i421 = icmp eq i64 %i.cv, 0
  br i1 %.not.i421, label %.lr.ph.i420, label %rbimpl_intern_const.exit422, !llvm.loop !272

rbimpl_intern_const.exit422:                      ; preds = %.lr.ph.i420, %bb.o
  %.lcssa.i419 = phi i64 [ %.pr.i417, %bb.o ], [ %i.cv, %.lr.ph.i420 ]
  %i.cw = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i419) #20
  %i.cx = getelementptr i8, ptr %i.g, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !322
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 1
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.cw, i64 noundef %i.db) #20 ; 0 uses
  %.pre837 = load i16, ptr %i.au, align 8
  br label %bb.p

bb.p:                                             ; preds = %rbimpl_intern_const.exit422, %.thread899
  %i.dd = phi i16 [ %.pre837, %rbimpl_intern_const.exit422 ], [ %i.ct, %.thread899 ] ; 2 uses
  %i.de = and i16 %i.dd, 64
  %.not368 = icmp eq i16 %i.de, 0
  br i1 %.not368, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.pr.i423 = load i64, ptr @iseq_data_to_ary.rbimpl_id.215, align 8, !tbaa !11 ; 2 uses
  %.not4.i424 = icmp eq i64 %.pr.i423, 0
  br i1 %.not4.i424, label %.lr.ph.i426, label %rbimpl_intern_const.exit428

.lr.ph.i426:                                      ; preds = %bb.q, %.lr.ph.i426
  %i.df = tail call i64 @rb_intern2(ptr noundef nonnull @.str.216, i64 noundef 11) #20 ; 3 uses
  store i64 %i.df, ptr @iseq_data_to_ary.rbimpl_id.215, align 8, !tbaa !11
  %.not.i427 = icmp eq i64 %i.df, 0
  br i1 %.not.i427, label %.lr.ph.i426, label %rbimpl_intern_const.exit428, !llvm.loop !272

rbimpl_intern_const.exit428:                      ; preds = %.lr.ph.i426, %bb.q
  %.lcssa.i425 = phi i64 [ %.pr.i423, %bb.q ], [ %i.df, %.lr.ph.i426 ]
  %i.dg = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i425) #20
  %i.dh = getelementptr i8, ptr %i.g, i64 44
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !324
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 1
  %i.dl = or disjoint i64 %i.dk, 1
  %i.dm = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.dg, i64 noundef %i.dl) #20 ; 0 uses
  %.pre838 = load i16, ptr %i.au, align 8
  br label %bb.r

bb.r:                                             ; preds = %rbimpl_intern_const.exit428, %bb.p
  %i.dn = phi i16 [ %.pre838, %rbimpl_intern_const.exit428 ], [ %i.dd, %bb.p ] ; 2 uses
  %i.do = and i16 %i.dn, 16
  %.not369 = icmp eq i16 %i.do, 0
  br i1 %.not369, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = tail call i64 @rb_ary_new() #20         ; 3 uses
  %i.dq = getelementptr i8, ptr %i.aw, i64 4      ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !141
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph722, label %.preheader665

.lr.ph722:                                        ; preds = %bb.s
  %i.dt = getelementptr i8, ptr %i.aw, i64 16
  br label %bb.t

.preheader665.loopexit:                           ; preds = %bb.t
  %i.du = trunc nuw nsw i64 %indvars.iv.next816 to i32
  br label %.preheader665

.preheader665:                                    ; preds = %.preheader665.loopexit, %bb.s
  %.0349.lcssa = phi i32 [ 0, %bb.s ], [ %i.du, %.preheader665.loopexit ] ; 2 uses
  %i.dv = load i32, ptr %i.aw, align 8, !tbaa !97
  %i.dw = icmp slt i32 %.0349.lcssa, %i.dv
  br i1 %i.dw, label %.lr.ph726, label %._crit_edge727

.lr.ph726:                                        ; preds = %.preheader665
  %i.dx = getelementptr i8, ptr %i.aw, i64 16
  %i.dy = getelementptr i8, ptr %i.aw, i64 24
  %i.dz = zext nneg i32 %.0349.lcssa to i64
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph722, %bb.t
  %indvars.iv815 = phi i64 [ 0, %.lr.ph722 ], [ %indvars.iv.next816, %bb.t ] ; 2 uses
  %i.ea = load ptr, ptr %i.dt, align 8, !tbaa !93
  %i.eb = getelementptr [8 x i8], ptr %i.ea, i64 %indvars.iv815
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !11
  %i.ed = tail call i64 @rb_id2sym(i64 noundef %i.ec) #20
  %i.ee = tail call i64 @rb_ary_push(i64 noundef %i.dp, i64 noundef %i.ed) #20 ; 0 uses
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 1 ; 3 uses
  %i.ef = load i32, ptr %i.dq, align 4, !tbaa !141
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next816, %i.eg
  br i1 %i.eh, label %bb.t, label %.preheader665.loopexit, !llvm.loop !395

bb.u:                                             ; preds = %.lr.ph726, %bb.w
  %indvars.iv818 = phi i64 [ %i.dz, %.lr.ph726 ], [ %indvars.iv.next819, %bb.w ] ; 2 uses
  %.0351724 = phi i32 [ 0, %.lr.ph726 ], [ %i.eu, %bb.w ] ; 2 uses
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !93
  %i.ej = getelementptr [8 x i8], ptr %i.ei, i64 %indvars.iv818
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !11
  %i.el = tail call i64 @rb_id2sym(i64 noundef %i.ek) #20
  %i.em = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.el) #20 ; 2 uses
  %i.en = load ptr, ptr %i.dy, align 8, !tbaa !98
  %i.eo = sext i32 %.0351724 to i64
  %i.ep = getelementptr [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !11 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 36
  br i1 %i.er, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.es = tail call i64 @rb_ary_push(i64 noundef %i.em, i64 noundef %i.eq) #20 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.et = tail call i64 @rb_ary_push(i64 noundef %i.dp, i64 noundef %i.em) #20 ; 0 uses
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1 ; 2 uses
  %i.eu = add nuw i32 %.0351724, 1
  %i.ev = load i32, ptr %i.aw, align 8, !tbaa !97
  %i.ew = trunc nuw i64 %indvars.iv.next819 to i32
  %i.ex = icmp sgt i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.u, label %._crit_edge727, !llvm.loop !396

._crit_edge727:                                   ; preds = %bb.w, %.preheader665
  %.pr.i429 = load i64, ptr @iseq_data_to_ary.rbimpl_id.217, align 8, !tbaa !11 ; 2 uses
  %.not4.i430 = icmp eq i64 %.pr.i429, 0
  br i1 %.not4.i430, label %.lr.ph.i432, label %rbimpl_intern_const.exit434

.lr.ph.i432:                                      ; preds = %._crit_edge727, %.lr.ph.i432
  %i.ey = tail call i64 @rb_intern2(ptr noundef nonnull @.str.218, i64 noundef 6) #20 ; 3 uses
  store i64 %i.ey, ptr @iseq_data_to_ary.rbimpl_id.217, align 8, !tbaa !11
  %.not.i433 = icmp eq i64 %i.ey, 0
  br i1 %.not.i433, label %.lr.ph.i432, label %rbimpl_intern_const.exit434, !llvm.loop !272

rbimpl_intern_const.exit434:                      ; preds = %.lr.ph.i432, %._crit_edge727
  %.lcssa.i431 = phi i64 [ %.pr.i429, %._crit_edge727 ], [ %i.ey, %.lr.ph.i432 ]
  %i.ez = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i431) #20
  %i.fa = getelementptr i8, ptr %i.aw, i64 8
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !96
  %i.fc = sext i32 %i.fb to i64
  %i.fd = shl nsw i64 %i.fc, 1
  %i.fe = or disjoint i64 %i.fd, 1
  %i.ff = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.ez, i64 noundef %i.fe) #20 ; 0 uses
  %.pr.i435 = load i64, ptr @iseq_data_to_ary.rbimpl_id.219, align 8, !tbaa !11 ; 2 uses
  %.not4.i436 = icmp eq i64 %.pr.i435, 0
  br i1 %.not4.i436, label %.lr.ph.i438, label %rbimpl_intern_const.exit440

.lr.ph.i438:                                      ; preds = %rbimpl_intern_const.exit434, %.lr.ph.i438
  %i.fg = tail call i64 @rb_intern2(ptr noundef nonnull @.str.220, i64 noundef 7) #20 ; 3 uses
  store i64 %i.fg, ptr @iseq_data_to_ary.rbimpl_id.219, align 8, !tbaa !11
  %.not.i439 = icmp eq i64 %i.fg, 0
  br i1 %.not.i439, label %.lr.ph.i438, label %rbimpl_intern_const.exit440, !llvm.loop !272

rbimpl_intern_const.exit440:                      ; preds = %.lr.ph.i438, %rbimpl_intern_const.exit434
  %.lcssa.i437 = phi i64 [ %.pr.i435, %rbimpl_intern_const.exit434 ], [ %i.fg, %.lr.ph.i438 ]
  %i.fh = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i437) #20
  %i.fi = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.fh, i64 noundef %i.dp) #20 ; 0 uses
  %.pre839 = load i16, ptr %i.au, align 8
  br label %bb.x

bb.x:                                             ; preds = %rbimpl_intern_const.exit440, %bb.r
  %i.fj = phi i16 [ %.pre839, %rbimpl_intern_const.exit440 ], [ %i.dn, %bb.r ] ; 2 uses
  %i.fk = and i16 %i.fj, 32
  %.not370 = icmp eq i16 %i.fk, 0
  br i1 %.not370, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.pr.i441 = load i64, ptr @iseq_data_to_ary.rbimpl_id.221, align 8, !tbaa !11 ; 2 uses
  %.not4.i442 = icmp eq i64 %.pr.i441, 0
  br i1 %.not4.i442, label %.lr.ph.i444, label %rbimpl_intern_const.exit446

.lr.ph.i444:                                      ; preds = %bb.y, %.lr.ph.i444
  %i.fl = tail call i64 @rb_intern2(ptr noundef nonnull @.str.222, i64 noundef 6) #20 ; 3 uses
  store i64 %i.fl, ptr @iseq_data_to_ary.rbimpl_id.221, align 8, !tbaa !11
  %.not.i445 = icmp eq i64 %i.fl, 0
  br i1 %.not.i445, label %.lr.ph.i444, label %rbimpl_intern_const.exit446, !llvm.loop !272

rbimpl_intern_const.exit446:                      ; preds = %.lr.ph.i444, %bb.y
  %.lcssa.i443 = phi i64 [ %.pr.i441, %bb.y ], [ %i.fl, %.lr.ph.i444 ]
  %i.fm = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i443) #20
  %i.fn = getelementptr i8, ptr %i.aw, i64 12
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !325
  %i.fp = sext i32 %i.fo to i64
  %i.fq = shl nsw i64 %i.fp, 1
  %i.fr = or disjoint i64 %i.fq, 1
  %i.fs = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.fm, i64 noundef %i.fr) #20 ; 0 uses
  %.pre840 = load i16, ptr %i.au, align 8
  br label %bb.z

bb.z:                                             ; preds = %rbimpl_intern_const.exit446, %bb.x
  %i.ft = phi i16 [ %.pre840, %rbimpl_intern_const.exit446 ], [ %i.fj, %bb.x ] ; 2 uses
  %i.fu = and i16 %i.ft, 128
  %.not371 = icmp eq i16 %i.fu, 0
  br i1 %.not371, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.pr.i447 = load i64, ptr @iseq_data_to_ary.rbimpl_id.223, align 8, !tbaa !11 ; 2 uses
  %.not4.i448 = icmp eq i64 %.pr.i447, 0
  br i1 %.not4.i448, label %.lr.ph.i450, label %rbimpl_intern_const.exit452

.lr.ph.i450:                                      ; preds = %bb.aa, %.lr.ph.i450
  %i.fv = tail call i64 @rb_intern2(ptr noundef nonnull @.str.224, i64 noundef 16) #20 ; 3 uses
  store i64 %i.fv, ptr @iseq_data_to_ary.rbimpl_id.223, align 8, !tbaa !11
  %.not.i451 = icmp eq i64 %i.fv, 0
  br i1 %.not.i451, label %.lr.ph.i450, label %rbimpl_intern_const.exit452, !llvm.loop !272

rbimpl_intern_const.exit452:                      ; preds = %.lr.ph.i450, %bb.aa
  %.lcssa.i449 = phi i64 [ %.pr.i447, %bb.aa ], [ %i.fv, %.lr.ph.i450 ]
  %i.fw = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i449) #20
  %i.fx = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.fw, i64 noundef 20) #20 ; 0 uses
  %.pre841 = load i16, ptr %i.au, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %rbimpl_intern_const.exit452, %bb.z
  %i.fy = phi i16 [ %.pre841, %rbimpl_intern_const.exit452 ], [ %i.ft, %bb.z ]
  %i.fz = and i16 %i.fy, 4096
  %.not372 = icmp eq i16 %i.fz, 0
  br i1 %.not372, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.pr.i453 = load i64, ptr @iseq_data_to_ary.rbimpl_id.225, align 8, !tbaa !11 ; 2 uses
  %.not4.i454 = icmp eq i64 %.pr.i453, 0
  br i1 %.not4.i454, label %.lr.ph.i456, label %rbimpl_intern_const.exit458

.lr.ph.i456:                                      ; preds = %bb.ac, %.lr.ph.i456
  %i.ga = tail call i64 @rb_intern2(ptr noundef nonnull @.str.226, i64 noundef 9) #20 ; 3 uses
  store i64 %i.ga, ptr @iseq_data_to_ary.rbimpl_id.225, align 8, !tbaa !11
  %.not.i457 = icmp eq i64 %i.ga, 0
  br i1 %.not.i457, label %.lr.ph.i456, label %rbimpl_intern_const.exit458, !llvm.loop !272

rbimpl_intern_const.exit458:                      ; preds = %.lr.ph.i456, %bb.ac
  %.lcssa.i455 = phi i64 [ %.pr.i453, %bb.ac ], [ %i.ga, %.lr.ph.i456 ]
  %i.gb = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i455) #20
  %i.gc = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.gb, i64 noundef 20) #20 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %rbimpl_intern_const.exit458, %bb.ab
  %i.gd = tail call ptr @rb_iseq_original_iseq(ptr noundef %0) #20 ; 5 uses
  %i.ge = getelementptr i8, ptr %i.g, i64 4       ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !89
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr [8 x i8], ptr %i.gd, i64 %i.gg
  %i.gi = icmp ult ptr %i.gd, %i.gh
  br i1 %i.gi, label %.lr.ph747, label %._crit_edge748

.lr.ph747:                                        ; preds = %bb.ad
  %i.gj = ptrtoint ptr %i.gd to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph747, %._crit_edge743
  %.0345745 = phi ptr [ %i.gd, %.lr.ph747 ], [ %.1346.lcssa, %._crit_edge743 ] ; 2 uses
  %i.gk = getelementptr i8, ptr %.0345745, i64 8  ; 3 uses
  %i.gl = load i64, ptr %.0345745, align 8, !tbaa !11 ; 3 uses
  %i.gm = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !90  ; 3 uses
  %i.go = zext i8 %i.gn to i64                    ; 2 uses
  %i.gp = tail call i64 @rb_ary_new_capa(i64 noundef %i.go) #20 ; 3 uses
  %i.gq = urem i64 %i.gl, 109
  %i.gr = getelementptr [8 x i8], ptr @iseq_data_to_ary.insn_syms, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !11
  %i.gt = tail call i64 @rb_id2sym(i64 noundef %i.gs) #20
  %i.gu = tail call i64 @rb_ary_push(i64 noundef %i.gp, i64 noundef %i.gt) #20 ; 0 uses
  %i.gv = icmp ugt i8 %i.gn, 1
  br i1 %i.gv, label %.lr.ph742, label %._crit_edge743

.lr.ph742:                                        ; preds = %bb.ae
  %i.gw = zext i8 %i.gn to i64
  %i.gx = add nuw nsw i64 %i.gw, 4294967295
  %i.gy = getelementptr [8 x i8], ptr %i.gk, i64 %i.go
  %i.gz = getelementptr i8, ptr %i.gy, i64 -8
  %i.ha = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.gl
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.hb, %i.gj
  %i.hd = ashr exact i64 %i.hc, 3                 ; 2 uses
  %wide.trip.count827 = and i64 %i.gx, 4294967295
  %i.he = load i16, ptr %i.ha, align 2, !tbaa !296
  %i.hf = zext i16 %i.he to i64
  %i.hg = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.hf
  br label %insn_op_type.exit

insn_op_type.exit:                                ; preds = %obj_resurrect.exit, %.lr.ph742
  %indvars.iv824 = phi i64 [ 0, %.lr.ph742 ], [ %indvars.iv.next825, %obj_resurrect.exit ] ; 2 uses
  %.1346740 = phi ptr [ %i.gk, %.lr.ph742 ], [ %i.oj, %obj_resurrect.exit ] ; 15 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 %indvars.iv824
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !90  ; 3 uses
  switch i8 %i.hi, label %insn_op_type.exit.thread [
    i8 79, label %bb.af
    i8 76, label %bb.ag
    i8 78, label %bb.ag
    i8 86, label %bb.ah
    i8 83, label %bb.an
    i8 75, label %bb.ap
    i8 65, label %bb.aq
    i8 74, label %bb.aq
    i8 84, label %bb.aq
    i8 67, label %bb.av
    i8 73, label %bb.bc
    i8 72, label %bb.bd
    i8 70, label %bb.bi
    i8 82, label %bb.bl
  ]

bb.af:                                            ; preds = %insn_op_type.exit
  %i.hj = load i64, ptr %.1346740, align 8, !tbaa !11
  %i.hk = add i64 %i.hj, %i.hd                    ; 2 uses
  %i.hl = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.276, i64 noundef %i.hk) #20
  %i.hm = tail call i64 @rb_str_intern(i64 noundef %i.hl) #20 ; 2 uses
  %i.hn = tail call i32 @rb_st_insert(ptr noundef %i.n, i64 noundef %i.hk, i64 noundef %i.hm) #20 ; 0 uses
  br label %obj_resurrect.exit

bb.ag:                                            ; preds = %insn_op_type.exit, %insn_op_type.exit
  %i.ho = load i64, ptr %.1346740, align 8, !tbaa !11
  %i.hp = shl i64 %i.ho, 1
  %i.hq = or disjoint i64 %i.hp, 1
  br label %obj_resurrect.exit

bb.ah:                                            ; preds = %insn_op_type.exit
  %i.hr = load i64, ptr %.1346740, align 8, !tbaa !11 ; 9 uses
end_hunk_2
