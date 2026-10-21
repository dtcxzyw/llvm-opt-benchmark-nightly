Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.13?download=true
inline.NumInlined: 18194
inline.NumDeleted: 8311
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseeLknQCOKOd_13polars_python:bb.a

bb.l:                                             ; preds = %bb.j
  tail call void @_Py_DecRef(ptr noundef nonnull %i.f) #25, !dbg !6104, !noalias !6056
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i.i.i, !dbg !6105

bb.m:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !6106
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !dbg !6106, !alias.scope !6056, !nonnull !2779, !noundef !2779
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECseeLknQCOKOd_13polars_python(ptr nonnull %.val3.i.i.i.i.i.i.i) #26
          to label %bb.p unwind label %bb.u, !dbg !6106, !noalias !6056

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !6106
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !dbg !6106, !alias.scope !6056, !nonnull !2779, !noundef !2779 ; 2 uses
  %.val.i.i.i.i6.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !dbg !6107, !noalias !6056, !noundef !2779
  %i.aa = icmp sgt i64 %.val.i.i.i.i6.i.i.i.i.i.i.i, 0, !dbg !6108
  br i1 %i.aa, label %bb.o, label %bb.n, !dbg !6109, !prof !2901

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i.i.i
  invoke void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val2.i.i.i.i.i.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i.i.i unwind label %bb.q, !dbg !6110, !noalias !6056

bb.o:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i.i.i
  tail call void @_Py_DecRef(ptr noundef nonnull %.val2.i.i.i.i.i.i.i) #25, !dbg !6111, !noalias !6056
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i.i.i, !dbg !6112

bb.p:                                             ; preds = %bb.q, %bb.m
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.x, %bb.m ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6106
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !dbg !6106, !alias.scope !6056, !noundef !2779
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1W_5types9traceback11PyTracebackEEEECseeLknQCOKOd_13polars_python(ptr %.val5.i.i.i.i.i.i.i) #26
          to label %common.resume unwind label %bb.u, !dbg !6106, !noalias !6056

bb.q:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6106
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !dbg !6106, !alias.scope !6056, !noundef !2779 ; 3 uses
  %i.ae = icmp eq ptr %.val4.i.i.i.i.i.i.i, null, !dbg !6113
  br i1 %i.ae, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.r, !dbg !6113

bb.r:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !dbg !6114, !noalias !6056, !noundef !2779
  %i.af = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !6115
  br i1 %i.af, label %bb.t, label %bb.s, !dbg !6116, !prof !2901

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val4.i.i.i.i.i.i.i), !dbg !6117, !noalias !6056
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6117

bb.t:                                             ; preds = %bb.r
  tail call void @_Py_DecRef(ptr noundef nonnull %.val4.i.i.i.i.i.i.i) #25, !dbg !6118, !noalias !6056
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6119

bb.u:                                             ; preds = %bb.p, %bb.m
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6106, !noalias !6056
  unreachable, !dbg !6106

bb.v:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !6120, !range !2880, !alias.scope !6057, !noundef !2779
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808, !dbg !6120
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.w, !dbg !6120

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.x, !dbg !6121

bb.x:                                             ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %common.resume unwind label %bb.y, !dbg !6122

bb.y:                                             ; preds = %bb.x
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6121
  unreachable, !dbg !6121

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.w
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah), !dbg !6123
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6120

bb.z:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !dbg !6124, !range !2880, !alias.scope !6058, !noundef !2779
  %i.ao = icmp eq i64 %i.an, -9223372036854775808, !dbg !6124
  br i1 %i.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.aa, !dbg !6124

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i3 unwind label %bb.ab, !dbg !6125

bb.ab:                                            ; preds = %bb.aa
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %common.resume unwind label %bb.ac, !dbg !6126

bb.ac:                                            ; preds = %bb.ab
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6125
  unreachable, !dbg !6125

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i3: ; preds = %bb.aa
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am), !dbg !6127
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6124

bb.ad:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.as = load i64, ptr %i.ar, align 8, !dbg !6128, !range !2880, !alias.scope !6059, !noundef !2779
  %i.at = icmp eq i64 %i.as, -9223372036854775808, !dbg !6128
  br i1 %i.at, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.ae, !dbg !6128

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i6 unwind label %bb.af, !dbg !6129

bb.af:                                            ; preds = %bb.ae
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.ag, !dbg !6130

bb.ag:                                            ; preds = %bb.af
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6129
  unreachable, !dbg !6129

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i6: ; preds = %bb.ae
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar), !dbg !6131
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6128

bb.ah:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !6132, !range !2880, !alias.scope !6060, !noundef !2779
  %i.ay = icmp eq i64 %i.ax, -9223372036854775808, !dbg !6132
  br i1 %i.ay, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.ai, !dbg !6132

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i9 unwind label %bb.aj, !dbg !6133

bb.aj:                                            ; preds = %bb.ai
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %common.resume unwind label %bb.ak, !dbg !6134

bb.ak:                                            ; preds = %bb.aj
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6133
  unreachable, !dbg !6133

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i9: ; preds = %bb.ai
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw), !dbg !6135
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6132

bb.al:                                            ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !6136, !range !2880, !alias.scope !6061, !noundef !2779
  %i.bd = icmp eq i64 %i.bc, -9223372036854775808, !dbg !6136
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.am, !dbg !6136

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i12 unwind label %bb.an, !dbg !6137

bb.an:                                            ; preds = %bb.am
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %common.resume unwind label %bb.ao, !dbg !6138

bb.ao:                                            ; preds = %bb.an
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6137
  unreachable, !dbg !6137

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i12: ; preds = %bb.am
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb), !dbg !6139
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6136

bb.ap:                                            ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6062), !dbg !6081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6063), !dbg !6140
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !6141, !alias.scope !6064, !nonnull !2779, !noundef !2779
  %1 = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !dbg !6142, !noalias !6064
  %i.bi = icmp eq i64 %1, 1, !dbg !6143
  br i1 %i.bi, label %bb.aq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECseeLknQCOKOd_13polars_python.exit, !dbg !6143

bb.aq:                                            ; preds = %bb.ap
  fence acquire, !dbg !6144
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE9drop_slowCsacIJNrSLJky_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bg) #23
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECseeLknQCOKOd_13polars_python.exit unwind label %bb.cd, !dbg !6145

bb.ar:                                            ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !6146, !range !2880, !alias.scope !6067, !noundef !2779
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808, !dbg !6146
  br i1 %i.bl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.as, !dbg !6146

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i15 unwind label %bb.at, !dbg !6147

bb.at:                                            ; preds = %bb.as
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %common.resume unwind label %bb.au, !dbg !6148

bb.au:                                            ; preds = %bb.at
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6147
  unreachable, !dbg !6147

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i15: ; preds = %bb.as
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj), !dbg !6149
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6146

bb.av:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !6150, !range !2880, !alias.scope !6068, !noundef !2779
  %i.bq = icmp eq i64 %i.bp, -9223372036854775808, !dbg !6150
  br i1 %i.bq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.aw, !dbg !6150

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i18 unwind label %bb.ax, !dbg !6151

bb.ax:                                            ; preds = %bb.aw
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %common.resume unwind label %bb.ay, !dbg !6152

bb.ay:                                            ; preds = %bb.ax
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6151
  unreachable, !dbg !6151

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i18: ; preds = %bb.aw
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo), !dbg !6153
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6150

bb.az:                                            ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !6154, !range !2880, !alias.scope !6069, !noundef !2779
  %i.bv = icmp eq i64 %i.bu, -9223372036854775808, !dbg !6154
  br i1 %i.bv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.ba, !dbg !6154

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i21 unwind label %bb.bb, !dbg !6155

bb.bb:                                            ; preds = %bb.ba
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %common.resume unwind label %bb.bc, !dbg !6156

bb.bc:                                            ; preds = %bb.bb
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6155
  unreachable, !dbg !6155

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i21: ; preds = %bb.ba
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt), !dbg !6157
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6154

bb.bd:                                            ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.bz = load i64, ptr %i.by, align 8, !dbg !6158, !range !2880, !alias.scope !6070, !noundef !2779
  %i.ca = icmp eq i64 %i.bz, -9223372036854775808, !dbg !6158
  br i1 %i.ca, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.be, !dbg !6158

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i24 unwind label %bb.bf, !dbg !6159

bb.bf:                                            ; preds = %bb.be
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %common.resume unwind label %bb.bg, !dbg !6160

bb.bg:                                            ; preds = %bb.bf
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6159
  unreachable, !dbg !6159

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i24: ; preds = %bb.be
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by), !dbg !6161
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6158

bb.bh:                                            ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !6162, !range !2880, !alias.scope !6071, !noundef !2779
  %i.cf = icmp eq i64 %i.ce, -9223372036854775808, !dbg !6162
  br i1 %i.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.bi, !dbg !6162

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i27 unwind label %bb.bj, !dbg !6163

bb.bj:                                            ; preds = %bb.bi
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %common.resume unwind label %bb.bk, !dbg !6164

bb.bk:                                            ; preds = %bb.bj
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6163
  unreachable, !dbg !6163

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i27: ; preds = %bb.bi
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd), !dbg !6165
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6162

bb.bl:                                            ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !6166, !range !2880, !alias.scope !6072, !noundef !2779
  %i.ck = icmp eq i64 %i.cj, -9223372036854775808, !dbg !6166
  br i1 %i.ck, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.bm, !dbg !6166

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i30 unwind label %bb.bn, !dbg !6167

bb.bn:                                            ; preds = %bb.bm
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %common.resume unwind label %bb.bo, !dbg !6168

bb.bo:                                            ; preds = %bb.bn
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6167
  unreachable, !dbg !6167

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i30: ; preds = %bb.bm
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci), !dbg !6169
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6166

bb.bp:                                            ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.co = load i64, ptr %i.cn, align 8, !dbg !6170, !range !2880, !alias.scope !6073, !noundef !2779
  %i.cp = icmp eq i64 %i.co, -9223372036854775808, !dbg !6170
  br i1 %i.cp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.bq, !dbg !6170

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i33 unwind label %bb.br, !dbg !6171

bb.br:                                            ; preds = %bb.bq
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %common.resume unwind label %bb.bs, !dbg !6172

bb.bs:                                            ; preds = %bb.br
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !6171
  unreachable, !dbg !6171

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i33: ; preds = %bb.bq
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn), !dbg !6173
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, !dbg !6170

bb.bt:                                            ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6081 ; 4 uses
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !6174, !range !2880, !alias.scope !6074, !noundef !2779
  %i.cu = icmp eq i64 %i.ct, -9223372036854775808, !dbg !6174
  br i1 %i.cu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECseeLknQCOKOd_13polars_python.exit, label %bb.bu, !dbg !6174

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i36 unwind label %bb.bv, !dbg !6175

end_hunk_0
