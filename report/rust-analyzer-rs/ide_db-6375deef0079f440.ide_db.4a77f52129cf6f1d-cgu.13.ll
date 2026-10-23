Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.13?download=true
inline.NumInlined: 2178
inline.NumDeleted: 786
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize:bb.a
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  store ptr %i.ax, ptr %.sroa.6.0..sroa_idx, align 8
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
  br label %bb.ak

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.bl = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports37merge_single_subtree_into_parent_tree(ptr noundef nonnull %0, ptr noundef nonnull align 8 %2)
          to label %bb.o unwind label %bb.n       ; 7 uses

.body235:                                         ; preds = %bb.dm, %bb.da, %bb.n
  %.sroa.061.5.lpad-body = phi i8 [ %.sroa.061.9, %bb.da ], [ %.sroa.061.5, %bb.n ], [ %.sroa.061.9, %bb.dm ] ; 2 uses
  %eh.lpad-body220 = phi { ptr, i32 } [ %i.gz, %bb.da ], [ %i.bm, %bb.n ], [ %i.ht, %bb.dm ] ; 2 uses
  br i1 %i.ar, label %.thread, label %.body

bb.n:                                             ; preds = %bb.dn, %bb.db, %bb.y, %bb.m
  %.sroa.061.5 = phi i8 [ 1, %bb.y ], [ 0, %bb.m ], [ %.sroa.061.9, %bb.dn ], [ %.sroa.061.9, %bb.db ]
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

bb.x:                                             ; preds = %bb.hw, %bb.hs, %bb.hz, %bb.hu, %bb.er, %bb.eq, %bb.ep, %bb.en, %bb.ch, %bb.bo, %bb.ay, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit272, %bb.aj, %bb.w, %bb.h, %.thread, %.thread411, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.br
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body1013

.body1013:                                        ; preds = %bb.hv, %bb.hr, %bb.x
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

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit272: ; preds = %bb.hs, %.body269, %.thread465, %bb.hu, %bb.ff, %bb.fe
  %.pn101.pn = phi { ptr, i32 } [ %i.kx, %bb.ff ], [ %eh.lpad-body258470, %.thread465 ], [ %lpad.thr_comm.split-lp507, %.body269 ], [ %i.kx, %bb.fe ], [ %eh.lpad-body258470, %bb.hu ], [ %eh.lpad-body270504, %bb.hs ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit.thread unwind label %bb.x

bb.ak:                                            ; preds = %.lr.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265
  %i.cp = phi ptr [ %i.av, %.lr.ph ], [ %i.lo, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265 ] ; 2 uses
  %.sroa.0346.0701 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0346.6, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !813
  %i.cr = load ptr, ptr %i.cp, align 8, !noalias !813, !nonnull !4, !noundef !4 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.cr, ptr %i.s, align 8
  %i.cs = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19one_style_tree_list(ptr nonnull %i.cr)
          to label %bb.es unwind label %.thread471 ; 3 uses

._crit_edge:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265, %bb.l
  %.sroa.0346.0.lcssa = phi i8 [ 0, %bb.l ], [ %.sroa.0346.6, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265 ] ; 4 uses
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170 unwind label %bb.al

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit: ; preds = %.thread399, %bb.er, %bb.dh, %.body228, %bb.aq, %bb.al
  %.pn101.pn.pn = phi { ptr, i32 } [ %i.cu, %bb.al ], [ %i.ho, %bb.dh ], [ %.pn95.pn.pn, %bb.aq ], [ %lpad.thr_comm.split-lp406, %.body228 ], [ %.pn95.pn.pn402, %bb.er ], [ %.pn95.pn.pn402, %.thread399 ] ; 2 uses
  %.sroa.061.7 = phi i8 [ %.sroa.061.8, %bb.al ], [ %.sroa.061.9, %bb.dh ], [ %.sroa.061.9, %bb.aq ], [ %.sroa.061.9, %.body228 ], [ %.sroa.061.9, %bb.er ], [ %.sroa.061.9, %.thread399 ] ; 2 uses
  %.sroa.058.0 = phi i8 [ %.sroa.058.1, %bb.al ], [ %.sroa.058.2, %bb.dh ], [ %.sroa.058.2, %bb.aq ], [ %.sroa.058.2, %.body228 ], [ %.sroa.058.2, %bb.er ], [ %.sroa.058.2, %.thread399 ]
  %i.ct = trunc nuw i8 %.sroa.058.0 to i1
  br i1 %i.ct, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit.thread, label %.body

bb.al:                                            ; preds = %bb.aw, %._crit_edge, %bb.am
  %.sroa.061.8 = phi i8 [ %.sroa.061.9, %bb.aw ], [ 1, %bb.am ], [ 1, %._crit_edge ]
  %.sroa.058.1 = phi i8 [ %.sroa.058.2, %bb.aw ], [ 0, %bb.am ], [ 1, %._crit_edge ]
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cv = trunc nuw i8 %.sroa.0346.0.lcssa to i1
  br i1 %i.cv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.cw = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports18with_use_tree_list(ptr nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull align 8 %2)
          to label %bb.ao unwind label %bb.al     ; 2 uses

bb.an:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170, %bb.ao
  %storemerge = phi ptr [ %i.cw, %bb.ao ], [ %0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170 ] ; 24 uses
  %.sroa.061.9 = phi i8 [ 1, %bb.ao ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170 ] ; 14 uses
  %.sroa.058.2 = phi i8 [ 0, %bb.ao ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit170 ] ; 8 uses
  store ptr %storemerge, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cx = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db(ptr nonnull %storemerge)
          to label %bb.ar unwind label %.body228.thread407 ; 5 uses

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.not79 = icmp eq ptr %i.cw, null
  br i1 %.not79, label %bb.ap, label %bb.an

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit221

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit221: ; preds = %bb.db, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit175, %bb.ap
  %.sroa.061.10 = phi i8 [ 1, %bb.ap ], [ %.sroa.061.9, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit175 ], [ %.sroa.061.9, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit

bb.aq:                                            ; preds = %.thread411, %.body193
  %i.cy = phi ptr [ %i.jy, %.thread411 ], [ %i.dq, %.body193 ]
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn95.pn415, %.thread411 ], [ %.pn95.pn, %.body193 ] ; 2 uses
  %.sroa.069.1 = phi i1 [ %.sroa.069.3416, %.thread411 ], [ %.sroa.069.3, %.body193 ]
  br i1 %.sroa.069.1, label %.thread399, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit

.body228.thread407:                               ; preds = %bb.cy, %bb.an
  %.ph = phi ptr [ %storemerge, %bb.an ], [ %i.eo, %bb.cy ]
  %lpad.thr_comm405 = landingpad { ptr, i32 }
          cleanup
  br label %.thread399

.body228:                                         ; preds = %bb.di
  %lpad.thr_comm.split-lp406 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit

bb.ar:                                            ; preds = %bb.an
  %.not80 = icmp eq ptr %i.cx, null
  br i1 %.not80, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 48 ; 6 uses
  %i.da = load i32, ptr %i.cz, align 4, !noundef !4 ; 2 uses
  %i.db = icmp eq i32 %i.da, -1
  br i1 %i.db, label %bb.au, label %bb.at, !prof !7

bb.at:                                            ; preds = %bb.as
  %i.dc = add nuw i32 %i.da, 1
  store i32 %i.dc, ptr %i.cz, align 4
  %i.dd = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.cx)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit173 unwind label %bb.ax

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
          to label %.noexc172 unwind label %bb.ax

.noexc172:                                        ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.ar, %bb.bd, %bb.cy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216
  %i.de = phi ptr [ %storemerge, %bb.bd ], [ %i.eo, %bb.cy ], [ %i.eo, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216 ], [ %storemerge, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !noundef !4
  %i.dh = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit175

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.de) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit175 unwind label %bb.al

bb.ax:                                            ; preds = %bb.au, %bb.at, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit173
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load i32, ptr %i.cz, align 4, !noundef !4
  %i.dl = add i32 %i.dk, -1                       ; 2 uses
  store i32 %i.dl, ptr %i.cz, align 4
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.ay, label %.thread399

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cx) #34
          to label %.thread399 unwind label %bb.x

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit173: ; preds = %bb.at
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEINtB2_18SpecFromIterNestedB11_INtB17_11AstChildrenB11_EE9from_iterCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef %i.dd)
          to label %bb.az unwind label %bb.ax

bb.az:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit173
  %i.dn = load i32, ptr %i.cz, align 4, !noundef !4
  %i.do = add i32 %i.dn, -1                       ; 2 uses
  store i32 %i.do, ptr %i.cz, align 4
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cx) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179 unwind label %.loopexit.split-lp517

.body193:                                         ; preds = %.loopexit.split-lp517, %.body206, %bb.ch, %bb.ca, %bb.bn, %bb.bo, %bb.br
  %i.dq = phi ptr [ %i.fk, %bb.ca ], [ %i.ex, %bb.br ], [ %3, %bb.bn ], [ %i.fs, %.body206 ], [ %3, %bb.bo ], [ %i.fs, %bb.ch ], [ %.ph518, %.loopexit.split-lp517 ] ; 2 uses
  %.pn95.pn = phi { ptr, i32 } [ %i.fl, %bb.ca ], [ %.pn, %bb.br ], [ %i.eq, %bb.bn ], [ %.pn87.pn, %.body206 ], [ %i.eq, %bb.bo ], [ %.pn87.pn, %bb.ch ], [ %lpad.loopexit.split-lp520, %.loopexit.split-lp517 ] ; 2 uses
  %.sroa.069.3 = phi i1 [ true, %bb.ca ], [ true, %bb.br ], [ true, %bb.bn ], [ true, %.body206 ], [ true, %bb.bo ], [ true, %bb.ch ], [ %.sroa.069.4.ph, %.loopexit.split-lp517 ] ; 2 uses
  %.sroa.055.0 = phi i8 [ %.sroa.055.2, %bb.ca ], [ %.sroa.055.2, %bb.br ], [ %.sroa.055.2, %bb.bn ], [ %.sroa.055.2, %.body206 ], [ %.sroa.055.2, %bb.bo ], [ %.sroa.055.2, %bb.ch ], [ %.sroa.055.1.ph, %.loopexit.split-lp517 ]
  %i.dr = trunc nuw i8 %.sroa.055.0 to i1
  br i1 %i.dr, label %.thread411, label %bb.aq

.loopexit.split-lp517:                            ; preds = %bb.dr, %bb.bh, %bb.bg, %bb.bc, %bb.ba, %bb.cb, %bb.cr, %bb.cx, %bb.df
  %.ph518 = phi ptr [ %storemerge, %bb.bc ], [ %3, %bb.bh ], [ %i.fk, %bb.cb ], [ %i.eg, %bb.bg ], [ %i.eg, %bb.cx ], [ %i.gm, %bb.cr ], [ %i.hg, %bb.df ], [ %storemerge, %bb.dr ], [ %storemerge, %bb.ba ]
  %.sroa.069.4.ph = phi i1 [ true, %bb.bc ], [ true, %bb.bh ], [ true, %bb.cb ], [ true, %bb.bg ], [ true, %bb.cx ], [ true, %bb.cr ], [ false, %bb.df ], [ true, %bb.dr ], [ true, %bb.ba ]
  %.sroa.055.1.ph = phi i8 [ 0, %bb.bc ], [ %.sroa.055.2, %bb.bh ], [ %.sroa.055.2, %bb.cb ], [ %.sroa.055.2, %bb.bg ], [ %.sroa.055.2, %bb.cx ], [ %.sroa.055.2, %bb.cr ], [ %.sroa.055.2, %bb.df ], [ 1, %bb.dr ], [ 1, %bb.ba ]
  %lpad.loopexit.split-lp520 = landingpad { ptr, i32 }
          cleanup
  br label %.body193

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179: ; preds = %bb.az, %bb.ba
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !4 ; 3 uses
  %i.du = icmp ult i64 %i.dt, 1152921504606846976
  call void @llvm.assume(i1 %i.du)
  %.not712 = icmp eq i64 %i.dt, 0
  br i1 %.not712, label %.critedge, label %.lr.ph709

.lr.ph709:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  br label %bb.bb

.loopexit515:                                     ; preds = %bb.el
  %i.dw = icmp samesign ult i64 %i.dy, %i.jh
  br i1 %i.dw, label %bb.bb, label %._crit_edge710

._crit_edge710:                                   ; preds = %.loopexit515
  br i1 %.sroa.031.2, label %bb.bc, label %.critedge

bb.bb:                                            ; preds = %.lr.ph709, %.loopexit515
  %i.dx = phi i64 [ %i.dt, %.lr.ph709 ], [ %i.jh, %.loopexit515 ] ; 2 uses
  %.sroa.026.0708 = phi i64 [ 0, %.lr.ph709 ], [ %i.dy, %.loopexit515 ] ; 7 uses
  %.sroa.031.0707 = phi i1 [ false, %.lr.ph709 ], [ %.sroa.031.2, %.loopexit515 ] ; 2 uses
  %i.dy = add nuw nsw i64 %.sroa.026.0708, 1      ; 4 uses
  %i.dz = icmp samesign ult i64 %i.dy, %i.dx
  br i1 %i.dz, label %.lr.ph705, label %.loopexit515.thread

.loopexit515.thread:                              ; preds = %bb.bb
  br i1 %.sroa.031.0707, label %bb.bc, label %.critedge

.critedge:                                        ; preds = %.loopexit515.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181, %._crit_edge710
  %.sroa.0346.1 = phi i8 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181 ], [ %.sroa.0346.0.lcssa, %._crit_edge710 ], [ %.sroa.0346.0.lcssa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179 ], [ %.sroa.0346.0.lcssa, %.loopexit515.thread ] ; 3 uses
  %3 = phi ptr [ %i.ea, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181 ], [ %storemerge, %._crit_edge710 ], [ %storemerge, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179 ], [ %storemerge, %.loopexit515.thread ] ; 12 uses
  %.sroa.055.2 = phi i8 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181 ], [ 1, %._crit_edge710 ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit179 ], [ 1, %.loopexit515.thread ] ; 14 uses
  br i1 %1, label %bb.bg, label %bb.bh

bb.bc:                                            ; preds = %.loopexit515.thread, %._crit_edge710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.ea = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports18with_use_tree_list(ptr nonnull %storemerge, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %2)
          to label %bb.bd unwind label %.loopexit.split-lp517 ; 5 uses

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not81 = icmp eq ptr %i.ea, null
  br i1 %.not81, label %bb.av, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eb = getelementptr inbounds nuw i8, ptr %storemerge, i64 48 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !noundef !4
  %i.ed = add i32 %i.ec, -1                       ; 2 uses
  store i32 %i.ed, ptr %i.eb, align 4
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %storemerge) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181 unwind label %.thread511

.thread511:                                       ; preds = %bb.bf
  %i.ef = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ea, ptr %i.q, align 8
  br label %.thread399

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit181: ; preds = %bb.be, %bb.bf
  store ptr %i.ea, ptr %i.q, align 8
  br label %.critedge

bb.bg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit195, %.critedge
  %.sroa.0346.2 = phi i8 [ %.sroa.0346.1, %.critedge ], [ %.sroa.0346.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit195 ] ; 2 uses
  %i.eg = phi ptr [ %3, %.critedge ], [ %i.fk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit195 ] ; 14 uses
  %i.eh = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db(ptr %i.eg)
          to label %bb.cd unwind label %.loopexit.split-lp517 ; 6 uses

bb.bh:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ei = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db(ptr %3)
          to label %bb.bi unwind label %.loopexit.split-lp517 ; 5 uses

bb.bi:                                            ; preds = %bb.bh
  %.not82 = icmp eq ptr %i.ei, null
  br i1 %.not82, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 48 ; 6 uses
  %i.ek = load i32, ptr %i.ej, align 4, !noundef !4 ; 2 uses
  %i.el = icmp eq i32 %i.ek, -1
  br i1 %i.el, label %bb.bl, label %bb.bk, !prof !7

bb.bk:                                            ; preds = %bb.bj
  %i.em = add nuw i32 %i.ek, 1
  store i32 %i.em, ptr %i.ej, align 4
  %i.en = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.ei)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit184 unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
          to label %.noexc183 unwind label %bb.bn

.noexc183:                                        ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216: ; preds = %bb.cx, %bb.cw, %bb.bm
  %i.eo = phi ptr [ %3, %bb.bm ], [ %i.eg, %bb.cw ], [ %i.eg, %bb.cx ] ; 3 uses
  %i.ep = trunc nuw i8 %.sroa.055.2 to i1
  br i1 %i.ep, label %bb.cy, label %bb.av

bb.bn:                                            ; preds = %bb.bl, %bb.bk, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit184
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load i32, ptr %i.ej, align 4, !noundef !4
  %i.es = add i32 %i.er, -1                       ; 2 uses
  store i32 %i.es, ptr %i.ej, align 4
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.bo, label %.body193

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ei) #34
          to label %.body193 unwind label %bb.x

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit184: ; preds = %bb.bk
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEINtB2_18SpecFromIterNestedB11_INtB17_11AstChildrenB11_EE9from_iterCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef %i.en)
          to label %bb.bp unwind label %bb.bn

bb.bp:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit184
  %i.eu = load i32, ptr %i.ej, align 4, !noundef !4
  %i.ev = add i32 %i.eu, -1                       ; 2 uses
  store i32 %i.ev, ptr %i.ej, align 4
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.bq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ei) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188 unwind label %bb.bs

bb.br:                                            ; preds = %bb.by, %bb.bs
  %i.ex = phi ptr [ %i.fe, %bb.by ], [ %3, %bb.bs ]
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.by ], [ %i.ey, %bb.bs ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #35
          to label %.body193 unwind label %bb.x

bb.bs:                                            ; preds = %bb.bq, %bb.bu, %bb.bt
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188: ; preds = %bb.bp, %bb.bq
  %i.ez = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !4 ; 2 uses
  %i.fb = icmp ult i64 %i.fa, 1152921504606846976
  call void @llvm.assume(i1 %i.fb)
  %i.fc = icmp eq i64 %i.fa, 1
  br i1 %i.fc, label %bb.bt, label %bb.bz

bb.bt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188
  %i.fd = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.bu unwind label %bb.bs

bb.bu:                                            ; preds = %bb.bt
  %i.fe = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports37merge_single_subtree_into_parent_tree(ptr noundef nonnull %i.fd, ptr noundef nonnull align 8 %2)
          to label %bb.bv unwind label %bb.bs     ; 5 uses

bb.bv:                                            ; preds = %bb.bu
  %.not83 = icmp eq ptr %i.fe, null
  br i1 %.not83, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !noundef !4
  %i.fh = add i32 %i.fg, -1                       ; 2 uses
  store i32 %i.fh, ptr %i.ff, align 4
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.bx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit190

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit190 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fj = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fe, ptr %i.q, align 8
  br label %bb.br

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit190: ; preds = %bb.bw, %bb.bx
  store ptr %i.fe, ptr %i.q, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit190
  %.sroa.0346.3 = phi i8 [ %.sroa.0346.1, %bb.bv ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit190 ], [ %.sroa.0346.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188 ]
  %i.fk = phi ptr [ %3, %bb.bv ], [ %i.fe, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit190 ], [ %3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit188 ] ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body193 unwind label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit195 unwind label %.loopexit.split-lp517

bb.cc:                                            ; preds = %bb.ca
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit195: ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bg

bb.cd:                                            ; preds = %bb.bg
  %.not85 = icmp eq ptr %i.eh, null
  br i1 %.not85, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit212, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eh, i64 48 ; 8 uses
  %i.fo = load i32, ptr %i.fn, align 4, !noundef !4 ; 2 uses
  %i.fp = icmp eq i32 %i.fo, -1
  br i1 %i.fp, label %bb.cg, label %bb.cf, !prof !7

bb.cf:                                            ; preds = %bb.ce
  %i.fq = add nuw i32 %i.fo, 1
  store i32 %i.fq, ptr %i.fn, align 4
  %i.fr = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.eh)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit198 unwind label %bb.cj

bb.cg:                                            ; preds = %bb.ce
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
          to label %.noexc197 unwind label %bb.cj

.noexc197:                                        ; preds = %bb.cg
  unreachable

.body206:                                         ; preds = %bb.ck, %bb.cj, %.thread421, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fs = phi ptr [ %i.eg, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.eg, %bb.cj ], [ %i.gq, %.thread421 ], [ %i.eg, %bb.ck ] ; 2 uses
  %.pn87.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1557, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.thr_comm.split-lp427, %bb.cj ], [ %i.hf, %.thread421 ], [ %i.gg, %bb.ck ] ; 2 uses
  %i.ft = load i32, ptr %i.fn, align 4, !noundef !4
  %i.fu = add i32 %i.ft, -1                       ; 2 uses
  store i32 %i.fu, ptr %i.fn, align 4
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ch, label %.body193

bb.ch:                                            ; preds = %.body206
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.eh) #34
          to label %.body193 unwind label %bb.x

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit198: ; preds = %bb.cf
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEINtB2_18SpecFromIterNestedB11_INtB17_11AstChildrenB11_EE9from_iterCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef %i.fr)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit198
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !4 ; 2 uses
  %.not15.not.i1556 = icmp ult i64 %i.fy, 2
  br i1 %.not15.not.i1556, label %.split.us.i._crit_edge, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i.lr.ph

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i.lr.ph: ; preds = %bb.ci
  %i.fz = load ptr, ptr %i.fw, align 8, !nonnull !4, !noundef !4
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i

.split.us.i:                                      ; preds = %.noexc201
  %i.ga = add i64 %i.gb, -1
  %.not15.not.i = icmp ult i64 %i.gb, 3
  br i1 %.not15.not.i, label %.split.us.i._crit_edge, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i.lr.ph, %.split.us.i
  %i.gb = phi i64 [ %i.fy, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i.lr.ph ], [ %i.ga, %.split.us.i ] ; 2 uses
  %i.gc = phi ptr [ %i.fz, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i.lr.ph ], [ %i.gd, %.split.us.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = invoke noundef i8 @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports23use_tree_cmp_bin_search(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gd)
          to label %.noexc201 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc201:                                        ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize0E0B2g_.exit.us.i
  %i.gf = icmp sgt i8 %i.ge, 0
  br i1 %i.gf, label %bb.cn, label %.split.us.i

bb.cj:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit198, %bb.cf, %bb.cg, %bb.cl, %bb.cs
  %lpad.thr_comm.split-lp427 = landingpad { ptr, i32 }
          cleanup
  br label %.body206

.split.us.i._crit_edge:                           ; preds = %.split.us.i, %bb.ci
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.cl unwind label %bb.ck

bb.ck:                                            ; preds = %.split.us.i._crit_edge
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body206 unwind label %bb.cm

bb.cl:                                            ; preds = %.split.us.i._crit_edge
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit208 unwind label %bb.cj

bb.cm:                                            ; preds = %bb.ck
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.cn:                                            ; preds = %.noexc201
  %i.gi = load ptr, ptr %i.fw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gj = load i64, ptr %i.fx, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !814
  store ptr %i.a, ptr %i.h, align 8, !noalias !814
  %i.gk = icmp samesign ult i64 %i.gj, 2
  br i1 %i.gk, label %bb.cs, label %bb.co, !prof !8

bb.co:                                            ; preds = %bb.cn
  %i.gl = icmp samesign ult i64 %i.gj, 21
  br i1 %i.gl, label %bb.cq, label %bb.cp, !prof !8

bb.cp:                                            ; preds = %bb.co
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB6_SBT_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports23use_tree_cmp_bin_searchE0EB2p_(ptr noalias nofree noundef nonnull align 8 %i.gi, i64 noundef range(i64 0, 1152921504606846976) %i.gj, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #34
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cq:                                            ; preds = %bb.co
  invoke void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMB8_SB1m_16sort_unstable_byNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports23use_tree_cmp_bin_searchE0EB2T_(ptr noalias nofree noundef nonnull align 8 %i.gi, i64 noundef range(i64 0, 1152921504606846976) %i.gj, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit208: ; preds = %bb.cl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit214
  %.sroa.0346.4 = phi i8 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit214 ], [ %.sroa.0346.2, %bb.cl ] ; 2 uses
  %i.gm = phi ptr [ %i.gq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit214 ], [ %i.eg, %bb.cl ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.gn = load i32, ptr %i.fn, align 4, !noundef !4
  %i.go = add i32 %i.gn, -1                       ; 2 uses
  store i32 %i.go, ptr %i.fn, align 4
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.cr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit212

bb.cr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit208
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.eh) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit212 unwind label %.loopexit.split-lp517

bb.cs:                                            ; preds = %bb.cn, %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.gq = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports18with_use_tree_list(ptr %i.eg, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %2)
          to label %bb.ct unwind label %bb.cj     ; 5 uses

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not86 = icmp eq ptr %i.gq, null
  br i1 %.not86, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eg) ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.eg, i64 48 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !noundef !4
  %i.gt = add i32 %i.gs, -1                       ; 2 uses
  store i32 %i.gt, ptr %i.gr, align 4
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.cv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit214

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.eg) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit214 unwind label %.thread421

bb.cw:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.gv = load i32, ptr %i.fn, align 4, !noundef !4
  %i.gw = add i32 %i.gv, -1                       ; 2 uses
  store i32 %i.gw, ptr %i.fn, align 4
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.cx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.eh) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216 unwind label %.loopexit.split-lp517

bb.cy:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit216
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o)
          to label %bb.av unwind label %.body228.thread407

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit175: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.gy = trunc nuw i8 %.sroa.058.2 to i1
  br i1 %i.gy, label %bb.cz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit221

bb.cz:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit175
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.db unwind label %bb.da

end_hunk_0
begin_hunk_1_@_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize:bb.a
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit230 unwind label %.body228

bb.dj:                                            ; preds = %bb.dh
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit238: ; preds = %bb.dn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.hq = load i32, ptr %i.ab, align 4, !noundef !4
  %i.hr = add i32 %i.hq, -1                       ; 2 uses
  store i32 %i.hr, ptr %i.ab, align 4
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.dk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit232

bb.dk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit238
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.y) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit232 unwind label %bb.b

bb.dl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit230
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.dn unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body235 unwind label %bb.do

bb.dn:                                            ; preds = %bb.dl
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit238 unwind label %bb.n

bb.do:                                            ; preds = %bb.dm
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit232: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit238, %bb.dk
  %i.hv = trunc nuw i8 %.sroa.061.9 to i1
  br i1 %i.hv, label %bb.dp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit

bb.dp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECs6oosyzwIepl_6ide_db.exit232
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !noundef !4
  %i.hy = add i32 %i.hx, -1                       ; 2 uses
  store i32 %i.hy, ptr %i.hw, align 4
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit

.lr.ph705:                                        ; preds = %bb.bb, %bb.el
  %i.ia = phi i64 [ %i.jh, %bb.el ], [ %i.dx, %bb.bb ] ; 2 uses
  %.sroa.031.1703 = phi i1 [ %.sroa.031.2, %bb.el ], [ %.sroa.031.0707, %bb.bb ]
  %.sroa.032.0702 = phi i64 [ %.sroa.032.1, %bb.el ], [ %i.dy, %bb.bb ] ; 6 uses
  %i.ib = icmp samesign ult i64 %.sroa.026.0708, %i.ia
  br i1 %i.ib, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.lr.ph705
  %i.ic = load ptr, ptr %i.dv, align 8, !nonnull !4, !noundef !4
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %.sroa.026.0708
  %i.ie = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.id)
          to label %bb.dt unwind label %bb.ea     ; 3 uses

bb.dr:                                            ; preds = %.lr.ph705
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.026.0708, i64 noundef %i.ia, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #38
          to label %bb.ds unwind label %.loopexit.split-lp517

bb.ds:                                            ; preds = %bb.ei, %bb.dv, %bb.dr
  unreachable

bb.dt:                                            ; preds = %bb.dq
  %i.if = load i64, ptr %i.ds, align 8, !noundef !4 ; 2 uses
  %i.ig = icmp ult i64 %.sroa.032.0702, %i.if
  br i1 %i.ig, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ih = load ptr, ptr %i.dv, align 8, !nonnull !4, !noundef !4
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.sroa.032.0702
  %i.ij = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ii)
          to label %bb.dw unwind label %.loopexit.split-lp523.loopexit.split-lp.loopexit.split-lp

bb.dv:                                            ; preds = %bb.dt
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.032.0702, i64 noundef %i.if, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #38
          to label %bb.ds unwind label %.loopexit.split-lp523.loopexit.split-lp.loopexit.split-lp

bb.dw:                                            ; preds = %bb.du
  %i.ik = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports28try_merge_trees_with_factory(ptr noundef nonnull %i.ie, ptr noundef nonnull %i.ij, i8 noundef 0, ptr noundef nonnull align 8 %2)
          to label %bb.dx unwind label %bb.ea     ; 6 uses

bb.dx:                                            ; preds = %bb.dw
  %.not90 = icmp eq ptr %i.ik, null
  br i1 %.not90, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.ik, ptr %i.n, align 8
  %i.il = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.eb unwind label %.thread454

bb.dz:                                            ; preds = %bb.dx
  %i.im = add nuw nsw i64 %.sroa.032.0702, 1
  br label %bb.el

.thread454:                                       ; preds = %bb.eb, %bb.dy
  %lpad.thr_comm452 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.ea:                                            ; preds = %bb.dq, %bb.dw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit243, %bb.ek
  %lpad.thr_comm.split-lp453 = landingpad { ptr, i32 }
          cleanup
  br label %.thread411

bb.eb:                                            ; preds = %bb.dy
  %i.in = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize(ptr noundef nonnull %i.il, i1 noundef zeroext false, ptr noundef nonnull align 8 %2)
          to label %bb.ec unwind label %.thread454 ; 5 uses

bb.ec:                                            ; preds = %bb.eb
  %.not91 = icmp eq ptr %i.in, null
  br i1 %.not91, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 48 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !noundef !4
  %i.iq = add i32 %i.ip, -1                       ; 2 uses
  store i32 %i.iq, ptr %i.io, align 4
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.ee, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit241

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ik) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit241 unwind label %.thread446

.thread446:                                       ; preds = %bb.ee
  %i.is = landingpad { ptr, i32 }
          cleanup
  store ptr %i.in, ptr %i.n, align 8
  br label %bb.eo

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit241: ; preds = %bb.ed, %bb.ee
  store ptr %i.in, ptr %i.n, align 8
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ec, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit241
  %i.it = phi ptr [ %i.ik, %bb.ec ], [ %i.in, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit241 ] ; 4 uses
  %i.iu = load i64, ptr %i.ds, align 8, !noundef !4 ; 2 uses
  %.not94 = icmp ult i64 %.sroa.026.0708, %i.iu
  br i1 %.not94, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.iv = load ptr, ptr %i.dv, align 8, !nonnull !4, !noundef !4
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.sroa.026.0708 ; 3 uses
  %.val125 = load ptr, ptr %i.iw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.val125, i64 48 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !noundef !4
  %i.iz = add i32 %i.iy, -1                       ; 2 uses
  store i32 %i.iz, ptr %i.ix, align 4
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.eh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit243

bb.eh:                                            ; preds = %bb.eg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val125) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit243 unwind label %.thread457

bb.ei:                                            ; preds = %bb.ef
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.026.0708, i64 noundef %i.iu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #38
          to label %bb.ds unwind label %bb.em

.thread457:                                       ; preds = %bb.eh
  %i.jb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.it, ptr %i.iw, align 8
  br label %.thread411

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit243: ; preds = %bb.eg, %bb.eh
  store ptr %i.it, ptr %i.iw, align 8
  %i.jc = invoke noundef nonnull ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE6removeCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %.sroa.032.0702, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60)
          to label %bb.ej unwind label %bb.ea     ; 2 uses

bb.ej:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit243
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 48 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !noundef !4
  %i.jf = add i32 %i.je, -1                       ; 2 uses
  store i32 %i.jf, ptr %i.jd, align 4
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.ek, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit245

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.jc) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit245 unwind label %bb.ea

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit245: ; preds = %bb.ej, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.el

bb.el:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit245, %bb.dz
  %.sroa.032.1 = phi i64 [ %.sroa.032.0702, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit245 ], [ %i.im, %bb.dz ] ; 2 uses
  %.sroa.031.2 = phi i1 [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit245 ], [ %.sroa.031.1703, %bb.dz ] ; 3 uses
  %i.jh = load i64, ptr %i.ds, align 8, !noundef !4 ; 5 uses
  %i.ji = icmp ult i64 %i.jh, 1152921504606846976
  call void @llvm.assume(i1 %i.ji)
  %i.jj = icmp samesign ult i64 %.sroa.032.1, %i.jh
  br i1 %i.jj, label %.lr.ph705, label %.loopexit515

bb.em:                                            ; preds = %bb.ei
  %i.jk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.it, i64 48 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !noundef !4
  %i.jn = add i32 %i.jm, -1                       ; 2 uses
  store i32 %i.jn, ptr %i.jl, align 4
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.en, label %.thread411

bb.en:                                            ; preds = %bb.em
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.it) #34
          to label %.thread411 unwind label %bb.x

bb.eo:                                            ; preds = %.thread454, %.thread446
  %.pn95449 = phi { ptr, i32 } [ %i.is, %.thread446 ], [ %lpad.thr_comm452, %.thread454 ] ; 2 uses
  %i.jp = phi ptr [ %i.in, %.thread446 ], [ %i.ik, %.thread454 ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 48 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !noundef !4
  %i.js = add i32 %i.jr, -1                       ; 2 uses
  store i32 %i.js, ptr %i.jq, align 4
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %bb.ep, label %.thread411

bb.ep:                                            ; preds = %bb.eo
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.jp) #34
          to label %.thread411 unwind label %bb.x

.loopexit.split-lp523.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.du, %bb.dv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ie, i64 48 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !noundef !4
  %i.jw = add i32 %i.jv, -1                       ; 2 uses
  store i32 %i.jw, ptr %i.ju, align 4
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %bb.eq, label %.thread411

bb.eq:                                            ; preds = %.loopexit.split-lp523.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ie) #34
          to label %.thread411 unwind label %bb.x

.thread411:                                       ; preds = %bb.em, %bb.en, %.thread457, %.loopexit.split-lp523.loopexit.split-lp.loopexit.split-lp, %bb.eq, %bb.eo, %bb.ep, %bb.ea, %.body193
  %.sroa.069.3416 = phi i1 [ %.sroa.069.3, %.body193 ], [ true, %bb.em ], [ true, %.loopexit.split-lp523.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.ea ], [ true, %bb.ep ], [ true, %bb.eo ], [ true, %bb.eq ], [ true, %.thread457 ], [ true, %bb.en ]
  %.pn95.pn415 = phi { ptr, i32 } [ %.pn95.pn, %.body193 ], [ %i.jk, %bb.em ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp523.loopexit.split-lp.loopexit.split-lp ], [ %lpad.thr_comm.split-lp453, %bb.ea ], [ %.pn95449, %bb.ep ], [ %.pn95449, %bb.eo ], [ %lpad.loopexit.split-lp, %bb.eq ], [ %i.jb, %.thread457 ], [ %i.jk, %bb.en ]
  %i.jy = phi ptr [ %i.dq, %.body193 ], [ %storemerge, %bb.em ], [ %storemerge, %.loopexit.split-lp523.loopexit.split-lp.loopexit.split-lp ], [ %storemerge, %bb.ea ], [ %storemerge, %bb.ep ], [ %storemerge, %bb.eo ], [ %storemerge, %bb.eq ], [ %storemerge, %.thread457 ], [ %storemerge, %bb.en ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #35
          to label %bb.aq unwind label %bb.x

.thread399:                                       ; preds = %.thread511, %bb.ay, %bb.ax, %.body228.thread407, %bb.aq
  %.pn95.pn.pn402 = phi { ptr, i32 } [ %lpad.thr_comm405, %.body228.thread407 ], [ %.pn95.pn.pn, %bb.aq ], [ %i.dj, %bb.ax ], [ %i.dj, %bb.ay ], [ %i.ef, %.thread511 ] ; 2 uses
  %i.jz = phi ptr [ %.ph, %.body228.thread407 ], [ %i.cy, %bb.aq ], [ %storemerge, %bb.ax ], [ %storemerge, %bb.ay ], [ %i.ea, %.thread511 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jz) ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !noundef !4
  %i.kc = add i32 %i.kb, -1                       ; 2 uses
  store i32 %i.kc, ptr %i.ka, align 4
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %bb.er, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit

bb.er:                                            ; preds = %.thread399
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.jz) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit unwind label %bb.x

.thread471:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit, %bb.ev, %bb.ak, %bb.eu
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.thread465

bb.es:                                            ; preds = %bb.ak
  %.not99 = icmp eq ptr %i.cs, null
  br i1 %.not99, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.kf = getelementptr inbounds nuw i8, ptr %i.cs, i64 48 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !noundef !4
  %i.kh = add i32 %i.kg, -1                       ; 2 uses
  store i32 %i.kh, ptr %i.kf, align 4
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.eu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit256

bb.eu:                                            ; preds = %bb.et
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cs) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit256 unwind label %.thread471

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.es
  %i.kj = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %bb.ev unwind label %.thread471

bb.ev:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit
  %i.kk = invoke fastcc noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports19recursive_normalize(ptr noundef nonnull %i.kj, i1 noundef zeroext false, ptr noundef nonnull align 8 %2)
          to label %bb.ew unwind label %.thread471 ; 4 uses

bb.ew:                                            ; preds = %bb.ev
  %.not100 = icmp eq ptr %i.kk, null
  br i1 %.not100, label %bb.fc, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %i.kl = load i64, ptr %i.at, align 8, !alias.scope !815, !noundef !4 ; 3 uses
  %i.km = load i64, ptr %i.u, align 8, !range !9, !alias.scope !815, !noundef !4
  %i.kn = icmp eq i64 %i.kl, %i.km
  br i1 %i.kn, label %bb.ey, label %bb.fh

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.fh unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ko = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 48 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !noalias !815, !noundef !4
  %i.kr = add i32 %i.kq, -1                       ; 2 uses
  store i32 %i.kr, ptr %i.kp, align 4, !noalias !815
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.fa, label %.thread465

bb.fa:                                            ; preds = %bb.ez
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kk) #34
          to label %.thread465 unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.fc:                                            ; preds = %bb.ew
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.ku = load i64, ptr %i.at, align 8, !alias.scope !816, !noundef !4 ; 3 uses
  %i.kv = load i64, ptr %i.u, align 8, !range !9, !alias.scope !816, !noundef !4
  %i.kw = icmp eq i64 %i.ku, %i.kv
  br i1 %i.kw, label %bb.fd, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8push_mutCs6oosyzwIepl_6ide_db.exit263

bb.fd:                                            ; preds = %bb.fc
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8push_mutCs6oosyzwIepl_6ide_db.exit263 unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.cr, i64 48 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !noalias !816, !noundef !4
  %i.la = add i32 %i.kz, -1                       ; 2 uses
  store i32 %i.la, ptr %i.ky, align 4, !noalias !816
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %bb.ff, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit272

bb.ff:                                            ; preds = %bb.fe
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cr) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit272 unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8push_mutCs6oosyzwIepl_6ide_db.exit263: ; preds = %bb.fc, %bb.fd
  %i.ld = load ptr, ptr %i.as, align 8, !alias.scope !816, !nonnull !4, !noundef !4
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.ku
  store ptr %i.cr, ptr %i.le, align 8
  %i.lf = add i64 %i.ku, 1
  store i64 %i.lf, ptr %i.at, align 8, !alias.scope !816
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265

bb.fh:                                            ; preds = %bb.ey, %bb.ex
  %i.lg = load ptr, ptr %i.as, align 8, !alias.scope !815, !nonnull !4, !noundef !4
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.kl
  store ptr %i.kk, ptr %i.lh, align 8
  %i.li = add i64 %i.kl, 1
  store i64 %i.li, ptr %i.at, align 8, !alias.scope !815
  %i.lj = getelementptr inbounds nuw i8, ptr %i.cr, i64 48 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !noundef !4
  %i.ll = add i32 %i.lk, -1                       ; 2 uses
  store i32 %i.ll, ptr %i.lj, align 4
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.fi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265

bb.fi:                                            ; preds = %bb.fh
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cr) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265 unwind label %.body269

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit265: ; preds = %bb.fh, %bb.fi, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8push_mutCs6oosyzwIepl_6ide_db.exit263, %bb.hq
  %.sroa.0346.6 = phi i8 [ %.sroa.0346.0701, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8push_mutCs6oosyzwIepl_6ide_db.exit263 ], [ 1, %bb.hq ], [ 1, %bb.fi ], [ 1, %bb.fh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ln = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !817, !nonnull !4, !noundef !4
  %i.lo = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !817, !nonnull !4, !noundef !4 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.ln
  br i1 %i.lp, label %._crit_edge, label %bb.ak

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit256: ; preds = %bb.et, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8
end_hunk_1
