Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/trxio?download=true
inline.NumInlined: 232
inline.NumDeleted: 115
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z15read_next_framePK16gmx_output_env_tP11t_trxstatusP10t_trxframe:bb.a
bb.at:                                            ; preds = %bb.as
  %i.fs = load i8, ptr %i.l, align 8, !tbaa !51, !range !35, !noundef !36
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.au, label %.critedge140.backedge

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fu = and i32 %i.fn, 32
  %.not96 = icmp eq i32 %i.fu, 0
  br i1 %.not96, label %.thread134, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fv = load i8, ptr %i.m, align 8, !tbaa !52, !range !35, !noundef !36
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %.thread134, label %.critedge140.backedge

.thread134:                                       ; preds = %bb.au, %bb.av
  %i.fx = load float, ptr %i.aq, align 8, !tbaa !80
  %i.fy = call noundef i32 @_Z12check_times2ffb(float noundef %i.fm, float noundef %i.fx, i1 zeroext poison) ; 3 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.thread134
  %i.ga = load i32, ptr %1, align 8, !tbaa !74
  %i.gb = and i32 %i.ga, 64
  %i.gc = icmp ne i32 %i.gb, 0
  %i.gd = icmp slt i32 %i.fy, 0
  %or.cond = and i1 %i.gd, %i.gc
  br i1 %or.cond, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw, %.thread134
  %i.ge = load float, ptr %i.x, align 4, !tbaa !57
  %i.gf = load i32, ptr %i.v, align 4, !tbaa !19  ; 4 uses
  %i.gg = add nsw i32 %i.gf, 1                    ; 4 uses
  store i32 %i.gg, ptr %i.v, align 4, !tbaa !19
  %i.gh = icmp slt i32 %i.gf, 19
  %i.gi = urem i32 %i.gg, 10
  %i.gj = icmp eq i32 %i.gi, 0
  %or.cond.i.i.i = or i1 %i.gh, %i.gj
  br i1 %or.cond.i.i.i, label %bb.ay, label %.critedge.thread, !llvm.loop !112

bb.ay:                                            ; preds = %bb.ax
  %i.gk = icmp slt i32 %i.gf, 199
  %i.gl = urem i32 %i.gg, 100
  %i.gm = icmp eq i32 %i.gl, 0
  %or.cond11.i.i.i = or i1 %i.gk, %i.gm
  br i1 %or.cond11.i.i.i, label %bb.az, label %.critedge.thread, !llvm.loop !112

bb.az:                                            ; preds = %bb.ay
  %i.gn = icmp slt i32 %i.gf, 1999
  %i.go = urem i32 %i.gg, 1000
  %i.gp = icmp eq i32 %i.go, 0
  %or.cond13.i.i.i = or i1 %i.gn, %i.gp
  br i1 %or.cond13.i.i.i, label %_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i.i, label %.critedge.thread, !llvm.loop !112

_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i.i: ; preds = %bb.az
  %i.gq = call noundef i32 @_Z38output_env_get_trajectory_io_verbosityPK16gmx_output_env_t(ptr noundef %0)
  %.not.i.i = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i, label %.critedge.thread, label %bb.ba, !llvm.loop !112

bb.ba:                                            ; preds = %_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i.i
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gs = load i32, ptr %i.v, align 4, !tbaa !19
  %i.gt = call noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %0, float noundef %i.ge)
  %i.gu = fpext float %i.gt to double
  %i.gv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %i.gs, double noundef %i.gu) #31 ; 0 uses
  br label %.critedge.thread.sink.split, !llvm.loop !112

bb.bb:                                            ; preds = %bb.aw
  %i.gw = icmp sgt i32 %i.fy, 0
  br i1 %i.gw, label %.critedge, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gx = load float, ptr %i.x, align 4, !tbaa !57
  %i.gy = load i32, ptr %i.v, align 4, !tbaa !19  ; 4 uses
  %i.gz = add nsw i32 %i.gy, 1                    ; 4 uses
  store i32 %i.gz, ptr %i.v, align 4, !tbaa !19
  %i.ha = icmp slt i32 %i.gy, 19
  %i.hb = urem i32 %i.gz, 10
  %i.hc = icmp eq i32 %i.hb, 0
  %or.cond.i.i.i115 = or i1 %i.ha, %i.hc
  br i1 %or.cond.i.i.i115, label %bb.bd, label %.critedge140.backedge

bb.bd:                                            ; preds = %bb.bc
  %i.hd = icmp slt i32 %i.gy, 199
  %i.he = urem i32 %i.gz, 100
  %i.hf = icmp eq i32 %i.he, 0
  %or.cond11.i.i.i116 = or i1 %i.hd, %i.hf
  br i1 %or.cond11.i.i.i116, label %bb.be, label %.critedge140.backedge

bb.be:                                            ; preds = %bb.bd
  %i.hg = icmp slt i32 %i.gy, 1999
  %i.hh = urem i32 %i.gz, 1000
  %i.hi = icmp eq i32 %i.hh, 0
  %or.cond13.i.i.i117 = or i1 %i.hg, %i.hi
  br i1 %or.cond13.i.i.i117, label %_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i.i118, label %.critedge140.backedge

_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i.i118: ; preds = %bb.be
  %i.hj = call noundef i32 @_Z38output_env_get_trajectory_io_verbosityPK16gmx_output_env_t(ptr noundef %0)
  %.not.i.i119 = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i119, label %.critedge140.backedge, label %bb.bf

bb.bf:                                            ; preds = %_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i.i118
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hl = load i32, ptr %i.v, align 4, !tbaa !19
  %i.hm = call noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %0, float noundef %i.gx)
  %i.hn = fpext float %i.hm to double
  %i.ho = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hk, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef %i.hl, double noundef %i.hn) #31 ; 0 uses
  %i.hp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hq = call i32 @fflush(ptr noundef %i.hp)     ; 0 uses
  br label %.critedge140.backedge

.critedge:                                        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %.split176, %.split175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.split174, %.split, %bb.bb, %bb.ap, %_ZL14gmx_next_frameP11t_trxstatusP10t_trxframe.exit.thread
  %i.hr = load i32, ptr %i.v, align 4, !tbaa !19  ; 6 uses
  %i.hs = icmp slt i32 %i.hr, 20
  %i.ht = urem i32 %i.hr, 10
  %i.hu = icmp eq i32 %i.ht, 0
  %or.cond.i.i.i121 = or i1 %i.hs, %i.hu
  br i1 %or.cond.i.i.i121, label %bb.bg, label %_ZL9printlastP11t_trxstatusPK16gmx_output_env_tf.exit

bb.bg:                                            ; preds = %.critedge
  %i.hv = icmp slt i32 %i.hr, 200
  %i.hw = urem i32 %i.hr, 100
  %i.hx = icmp eq i32 %i.hw, 0
  %or.cond11.i.i.i122 = or i1 %i.hv, %i.hx
  br i1 %or.cond11.i.i.i122, label %bb.bh, label %_ZL9printlastP11t_trxstatusPK16gmx_output_env_tf.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hy = icmp slt i32 %i.hr, 2000
  %i.hz = urem i32 %i.hr, 1000
  %i.ia = icmp eq i32 %i.hz, 0
  %or.cond13.i.i.i123 = or i1 %i.hy, %i.ia
  br i1 %or.cond13.i.i.i123, label %_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i.i124, label %_ZL9printlastP11t_trxstatusPK16gmx_output_env_tf.exit

_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i.i124: ; preds = %bb.bh
  %i.ib = call noundef i32 @_Z38output_env_get_trajectory_io_verbosityPK16gmx_output_env_t(ptr noundef %0)
  %.not.i.i125 = icmp eq i32 %i.ib, 0
  br i1 %.not.i.i125, label %_ZL9printlastP11t_trxstatusPK16gmx_output_env_tf.exit, label %bb.bi

bb.bi:                                            ; preds = %_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i.i124
  %i.ic = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.id = load i32, ptr %i.v, align 4, !tbaa !19
  %i.ie = call noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %0, float noundef %i.d)
  %i.if = fpext float %i.ie to double
  %i.ig = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ic, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %i.id, double noundef %i.if) #31 ; 0 uses
  %i.ih = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ii = call i32 @fflush(ptr noundef %i.ih)     ; 0 uses
  br label %_ZL9printlastP11t_trxstatusPK16gmx_output_env_tf.exit

_ZL9printlastP11t_trxstatusPK16gmx_output_env_tf.exit: ; preds = %.critedge, %bb.bg, %bb.bh, %_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i.i124, %bb.bi
  %i.ij = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc.i = call i32 @fputc(i32 10, ptr %i.ij)   ; 0 uses
  %i.ik = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.il = call i32 @fflush(ptr noundef %i.ik)     ; 0 uses
  %i.im = load i32, ptr %2, align 8, !tbaa !43    ; 2 uses
  %.not97 = icmp eq i32 %i.im, 0
  br i1 %.not97, label %.critedge.thread, label %_ZL11printincompP11t_trxstatusP10t_trxframe.exit

_ZL11printincompP11t_trxstatusP10t_trxframe.exit: ; preds = %_ZL9printlastP11t_trxstatusPK16gmx_output_env_tf.exit
  %i.in = and i32 %i.im, 1
  %.not.i126 = icmp eq i32 %i.in, 0
  %spec.select = select i1 %.not.i126, ptr @.str.44, ptr @.str.43
  %i.io = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ip = load i32, ptr %i.v, align 4, !tbaa !19
  %i.iq = add nsw i32 %i.ip, 1
  %i.ir = load float, ptr %i.x, align 4, !tbaa !57
  %i.is = fpext float %i.ir to double
  %i.it = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.io, ptr noundef nonnull %spec.select, i32 noundef %i.iq, double noundef %i.is) #31 ; 0 uses
  br label %.critedge.thread.sink.split

bb.bj:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.x, %bb.t
  %.pn98.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn, %bb.ao ], [ %i.df, %bb.t ], [ %i.dn, %bb.x ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  resume { ptr, i32 } %.pn98.pn.pn.pn

.critedge.thread.sink.split:                      ; preds = %_ZL11printincompP11t_trxstatusP10t_trxframe.exit, %bb.ba
  %.ph = phi i1 [ true, %bb.ba ], [ false, %_ZL11printincompP11t_trxstatusP10t_trxframe.exit ]
  %i.iu = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.iv = call i32 @fflush(ptr noundef %i.iu)     ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %bb.ax, %bb.ay, %bb.az, %_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i.i, %_ZL9printlastP11t_trxstatusPK16gmx_output_env_tf.exit
  %i.iw = phi i1 [ true, %bb.ay ], [ false, %_ZL9printlastP11t_trxstatusPK16gmx_output_env_tf.exit ], [ true, %bb.ax ], [ true, %_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i.i ], [ true, %bb.az ], [ %.ph, %.critedge.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret i1 %i.iw
}

declare noundef i32 @_Z13read_g96_confP8_IO_FILERKNSt10filesystem7__cxx114pathEPPcP10t_trxframeP8t_symtabS6_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef i32 @_Z13xtc_seek_timeP8t_fileiofib(ptr noundef, float noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef i32 @_Z13read_next_xtcP8t_fileioiPlPfPA3_fS4_S2_Pb(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_Z23gmx_read_next_tng_frameP18gmx_tng_trajectoryP10t_trxframePli(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN3gmx4H5md13readNextFrameEP10t_trxframeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL10pdb_next_xP11t_trxstatusP8_IO_FILEP10t_trxframe(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((16, 24), (56, 57), (60, 65), (112, 113), (152, 153), (156, 160)) %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.t_atoms, align 8            ; 7 uses
  %i.a = alloca [3 x [3 x float]], align 16       ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca [4096 x i8], align 16             ; 7 uses
  %i.e = alloca double, align 8                   ; 6 uses
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 -1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !55
  store i32 %i.g, ptr %3, align 8, !tbaa !130
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !131
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.i, align 8, !tbaa !132
  %i.j = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 766, i64 noundef 1, i64 noundef 16) ; 4 uses
  tail call void @_Z11open_symtabP8t_symtab(ptr noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = call noundef i32 @_Z12read_pdbfileP8_IO_FILEPcPiP7t_atomsP8t_symtabPA3_fP7PbcTypeS8_P12gmx_conect_t(ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef %i.j, ptr noundef %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null) ; 3 uses
  call void @_Z11free_symtabP8t_symtab(ptr noundef %i.j)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 770, ptr noundef %i.j)
  %i.n = load i32, ptr %i.b, align 4, !tbaa !81   ; 2 uses
  %i.o = icmp eq i32 %i.n, 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.q = zext i1 %i.o to i8
  store i8 %i.q, ptr %i.p, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 156
  store i32 %i.n, ptr %i.r, align 4, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.w = load i32, ptr %i.f, align 8, !tbaa !55
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.d, i32 noundef %i.w) #31 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 1, ptr %i.y, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float 1.000000e+04, ptr %i.z, align 4, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i8 1, ptr %i.aa, align 8, !tbaa !50
  %i.ab = load float, ptr %i.a, align 16, !tbaa !70 ; 2 uses
  %i.ac = fcmp une float %i.ab, 0.000000e+00      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ae = zext i1 %i.ac to i8
  store i8 %i.ae, ptr %i.ad, align 8, !tbaa !53
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 116
  store float %i.ab, ptr %i.af, align 4, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %6 = load <8 x float>, ptr %i.ag, align 4, !tbaa !70
  store <8 x float> %6, ptr %5, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !56
  %i.ai = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.33) #32 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 7
  %i.ak = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.ah) #27
  %i.al = icmp eq i32 %i.ak, 1
  %i.am = zext i1 %i.al to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = phi i8 [ 0, %bb.e ], [ %i.am, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !44
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !134
  %i.ap = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.35) #32 ; 2 uses
  %.not32 = icmp eq ptr %i.ap, null
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.e) #27
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = zext i1 %i.as to i8
  %.pre = load double, ptr %i.e, align 8, !tbaa !134
  %i.au = fptrunc double %.pre to float
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = phi float [ 0.000000e+00, %bb.g ], [ %i.au, %bb.h ]
  %i.aw = phi i8 [ 0, %bb.g ], [ %i.at, %bb.h ]
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.aw, ptr %i.ax, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.av, ptr %i.ay, align 4, !tbaa !57
  %i.az = icmp ne i32 %i.m, 0                     ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ba = load i32, ptr %i.f, align 8, !tbaa !55
  %.not33 = icmp eq i32 %i.m, %i.ba
  br i1 %.not33, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(61) @.str.2, i8 noundef zeroext 2)
  %i.bb = load i32, ptr %i.s, align 4, !tbaa !19
  %i.bc = load i32, ptr %i.f, align 8, !tbaa !55
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 802, ptr noundef nonnull @.str.37, i32 noundef %i.bb, i32 noundef %i.m, i32 noundef %i.bc) #28
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.bd

bb.n:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i1 %i.az
}

declare noundef zeroext i1 @_Z15gro_next_x_or_vP8_IO_FILEP10t_trxframe(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z15gmx_fio_getnameB5cxx11P8t_fileio(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNKSt10filesystem7__cxx114path6stringEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.b = load ptr, ptr %1, align 8, !tbaa !25, !noalias !137 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27, !noalias !137 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !21, !alias.scope !137
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #28
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !137
  store i64 %i.d, ptr %i.a, align 8, !tbaa !23, !noalias !137
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !25, !alias.scope !137
  %i.j = load i64, ptr %i.a, align 8, !tbaa !23, !noalias !137
  store i64 %i.j, ptr %i.e, align 8, !tbaa !26, !alias.scope !137
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !26
  store i8 %i.l, ptr %i.k, align 1, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !23, !noalias !137 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !27, !alias.scope !137
  %i.o = load ptr, ptr %0, align 8, !tbaa !25, !alias.scope !137
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !137
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL10printcountP11t_trxstatusPK16gmx_output_env_tfb(ptr nofree noundef captures(none) %0, ptr noundef %1, float noundef %2, i1 noundef zeroext %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 4 uses
  %i.c = add nsw i32 %i.b, 1                      ; 4 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !19
  %i.d = select i1 %3, ptr @.str.38, ptr @.str.39
  %i.e = icmp slt i32 %i.b, 19
  %i.f = urem i32 %i.c, 10
  %i.g = icmp eq i32 %i.f, 0
  %or.cond.i.i = or i1 %i.e, %i.g
  br i1 %or.cond.i.i, label %bb.b, label %_ZL11printcount_P11t_trxstatusPK16gmx_output_env_tPKcf.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %i.b, 199
  %i.i = urem i32 %i.c, 100
  %i.j = icmp eq i32 %i.i, 0
  %or.cond11.i.i = or i1 %i.h, %i.j
  br i1 %or.cond11.i.i, label %bb.c, label %_ZL11printcount_P11t_trxstatusPK16gmx_output_env_tPKcf.exit

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.b, 1999
  %i.l = urem i32 %i.c, 1000
  %i.m = icmp eq i32 %i.l, 0
  %or.cond13.i.i = or i1 %i.k, %i.m
  br i1 %or.cond13.i.i, label %_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i, label %_ZL11printcount_P11t_trxstatusPK16gmx_output_env_tPKcf.exit

_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i: ; preds = %bb.c
  %i.n = tail call noundef i32 @_Z38output_env_get_trajectory_io_verbosityPK16gmx_output_env_t(ptr noundef %1)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZL11printcount_P11t_trxstatusPK16gmx_output_env_tPKcf.exit, label %bb.d

bb.d:                                             ; preds = %_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.p = load i32, ptr %i.a, align 4, !tbaa !19
  %i.q = tail call noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %1, float noundef %2)
  %i.r = fpext float %i.q to double
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.d, i32 noundef %i.p, double noundef %i.r) #31 ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.u = tail call i32 @fflush(ptr noundef %i.t)  ; 0 uses
  br label %_ZL11printcount_P11t_trxstatusPK16gmx_output_env_tPKcf.exit

_ZL11printcount_P11t_trxstatusPK16gmx_output_env_tPKcf.exit: ; preds = %bb.a, %bb.b, %bb.c, %_Z24trxio_should_print_countPK16gmx_output_env_tP11t_trxstatus.exit.i, %bb.d
  ret void
}

declare noundef zeroext i1 @_Z25gmx_trr_read_frame_headerP8t_fileioP16gmx_trr_header_tPb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_Z23gmx_trr_read_frame_dataP8t_fileioP16gmx_trr_header_tPA3_fS4_S4_S4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z11open_symtabP8t_symtab(ptr noundef) local_unnamed_addr #4

declare noundef i32 @_Z12read_pdbfileP8_IO_FILEPcPiP7t_atomsP8t_symtabPA3_fP7PbcTypeS8_P12gmx_conect_t(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4
end_hunk_0
