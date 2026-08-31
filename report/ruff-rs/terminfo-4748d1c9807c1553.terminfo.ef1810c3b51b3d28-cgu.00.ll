Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/terminfo-4748d1c9807c1553.terminfo.ef1810c3b51b3d28-cgu.00?download=true
inline.NumInlined: 191
inline.NumDeleted: 101
begin_hunk_0_@_RNvMs_NtCskwGTd9yTe3I_8terminfo8databaseNtB4_8Database8from_env:bb.a
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @13, ptr noundef nonnull %i.m)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskwGTd9yTe3I_8terminfo.exit.i unwind label %bb.fb, !noalias !42

bb.eq:                                            ; preds = %bb.ev
  %lpad.thr_comm.split-lp346.i = landingpad { ptr, i32 }
          cleanup
  br label %.body242.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskwGTd9yTe3I_8terminfo.exit.i: ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !42
  invoke void @_RINvMsr_NtCs2AWtUsOyxgP_3std4pathNtB6_7PathBuf4pushNtNtCscdodAO9FK5_5alloc6string6StringECskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.er unwind label %bb.fb, !noalias !42

bb.er:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskwGTd9yTe3I_8terminfo.exit.i
  invoke void @_RINvMsr_NtCs2AWtUsOyxgP_3std4pathNtB6_7PathBuf4pushReECskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val154.i)
          to label %bb.es unwind label %bb.fb, !noalias !42

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !42
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path7PathBufECskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.et unwind label %bb.fb, !noalias !42

bb.et:                                            ; preds = %bb.es
  %i.mg = load i64, ptr %i.l, align 8, !range !118, !noalias !42, !noundef !3
  %.not146.i = icmp eq i64 %i.mg, 2
  br i1 %.not146.i, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %.val158.i = load ptr, ptr %i.lm, align 8, !noalias !42, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECskwGTd9yTe3I_8terminfo(ptr nonnull %.val158.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECskwGTd9yTe3I_8terminfo.exit252.i unwind label %bb.fb, !noalias !42

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !42
  invoke fastcc void @_RINvMs_NtCskwGTd9yTe3I_8terminfo8databaseNtB5_8Database9from_pathNtNtCs2AWtUsOyxgP_3std4path7PathBufEB7_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.ew unwind label %bb.eq, !noalias !37

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !42
  br label %bb.ek

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwGTd9yTe3I_8terminfo.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwGTd9yTe3I_8terminfo.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9277.i)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2AWtUsOyxgP_3std4path7PathBufEECskwGTd9yTe3I_8terminfo.exit254.i unwind label %bb.j, !noalias !42

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2AWtUsOyxgP_3std4path7PathBufEECskwGTd9yTe3I_8terminfo.exit254.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwGTd9yTe3I_8terminfo.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !42
  br label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECskwGTd9yTe3I_8terminfo.exit252.i: ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !42
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwGTd9yTe3I_8terminfo.exit.i256.i unwind label %bb.ex, !noalias !42

bb.ex:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECskwGTd9yTe3I_8terminfo.exit252.i
  %i.mh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body242.i unwind label %bb.ey, !noalias !42

bb.ey:                                            ; preds = %bb.ex
  %i.mi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12, !noalias !42
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwGTd9yTe3I_8terminfo.exit.i256.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECskwGTd9yTe3I_8terminfo.exit252.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwGTd9yTe3I_8terminfo.exit260.i unwind label %bb.do, !noalias !42

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwGTd9yTe3I_8terminfo.exit260.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwGTd9yTe3I_8terminfo.exit.i256.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !42
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwGTd9yTe3I_8terminfo.exit.i262.invoke.i unwind label %bb.ez, !noalias !42

bb.ez:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwGTd9yTe3I_8terminfo.exit260.i
  %i.mj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body237.i unwind label %bb.fa, !noalias !42

bb.fa:                                            ; preds = %bb.ez
  %i.mk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12, !noalias !42
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwGTd9yTe3I_8terminfo.exit.i262.invoke.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECskwGTd9yTe3I_8terminfo.exit230.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwGTd9yTe3I_8terminfo.exit260.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.backedge.i unwind label %.loopexit351.i, !noalias !42

.backedge.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwGTd9yTe3I_8terminfo.exit.i262.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9277.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9277.i)
  %i.ml = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !122, !noalias !115, !nonnull !3, !noundef !3
  %i.mm = load ptr, ptr %.sroa.526.0..sroa_idx.i, align 8, !alias.scope !122, !noalias !115, !nonnull !3, !noundef !3 ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.ml
  br i1 %i.mn, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskwGTd9yTe3I_8terminfo.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskwGTd9yTe3I_8terminfo.exit.i

bb.fb:                                            ; preds = %bb.eu, %bb.es, %bb.er, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskwGTd9yTe3I_8terminfo.exit.i, %bb.ep
  %lpad.thr_comm345.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwGTd9yTe3I_8terminfo(ptr noalias noundef align 8 dereferenceable(24) %i.p) #14
          to label %.body242.i unwind label %bb.ab, !noalias !42

.loopexit.i:                                      ; preds = %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ea
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

.loopexit.split-lp.i:                             ; preds = %bb.ec
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.fc:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwGTd9yTe3I_8terminfo(ptr noalias noundef align 8 dereferenceable(24) %i.t) #14
          to label %.body242.i unwind label %bb.ab, !noalias !42

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECskwGTd9yTe3I_8terminfo.exit230.i: ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !42
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwGTd9yTe3I_8terminfo.exit.i262.invoke.i unwind label %bb.fd, !noalias !42

bb.fd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECskwGTd9yTe3I_8terminfo.exit230.i
  %i.mo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body237.i unwind label %bb.fe, !noalias !42

bb.fe:                                            ; preds = %bb.fd
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12, !noalias !42
  unreachable

.thread298.i:                                     ; preds = %bb.di, %bb.db, %bb.cu, %bb.cn, %bb.cg, %bb.bz, %bb.bt, %.body193.i, %bb.av, %.body175.i, %bb.aa, %bb.x, %bb.n, %.thread320.i
  %.pn151294.i = phi { ptr, i32 } [ %i.kf, %bb.di ], [ %lpad.thr_comm.i, %.thread320.i ], [ %i.jp, %bb.db ], [ %i.cr, %bb.n ], [ %i.hd, %bb.bz ], [ %i.ht, %bb.cg ], [ %i.ij, %bb.cn ], [ %i.iz, %bb.cu ], [ %.pn141.i, %.body193.i ], [ %i.df, %bb.aa ], [ %.pn.i, %bb.av ], [ %.pn.i, %.body175.i ], [ %.pn141.i, %bb.bt ], [ %i.da, %bb.x ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufEECskwGTd9yTe3I_8terminfo(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #14
          to label %.thread295.i unwind label %bb.ab, !noalias !42

bb.ff:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwGTd9yTe3I_8terminfo.exit.i
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.thread295.i, %bb.g, %bb.dm, %bb.ff
  %eh.lpad-body = phi { ptr, i32 } [ %i.mq, %bb.ff ], [ %i.lr, %bb.dm ], [ %i.ci, %bb.g ], [ %.pn151.pn.i, %.thread295.i ]
  %i.mr = load i64, ptr %i.as, align 8, !range !8, !noundef !3
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %bb.fh, label %bb.fi

bb.fg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwGTd9yTe3I_8terminfo.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.pre = load i64, ptr %i.as, align 8, !range !8
  %i.mt = trunc nuw i64 %.pre to i1
  br i1 %i.mt, label %bb.fk, label %bb.fl

bb.fh:                                            ; preds = %bb.fi, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.fi:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs2AWtUsOyxgP_3std3env8VarErrorEECskwGTd9yTe3I_8terminfo(ptr noalias noundef align 8 dereferenceable(32) %i.as) #14
          to label %bb.fh unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.mu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.fk:                                            ; preds = %.thread, %bb.fg
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs2AWtUsOyxgP_3std3env8VarErrorEECskwGTd9yTe3I_8terminfo(ptr noalias noundef align 8 dereferenceable(32) %i.as)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCskwGTd9yTe3I_8terminfo6parser8compiledNtNtB6_8database8DatabaseINtNtCs4NRVxsYgnAr_4core7convert4FromNtB2_8DatabaseE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(216) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 16               ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 16               ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 16               ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [104 x i8], align 8               ; 4 uses
  %i.w = alloca [104 x i8], align 8               ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 11 uses
  %i.af = alloca [112 x i8], align 8              ; 13 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [2 x i8], align 2                ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [2 x i8], align 2                ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [2 x i8], align 2                ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [104 x i8], align 8              ; 32 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.av = load i64, ptr %i.au, align 8, !noundef !3
  store ptr %i.at, ptr %i.aq, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.av, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i8 0, ptr %.sroa.56.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB1y_INtNtNtB1G_5slice4iter5SplithNCNvXNtNtCskwGTd9yTe3I_8terminfo6parser8compiledNtNtB32_8database8DatabaseINtNtB1G_7convert4FromNtB2Y_8DatabaseE4from0ENCB2V_s_0ENCB2V_s0_0EE9from_iterB32_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aq)
          to label %bb.c unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECskwGTd9yTe3I_8terminfo.exit238: ; preds = %bb.dr, %.thread304, %bb.db, %bb.b
  %.sroa.079.0 = phi i1 [ %.not144, %.thread304 ], [ %.sroa.079.1249314, %bb.db ], [ true, %bb.b ], [ %.sroa.079.1249314, %bb.dr ]
  %.pn156.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.thread304 ], [ %.pn156251312, %bb.db ], [ %i.aw, %bb.b ], [ %.pn156251312, %bb.dr ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCskwGTd9yTe3I_8terminfo6parser8compiled8StandardEBH_(ptr noalias noundef align 8 dereferenceable(88) %1) #14
          to label %bb.dt unwind label %bb.cc

bb.b:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECskwGTd9yTe3I_8terminfo.exit238

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 11 uses
  store i64 -1, ptr %i.ax, align 8
  store i64 0, ptr %i.ap, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.485.0..sroa_idx, align 8
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 0, ptr %.sroa.586.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 12 uses
  store i64 -1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 72 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false)
  %i.ba = invoke { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE6removeCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20)
          to label %bb.d unwind label %.thread267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.thread267.loopexit:                              ; preds = %bb.aj
  %lpad.loopexit337 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread267.loopexit.split-lp.loopexit:            ; preds = %bb.cq, %bb.cm, %bb.al
  %lpad.loopexit340 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread267.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ae
  %lpad.loopexit344 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cu, %bb.ag
  %lpad.loopexit347 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.z
  %lpad.loopexit350 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cy, %bb.ab
  %lpad.loopexit353 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.cl, %bb.co, %.loopexit336, %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECskwGTd9yTe3I_8terminfo.exit217, %bb.s, %bb.c, %bb.d
  %.sroa.078.1.ph.ph.ph.ph.ph.ph.ph = phi i1 [ false, %bb.s ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECskwGTd9yTe3I_8terminfo.exit217 ], [ true, %bb.d ], [ true, %bb.l ], [ false, %.loopexit336 ], [ true, %.invoke ], [ true, %bb.c ], [ false, %bb.cl ], [ false, %bb.co ]
  %.sroa.079.2.ph.ph.ph.ph.ph.ph.ph = phi i1 [ true, %bb.s ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECskwGTd9yTe3I_8terminfo.exit217 ], [ true, %bb.d ], [ true, %bb.l ], [ true, %.loopexit336 ], [ true, %.invoke ], [ true, %bb.c ], [ true, %bb.cl ], [ true, %bb.co ]
  %lpad.loopexit.split-lp354 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread304:                                       ; preds = %bb.ce, %bb.an
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECskwGTd9yTe3I_8terminfo.exit238

bb.d:                                             ; preds = %bb.c
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1      ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !127
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.bc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc159 unwind label %.thread267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc159:                                        ; preds = %bb.d
  %i.bd = load i64, ptr %i.s, align 8, !range !8, !noalias !127, !noundef !3
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !9, !noalias !127, !noundef !3 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.be, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskwGTd9yTe3I_8terminfo.exit.i.i.i.i, !prof !10

bb.e:                                             ; preds = %.noexc159
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !127
  br label %.invoke

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskwGTd9yTe3I_8terminfo.exit.i.i.i.i: ; preds = %.noexc159
  %i.bj = load ptr, ptr %i.bh, align 8, !noalias !127, !nonnull !3, !noundef !3 ; 3 uses
  %i.bk = icmp samesign ule i64 %i.bc, %i.bg
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !127
  %.not.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i, label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtNtCscdodAO9FK5_5alloc6string6StringE4intoCskwGTd9yTe3I_8terminfo.exit.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskwGTd9yTe3I_8terminfo.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull readonly align 1 %i.bb, i64 range(i64 0, -9223372036854775808) %i.bc, i1 false), !noalias !138
  br label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtNtCscdodAO9FK5_5alloc6string6StringE4intoCskwGTd9yTe3I_8terminfo.exit.i

_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtNtCscdodAO9FK5_5alloc6string6StringE4intoCskwGTd9yTe3I_8terminfo.exit.i: ; preds = %bb.f, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskwGTd9yTe3I_8terminfo.exit.i.i.i.i
  %i.bl = load i64, ptr %i.ax, align 8, !range !23, !alias.scope !139, !noalias !142, !noundef !3
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtNtCscdodAO9FK5_5alloc6string6StringE4intoCskwGTd9yTe3I_8terminfo.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwGTd9yTe3I_8terminfo.exit.i.i unwind label %bb.h, !noalias !142

bb.h:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.thread.thread unwind label %bb.i, !noalias !142

bb.i:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12, !noalias !142
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwGTd9yTe3I_8terminfo.exit.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.k unwind label %bb.j, !noalias !142

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwGTd9yTe3I_8terminfo.exit.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.j, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bp, %bb.j ], [ %i.bn, %bb.h ]
  store i64 %i.bg, ptr %i.ax, align 8, !alias.scope !124, !noalias !142
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %i.bj, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !124, !noalias !142
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !124, !noalias !142
  br label %bb.dc

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwGTd9yTe3I_8terminfo.exit.i.i, %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtNtCscdodAO9FK5_5alloc6string6StringE4intoCskwGTd9yTe3I_8terminfo.exit.i
  store i64 %i.bg, ptr %i.ax, align 8, !alias.scope !124, !noalias !142
  %.sroa.53.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %i.bj, ptr %.sroa.53.0..sroa_idx4.i, align 8, !alias.scope !124, !noalias !142
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx6.i, align 8, !alias.scope !124, !noalias !142
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !noundef !3 ; 3 uses
  %i.bs = icmp eq i64 %i.br, 0
end_hunk_0
begin_hunk_1_@_RNvXNtNtCskwGTd9yTe3I_8terminfo6parser8compiledNtNtB6_8database8DatabaseINtNtCs4NRVxsYgnAr_4core7convert4FromNtB2_8DatabaseE4from:bb.a
  store i64 %i.dn, ptr %i.n, align 8, !noalias !189
  store ptr %i.dk, ptr %i.de, align 8, !noalias !189
  %i.do = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXNtNtCskwGTd9yTe3I_8terminfo6parser8compiledNtNtBX_8database8DatabaseINtNtBb_7convert4FromNtBT_8DatabaseE4froms2_0INtB7_5FnMutTRTjRbEEE8call_mutBX_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %.noexc187 unwind label %.thread267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc187:                                        ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !188
  %i.dp = load ptr, ptr %i.dd, align 8, !alias.scope !182, !noalias !185, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !176, !noundef !3
  %i.dr = add i64 %i.dq, 1
  store i64 %i.dr, ptr %i.dp, align 8, !noalias !176
  br i1 %i.do, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %.noexc187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not = icmp eq ptr %i.dk, null
  br i1 %.not, label %.loopexit352, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.ds = trunc i64 %i.dn to i16
  store i16 %i.ds, ptr %i.an, align 2
  %i.dt = invoke { ptr, ptr } @_RINvMs3_NtCscobpsA2Tkss_3phf3mapINtB6_3MaptReE9get_entrytECskwGTd9yTe3I_8terminfo(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @_RNvNtCskwGTd9yTe3I_8terminfo5names7BOOLEAN, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.an)
          to label %bb.cx unwind label %.thread267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.loopexit352:                                     ; preds = %bb.aa, %.thread272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !3
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr %i.dy, ptr %.sroa.221.0..sroa_idx, align 8
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.322.0..sroa_idx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ed = insertelement <2 x ptr> poison, ptr %i.dz, i64 0
  %i.ee = insertelement <2 x ptr> %i.ed, ptr %.sroa.322.0..sroa_idx, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.cv, %.loopexit352
  %.promoted.i188 = phi ptr [ %.promoted.i188.pre, %bb.cv ], [ %i.dv, %.loopexit352 ]
  %i.ef = phi ptr [ %.pre512, %bb.cv ], [ %i.dy, %.loopexit352 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store <2 x ptr> %i.ee, ptr %i.m, align 16, !noalias !196
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc191, %bb.ac
  %i.eg = phi ptr [ %i.ei, %.noexc191 ], [ %.promoted.i188, %bb.ac ] ; 5 uses
  %i.eh = icmp eq ptr %i.eg, %i.ef
  br i1 %i.eh, label %.thread276, label %bb.ae

.thread276:                                       ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.loopexit346

bb.ae:                                            ; preds = %bb.ad
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 2 uses
  store ptr %i.ei, ptr %i.al, align 8, !alias.scope !199, !noalias !202
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.ej = load ptr, ptr %i.ea, align 8, !alias.scope !203, !noalias !206, !nonnull !3, !align !28, !noundef !3
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !208, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !209
  store i64 %i.ek, ptr %i.l, align 8, !noalias !210
  store ptr %i.eg, ptr %i.eb, align 8, !noalias !210
  %i.el = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXNtNtCskwGTd9yTe3I_8terminfo6parser8compiledNtNtBX_8database8DatabaseINtNtBb_7convert4FromNtBT_8DatabaseE4froms3_0INtB7_5FnMutTRTjRlEEE8call_mutBX_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
          to label %.noexc191 unwind label %.thread267.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc191:                                        ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !209
  %i.em = load ptr, ptr %i.ea, align 8, !alias.scope !203, !noalias !206, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !noalias !193, !noundef !3
  %i.eo = add i64 %i.en, 1
  store i64 %i.eo, ptr %i.em, align 8, !noalias !193
  br i1 %i.el, label %bb.af, label %bb.ad

bb.af:                                            ; preds = %.noexc191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not142 = icmp eq ptr %i.eg, null
  br i1 %.not142, label %.loopexit346, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ep = load i32, ptr %i.eg, align 4, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.eq = trunc i64 %i.ek to i16
  store i16 %i.eq, ptr %i.ak, align 2
  %i.er = invoke { ptr, ptr } @_RINvMs3_NtCscobpsA2Tkss_3phf3mapINtB6_3MaptReE9get_entrytECskwGTd9yTe3I_8terminfo(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @_RNvNtCskwGTd9yTe3I_8terminfo5names6NUMBER, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.ak)
          to label %bb.ct unwind label %.thread267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.loopexit346:                                     ; preds = %bb.af, %.thread276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !3
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.ev ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %i.ew, ptr %.sroa.230.0..sroa_idx, align 8
  %.sroa.331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.331.0..sroa_idx, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.fe = insertelement <2 x ptr> poison, ptr %i.ex, i64 0
  %i.ff = insertelement <2 x ptr> %i.fe, ptr %.sroa.331.0..sroa_idx, i64 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ci, %.loopexit346
  %.promoted.i192 = phi ptr [ %.promoted.i192.pre, %bb.ci ], [ %i.et, %.loopexit346 ]
  %i.fg = phi ptr [ %.pre514, %bb.ci ], [ %i.ew, %.loopexit346 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store <2 x ptr> %i.ff, ptr %i.k, align 16, !noalias !217
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc195, %bb.ah
  %i.fh = phi ptr [ %i.fj, %.noexc195 ], [ %.promoted.i192, %bb.ah ] ; 5 uses
  %i.fi = icmp eq ptr %i.fh, %i.fg
  br i1 %i.fi, label %.thread280, label %bb.aj

.thread280:                                       ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit339

bb.aj:                                            ; preds = %bb.ai
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 2 uses
  store ptr %i.fj, ptr %i.ai, align 8, !alias.scope !220, !noalias !223
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.fk = load ptr, ptr %i.ey, align 8, !alias.scope !224, !noalias !227, !nonnull !3, !align !28, !noundef !3
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !229, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !230
  store i64 %i.fl, ptr %i.j, align 8, !noalias !231
  store ptr %i.fh, ptr %i.ez, align 8, !noalias !231
  %i.fm = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXNtNtCskwGTd9yTe3I_8terminfo6parser8compiledNtNtBX_8database8DatabaseINtNtBb_7convert4FromNtBT_8DatabaseE4froms4_0INtB7_5FnMutTRTjRlEEE8call_mutBX_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %.noexc195 unwind label %.thread267.loopexit

.noexc195:                                        ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !230
  %i.fn = load ptr, ptr %i.ey, align 8, !alias.scope !224, !noalias !227, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !214, !noundef !3
  %i.fp = add i64 %i.fo, 1
  store i64 %i.fp, ptr %i.fn, align 8, !noalias !214
  br i1 %i.fm, label %bb.ak, label %bb.ai

bb.ak:                                            ; preds = %.noexc195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not143 = icmp eq ptr %i.fh, null
  br i1 %.not143, label %.loopexit339, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fq = load i32, ptr %i.fh, align 4, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.fr = trunc i64 %i.fl to i16
  store i16 %i.fr, ptr %i.ah, align 2
  %i.fs = invoke { ptr, ptr } @_RINvMs3_NtCscobpsA2Tkss_3phf3mapINtB6_3MaptReE9get_entrytECskwGTd9yTe3I_8terminfo(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @_RNvNtCskwGTd9yTe3I_8terminfo5names6STRING, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.ah)
          to label %bb.cg unwind label %.thread267.loopexit.split-lp.loopexit ; 2 uses

.loopexit339:                                     ; preds = %bb.ak, %.thread280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !range !23, !noundef !3
  %.not144 = icmp eq i64 %i.fu, -1                ; 2 uses
  br i1 %.not144, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.loopexit339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.af, ptr noundef nonnull align 8 dereferenceable(112) %i.ft, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.af, i64 96 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !3, !noundef !3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.af, i64 104 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !noundef !3
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ga, ptr %i.i, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.gd, ptr %i.ge, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator9size_hintCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %.noexc196 unwind label %bb.ao

.noexc196:                                        ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.gf = invoke noundef i64 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldjNCINvNtB7_3map8map_foldljjNCINvNvXs1_NtB7_6filterINtB2K_6FilterppEB1v_5count8to_usizelNCNvXNtNtCskwGTd9yTe3I_8terminfo6parser8compiledNtNtB3G_8database8DatabaseINtNtBb_7convert4FromNtB3C_8DatabaseE4froms7_0E0NCINvXsK_NtB1z_5accumjNtB5E_3Sum3sumINtB2e_3MapBP_B2z_EE0E0EB3G_(ptr noundef nonnull %i.ga, ptr noundef nonnull %i.gd, i64 noundef 0)
          to label %bb.ap unwind label %bb.ao

bb.an:                                            ; preds = %bb.bl, %.loopexit339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.v, ptr noundef nonnull align 8 dereferenceable(104) %i.ap, i64 104, i1 false)
  invoke void @_RNvMNtCskwGTd9yTe3I_8terminfo8databaseNtB2_7Builder5build(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.v)
          to label %bb.cd unwind label %.thread304

.body215:                                         ; preds = %bb.bi, %bb.au, %bb.ao
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.au ], [ %i.gg, %bb.ao ], [ %i.jg, %bb.bi ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCskwGTd9yTe3I_8terminfo6parser8compiled8ExtendedEBH_(ptr noalias noundef align 8 dereferenceable(112) %i.af) #14
          to label %.thread unwind label %bb.cc

bb.ao:                                            ; preds = %bb.bj, %.noexc196, %bb.am, %bb.ap
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body215

bb.ap:                                            ; preds = %.noexc196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.gf, ptr %i.ad, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.fw, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.fy, ptr %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx, align 8
  %.sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 0, ptr %.sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_4skip4SkipINtNtNtB1G_5slice4iter5SplithNCNvXNtNtCskwGTd9yTe3I_8terminfo6parser8compiledNtNtB3g_8database8DatabaseINtNtB1G_7convert4FromNtB3c_8DatabaseE4froms6_0EENCB39_s8_0EE9from_iterB3g_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ad)
          to label %bb.aq unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  %i.gk = load i64, ptr %i.gj, align 8, !noundef !3 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gk ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.gl, ptr %.sroa.251.0..sroa_idx, align 8
  %.sroa.352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.352.0..sroa_idx, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.gm, ptr %i.g, align 16, !noalias !235
  store ptr %.sroa.352.0..sroa_idx, ptr %i.gn, align 8, !noalias !235
  %i.gr = icmp samesign eq i64 %i.gk, 0
  br i1 %i.gr, label %.thread284, label %.lr.ph690.preheader

.lr.ph690.preheader:                              ; preds = %bb.aq
  %i.gs = insertelement <2 x ptr> poison, ptr %i.gm, i64 0
  %i.gt = insertelement <2 x ptr> %i.gs, ptr %.sroa.352.0..sroa_idx, i64 1
  br label %.lr.ph690

.lr.ph690:                                        ; preds = %.lr.ph690.preheader, %bb.cb
  %i.gu = phi ptr [ %.pre516, %bb.cb ], [ %i.gl, %.lr.ph690.preheader ]
  %.promoted.i198692 = phi ptr [ %.promoted.i198.pre, %bb.cb ], [ %i.gi, %.lr.ph690.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  br label %bb.as

bb.ar:                                            ; preds = %.noexc201
  %i.gv = icmp eq ptr %i.gx, %i.gu
  br i1 %i.gv, label %.thread284, label %bb.as

.thread284:                                       ; preds = %bb.cb, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit332

bb.as:                                            ; preds = %.lr.ph690, %bb.ar
  %i.gw = phi ptr [ %.promoted.i198692, %.lr.ph690 ], [ %i.gx, %bb.ar ] ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1 ; 3 uses
  store ptr %i.gx, ptr %i.ac, align 8, !alias.scope !242, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.gy = load ptr, ptr %i.gn, align 8, !alias.scope !246, !noalias !249, !nonnull !3, !align !28, !noundef !3
  %i.gz = load i64, ptr %i.gy, align 8, !noalias !251, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !252
  store i64 %i.gz, ptr %i.f, align 8, !noalias !253
  store ptr %i.gw, ptr %i.go, align 8, !noalias !253
  %i.ha = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXNtNtCskwGTd9yTe3I_8terminfo6parser8compiledNtNtBX_8database8DatabaseINtNtBb_7convert4FromNtBT_8DatabaseE4froms9_0INtB7_5FnMutTRTjRbEEE8call_mutBX_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %.noexc201 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc201:                                        ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !252
  %i.hb = load ptr, ptr %i.gn, align 8, !alias.scope !246, !noalias !249, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !noalias !240, !noundef !3
  %i.hd = add i64 %i.hc, 1
  store i64 %i.hd, ptr %i.hb, align 8, !noalias !240
  br i1 %i.ha, label %bb.aw, label %bb.ar

.loopexit318:                                     ; preds = %bb.bf
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.bv, %bb.br
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.ba
  %lpad.loopexit324 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.by
  %lpad.loopexit327 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.as
  %lpad.loopexit330 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ca
  %lpad.loopexit333 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke616, %bb.bt, %.loopexit, %bb.bo
  %lpad.loopexit.split-lp334 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit318
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit318 ], [ %lpad.loopexit321, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit324, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit327, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit330, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit333, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp334, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body203 unwind label %bb.av

bb.au:                                            ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body215 unwind label %bb.cc

bb.av:                                            ; preds = %bb.at
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.aw:                                            ; preds = %.noexc201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not145 = icmp eq ptr %i.gw, null
  br i1 %.not145, label %.loopexit332, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hg = load i64, ptr %i.gp, align 8, !noundef !3 ; 2 uses
  %i.hh = icmp ult i64 %i.gz, %i.hg
  br i1 %i.hh, label %bb.ca, label %.invoke616

.loopexit332:                                     ; preds = %bb.aw, %.thread284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !noundef !3
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.hm, ptr %.sroa.259.0..sroa_idx, align 8
  %.sroa.360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.360.0..sroa_idx, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.hr = insertelement <2 x ptr> poison, ptr %i.hn, i64 0
  %i.hs = insertelement <2 x ptr> %i.hr, ptr %.sroa.360.0..sroa_idx, i64 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bz, %.loopexit332
  %.promoted.i205 = phi ptr [ %.promoted.i205.pre, %bb.bz ], [ %i.hj, %.loopexit332 ]
  %i.ht = phi ptr [ %.pre518, %bb.bz ], [ %i.hm, %.loopexit332 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store <2 x ptr> %i.hs, ptr %i.e, align 16, !noalias !260
  br label %bb.az

bb.az:                                            ; preds = %.noexc208, %bb.ay
  %i.hu = phi ptr [ %i.hw, %.noexc208 ], [ %.promoted.i205, %bb.ay ] ; 5 uses
  %i.hv = icmp eq ptr %i.hu, %i.ht
  br i1 %i.hv, label %.thread288, label %bb.ba

.thread288:                                       ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit326

bb.ba:                                            ; preds = %bb.az
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 2 uses
  store ptr %i.hw, ptr %i.aa, align 8, !alias.scope !263, !noalias !266
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.hx = load ptr, ptr %i.ho, align 8, !alias.scope !267, !noalias !270, !nonnull !3, !align !28, !noundef !3
  %i.hy = load i64, ptr %i.hx, align 8, !noalias !272, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !273
  store i64 %i.hy, ptr %i.d, align 8, !noalias !274
  store ptr %i.hu, ptr %i.hp, align 8, !noalias !274
  %i.hz = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXNtNtCskwGTd9yTe3I_8terminfo6parser8compiledNtNtBX_8database8DatabaseINtNtBb_7convert4FromNtBT_8DatabaseE4fromsa_0INtB7_5FnMutTRTjRlEEE8call_mutBX_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %.noexc208 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc208:                                        ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !273
  %i.ia = load ptr, ptr %i.ho, align 8, !alias.scope !267, !noalias !270, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !257, !noundef !3
  %i.ic = add i64 %i.ib, 1
  store i64 %i.ic, ptr %i.ia, align 8, !noalias !257
  br i1 %i.hz, label %bb.bb, label %bb.az

bb.bb:                                            ; preds = %.noexc208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not146 = icmp eq ptr %i.hu, null
end_hunk_1
