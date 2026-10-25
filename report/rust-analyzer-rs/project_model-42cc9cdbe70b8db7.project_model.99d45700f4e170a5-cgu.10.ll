Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/project_model-42cc9cdbe70b8db7.project_model.99d45700f4e170a5-cgu.10?download=true
inline.NumInlined: 724
inline.NumDeleted: 381
begin_hunk_0_@_RNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_14CargoWorkspace3new:bb.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsixqsALXRULh_14cargo_metadata10dependency10DependencyEECsdcPuHeDsw6v_13project_model.exit338: ; preds = %bb.fc
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %bb.fg unwind label %bb.ff

bb.ff:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsixqsALXRULh_14cargo_metadata10dependency10DependencyEECsdcPuHeDsw6v_13project_model.exit338
  %i.sb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %.body340 unwind label %bb.fh

bb.fg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsixqsALXRULh_14cargo_metadata10dependency10DependencyEECsdcPuHeDsw6v_13project_model.exit338
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model.exit unwind label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  %i.sc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

.body340:                                         ; preds = %bb.fi, %bb.ff, %.body336
  %.pn173 = phi { ptr, i32 } [ %eh.lpad-body337, %.body336 ], [ %i.sd, %bb.fi ], [ %i.sb, %bb.ff ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.es) #30
          to label %.body344 unwind label %bb.ar

bb.fi:                                            ; preds = %bb.fg
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %.body340

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.fg
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.es)
          to label %bb.fk unwind label %bb.fj

bb.fj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model.exit
  %i.se = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.es)
          to label %.body344 unwind label %bb.fl

bb.fk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.es)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model.exit346 unwind label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  %i.sf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

.body344:                                         ; preds = %bb.fm, %bb.fj, %.body340
  %.pn175 = phi { ptr, i32 } [ %.pn173, %.body340 ], [ %i.sg, %bb.fm ], [ %i.se, %bb.fj ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.et) #30
          to label %.body349 unwind label %bb.ar

bb.fm:                                            ; preds = %bb.fk
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %.body344

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model.exit346: ; preds = %bb.fk
  %i.sh = load i64, ptr %i.et, align 8, !range !7, !alias.scope !428, !noundef !4
  %i.si = icmp eq i64 %i.sh, -1
  br i1 %i.si, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit, label %bb.fn

bb.fn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model.exit346
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i348 unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.sj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %.body349 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.sk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i348: ; preds = %bb.fn
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit unwind label %bb.fq

.body349:                                         ; preds = %bb.fq, %bb.fo, %.body344
  %.pn177 = phi { ptr, i32 } [ %.pn175, %.body344 ], [ %i.sl, %bb.fq ], [ %i.sj, %bb.fo ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eu) #30
          to label %.body354 unwind label %bb.ar

bb.fq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i348
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %.body349

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model.exit346, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i348
  %i.sm = load i64, ptr %i.eu, align 8, !range !7, !alias.scope !429, !noundef !4
  %i.sn = icmp eq i64 %i.sm, -1
  br i1 %i.sn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit357, label %bb.fr

bb.fr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i353 unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.so = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %.body354 unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i353: ; preds = %bb.fr
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit357 unwind label %bb.fu

.body354:                                         ; preds = %bb.fu, %bb.fs, %.body349
  %.pn179 = phi { ptr, i32 } [ %.pn177, %.body349 ], [ %i.sq, %bb.fu ], [ %i.so, %bb.fs ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB12_6string6StringEEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ev) #30
          to label %.body358 unwind label %bb.ar

bb.fu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i353
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %.body354

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit357: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i353
  %i.sr = load i64, ptr %i.ev, align 8, !range !7, !alias.scope !430, !noundef !4
  %i.ss = icmp eq i64 %i.sr, -1
  br i1 %i.ss, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB12_6string6StringEEECsdcPuHeDsw6v_13project_model.exit, label %bb.fv

bb.fv:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit357
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model.exit.i unwind label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.st = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %.body358 unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model.exit.i: ; preds = %bb.fv
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB12_6string6StringEEECsdcPuHeDsw6v_13project_model.exit unwind label %bb.fy

.body358:                                         ; preds = %bb.fy, %bb.fw, %.body354
  %.pn181 = phi { ptr, i32 } [ %.pn179, %.body354 ], [ %i.sv, %bb.fy ], [ %i.st, %bb.fw ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ew) #30
          to label %.body363 unwind label %bb.ar

bb.fy:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model.exit.i
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %.body358

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB12_6string6StringEEECsdcPuHeDsw6v_13project_model.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit357, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model.exit.i
  %i.sw = load i64, ptr %i.ew, align 8, !range !7, !alias.scope !431, !noundef !4
  %i.sx = icmp eq i64 %i.sw, -1
  br i1 %i.sx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit366, label %bb.fz

bb.fz:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB12_6string6StringEEECsdcPuHeDsw6v_13project_model.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ew)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i362 unwind label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.sy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ew)
          to label %.body363 unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.sz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i362: ; preds = %bb.fz
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ew)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit366 unwind label %bb.k

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model.exit366: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB12_6string6StringEEECsdcPuHeDsw6v_13project_model.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.ta = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !432, !nonnull !4, !noundef !4
  %i.tb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !432, !nonnull !4, !noundef !4 ; 2 uses
  %i.tc = icmp eq ptr %i.tb, %i.ta
  br i1 %i.tc, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsixqsALXRULh_14cargo_metadata7PackageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsixqsALXRULh_14cargo_metadata7PackageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit

.body367:                                         ; preds = %bb.gn, %bb.gc, %bb.gf
  %.sroa.055.0 = phi i1 [ true, %bb.gf ], [ false, %bb.gc ], [ false, %bb.gn ]
  %.sroa.051.0 = phi i8 [ %.sroa.051.2, %bb.gf ], [ %.sroa.051.3, %bb.gc ], [ %.sroa.051.3, %bb.gn ]
  %.pn184 = phi { ptr, i32 } [ %i.tf, %bb.gf ], [ %i.td, %bb.gc ], [ %i.tu, %bb.gn ] ; 2 uses
  %5 = trunc nuw i8 %.sroa.051.0 to i1
  br i1 %5, label %bb.hf, label %bb.gz

bb.gc:                                            ; preds = %bb.gr
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %.body367

_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  br label %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread

_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit1091: ; preds = %.lr.ph.i
  br label %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread

_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit1290: ; preds = %.lr.ph.i
  br label %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread

_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit1453: ; preds = %.lr.ph.i
  br label %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread

_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit1676: ; preds = %.lr.ph.i
  br label %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread

_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread: ; preds = %bb.eo, %.lr.ph.i, %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit1676, %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit1453, %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit1290, %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit1091, %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit, %bb.em
  %.sroa.0.1.i312.ph = phi i8 [ 4, %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit1091 ], [ 0, %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit ], [ 8, %bb.em ], [ 1, %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit1290 ], [ 7, %.lr.ph.i ], [ 5, %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit1453 ], [ 8, %bb.eo ], [ 6, %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread.loopexit1676 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br label %bb.gd

bb.gd:                                            ; preds = %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread, %bb.gi, %bb.gh
  %.sroa.0.1.i312620 = phi i8 [ %.sroa.0.1.i312.ph, %_RNvMs3_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKind3new.exit.thread ], [ 2, %bb.gi ], [ 2, %bb.gh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  invoke void @_RNvMs9_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBuf6assert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.gp unwind label %bb.gf

bb.ge:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  %i.te = invoke { ptr, i64 } @_RNvXs2_NtCsdcPuHeDsw6v_13project_model13manifest_pathNtB5_12ManifestPathNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.gg unwind label %bb.gf     ; 2 uses

bb.gf:                                            ; preds = %bb.gj, %bb.gg, %bb.ge, %bb.gd
  %.sroa.051.2 = phi i8 [ 1, %bb.gj ], [ 0, %bb.gd ], [ 1, %bb.gg ], [ 1, %bb.ge ]
  %i.tf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #30
          to label %.body367 unwind label %bb.ar

bb.gg:                                            ; preds = %bb.ge
  %i.tg = extractvalue { ptr, i64 } %i.te, 0
  %i.th = extractvalue { ptr, i64 } %i.te, 1
  %i.ti = invoke { ptr, i64 } @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath9extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tg, i64 noundef %i.th)
          to label %bb.gh unwind label %bb.gf     ; 2 uses

bb.gh:                                            ; preds = %bb.gg
  %i.tj = extractvalue { ptr, i64 } %i.ti, 0      ; 2 uses
  %.not183 = icmp ne ptr %i.tj, null
  %i.tk = extractvalue { ptr, i64 } %i.ti, 1
  %i.tl = icmp eq i64 %i.tk, 2
  %or.cond = select i1 %.not183, i1 %i.tl, i1 false
  br i1 %or.cond, label %bb.gi, label %bb.gd

bb.gi:                                            ; preds = %bb.gh
  %i.tm = load i16, ptr %i.tj, align 1
  %i.tn = icmp ne i16 %i.tm, 29554
  %i.to = zext i1 %i.tn to i32
  %i.tp = icmp eq i32 %i.to, 0
  br i1 %i.tp, label %bb.gj, label %bb.gd

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.gk unwind label %bb.gf

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gp, %bb.gk
  %.sroa.0.1.i312619 = phi i8 [ 2, %bb.gk ], [ %.sroa.0.1.i312620, %bb.gp ]
  %.sroa.051.3 = phi i8 [ 1, %bb.gk ], [ 0, %bb.gp ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  store i32 %i.pw, ptr %i.el, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store i8 %.sroa.0.1.i312619, ptr %i.en, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.tq = load i64, ptr %.sroa.585.0..sroa_idx, align 8, !noundef !4 ; 5 uses
  %i.tr = icmp ult i64 %i.tq, 115292150460684698
  call void @llvm.assume(i1 %i.tr)
  %i.ts = load i64, ptr %i.cc, align 8, !range !14, !alias.scope !433, !noundef !4
  %i.tt = icmp eq i64 %i.tq, %i.ts
  br i1 %i.tt, label %bb.gm, label %bb.gq

bb.gm:                                            ; preds = %bb.gl
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %bb.gq unwind label %bb.gn, !noalias !434

bb.gn:                                            ; preds = %bb.gm
  %i.tu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aa) #30
          to label %.body367 unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.tv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.gp:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.gl

bb.gq:                                            ; preds = %bb.gm, %bb.gl
  %i.tw = load ptr, ptr %.sroa.484.0..sroa_idx, align 8, !alias.scope !433, !nonnull !4, !noundef !4
  %i.tx = getelementptr inbounds nuw [80 x i8], ptr %i.tw, i64 %i.tq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.tx, ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i64 80, i1 false)
  %i.ty = add nuw nsw i64 %i.tq, 1
  store i64 %i.ty, ptr %.sroa.585.0..sroa_idx, align 8, !alias.scope !433
  %i.tz = trunc i64 %i.tq to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ua = load i64, ptr %i.qw, align 8, !alias.scope !435, !noundef !4 ; 3 uses
  %i.ub = load i64, ptr %i.qv, align 8, !range !14, !alias.scope !435, !noundef !4
  %i.uc = icmp eq i64 %i.ua, %i.ub
  br i1 %i.uc, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataEE8grow_oneB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qv) #35
          to label %bb.gs unwind label %bb.gc

bb.gs:                                            ; preds = %bb.gq, %bb.gr
  %i.ud = load ptr, ptr %i.qx, align 8, !alias.scope !435, !nonnull !4, !noundef !4
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.ua
  store i32 %i.tz, ptr %i.ue, align 4
  %i.uf = add i64 %i.ua, 1
  store i64 %i.uf, ptr %i.qw, align 8, !alias.scope !435
  %6 = trunc nuw i8 %.sroa.051.3 to i1
  br i1 %6, label %bb.gw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECsdcPuHeDsw6v_13project_model.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECsdcPuHeDsw6v_13project_model.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECsdcPuHeDsw6v_13project_model.exit.i, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsixqsALXRULh_14cargo_metadata10TargetKindENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.gu unwind label %bb.gt

bb.gt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECsdcPuHeDsw6v_13project_model.exit
  %i.ug = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsixqsALXRULh_14cargo_metadata10TargetKindENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body371 unwind label %bb.gv

bb.gu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECsdcPuHeDsw6v_13project_model.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsixqsALXRULh_14cargo_metadata10TargetKindENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsixqsALXRULh_14cargo_metadata10TargetKindEECsdcPuHeDsw6v_13project_model.exit unwind label %bb.hb

bb.gv:                                            ; preds = %bb.gt
  %i.uh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.gw:                                            ; preds = %bb.gs
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECsdcPuHeDsw6v_13project_model.exit.i unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ui = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.thread621 unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.uj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECsdcPuHeDsw6v_13project_model.exit.i: ; preds = %bb.gw
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECsdcPuHeDsw6v_13project_model.exit unwind label %bb.ha

bb.gz:                                            ; preds = %bb.hf, %.body367
  br i1 %.sroa.055.0, label %bb.hg, label %.thread621

bb.ha:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECsdcPuHeDsw6v_13project_model.exit.i
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %.thread621

bb.hb:                                            ; preds = %bb.gu
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %.body371

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsixqsALXRULh_14cargo_metadata10TargetKindEECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsixqsALXRULh_14cargo_metadata9CrateTypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ep)
          to label %bb.hd unwind label %bb.hc

bb.hc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsixqsALXRULh_14cargo_metadata10TargetKindEECsdcPuHeDsw6v_13project_model.exit
  %i.um = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsixqsALXRULh_14cargo_metadata9CrateTypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ep)
          to label %.body377 unwind label %bb.he

bb.hd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsixqsALXRULh_14cargo_metadata10TargetKindEECsdcPuHeDsw6v_13project_model.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsixqsALXRULh_14cargo_metadata9CrateTypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ep)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsixqsALXRULh_14cargo_metadata9CrateTypeEECsdcPuHeDsw6v_13project_model.exit unwind label %bb.el

bb.he:                                            ; preds = %bb.hc
  %i.un = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsixqsALXRULh_14cargo_metadata9CrateTypeEECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7491)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7491)
  %i.uo = load ptr, ptr %.sroa.627.0..sroa_idx, align 8, !alias.scope !436, !nonnull !4, !noundef !4
  %i.up = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !436, !nonnull !4, !noundef !4 ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.uo
  br i1 %i.uq, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsixqsALXRULh_14cargo_metadata6TargetENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsixqsALXRULh_14cargo_metadata6TargetENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdcPuHeDsw6v_13project_model.exit

bb.hf:                                            ; preds = %.body367
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #30
          to label %bb.gz unwind label %bb.ar

.thread621:                                       ; preds = %bb.gx, %bb.ha, %bb.hg, %bb.gz
  %.pn186626 = phi { ptr, i32 } [ %.pn184, %bb.gz ], [ %.pn184, %bb.hg ], [ %i.uk, %bb.ha ], [ %i.ui, %bb.gx ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsixqsALXRULh_14cargo_metadata10TargetKindEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #30
          to label %.body371 unwind label %bb.ar

bb.hg:                                            ; preds = %bb.gz
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #30
          to label %.thread621 unwind label %bb.ar

.body371:                                         ; preds = %.thread621, %bb.gt, %bb.hb
  %.pn188 = phi { ptr, i32 } [ %.pn186626, %.thread621 ], [ %i.ul, %bb.hb ], [ %i.ug, %bb.gt ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsixqsALXRULh_14cargo_metadata9CrateTypeEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ep) #30
          to label %.body377 unwind label %bb.ar

bb.hh:                                            ; preds = %.body307
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsfxDLtZq386g_6semver7VersionEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ah) #30
          to label %bb.hi unwind label %bb.ar

bb.hi:                                            ; preds = %bb.hh
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #30
          to label %bb.hj unwind label %bb.ar

bb.hj:                                            ; preds = %bb.hi
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #30
          to label %bb.hk unwind label %bb.ar

bb.hk:                                            ; preds = %bb.hj
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #30
          to label %bb.hl unwind label %bb.ar

bb.hl:                                            ; preds = %bb.hk
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #30
          to label %bb.hm unwind label %bb.ar

bb.hm:                                            ; preds = %bb.hl
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #30
          to label %bb.hn unwind label %bb.ar

bb.hn:                                            ; preds = %bb.hm
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #30
          to label %bb.ho unwind label %bb.ar

bb.ho:                                            ; preds = %bb.hn
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #30
          to label %bb.hp unwind label %bb.ar

bb.hp:                                            ; preds = %bb.ho
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace10TargetDataEEEB1G_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #30
          to label %bb.hq unwind label %bb.ar

bb.hq:                                            ; preds = %bb.hp
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model13manifest_path12ManifestPathEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aq) #30
          to label %bb.dw unwind label %bb.ar

bb.hr:                                            ; preds = %bb.dw
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as) #30
          to label %.body304 unwind label %bb.ar

.body213.thread:                                  ; preds = %bb.dj, %.body213
  %.pn192.pn677 = phi { ptr, i32 } [ %.pn192.pn, %.body213 ], [ %i.oz, %bb.dj ]
  %.sroa.058.1676 = phi i8 [ %.sroa.058.1, %.body213 ], [ 1, %bb.dj ]
  %.sroa.067.1675 = phi i1 [ %.sroa.067.1, %.body213 ], [ false, %bb.dj ]
  %.sroa.069.1674 = phi i8 [ %.sroa.069.1, %.body213 ], [ 1, %bb.dj ]
  %.sroa.070.1673 = phi i8 [ %.sroa.070.1, %.body213 ], [ 1, %bb.dj ]
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdE10drop_innerCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380 unwind label %bb.ar

.thread592:                                       ; preds = %bb.n, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380
  %.pn192.pn.pn610 = phi { ptr, i32 } [ %.pn192.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380 ], [ %i.fv, %bb.n ]
  %.sroa.067.0604 = phi i1 [ %.sroa.067.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380 ], [ true, %bb.n ]
  %.sroa.069.0602 = phi i8 [ %.sroa.069.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380 ], [ 1, %bb.n ]
  %.sroa.070.0600 = phi i8 [ %.sroa.070.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380 ], [ 1, %bb.n ]
  %i.ur = load ptr, ptr %i.bf, align 8, !alias.scope !437, !noundef !4
  %i.us = icmp eq ptr %i.ur, null
  br i1 %i.us, label %.noexc383, label %bb.hs

bb.hs:                                            ; preds = %.thread592
  invoke void @_RNvXs0_NtCsfxDLtZq386g_6semver10identifierNtB5_10IdentifierNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bf)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsfxDLtZq386g_6semver7VersionECsdcPuHeDsw6v_13project_model.exit.i unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ut = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  invoke void @_RNvXs0_NtCsfxDLtZq386g_6semver10identifierNtB5_10IdentifierNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.uu)
          to label %.body250 unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.uv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsfxDLtZq386g_6semver7VersionECsdcPuHeDsw6v_13project_model.exit.i: ; preds = %bb.hs
  %i.uw = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  invoke void @_RNvXs0_NtCsfxDLtZq386g_6semver10identifierNtB5_10IdentifierNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.uw)
          to label %.noexc383 unwind label %bb.ar

.noexc383:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsfxDLtZq386g_6semver7VersionECsdcPuHeDsw6v_13project_model.exit.i, %.thread592
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #30
          to label %bb.hv unwind label %bb.ar

bb.hv:                                            ; preds = %.noexc383
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #30
          to label %bb.hw unwind label %bb.ar

bb.hw:                                            ; preds = %bb.hv
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bi) #30
          to label %bb.hx unwind label %bb.ar

bb.hx:                                            ; preds = %bb.hw
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj) #30
          to label %bb.hy unwind label %bb.ar

bb.hy:                                            ; preds = %bb.hx
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #30
          to label %bb.ia unwind label %bb.ar

bb.hz:                                            ; preds = %bb.ia
  br i1 %i.fu, label %bb.ib, label %bb.ic

bb.ia:                                            ; preds = %bb.hy
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl) #30
          to label %bb.hz unwind label %bb.ar

bb.ib:                                            ; preds = %bb.hz
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(72) %i.bm) #30
          to label %bb.ic unwind label %bb.ar

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380.thread: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380, %bb.ic
  %i.ux = phi i1 [ true, %bb.ic ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380 ]
  %.pn192.pn.pn611634652 = phi { ptr, i32 } [ %.pn192.pn.pn610, %bb.ic ], [ %.pn192.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380 ] ; 2 uses
  %.sroa.067.0605636650 = phi i1 [ %.sroa.067.0604, %bb.ic ], [ %.sroa.067.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380 ]
  %.sroa.069.0603637648 = phi i8 [ %.sroa.069.0602, %bb.ic ], [ %.sroa.069.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380 ]
  %.sroa.070.0601638646 = phi i8 [ %.sroa.070.0600, %bb.ic ], [ %.sroa.070.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380 ] ; 2 uses
  br i1 %.sroa.067.0605636650, label %bb.ie, label %bb.id

bb.ic:                                            ; preds = %bb.ib, %bb.hz
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bo) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380.thread unwind label %bb.ar

bb.id:                                            ; preds = %bb.ie, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380.thread
  br i1 %i.ux, label %bb.if, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VecB1A_EEECsdcPuHeDsw6v_13project_model.exit

bb.ie:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model.exit380.thread
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp) #30
          to label %bb.id unwind label %bb.ar

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VecB1A_EEECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.if, %bb.id
  %i.uy = trunc nuw i8 %.sroa.069.0603637648 to i1
  br i1 %i.uy, label %bb.ij, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VecB1A_EEECsdcPuHeDsw6v_13project_model.exit.thread

bb.if:                                            ; preds = %bb.id
  invoke void @_RNvXNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringINtNtB8_3vec3VecB14_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VecB1A_EEECsdcPuHeDsw6v_13project_model.exit unwind label %bb.ar

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VecB1A_EEECsdcPuHeDsw6v_13project_model.exit.thread: ; preds = %bb.ep, %bb.ij, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VecB1A_EEECsdcPuHeDsw6v_13project_model.exit
  %.sroa.070.0601638646698703710 = phi i8 [ %.sroa.070.0601638646, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VecB1A_EEECsdcPuHeDsw6v_13project_model.exit ], [ %.sroa.070.0601638646, %bb.ij ], [ 0, %bb.ep ]
  %.pn192.pn.pn611634652696705709 = phi { ptr, i32 } [ %.pn192.pn.pn611634652, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VecB1A_EEECsdcPuHeDsw6v_13project_model.exit ], [ %.pn192.pn.pn611634652, %bb.ij ], [ %i.rl, %bb.ep ] ; 2 uses
  %i.uz = load i64, ptr %i.bs, align 8, !range !7, !alias.scope !438, !noundef !4
  %i.va = icmp eq i64 %i.uz, -1
  br i1 %i.va, label %.noexc389, label %bb.ig

bb.ig:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VecB1A_EEECsdcPuHeDsw6v_13project_model.exit.thread
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsixqsALXRULh_14cargo_metadata6SourceECsdcPuHeDsw6v_13project_model.exit.i386 unwind label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.vb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %.body250 unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.vc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsixqsALXRULh_14cargo_metadata6SourceECsdcPuHeDsw6v_13project_model.exit.i386: ; preds = %bb.ig
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %.noexc389 unwind label %bb.ar

bb.ij:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VecB1A_EEECsdcPuHeDsw6v_13project_model.exit
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsixqsALXRULh_14cargo_metadata6TargetEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.br) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VecB1A_EEECsdcPuHeDsw6v_13project_model.exit.thread unwind label %bb.ar

.thread614:                                       ; preds = %bb.es, %bb.eu, %bb.im, %.noexc389
  %.pn192.pn.pn.pn617 = phi { ptr, i32 } [ %.pn192.pn.pn611634652696705709, %.noexc389 ], [ %.pn192.pn.pn611634652696705709, %bb.im ], [ %i.rs, %bb.eu ], [ %i.rp, %bb.es ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i392 unwind label %bb.ik

bb.ik:                                            ; preds = %.thread614
  %i.vd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %.body250 unwind label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.ve = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
end_hunk_0
