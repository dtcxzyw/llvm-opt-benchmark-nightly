Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ec_asn1?download=true
inline.NumInlined: 44
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@EC_KEY_parse_parameters:bb.a
  %.lcssa169 = phi i64 [ %i.dk, %.lr.ph.i74.preheader ], [ %i.ds, %.lr.ph.i74 ] ; 2 uses
  %i.dt = icmp ugt i64 %.lcssa169, 66
  br i1 %i.dt, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit81.thread, label %.critedge.thread.i76

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit81.thread: ; preds = %.critedge.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %.thread157.thread

.critedge.thread.i76:                             ; preds = %.lr.ph179.a, %.critedge.i75, %bb.ad
  %i.du = phi i64 [ %.lcssa169, %.critedge.i75 ], [ 0, %bb.ad ], [ 0, %.lr.ph179.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.dv = call i32 @BN_bn2bin_padded(ptr noundef nonnull %i.d, i64 noundef %i.du, ptr noundef %i.bq) #4
  %.not2.i77 = icmp eq i32 %i.dv, 0
  br i1 %.not2.i77, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit81.thread128, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit81

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit81.thread128: ; preds = %.critedge.thread.i76
  call void @ERR_clear_error() #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %.thread157.thread

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit81:  ; preds = %.critedge.thread.i76
  %i.dw = load i64, ptr %i.dj, align 8, !tbaa !11
  %i.dx = call i32 @CBS_mem_equal(ptr noundef nonnull %4, ptr noundef nonnull %i.d, i64 noundef %i.dw) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  %.not56 = icmp eq i32 %i.dx, 0
  br i1 %.not56, label %.thread157.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !30
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !11 ; 2 uses
  %.not6.i82 = icmp eq i64 %i.dz, 0
  br i1 %.not6.i82, label %.critedge.thread.i85, label %.lr.ph.i83.preheader

.lr.ph.i83.preheader:                             ; preds = %bb.ae
  %i.ea = load ptr, ptr %3, align 8, !tbaa !16
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !25
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %.lr.ph181.a, label %.critedge.i84

.lr.ph.i83:                                       ; preds = %.lr.ph181.a
  %i.ed = load ptr, ptr %3, align 8, !tbaa !16
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !25
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %.lr.ph181.a, label %.critedge.i84, !llvm.loop !33

.lr.ph181.a:                                      ; preds = %.lr.ph.i83.preheader, %.lr.ph.i83
  %i.eg = call i32 @CBS_skip(ptr noundef nonnull %3, i64 noundef 1) #4 ; 0 uses
  %i.eh = load i64, ptr %i.dy, align 8, !tbaa !11 ; 2 uses
  %.not.i89 = icmp eq i64 %i.eh, 0
  br i1 %.not.i89, label %.critedge.thread.i85, label %.lr.ph.i83, !llvm.loop !33

.critedge.i84:                                    ; preds = %.lr.ph.i83, %.lr.ph.i83.preheader
  %.lcssa167 = phi i64 [ %i.dz, %.lr.ph.i83.preheader ], [ %i.eh, %.lr.ph.i83 ] ; 2 uses
  %i.ei = icmp ugt i64 %.lcssa167, 66
  br i1 %i.ei, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit90.thread, label %.critedge.thread.i85

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit90.thread: ; preds = %.critedge.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %.thread157.thread

.critedge.thread.i85:                             ; preds = %.lr.ph181.a, %.critedge.i84, %bb.ae
  %i.ej = phi i64 [ %.lcssa167, %.critedge.i84 ], [ 0, %bb.ae ], [ 0, %.lr.ph181.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.ek = call i32 @BN_bn2bin_padded(ptr noundef nonnull %i.c, i64 noundef %i.ej, ptr noundef %i.br) #4
  %.not2.i86 = icmp eq i32 %i.ek, 0
  br i1 %.not2.i86, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit90.thread133, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit90

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit90.thread133: ; preds = %.critedge.thread.i85
  call void @ERR_clear_error() #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %.thread157.thread

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit90:  ; preds = %.critedge.thread.i85
  %i.el = load i64, ptr %i.dy, align 8, !tbaa !11
  %i.em = call i32 @CBS_mem_equal(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef %i.el) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  %.not57 = icmp eq i32 %i.em, 0
  br i1 %.not57, label %.thread157.thread, label %bb.af

bb.af:                                            ; preds = %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit90
  %i.en = call ptr @EC_GROUP_get0_generator(ptr noundef %.lcssa199) #4
  %i.eo = call i32 @EC_POINT_get_affine_coordinates_GFp(ptr noundef %.lcssa199, ptr noundef %i.en, ptr noundef %i.bs, ptr noundef %i.bt, ptr noundef null) #4
  %.not58 = icmp eq i32 %i.eo, 0
  br i1 %.not58, label %.thread161, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !30
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !11 ; 2 uses
  %.not6.i91 = icmp eq i64 %i.eq, 0
  br i1 %.not6.i91, label %.critedge.thread.i94, label %.lr.ph.i92.preheader

.lr.ph.i92.preheader:                             ; preds = %bb.ag
  %i.er = load ptr, ptr %2, align 8, !tbaa !16
  %i.es = load i8, ptr %i.er, align 1, !tbaa !25
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %.lr.ph183.a, label %.critedge.i93

.lr.ph.i92:                                       ; preds = %.lr.ph183.a
  %i.eu = load ptr, ptr %2, align 8, !tbaa !16
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !25
  %i.ew = icmp eq i8 %i.ev, 0
  br i1 %i.ew, label %.lr.ph183.a, label %.critedge.i93, !llvm.loop !33

.lr.ph183.a:                                      ; preds = %.lr.ph.i92.preheader, %.lr.ph.i92
  %i.ex = call i32 @CBS_skip(ptr noundef nonnull %2, i64 noundef 1) #4 ; 0 uses
  %i.ey = load i64, ptr %i.ep, align 8, !tbaa !11 ; 2 uses
  %.not.i98 = icmp eq i64 %i.ey, 0
  br i1 %.not.i98, label %.critedge.thread.i94, label %.lr.ph.i92, !llvm.loop !33

.critedge.i93:                                    ; preds = %.lr.ph.i92, %.lr.ph.i92.preheader
  %.lcssa165 = phi i64 [ %i.eq, %.lr.ph.i92.preheader ], [ %i.ey, %.lr.ph.i92 ] ; 2 uses
  %i.ez = icmp ugt i64 %.lcssa165, 66
  br i1 %i.ez, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit99.thread, label %.critedge.thread.i94

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit99.thread: ; preds = %.critedge.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %.thread157.thread

.critedge.thread.i94:                             ; preds = %.lr.ph183.a, %.critedge.i93, %bb.ag
  %i.fa = phi i64 [ %.lcssa165, %.critedge.i93 ], [ 0, %bb.ag ], [ 0, %.lr.ph183.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.fb = call i32 @BN_bn2bin_padded(ptr noundef nonnull %i.b, i64 noundef %i.fa, ptr noundef %i.bs) #4
  %.not2.i95 = icmp eq i32 %i.fb, 0
  br i1 %.not2.i95, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit99.thread138, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit99

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit99.thread138: ; preds = %.critedge.thread.i94
  call void @ERR_clear_error() #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %.thread157.thread

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit99:  ; preds = %.critedge.thread.i94
  %i.fc = load i64, ptr %i.ep, align 8, !tbaa !11
  %i.fd = call i32 @CBS_mem_equal(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i64 noundef %i.fc) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  %.not59 = icmp eq i32 %i.fd, 0
  br i1 %.not59, label %.thread157.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !30
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !11 ; 2 uses
  %.not6.i100 = icmp eq i64 %i.ff, 0
  br i1 %.not6.i100, label %.critedge.thread.i103, label %.lr.ph.i101.preheader

.lr.ph.i101.preheader:                            ; preds = %bb.ah
  %i.fg = load ptr, ptr %1, align 8, !tbaa !16
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !25
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %.lr.ph185, label %.critedge.i102

.lr.ph.i101:                                      ; preds = %.lr.ph185
  %i.fj = load ptr, ptr %1, align 8, !tbaa !16
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !25
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %.lr.ph185, label %.critedge.i102, !llvm.loop !33

.lr.ph185:                                        ; preds = %.lr.ph.i101.preheader, %.lr.ph.i101
  %i.fm = call i32 @CBS_skip(ptr noundef nonnull %1, i64 noundef 1) #4 ; 0 uses
  %i.fn = load i64, ptr %i.fe, align 8, !tbaa !11 ; 2 uses
  %.not.i107 = icmp eq i64 %i.fn, 0
  br i1 %.not.i107, label %.critedge.thread.i103, label %.lr.ph.i101, !llvm.loop !33

.critedge.i102:                                   ; preds = %.lr.ph.i101, %.lr.ph.i101.preheader
  %.lcssa = phi i64 [ %i.ff, %.lr.ph.i101.preheader ], [ %i.fn, %.lr.ph.i101 ] ; 2 uses
  %i.fo = icmp ugt i64 %.lcssa, 66
  br i1 %i.fo, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit108.thread, label %.critedge.thread.i103

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit108.thread: ; preds = %.critedge.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %.thread157.thread

.critedge.thread.i103:                            ; preds = %.lr.ph185, %.critedge.i102, %bb.ah
  %i.fp = phi i64 [ %.lcssa, %.critedge.i102 ], [ 0, %bb.ah ], [ 0, %.lr.ph185 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.fq = call i32 @BN_bn2bin_padded(ptr noundef nonnull %i.a, i64 noundef %i.fp, ptr noundef %i.bt) #4
  %.not2.i104 = icmp eq i32 %i.fq, 0
  br i1 %.not2.i104, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit108.thread144, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit108

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit108.thread144: ; preds = %.critedge.thread.i103
  call void @ERR_clear_error() #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %.thread157.thread

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit108: ; preds = %.critedge.thread.i103
  %i.fr = load i64, ptr %i.fe, align 8, !tbaa !11
  %i.fs = call i32 @CBS_mem_equal(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.fr) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  %.fr = freeze i32 %i.fs
  %.not60 = icmp eq i32 %.fr, 0
  %i.ft = icmp eq ptr %.lcssa199, null
  %or.cond246 = or i1 %.not60, %i.ft
  br i1 %or.cond246, label %.thread157.thread, label %.thread161

.thread.sink.split:                               ; preds = %.critedge.i, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread118
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit
  %i.fu = call noundef ptr @EC_group_p256() #4    ; 2 uses
  %i.fv = call ptr @EC_GROUP_get0_order(ptr noundef %i.fu) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !30
  %i.fw = load i64, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %.not6.i.1 = icmp eq i64 %i.fw, 0
  br i1 %.not6.i.1, label %.critedge.thread.i.1, label %.lr.ph.i.preheader.1

.lr.ph.i.preheader.1:                             ; preds = %.thread
  %i.fx = load ptr, ptr %6, align 8, !tbaa !16
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !25
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %.lr.ph.1, label %.critedge.i.1

.lr.ph.1:                                         ; preds = %.lr.ph.i.preheader.1, %.lr.ph.i.1
  %i.ga = call i32 @CBS_skip(ptr noundef nonnull %6, i64 noundef 1) #4 ; 0 uses
  %i.gb = load i64, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %.not.i63.1 = icmp eq i64 %i.gb, 0
  br i1 %.not.i63.1, label %.critedge.thread.i.1, label %.lr.ph.i.1, !llvm.loop !33

.lr.ph.i.1:                                       ; preds = %.lr.ph.1
  %i.gc = load ptr, ptr %6, align 8, !tbaa !16
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !25
  %i.ge = icmp eq i8 %i.gd, 0
  br i1 %i.ge, label %.lr.ph.1, label %.critedge.i.1, !llvm.loop !33

.critedge.i.1:                                    ; preds = %.lr.ph.i.1, %.lr.ph.i.preheader.1
  %.lcssa173.1 = phi i64 [ %i.fw, %.lr.ph.i.preheader.1 ], [ %i.gb, %.lr.ph.i.1 ] ; 2 uses
  %i.gf = icmp ugt i64 %.lcssa173.1, 66
  br i1 %i.gf, label %.thread.1.sink.split, label %.critedge.thread.i.1

.critedge.thread.i.1:                             ; preds = %.lr.ph.1, %.critedge.i.1, %.thread
  %i.gg = phi i64 [ %.lcssa173.1, %.critedge.i.1 ], [ 0, %.thread ], [ 0, %.lr.ph.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.gh = call i32 @BN_bn2bin_padded(ptr noundef nonnull %i.f, i64 noundef %i.gg, ptr noundef %i.fv) #4
  %.not2.i.1 = icmp eq i32 %i.gh, 0
  br i1 %.not2.i.1, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread118.1, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.1

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.1:  ; preds = %.critedge.thread.i.1
  %i.gi = load i64, ptr %i.cc, align 8, !tbaa !11
  %i.gj = call i32 @CBS_mem_equal(ptr noundef nonnull %6, ptr noundef nonnull %i.f, i64 noundef %i.gi) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  %.not53.1 = icmp eq i32 %i.gj, 0
  br i1 %.not53.1, label %.thread.1, label %bb.ab

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread118.1: ; preds = %.critedge.thread.i.1
  call void @ERR_clear_error() #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  br label %.thread.1.sink.split

.thread.1.sink.split:                             ; preds = %.critedge.i.1, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread118.1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %.thread.1

.thread.1:                                        ; preds = %.thread.1.sink.split, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.1
  %i.gk = call noundef ptr @EC_group_p384() #4    ; 2 uses
  %i.gl = call ptr @EC_GROUP_get0_order(ptr noundef %i.gk) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !30
  %i.gm = load i64, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %.not6.i.2 = icmp eq i64 %i.gm, 0
  br i1 %.not6.i.2, label %.critedge.thread.i.2, label %.lr.ph.i.preheader.2

.lr.ph.i.preheader.2:                             ; preds = %.thread.1
  %i.gn = load ptr, ptr %6, align 8, !tbaa !16
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !25
  %i.gp = icmp eq i8 %i.go, 0
  br i1 %i.gp, label %.lr.ph.2, label %.critedge.i.2

.lr.ph.2:                                         ; preds = %.lr.ph.i.preheader.2, %.lr.ph.i.2
  %i.gq = call i32 @CBS_skip(ptr noundef nonnull %6, i64 noundef 1) #4 ; 0 uses
  %i.gr = load i64, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %.not.i63.2 = icmp eq i64 %i.gr, 0
  br i1 %.not.i63.2, label %.critedge.thread.i.2, label %.lr.ph.i.2, !llvm.loop !33

.lr.ph.i.2:                                       ; preds = %.lr.ph.2
  %i.gs = load ptr, ptr %6, align 8, !tbaa !16
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !25
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %.lr.ph.2, label %.critedge.i.2, !llvm.loop !33

.critedge.i.2:                                    ; preds = %.lr.ph.i.2, %.lr.ph.i.preheader.2
  %.lcssa173.2 = phi i64 [ %i.gm, %.lr.ph.i.preheader.2 ], [ %i.gr, %.lr.ph.i.2 ] ; 2 uses
  %i.gv = icmp ugt i64 %.lcssa173.2, 66
  br i1 %i.gv, label %.thread.2.sink.split, label %.critedge.thread.i.2

.critedge.thread.i.2:                             ; preds = %.lr.ph.2, %.critedge.i.2, %.thread.1
  %i.gw = phi i64 [ %.lcssa173.2, %.critedge.i.2 ], [ 0, %.thread.1 ], [ 0, %.lr.ph.2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.gx = call i32 @BN_bn2bin_padded(ptr noundef nonnull %i.f, i64 noundef %i.gw, ptr noundef %i.gl) #4
  %.not2.i.2 = icmp eq i32 %i.gx, 0
  br i1 %.not2.i.2, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread118.2, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.2

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.2:  ; preds = %.critedge.thread.i.2
  %i.gy = load i64, ptr %i.cc, align 8, !tbaa !11
  %i.gz = call i32 @CBS_mem_equal(ptr noundef nonnull %6, ptr noundef nonnull %i.f, i64 noundef %i.gy) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  %.not53.2 = icmp eq i32 %i.gz, 0
  br i1 %.not53.2, label %.thread.2, label %bb.ab

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread118.2: ; preds = %.critedge.thread.i.2
  call void @ERR_clear_error() #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  br label %.thread.2.sink.split

.thread.2.sink.split:                             ; preds = %.critedge.i.2, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread118.2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %.thread.2

.thread.2:                                        ; preds = %.thread.2.sink.split, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.2
  %i.ha = call noundef ptr @EC_group_p521() #4    ; 2 uses
  %i.hb = call ptr @EC_GROUP_get0_order(ptr noundef %i.ha) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !30
  %i.hc = load i64, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %.not6.i.3 = icmp eq i64 %i.hc, 0
  br i1 %.not6.i.3, label %.critedge.thread.i.3, label %.lr.ph.i.preheader.3

.lr.ph.i.preheader.3:                             ; preds = %.thread.2
  %i.hd = load ptr, ptr %6, align 8, !tbaa !16
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !25
  %i.hf = icmp eq i8 %i.he, 0
  br i1 %i.hf, label %.lr.ph.3, label %.critedge.i.3

.lr.ph.3:                                         ; preds = %.lr.ph.i.preheader.3, %.lr.ph.i.3
  %i.hg = call i32 @CBS_skip(ptr noundef nonnull %6, i64 noundef 1) #4 ; 0 uses
  %i.hh = load i64, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %.not.i63.3 = icmp eq i64 %i.hh, 0
  br i1 %.not.i63.3, label %.critedge.thread.i.3, label %.lr.ph.i.3, !llvm.loop !33

.lr.ph.i.3:                                       ; preds = %.lr.ph.3
  %i.hi = load ptr, ptr %6, align 8, !tbaa !16
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !25
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %.lr.ph.3, label %.critedge.i.3, !llvm.loop !33

.critedge.i.3:                                    ; preds = %.lr.ph.i.3, %.lr.ph.i.preheader.3
  %.lcssa173.3 = phi i64 [ %i.hc, %.lr.ph.i.preheader.3 ], [ %i.hh, %.lr.ph.i.3 ] ; 2 uses
  %i.hl = icmp ugt i64 %.lcssa173.3, 66
  br i1 %i.hl, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread.3, label %.critedge.thread.i.3

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread.3: ; preds = %.critedge.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %.thread157.thread

.critedge.thread.i.3:                             ; preds = %.lr.ph.3, %.critedge.i.3, %.thread.2
  %i.hm = phi i64 [ %.lcssa173.3, %.critedge.i.3 ], [ 0, %.thread.2 ], [ 0, %.lr.ph.3 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.hn = call i32 @BN_bn2bin_padded(ptr noundef nonnull %i.f, i64 noundef %i.hm, ptr noundef %i.hb) #4
  %.not2.i.3 = icmp eq i32 %i.hn, 0
  br i1 %.not2.i.3, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread118.3, label %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.3

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.3:  ; preds = %.critedge.thread.i.3
  %i.ho = load i64, ptr %i.cc, align 8, !tbaa !11
  %i.hp = call i32 @CBS_mem_equal(ptr noundef nonnull %6, ptr noundef nonnull %i.f, i64 noundef %i.ho) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  %.not53.3 = icmp eq i32 %i.hp, 0
  br i1 %.not53.3, label %.thread157.thread, label %bb.ab

_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread118.3: ; preds = %.critedge.thread.i.3
  call void @ERR_clear_error() #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %.thread157.thread

.thread157.thread:                                ; preds = %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit99, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit72, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit81, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit90, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread.3, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.3, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit.thread118.3, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit108.thread, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit108.thread144, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit99.thread, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit99.thread138, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit72.thread, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit72.thread123, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit81.thread, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit81.thread128, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit90.thread, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit90.thread133, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit108
  call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @.str, i32 noundef 385) #4
  br label %.thread161

.thread161:                                       ; preds = %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit108, %bb.af, %bb.ab, %.thread157.thread, %bb.aa
  %.3 = phi ptr [ null, %bb.aa ], [ null, %.thread157.thread ], [ %.lcssa199, %_ZL14integers_equalPK6cbs_stPK9bignum_st.exit108 ], [ null, %bb.ab ], [ null, %bb.af ]
  call void @BN_free(ptr noundef %i.bp) #4
  call void @BN_free(ptr noundef %i.bq) #4
  call void @BN_free(ptr noundef %i.br) #4
  call void @BN_free(ptr noundef %i.bs) #4
  call void @BN_free(ptr noundef %i.bt) #4
  br label %bb.ai

bb.ai:                                            ; preds = %_ZL26parse_explicit_prime_curveP6cbs_stPN12_GLOBAL__N_120explicit_prime_curveE.exit.thread112, %_ZL26parse_explicit_prime_curveP6cbs_stPN12_GLOBAL__N_120explicit_prime_curveE.exit.thread, %.thread161
  %.146 = phi ptr [ null, %_ZL26parse_explicit_prime_curveP6cbs_stPN12_GLOBAL__N_120explicit_prime_curveE.exit.thread112 ], [ %.3, %.thread161 ], [ null, %_ZL26parse_explicit_prime_curveP6cbs_stPN12_GLOBAL__N_120explicit_prime_curveE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.b
  %.247 = phi ptr [ %.146, %bb.ai ], [ %i.k, %bb.b ]
  ret ptr %.247
}

declare i32 @EC_GROUP_cmp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @EC_KEY_new() local_unnamed_addr #2

declare i32 @EC_KEY_set_group(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BN_bin2bn(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EC_POINT_new(ptr noundef) local_unnamed_addr #2

declare i32 @EC_KEY_set_private_key(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CBS_get_u8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EC_POINT_oct2point(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ec_point_mul_scalar_base(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EC_KEY_check_key(ptr noundef) local_unnamed_addr #2

declare void @BN_free(ptr noundef) local_unnamed_addr #2

declare void @EC_KEY_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EC_KEY_marshal_private_key(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cbb_st, align 8             ; 9 uses
  %4 = alloca %struct.cbb_st, align 8             ; 4 uses
  %5 = alloca %struct.cbb_st, align 8             ; 5 uses
  %6 = alloca %struct.cbb_st, align 8             ; 5 uses
  %7 = alloca %struct.cbb_st, align 8             ; 6 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !35
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 163) #4
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.g = call i32 @CBB_add_asn1(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 536870928) #4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = call i32 @CBB_add_asn1_uint64(ptr noundef nonnull %3, i64 noundef 1) #4
  %.not20 = icmp eq i32 %i.h, 0
  br i1 %.not20, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = call i32 @CBB_add_asn1(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 4) #4
  %.not21 = icmp eq i32 %i.i, 0
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %1, align 8, !tbaa !35
  %i.k = call ptr @EC_GROUP_get0_order(ptr noundef %i.j) #4
  %i.l = call i32 @BN_num_bytes(ptr noundef %i.k) #4
  %i.m = zext i32 %i.l to i64
  %i.n = call ptr @EC_KEY_get0_private_key(ptr noundef nonnull %1) #4
  %i.o = call i32 @BN_bn2cbb_padded(ptr noundef nonnull %4, i64 noundef %i.m, ptr noundef %i.n) #4
  %.not22 = icmp eq i32 %i.o, 0
  br i1 %.not22, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 129, ptr noundef nonnull @.str, i32 noundef 174) #4
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  %i.p = and i32 %2, 1
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.q = call i32 @CBB_add_asn1(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef -1610612736) #4
  %.not24 = icmp eq i32 %i.q, 0
  br i1 %.not24, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %1, align 8, !tbaa !35
  %i.s = call i32 @EC_KEY_marshal_curve_name(ptr noundef nonnull %5, ptr noundef %i.r)
  %.not25 = icmp eq i32 %i.s, 0
  br i1 %.not25, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = call i32 @CBB_flush(ptr noundef nonnull %3) #4
  %.not26 = icmp eq i32 %i.t, 0
  br i1 %.not26, label %.critedge, label %bb.n

.critedge:                                        ; preds = %bb.m, %bb.l, %bb.k
  call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 129, ptr noundef nonnull @.str, i32 noundef 183) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %bb.y

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.u = and i32 %2, 2
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17
  %.not28 = icmp eq ptr %i.w, null
  br i1 %.not28, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.x = call i32 @CBB_add_asn1(ptr noundef nonnull %3, ptr noundef nonnull %6, i32 noundef -1610612735) #4
  %.not29 = icmp eq i32 %i.x, 0
  br i1 %.not29, label %.critedge36, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = call i32 @CBB_add_asn1(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 3) #4
  %.not30 = icmp eq i32 %i.y, 0
  br i1 %.not30, label %.critedge36, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = call i32 @CBB_add_u8(ptr noundef nonnull %7, i8 noundef zeroext 0) #4
  %.not31 = icmp eq i32 %i.z, 0
  br i1 %.not31, label %.critedge36, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aa = load ptr, ptr %1, align 8, !tbaa !35
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.ae = call i32 @EC_POINT_point2cbb(ptr noundef nonnull %7, ptr noundef %i.aa, ptr noundef %i.ab, i32 noundef %i.ad, ptr noundef null)
  %.not32 = icmp eq i32 %i.ae, 0
  br i1 %.not32, label %.critedge36, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = call i32 @CBB_flush(ptr noundef nonnull %3) #4
  %.not33 = icmp eq i32 %i.af, 0
  br i1 %.not33, label %.critedge36, label %bb.v

.critedge36:                                      ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 129, ptr noundef nonnull @.str, i32 noundef 199) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.p, %bb.o
  %i.ag = call i32 @CBB_flush(ptr noundef %0) #4
  %.not34 = icmp eq i32 %i.ag, 0
  br i1 %.not34, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 129, ptr noundef nonnull @.str, i32 noundef 205) #4
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %.critedge36, %.critedge, %bb.x, %bb.i
end_hunk_0
