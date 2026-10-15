Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.13?download=true
inline.NumInlined: 2178
inline.NumDeleted: 786
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize:bb.a
  %i.ay = icmp eq i64 %i.ap, 0
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.al

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.bl = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports37merge_single_subtree_into_parent_tree(ptr noundef nonnull %0, ptr noundef nonnull align 8 %2)
          to label %bb.o unwind label %bb.n       ; 7 uses

.body235:                                         ; preds = %bb.dp, %bb.dc, %bb.n
  %.sroa.061.5.lpad-body = phi i8 [ %.sroa.061.9, %bb.dc ], [ %.sroa.061.5, %bb.n ], [ %.sroa.061.9, %bb.dp ] ; 2 uses
  %eh.lpad-body220 = phi { ptr, i32 } [ %i.hb, %bb.dc ], [ %i.bm, %bb.n ], [ %i.hv, %bb.dp ] ; 2 uses
  br i1 %i.ar, label %.thread, label %.body

bb.n:                                             ; preds = %bb.dq, %bb.dd, %bb.y, %bb.m
  %.sroa.061.5 = phi i8 [ 1, %bb.y ], [ 0, %bb.m ], [ %.sroa.061.9, %bb.dq ], [ %.sroa.061.9, %bb.dd ]
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body235

bb.o:                                             ; preds = %bb.m
  %.not105 = icmp eq ptr %i.bl, null
  br i1 %.not105, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit161, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bl, ptr %i.v, align 8
  %i.bn = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
          to label %bb.r unwind label %bb.v

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit161: ; preds = %bb.s, %bb.u, %bb.t, %bb.o
  %.sroa.0.1 = phi ptr [ null, %bb.o ], [ %i.bl, %bb.s ], [ %i.bo, %bb.u ], [ %i.bo, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ae

bb.q:                                             ; preds = %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.bo = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize(ptr noundef nonnull %i.bn, i1 noundef zeroext false, ptr noundef nonnull align 8 %2)
          to label %bb.s unwind label %bb.v       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not106 = icmp eq ptr %i.bo, null
  br i1 %.not106, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit161, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noundef !4
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.u, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit161

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bl) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit161 unwind label %bb.q

bb.v:                                             ; preds = %bb.r, %bb.p
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !4
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bl) #34
          to label %.thread unwind label %bb.x

bb.x:                                             ; preds = %bb.ic, %bb.hy, %bb.if, %bb.ia, %bb.ew, %bb.ev, %bb.et, %bb.er, %bb.ci, %bb.bp, %bb.az, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit272, %bb.aj, %bb.w, %bb.h, %.thread, %.thread411, %bb.dg, %bb.bs
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body1053

.body1053:                                        ; preds = %bb.ib, %bb.hx, %bb.x
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.y:                                             ; preds = %bb.k
  store i64 0, ptr %i.ao, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !4, !noundef !4
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.cb = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize(ptr noundef nonnull %i.ca, i1 noundef zeroext false, ptr noundef nonnull align 8 %2)
          to label %bb.z unwind label %bb.n       ; 4 uses

bb.z:                                             ; preds = %bb.y
  %.not107 = icmp eq ptr %i.cb, null
  br i1 %.not107, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.cc = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ab, label %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit, !prof !7

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #38
          to label %.noexc164 unwind label %bb.ai

.noexc164:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.aa
  store ptr %i.cb, ptr %i.cc, align 8
  store i64 1, ptr %i.w, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.cc, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %i.cg, align 8
  %i.ch = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports18with_use_tree_list(ptr nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull align 8 %2)
          to label %bb.ad unwind label %bb.ac

bb.ad:                                            ; preds = %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit161
  %.sroa.061.6 = phi i8 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit161 ], [ 1, %bb.z ], [ 1, %bb.ad ] ; 3 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit161 ], [ null, %bb.z ], [ %i.ch, %bb.ad ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit unwind label %bb.i

bb.ah:                                            ; preds = %bb.af
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ai:                                            ; preds = %bb.ab
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 48 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !noundef !4
  %i.cn = add i32 %i.cm, -1                       ; 2 uses
  store i32 %i.cn, ptr %i.cl, align 4
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cb) #34
          to label %.thread unwind label %bb.x

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit272: ; preds = %bb.hy, %.body269, %.thread465, %bb.ia, %bb.fk, %bb.fj, %bb.ak
  %.pn101.pn = phi { ptr, i32 } [ %i.kz, %bb.fk ], [ %eh.lpad-body258470, %.thread465 ], [ %i.cp, %bb.ak ], [ %i.kz, %bb.fj ], [ %eh.lpad-body258470, %bb.ia ], [ %lpad.thr_comm.split-lp507, %.body269 ], [ %eh.lpad-body270504, %bb.hy ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit.thread unwind label %bb.x

bb.ak:                                            ; preds = %bb.fn
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit272

bb.al:                                            ; preds = %.lr.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265
  %i.cq = phi ptr [ %i.av, %.lr.ph ], [ %i.lq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265 ] ; 2 uses
  %.sroa.0346.0716 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0346.6, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !826)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !826
  %i.cs = load ptr, ptr %i.cq, align 8, !noalias !826, !nonnull !4, !noundef !4 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.cs, ptr %i.s, align 8
  %i.ct = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19one_style_tree_list(ptr nonnull %i.cs)
          to label %bb.ex unwind label %.thread471 ; 3 uses

._crit_edge:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265, %bb.l
  %.sroa.0346.0.lcssa = phi i8 [ 0, %bb.l ], [ %.sroa.0346.6, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265 ] ; 4 uses
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170 unwind label %bb.am

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit: ; preds = %.thread399, %bb.ew, %bb.dk, %.body228, %bb.ar, %bb.am
  %.pn101.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.am ], [ %i.hq, %bb.dk ], [ %.pn95.pn.pn, %bb.ar ], [ %lpad.thr_comm.split-lp406, %.body228 ], [ %.pn95.pn.pn402, %bb.ew ], [ %.pn95.pn.pn402, %.thread399 ] ; 2 uses
  %.sroa.061.7 = phi i8 [ %.sroa.061.8, %bb.am ], [ %.sroa.061.9, %bb.dk ], [ %.sroa.061.9, %bb.ar ], [ %.sroa.061.9, %.body228 ], [ %.sroa.061.9, %bb.ew ], [ %.sroa.061.9, %.thread399 ] ; 2 uses
  %.sroa.058.0 = phi i8 [ %.sroa.058.1, %bb.am ], [ %.sroa.058.2, %bb.dk ], [ %.sroa.058.2, %bb.ar ], [ %.sroa.058.2, %.body228 ], [ %.sroa.058.2, %bb.ew ], [ %.sroa.058.2, %.thread399 ]
  %i.cu = trunc nuw i8 %.sroa.058.0 to i1
  br i1 %i.cu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit.thread, label %.body

bb.am:                                            ; preds = %bb.ax, %._crit_edge, %bb.an
  %.sroa.061.8 = phi i8 [ %.sroa.061.9, %bb.ax ], [ 1, %bb.an ], [ 1, %._crit_edge ]
  %.sroa.058.1 = phi i8 [ %.sroa.058.2, %bb.ax ], [ 0, %bb.an ], [ 1, %._crit_edge ]
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cw = trunc nuw i8 %.sroa.0346.0.lcssa to i1
  br i1 %i.cw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.cx = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports18with_use_tree_list(ptr nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull align 8 %2)
          to label %bb.ap unwind label %bb.am     ; 2 uses

bb.ao:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170, %bb.ap
  %storemerge = phi ptr [ %i.cx, %bb.ap ], [ %0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170 ] ; 26 uses
  %.sroa.061.9 = phi i8 [ 1, %bb.ap ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170 ] ; 14 uses
  %.sroa.058.2 = phi i8 [ 0, %bb.ap ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170 ] ; 8 uses
  store ptr %storemerge, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cy = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db(ptr nonnull %storemerge)
          to label %bb.as unwind label %.body228.thread407 ; 5 uses

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.not79 = icmp eq ptr %i.cx, null
  br i1 %.not79, label %bb.aq, label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit221

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit221: ; preds = %bb.dd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit175, %bb.aq
  %.sroa.061.10 = phi i8 [ 1, %bb.aq ], [ %.sroa.061.9, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit175 ], [ %.sroa.061.9, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit

bb.ar:                                            ; preds = %.thread411, %.body193
  %i.cz = phi ptr [ %i.ka, %.thread411 ], [ %i.dr, %.body193 ]
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn95.pn415, %.thread411 ], [ %.pn95.pn, %.body193 ] ; 2 uses
  %.sroa.069.1 = phi i1 [ %.sroa.069.3416, %.thread411 ], [ %.sroa.069.3, %.body193 ]
  br i1 %.sroa.069.1, label %.thread399, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit

.body228.thread407:                               ; preds = %bb.da, %bb.ao
  %.ph = phi ptr [ %storemerge, %bb.ao ], [ %i.ep, %bb.da ]
  %lpad.thr_comm405 = landingpad { ptr, i32 }
          cleanup
  br label %.thread399

.body228:                                         ; preds = %bb.dl
  %lpad.thr_comm.split-lp406 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit

bb.as:                                            ; preds = %bb.ao
  %.not80 = icmp eq ptr %i.cy, null
  br i1 %.not80, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 6 uses
  %i.db = load i32, ptr %i.da, align 4, !noundef !4 ; 2 uses
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %bb.av, label %bb.au, !prof !7

bb.au:                                            ; preds = %bb.at
  %i.dd = add nuw i32 %i.db, 1
  store i32 %i.dd, ptr %i.da, align 4
  %i.de = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.cy)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit173 unwind label %bb.ay

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
          to label %.noexc172 unwind label %bb.ay

.noexc172:                                        ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.as, %bb.be, %bb.da, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216
  %i.df = phi ptr [ %storemerge, %bb.be ], [ %i.ep, %bb.da ], [ %i.ep, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216 ], [ %storemerge, %bb.as ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !noundef !4
  %i.di = add i32 %i.dh, -1                       ; 2 uses
  store i32 %i.di, ptr %i.dg, align 4
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ax, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit175

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.df) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit175 unwind label %bb.am

bb.ay:                                            ; preds = %bb.av, %bb.au, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit173
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load i32, ptr %i.da, align 4, !noundef !4
  %i.dm = add i32 %i.dl, -1                       ; 2 uses
  store i32 %i.dm, ptr %i.da, align 4
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.az, label %.thread399

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cy) #34
          to label %.thread399 unwind label %bb.x

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit173: ; preds = %bb.au
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEINtB2_18SpecFromIterNestedB11_INtB17_11AstChildrenB11_EE9from_iterCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef %i.de)
          to label %bb.ba unwind label %bb.ay

bb.ba:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit173
  %i.do = load i32, ptr %i.da, align 4, !noundef !4
  %i.dp = add i32 %i.do, -1                       ; 2 uses
  store i32 %i.dp, ptr %i.da, align 4
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.bb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cy) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179 unwind label %.loopexit.split-lp517

.body193:                                         ; preds = %.loopexit.split-lp517, %.body206, %bb.ci, %bb.cb, %bb.bo, %bb.bp, %bb.bs
  %i.dr = phi ptr [ %i.fl, %bb.cb ], [ %i.ey, %bb.bs ], [ %3, %bb.bo ], [ %i.ft, %.body206 ], [ %3, %bb.bp ], [ %i.ft, %bb.ci ], [ %.ph518, %.loopexit.split-lp517 ] ; 2 uses
  %.pn95.pn = phi { ptr, i32 } [ %i.fm, %bb.cb ], [ %.pn, %bb.bs ], [ %i.er, %bb.bo ], [ %.pn87.pn, %.body206 ], [ %i.er, %bb.bp ], [ %.pn87.pn, %bb.ci ], [ %lpad.loopexit.split-lp520, %.loopexit.split-lp517 ] ; 2 uses
  %.sroa.069.3 = phi i1 [ true, %bb.cb ], [ true, %bb.bs ], [ true, %bb.bo ], [ true, %.body206 ], [ true, %bb.bp ], [ true, %bb.ci ], [ %.sroa.069.4.ph, %.loopexit.split-lp517 ] ; 2 uses
  %.sroa.055.0 = phi i8 [ %.sroa.055.2, %bb.cb ], [ %.sroa.055.2, %bb.bs ], [ %.sroa.055.2, %bb.bo ], [ %.sroa.055.2, %.body206 ], [ %.sroa.055.2, %bb.bp ], [ %.sroa.055.2, %bb.ci ], [ %.sroa.055.1.ph, %.loopexit.split-lp517 ]
  %i.ds = trunc nuw i8 %.sroa.055.0 to i1
  br i1 %i.ds, label %.thread411, label %bb.ar

.body193.thread:                                  ; preds = %bb.dt
  %lpad.loopexit519 = landingpad { ptr, i32 }
          cleanup
  br label %.thread411

.loopexit.split-lp517:                            ; preds = %bb.du, %bb.bi, %bb.bh, %bb.bd, %bb.bb, %bb.cc, %bb.ct, %bb.cz, %bb.di
  %.ph518 = phi ptr [ %storemerge, %bb.bd ], [ %3, %bb.bi ], [ %i.fl, %bb.cc ], [ %i.eh, %bb.bh ], [ %i.eh, %bb.cz ], [ %i.go, %bb.ct ], [ %i.hi, %bb.di ], [ %storemerge, %bb.du ], [ %storemerge, %bb.bb ]
  %.sroa.069.4.ph = phi i1 [ true, %bb.bd ], [ true, %bb.bi ], [ true, %bb.cc ], [ true, %bb.bh ], [ true, %bb.cz ], [ true, %bb.ct ], [ false, %bb.di ], [ true, %bb.du ], [ true, %bb.bb ]
  %.sroa.055.1.ph = phi i8 [ 0, %bb.bd ], [ %.sroa.055.2, %bb.bi ], [ %.sroa.055.2, %bb.cc ], [ %.sroa.055.2, %bb.bh ], [ %.sroa.055.2, %bb.cz ], [ %.sroa.055.2, %bb.ct ], [ %.sroa.055.2, %bb.di ], [ 1, %bb.du ], [ 1, %bb.bb ]
  %lpad.loopexit.split-lp520 = landingpad { ptr, i32 }
          cleanup
  br label %.body193

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179: ; preds = %bb.ba, %bb.bb
  %i.dt = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  %i.du = load i64, ptr %i.dt, align 8, !noundef !4 ; 3 uses
  %i.dv = icmp ult i64 %i.du, 1152921504606846976
  call void @llvm.assume(i1 %i.dv)
  %.not727 = icmp eq i64 %i.du, 0
  br i1 %.not727, label %.critedge, label %.lr.ph724

.lr.ph724:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179
  %i.dw = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  br label %bb.bc

.loopexit515:                                     ; preds = %bb.ep
  %i.dx = icmp samesign ult i64 %i.dz, %i.jj
  br i1 %i.dx, label %bb.bc, label %._crit_edge725

._crit_edge725:                                   ; preds = %.loopexit515
  br i1 %.sroa.031.2, label %bb.bd, label %.critedge

bb.bc:                                            ; preds = %.lr.ph724, %.loopexit515
  %i.dy = phi i64 [ %i.du, %.lr.ph724 ], [ %i.jj, %.loopexit515 ] ; 2 uses
  %.sroa.026.0723 = phi i64 [ 0, %.lr.ph724 ], [ %i.dz, %.loopexit515 ] ; 7 uses
  %.sroa.031.0722 = phi i1 [ false, %.lr.ph724 ], [ %.sroa.031.2, %.loopexit515 ] ; 2 uses
  %i.dz = add nuw nsw i64 %.sroa.026.0723, 1      ; 4 uses
  %i.ea = icmp samesign ult i64 %i.dz, %i.dy
  br i1 %i.ea, label %.lr.ph720, label %.loopexit515.thread

.loopexit515.thread:                              ; preds = %bb.bc
  br i1 %.sroa.031.0722, label %bb.bd, label %.critedge

.critedge:                                        ; preds = %.loopexit515.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181, %._crit_edge725
  %.sroa.0346.1 = phi i8 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181 ], [ %.sroa.0346.0.lcssa, %._crit_edge725 ], [ %.sroa.0346.0.lcssa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179 ], [ %.sroa.0346.0.lcssa, %.loopexit515.thread ] ; 3 uses
  %3 = phi ptr [ %i.eb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181 ], [ %storemerge, %._crit_edge725 ], [ %storemerge, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179 ], [ %storemerge, %.loopexit515.thread ] ; 12 uses
  %.sroa.055.2 = phi i8 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181 ], [ 1, %._crit_edge725 ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179 ], [ 1, %.loopexit515.thread ] ; 14 uses
  br i1 %1, label %bb.bh, label %bb.bi

bb.bd:                                            ; preds = %.loopexit515.thread, %._crit_edge725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.eb = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports18with_use_tree_list(ptr nonnull %storemerge, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %2)
          to label %bb.be unwind label %.loopexit.split-lp517 ; 5 uses

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not81 = icmp eq ptr %i.eb, null
  br i1 %.not81, label %bb.aw, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ec = getelementptr inbounds nuw i8, ptr %storemerge, i64 48 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !noundef !4
  %i.ee = add i32 %i.ed, -1                       ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 4
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.bg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %storemerge) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181 unwind label %.thread511

.thread511:                                       ; preds = %bb.bg
  %i.eg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.eb, ptr %i.q, align 8
  br label %.thread399

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181: ; preds = %bb.bf, %bb.bg
  store ptr %i.eb, ptr %i.q, align 8
  br label %.critedge

bb.bh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit195, %.critedge
  %.sroa.0346.2 = phi i8 [ %.sroa.0346.1, %.critedge ], [ %.sroa.0346.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit195 ] ; 2 uses
  %i.eh = phi ptr [ %3, %.critedge ], [ %i.fl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit195 ] ; 15 uses
  %i.ei = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db(ptr %i.eh)
          to label %bb.ce unwind label %.loopexit.split-lp517 ; 6 uses

bb.bi:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ej = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db(ptr %3)
          to label %bb.bj unwind label %.loopexit.split-lp517 ; 5 uses

bb.bj:                                            ; preds = %bb.bi
  %.not82 = icmp eq ptr %i.ej, null
  br i1 %.not82, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48 ; 6 uses
  %i.el = load i32, ptr %i.ek, align 4, !noundef !4 ; 2 uses
  %i.em = icmp eq i32 %i.el, -1
  br i1 %i.em, label %bb.bm, label %bb.bl, !prof !7

bb.bl:                                            ; preds = %bb.bk
  %i.en = add nuw i32 %i.el, 1
  store i32 %i.en, ptr %i.ek, align 4
  %i.eo = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.ej)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit184 unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
          to label %.noexc183 unwind label %bb.bo

.noexc183:                                        ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216: ; preds = %bb.cz, %bb.cy, %bb.bn
  %i.ep = phi ptr [ %3, %bb.bn ], [ %i.eh, %bb.cy ], [ %i.eh, %bb.cz ] ; 3 uses
  %i.eq = trunc nuw i8 %.sroa.055.2 to i1
  br i1 %i.eq, label %bb.da, label %bb.aw

bb.bo:                                            ; preds = %bb.bm, %bb.bl, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit184
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load i32, ptr %i.ek, align 4, !noundef !4
  %i.et = add i32 %i.es, -1                       ; 2 uses
  store i32 %i.et, ptr %i.ek, align 4
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.bp, label %.body193

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ej) #34
          to label %.body193 unwind label %bb.x

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit184: ; preds = %bb.bl
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEINtB2_18SpecFromIterNestedB11_INtB17_11AstChildrenB11_EE9from_iterCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef %i.eo)
          to label %bb.bq unwind label %bb.bo

bb.bq:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit184
  %i.ev = load i32, ptr %i.ek, align 4, !noundef !4
  %i.ew = add i32 %i.ev, -1                       ; 2 uses
  store i32 %i.ew, ptr %i.ek, align 4
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.br, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ej) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188 unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bz, %bb.bt
  %i.ey = phi ptr [ %i.ff, %bb.bz ], [ %3, %bb.bt ]
  %.pn = phi { ptr, i32 } [ %i.fk, %bb.bz ], [ %i.ez, %bb.bt ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #35
          to label %.body193 unwind label %bb.x

bb.bt:                                            ; preds = %bb.br, %bb.bv, %bb.bu
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188: ; preds = %bb.bq, %bb.br
  %i.fa = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !4 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, 1152921504606846976
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp eq i64 %i.fb, 1
  br i1 %i.fd, label %bb.bu, label %bb.ca

bb.bu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188
  %i.fe = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.bv unwind label %bb.bt

bb.bv:                                            ; preds = %bb.bu
  %i.ff = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports37merge_single_subtree_into_parent_tree(ptr noundef nonnull %i.fe, ptr noundef nonnull align 8 %2)
          to label %bb.bw unwind label %bb.bt     ; 5 uses

bb.bw:                                            ; preds = %bb.bv
  %.not83 = icmp eq ptr %i.ff, null
  br i1 %.not83, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !noundef !4
  %i.fi = add i32 %i.fh, -1                       ; 2 uses
  store i32 %i.fi, ptr %i.fg, align 4
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.by, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit190

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit190 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ff, ptr %i.q, align 8
  br label %bb.bs

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit190: ; preds = %bb.bx, %bb.by
  store ptr %i.ff, ptr %i.q, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit190
  %.sroa.0346.3 = phi i8 [ %.sroa.0346.1, %bb.bw ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit190 ], [ %.sroa.0346.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188 ]
  %i.fl = phi ptr [ %3, %bb.bw ], [ %i.ff, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit190 ], [ %3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188 ] ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body193 unwind label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit195 unwind label %.loopexit.split-lp517

bb.cd:                                            ; preds = %bb.cb
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit195: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bh

bb.ce:                                            ; preds = %bb.bh
  %.not85 = icmp eq ptr %i.ei, null
  br i1 %.not85, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit212, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ei, i64 48 ; 8 uses
  %i.fp = load i32, ptr %i.fo, align 4, !noundef !4 ; 2 uses
  %i.fq = icmp eq i32 %i.fp, -1
  br i1 %i.fq, label %bb.ch, label %bb.cg, !prof !7

bb.cg:                                            ; preds = %bb.cf
  %i.fr = add nuw i32 %i.fp, 1
  store i32 %i.fr, ptr %i.fo, align 4
  %i.fs = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.ei)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit198 unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cf
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
          to label %.noexc197 unwind label %bb.cj

.noexc197:                                        ; preds = %bb.ch
  unreachable

.body206:                                         ; preds = %bb.cm, %bb.cl, %.thread421, %bb.cj, %bb.dg
  %i.ft = phi ptr [ %i.eh, %bb.dg ], [ %i.eh, %bb.cl ], [ %i.gs, %.thread421 ], [ %i.eh, %bb.cj ], [ %i.eh, %bb.cm ] ; 2 uses
  %.pn87.pn = phi { ptr, i32 } [ %lpad.phi, %bb.dg ], [ %lpad.thr_comm.split-lp427, %bb.cl ], [ %i.hh, %.thread421 ], [ %i.fx, %bb.cj ], [ %i.gi, %bb.cm ] ; 2 uses
  %i.fu = load i32, ptr %i.fo, align 4, !noundef !4
  %i.fv = add i32 %i.fu, -1                       ; 2 uses
  store i32 %i.fv, ptr %i.fo, align 4
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.ci, label %.body193

bb.ci:                                            ; preds = %.body206
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ei) #34
          to label %.body193 unwind label %bb.x

bb.cj:                                            ; preds = %bb.cn, %bb.ch, %bb.cg, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit198
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body206

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit198: ; preds = %bb.cg
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEINtB2_18SpecFromIterNestedB11_INtB17_11AstChildrenB11_EE9from_iterCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef %i.fs)
          to label %bb.ck unwind label %bb.cj

bb.ck:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit198
  %i.fy = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !noundef !4 ; 2 uses
  %.not15.not.i1655 = icmp ult i64 %i.ga, 2
  br i1 %.not15.not.i1655, label %.split.us.i._crit_edge, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i.lr.ph

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i.lr.ph: ; preds = %bb.ck
  %i.gb = load ptr, ptr %i.fy, align 8, !nonnull !4, !noundef !4
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i

.split.us.i:                                      ; preds = %.noexc201
  %i.gc = add i64 %i.gd, -1
  %.not15.not.i = icmp ult i64 %i.gd, 3
  br i1 %.not15.not.i, label %.split.us.i._crit_edge, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i.lr.ph, %.split.us.i
  %i.gd = phi i64 [ %i.ga, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i.lr.ph ], [ %i.gc, %.split.us.i ] ; 2 uses
  %i.ge = phi ptr [ %i.gb, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i.lr.ph ], [ %i.gf, %.split.us.i ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  %i.gg = invoke noundef i8 @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports23use_tree_cmp_bin_search(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ge, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gf)
          to label %.noexc201 unwind label %.loopexit

.noexc201:                                        ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i
  %i.gh = icmp sgt i8 %i.gg, 0
  br i1 %i.gh, label %bb.cp, label %.split.us.i

bb.cl:                                            ; preds = %bb.cu
  %lpad.thr_comm.split-lp427 = landingpad { ptr, i32 }
          cleanup
  br label %.body206

.split.us.i._crit_edge:                           ; preds = %.split.us.i, %bb.ck
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.cn unwind label %bb.cm

bb.cm:                                            ; preds = %.split.us.i._crit_edge
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body206 unwind label %bb.co

bb.cn:                                            ; preds = %.split.us.i._crit_edge
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit208 unwind label %bb.cj

bb.co:                                            ; preds = %bb.cm
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.cp:                                            ; preds = %.noexc201
  %i.gk = load ptr, ptr %i.fy, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gl = load i64, ptr %i.fz, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !827
  store ptr %i.a, ptr %i.h, align 8, !noalias !827
  %i.gm = icmp samesign ult i64 %i.gl, 2
  br i1 %i.gm, label %bb.cu, label %bb.cq, !prof !8

bb.cq:                                            ; preds = %bb.cp
  %i.gn = icmp samesign ult i64 %i.gl, 21
  br i1 %i.gn, label %bb.cs, label %bb.cr, !prof !8

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SBT_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports23use_tree_cmp_bin_searchE0EB2p_(ptr noalias nofree noundef nonnull align 8 %i.gk, i64 noundef range(i64 0, 1152921504606846976) %i.gl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #34
          to label %bb.cu unwind label %.loopexit.split-lp

bb.cs:                                            ; preds = %bb.cq
  invoke void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB8_SB1m_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports23use_tree_cmp_bin_searchE0EB2T_(ptr noalias nofree noundef nonnull align 8 %i.gk, i64 noundef range(i64 0, 1152921504606846976) %i.gl, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.cu unwind label %.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit208: ; preds = %bb.cn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit214
  %.sroa.0346.4 = phi i8 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit214 ], [ %.sroa.0346.2, %bb.cn ] ; 2 uses
  %i.go = phi ptr [ %i.gs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit214 ], [ %i.eh, %bb.cn ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.gp = load i32, ptr %i.fo, align 4, !noundef !4
  %i.gq = add i32 %i.gp, -1                       ; 2 uses
  store i32 %i.gq, ptr %i.fo, align 4
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.ct, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit212

bb.ct:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit208
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ei) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit212 unwind label %.loopexit.split-lp517

bb.cu:                                            ; preds = %bb.cp, %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.gs = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports18with_use_tree_list(ptr %i.eh, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %2)
          to label %bb.cv unwind label %bb.cl     ; 5 uses

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not86 = icmp eq ptr %i.gs, null
  br i1 %.not86, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.eh, i64 48 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !noundef !4
  %i.gv = add i32 %i.gu, -1                       ; 2 uses
  store i32 %i.gv, ptr %i.gt, align 4
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.cx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit214

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.eh) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit214 unwind label %.thread421

bb.cy:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.gx = load i32, ptr %i.fo, align 4, !noundef !4
  %i.gy = add i32 %i.gx, -1                       ; 2 uses
  store i32 %i.gy, ptr %i.fo, align 4
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.cz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ei) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216 unwind label %.loopexit.split-lp517

bb.da:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o)
          to label %bb.aw unwind label %.body228.thread407

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit175: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ha = trunc nuw i8 %.sroa.058.2 to i1
  br i1 %i.ha, label %bb.db, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit221
end_hunk_0
begin_hunk_1_@_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize:bb.a
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit238: ; preds = %bb.dq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.hs = load i32, ptr %i.ab, align 4, !noundef !4
  %i.ht = add i32 %i.hs, -1                       ; 2 uses
  store i32 %i.ht, ptr %i.ab, align 4
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.dn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit232

bb.dn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit238
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.y) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit232 unwind label %bb.b

bb.do:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit230
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.dq unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body235 unwind label %bb.dr

bb.dq:                                            ; preds = %bb.do
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit238 unwind label %bb.n

bb.dr:                                            ; preds = %bb.dp
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit232: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit238, %bb.dn
  %i.hx = trunc nuw i8 %.sroa.061.9 to i1
  br i1 %i.hx, label %bb.ds, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit

bb.ds:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit232
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !noundef !4
  %i.ia = add i32 %i.hz, -1                       ; 2 uses
  store i32 %i.ia, ptr %i.hy, align 4
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit

.lr.ph720:                                        ; preds = %bb.bc, %bb.ep
  %i.ic = phi i64 [ %i.jj, %bb.ep ], [ %i.dy, %bb.bc ] ; 2 uses
  %.sroa.031.1718 = phi i1 [ %.sroa.031.2, %bb.ep ], [ %.sroa.031.0722, %bb.bc ]
  %.sroa.032.0717 = phi i64 [ %.sroa.032.1, %bb.ep ], [ %i.dz, %bb.bc ] ; 6 uses
  %i.id = icmp samesign ult i64 %.sroa.026.0723, %i.ic
  br i1 %i.id, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.lr.ph720
  %i.ie = load ptr, ptr %i.dw, align 8, !nonnull !4, !noundef !4
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.sroa.026.0723
  %i.ig = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.if)
          to label %bb.dw unwind label %.body193.thread ; 3 uses

bb.du:                                            ; preds = %.lr.ph720
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.026.0723, i64 noundef %i.ic, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #38
          to label %bb.dv unwind label %.loopexit.split-lp517

bb.dv:                                            ; preds = %bb.em, %bb.dy, %bb.du
  unreachable

bb.dw:                                            ; preds = %bb.dt
  %i.ih = load i64, ptr %i.dt, align 8, !noundef !4 ; 2 uses
  %i.ii = icmp ult i64 %.sroa.032.0717, %i.ih
  br i1 %i.ii, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ij = load ptr, ptr %i.dw, align 8, !nonnull !4, !noundef !4
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.sroa.032.0717
  %i.il = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ik)
          to label %bb.ea unwind label %.loopexit522

bb.dy:                                            ; preds = %bb.dw
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.032.0717, i64 noundef %i.ih, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #38
          to label %bb.dv unwind label %.loopexit.split-lp523

bb.dz:                                            ; preds = %bb.ea
  %lpad.thr_comm.split-lp437 = landingpad { ptr, i32 }
          cleanup
  br label %.thread411

bb.ea:                                            ; preds = %bb.dx
  %i.im = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports28try_merge_trees_with_factory(ptr noundef nonnull %i.ig, ptr noundef nonnull %i.il, i8 noundef 0, ptr noundef nonnull align 8 %2)
          to label %bb.eb unwind label %bb.dz     ; 6 uses

bb.eb:                                            ; preds = %bb.ea
  %.not90 = icmp eq ptr %i.im, null
  br i1 %.not90, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.im, ptr %i.n, align 8
  %i.in = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.ef unwind label %.thread454

bb.ed:                                            ; preds = %bb.eb
  %i.io = add nuw nsw i64 %.sroa.032.0717, 1
  br label %bb.ep

.thread454:                                       ; preds = %bb.ef, %bb.ec
  %lpad.thr_comm452 = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.ee:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit243, %bb.eo
  %lpad.thr_comm.split-lp453 = landingpad { ptr, i32 }
          cleanup
  br label %.thread411

bb.ef:                                            ; preds = %bb.ec
  %i.ip = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize(ptr noundef nonnull %i.in, i1 noundef zeroext false, ptr noundef nonnull align 8 %2)
          to label %bb.eg unwind label %.thread454 ; 5 uses

bb.eg:                                            ; preds = %bb.ef
  %.not91 = icmp eq ptr %i.ip, null
  br i1 %.not91, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 48 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !noundef !4
  %i.is = add i32 %i.ir, -1                       ; 2 uses
  store i32 %i.is, ptr %i.iq, align 4
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.ei, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit241

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.im) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit241 unwind label %.thread446

.thread446:                                       ; preds = %bb.ei
  %i.iu = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ip, ptr %i.n, align 8
  br label %bb.es

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit241: ; preds = %bb.eh, %bb.ei
  store ptr %i.ip, ptr %i.n, align 8
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit241
  %i.iv = phi ptr [ %i.im, %bb.eg ], [ %i.ip, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit241 ] ; 4 uses
  %i.iw = load i64, ptr %i.dt, align 8, !noundef !4 ; 2 uses
  %.not94 = icmp ult i64 %.sroa.026.0723, %i.iw
  br i1 %.not94, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.ix = load ptr, ptr %i.dw, align 8, !nonnull !4, !noundef !4
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.sroa.026.0723 ; 3 uses
  %.val125 = load ptr, ptr %i.iy, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.val125, i64 48 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !noundef !4
  %i.jb = add i32 %i.ja, -1                       ; 2 uses
  store i32 %i.jb, ptr %i.iz, align 4
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.el, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit243

bb.el:                                            ; preds = %bb.ek
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val125) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit243 unwind label %.thread457

bb.em:                                            ; preds = %bb.ej
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.026.0723, i64 noundef %i.iw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #38
          to label %bb.dv unwind label %bb.eq

.thread457:                                       ; preds = %bb.el
  %i.jd = landingpad { ptr, i32 }
          cleanup
  store ptr %i.iv, ptr %i.iy, align 8
  br label %.thread411

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit243: ; preds = %bb.ek, %bb.el
  store ptr %i.iv, ptr %i.iy, align 8
  %i.je = invoke noundef nonnull ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE6removeCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %.sroa.032.0717, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60)
          to label %bb.en unwind label %bb.ee     ; 2 uses

bb.en:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit243
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 48 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !noundef !4
  %i.jh = add i32 %i.jg, -1                       ; 2 uses
  store i32 %i.jh, ptr %i.jf, align 4
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.eo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit245

bb.eo:                                            ; preds = %bb.en
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.je) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit245 unwind label %bb.ee

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit245: ; preds = %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ep

bb.ep:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit245, %bb.ed
  %.sroa.032.1 = phi i64 [ %.sroa.032.0717, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit245 ], [ %i.io, %bb.ed ] ; 2 uses
  %.sroa.031.2 = phi i1 [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit245 ], [ %.sroa.031.1718, %bb.ed ] ; 3 uses
  %i.jj = load i64, ptr %i.dt, align 8, !noundef !4 ; 5 uses
  %i.jk = icmp ult i64 %i.jj, 1152921504606846976
  call void @llvm.assume(i1 %i.jk)
  %i.jl = icmp samesign ult i64 %.sroa.032.1, %i.jj
  br i1 %i.jl, label %.lr.ph720, label %.loopexit515

bb.eq:                                            ; preds = %bb.em
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iv, i64 48 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !noundef !4
  %i.jp = add i32 %i.jo, -1                       ; 2 uses
  store i32 %i.jp, ptr %i.jn, align 4
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.er, label %.thread411

bb.er:                                            ; preds = %bb.eq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.iv) #34
          to label %.thread411 unwind label %bb.x

bb.es:                                            ; preds = %.thread454, %.thread446
  %.pn95449 = phi { ptr, i32 } [ %i.iu, %.thread446 ], [ %lpad.thr_comm452, %.thread454 ] ; 2 uses
  %i.jr = phi ptr [ %i.ip, %.thread446 ], [ %i.im, %.thread454 ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !noundef !4
  %i.ju = add i32 %i.jt, -1                       ; 2 uses
  store i32 %i.ju, ptr %i.js, align 4
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %bb.et, label %.thread411

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.jr) #34
          to label %.thread411 unwind label %bb.x

.loopexit522:                                     ; preds = %bb.dx
  %lpad.loopexit524 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

.loopexit.split-lp523:                            ; preds = %bb.dy
  %lpad.loopexit.split-lp525 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eu:                                            ; preds = %.loopexit.split-lp523, %.loopexit522
  %lpad.phi526 = phi { ptr, i32 } [ %lpad.loopexit524, %.loopexit522 ], [ %lpad.loopexit.split-lp525, %.loopexit.split-lp523 ] ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ig, i64 48 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !noundef !4
  %i.jy = add i32 %i.jx, -1                       ; 2 uses
  store i32 %i.jy, ptr %i.jw, align 4
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.ev, label %.thread411

bb.ev:                                            ; preds = %bb.eu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ig) #34
          to label %.thread411 unwind label %bb.x

.thread411:                                       ; preds = %.body193.thread, %bb.eq, %bb.er, %.thread457, %bb.eu, %bb.ev, %bb.es, %bb.et, %bb.ee, %bb.dz, %.body193
  %.sroa.069.3416 = phi i1 [ %.sroa.069.3, %.body193 ], [ true, %bb.dz ], [ true, %bb.eu ], [ true, %bb.ee ], [ true, %bb.et ], [ true, %bb.es ], [ true, %bb.ev ], [ true, %.thread457 ], [ true, %bb.er ], [ true, %bb.eq ], [ true, %.body193.thread ]
  %.pn95.pn415 = phi { ptr, i32 } [ %.pn95.pn, %.body193 ], [ %lpad.thr_comm.split-lp437, %bb.dz ], [ %lpad.phi526, %bb.eu ], [ %lpad.thr_comm.split-lp453, %bb.ee ], [ %.pn95449, %bb.et ], [ %.pn95449, %bb.es ], [ %lpad.phi526, %bb.ev ], [ %i.jd, %.thread457 ], [ %i.jm, %bb.er ], [ %i.jm, %bb.eq ], [ %lpad.loopexit519, %.body193.thread ]
  %i.ka = phi ptr [ %i.dr, %.body193 ], [ %storemerge, %bb.dz ], [ %storemerge, %bb.eu ], [ %storemerge, %bb.ee ], [ %storemerge, %bb.et ], [ %storemerge, %bb.es ], [ %storemerge, %bb.ev ], [ %storemerge, %.thread457 ], [ %storemerge, %bb.er ], [ %storemerge, %bb.eq ], [ %storemerge, %.body193.thread ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #35
          to label %bb.ar unwind label %bb.x

.thread399:                                       ; preds = %.thread511, %bb.az, %bb.ay, %.body228.thread407, %bb.ar
  %.pn95.pn.pn402 = phi { ptr, i32 } [ %lpad.thr_comm405, %.body228.thread407 ], [ %.pn95.pn.pn, %bb.ar ], [ %i.dk, %bb.ay ], [ %i.dk, %bb.az ], [ %i.eg, %.thread511 ] ; 2 uses
  %i.kb = phi ptr [ %.ph, %.body228.thread407 ], [ %i.cz, %bb.ar ], [ %storemerge, %bb.ay ], [ %storemerge, %bb.az ], [ %i.eb, %.thread511 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kb) ]
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 48 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !noundef !4
  %i.ke = add i32 %i.kd, -1                       ; 2 uses
  store i32 %i.ke, ptr %i.kc, align 4
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.ew, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit

bb.ew:                                            ; preds = %.thread399
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kb) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit unwind label %bb.x

.thread471:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit, %bb.fa, %bb.al, %bb.ez
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %.thread465

bb.ex:                                            ; preds = %bb.al
  %.not99 = icmp eq ptr %i.ct, null
  br i1 %.not99, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ct, i64 48 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !noundef !4
  %i.kj = add i32 %i.ki, -1                       ; 2 uses
  store i32 %i.kj, ptr %i.kh, align 4
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.ez, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit256

bb.ez:                                            ; preds = %bb.ey
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ct) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit256 unwind label %.thread471

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.ex
  %i.kl = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %bb.fa unwind label %.thread471

bb.fa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit
  %i.km = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize(ptr noundef nonnull %i.kl, i1 noundef zeroext false, ptr noundef nonnull align 8 %2)
          to label %bb.fb unwind label %.thread471 ; 4 uses

bb.fb:                                            ; preds = %bb.fa
  %.not100 = icmp eq ptr %i.km, null
  br i1 %.not100, label %bb.fh, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %i.kn = load i64, ptr %i.at, align 8, !alias.scope !828, !noundef !4 ; 3 uses
  %i.ko = load i64, ptr %i.u, align 8, !range !9, !alias.scope !828, !noundef !4
  %i.kp = icmp eq i64 %i.kn, %i.ko
  br i1 %i.kp, label %bb.fd, label %bb.fm

bb.fd:                                            ; preds = %bb.fc
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.fm unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 48 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !noalias !828, !noundef !4
  %i.kt = add i32 %i.ks, -1                       ; 2 uses
  store i32 %i.kt, ptr %i.kr, align 4, !noalias !828
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %bb.ff, label %.thread465

bb.ff:                                            ; preds = %bb.fe
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.km) #34
          to label %.thread465 unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.fh:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.kw = load i64, ptr %i.at, align 8, !alias.scope !829, !noundef !4 ; 3 uses
  %i.kx = load i64, ptr %i.u, align 8, !range !9, !alias.scope !829, !noundef !4
  %i.ky = icmp eq i64 %i.kw, %i.kx
  br i1 %i.ky, label %bb.fi, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8push_mutCs6oosyzwIepl_6ide_db.exit263

bb.fi:                                            ; preds = %bb.fh
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8push_mutCs6oosyzwIepl_6ide_db.exit263 unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.cs, i64 48 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !noalias !829, !noundef !4
  %i.lc = add i32 %i.lb, -1                       ; 2 uses
  store i32 %i.lc, ptr %i.la, align 4, !noalias !829
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %bb.fk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit272

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cs) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit272 unwind label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8push_mutCs6oosyzwIepl_6ide_db.exit263: ; preds = %bb.fh, %bb.fi
  %i.lf = load ptr, ptr %i.as, align 8, !alias.scope !829, !nonnull !4, !noundef !4
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.kw
  store ptr %i.cs, ptr %i.lg, align 8
  %i.lh = add i64 %i.kw, 1
  store i64 %i.lh, ptr %i.at, align 8, !alias.scope !829
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265

bb.fm:                                            ; preds = %bb.fd, %bb.fc
  %i.li = load ptr, ptr %i.as, align 8, !alias.scope !828, !nonnull !4, !noundef !4
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.kn
  store ptr %i.km, ptr %i.lj, align 8
  %i.lk = add i64 %i.kn, 1
  store i64 %i.lk, ptr %i.at, align 8, !alias.scope !828
  %i.ll = getelementptr inbounds nuw i8, ptr %i.cs, i64 48 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !noundef !4
  %i.ln = add i32 %i.lm, -1                       ; 2 uses
  store i32 %i.ln, ptr %i.ll, align 4
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.fn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265

bb.fn:                                            ; preds = %bb.fm
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cs) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265 unwind label %bb.ak

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265: ; preds = %bb.fm, %bb.fn, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8push_mutCs6oosyzwIepl_6ide_db.exit263, %bb.hw
  %.sroa.0346.6 = phi i8 [ %.sroa.0346.0716, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8push_mutCs6oosyzwIepl_6ide_db.exit263 ], [ 1, %bb.hw ], [ 1, %bb.fn ], [ 1, %bb.fm ] ; 2 uses
end_hunk_1
