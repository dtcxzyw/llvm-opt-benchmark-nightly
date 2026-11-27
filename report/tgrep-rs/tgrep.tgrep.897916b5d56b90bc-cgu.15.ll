Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.15?download=true
inline.NumInlined: 691
inline.NumDeleted: 235
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter18write_context_line:bb.a
  %.sroa.511.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.lz, ptr %.sroa.511.0..sroa_idx12, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010)
  br label %bb.ek

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit202: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.p

bb.es:                                            ; preds = %bb.cj, %bb.bm
  unreachable

.body.thread:                                     ; preds = %bb.dq, %.body.thread240
  %eh.lpad-body239 = phi { ptr, i32 } [ %i.kb, %.body.thread240 ], [ %i.kh, %bb.dq ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae) #31
          to label %bb.bg unwind label %bb.an

.body125.thread:                                  ; preds = %bb.df, %.body125.thread235
  %eh.lpad-body126234 = phi { ptr, i32 } [ %i.jj, %.body125.thread235 ], [ %i.jo, %bb.df ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #31
          to label %bb.bg unwind label %bb.an

.body128.thread:                                  ; preds = %bb.co, %.body128.thread227
  %eh.lpad-body129226 = phi { ptr, i32 } [ %i.il, %.body128.thread227 ], [ %i.iq, %bb.co ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap) #31
          to label %bb.cu unwind label %bb.an

bb.et:                                            ; preds = %.body181
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at) #31
          to label %bb.bg unwind label %bb.an

.body131.thread:                                  ; preds = %bb.bs, %.body131.thread219
  %eh.lpad-body132218 = phi { ptr, i32 } [ %i.he, %.body131.thread219 ], [ %i.hj, %bb.bs ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay) #31
          to label %bb.by unwind label %bb.an

bb.eu:                                            ; preds = %.body168
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc) #31
          to label %bb.bg unwind label %bb.an

bb.ev:                                            ; preds = %bb.bg
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #31
          to label %bb.ar unwind label %bb.an

.body134.thread:                                  ; preds = %bb.ax, %.body134.thread214
  %eh.lpad-body135213 = phi { ptr, i32 } [ %i.ft, %.body134.thread214 ], [ %i.fy, %bb.ax ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk) #31
          to label %bb.ar unwind label %bb.an
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter23write_context_separator(ptr noalias nofree noundef align 8 dereferenceable(464) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.d = load i8, ptr %i.c, align 1, !range !15, !noundef !5
  %i.e = icmp ne i8 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.g = load i8, ptr %i.f, align 4, !range !9
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !10, !noundef !5
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = load i64, ptr %i.k, align 8, !range !10, !noundef !5
  %.not17 = icmp eq i64 %i.l, -1
  br i1 %.not17, label %.thread31, label %bb.e

.sink.split:                                      ; preds = %bb.m, %.thread31
  %.sroa.0.0.ph = phi ptr [ null, %.thread31 ], [ %i.ac, %bb.m ]
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.sroa.0.0.ph, %.sink.split ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  %i.q = icmp eq i64 %i.p, %2
  br i1 %i.q, label %bb.h, label %.thread26

.thread31:                                        ; preds = %bb.l, %.thread26, %bb.i, %bb.c
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.sink.split unwind label %bb.f

bb.f:                                             ; preds = %.thread31
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.r, %bb.f ], [ %i.ad, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.u, ptr nonnull %1, i64 %2)
  %i.v = icmp eq i32 %bcmp, 0
  br i1 %i.v, label %bb.i, label %.thread26

.thread26:                                        ; preds = %bb.h, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 457
  %i.x = load i8, ptr %i.w, align 1, !range !9, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.thread31, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add i64 %i.n, 1
  %i.aa = icmp ugt i64 %3, %i.z
  br i1 %i.aa, label %bb.j, label %.thread31

bb.j:                                             ; preds = %bb.i, %.thread26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ac = invoke noundef ptr @_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull @69, ptr noundef nonnull %i.a)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #31
          to label %common.resume unwind label %bb.p

bb.l:                                             ; preds = %bb.j
  %.not20 = icmp eq ptr %i.ac, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not20, label %.thread31, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.sink.split unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.p:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([464 x i8]) align 8 captures(none) dereferenceable(464) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [160 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = invoke noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout()
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.a
  store ptr %i.f, ptr %i.a, align 8
  %i.g = invoke noundef zeroext i1 @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys2io11is_terminal6isatty11is_terminalNtNtNtBa_2io5stdio6StdoutECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.t       ; 2 uses

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 153
  %i.i = load i8, ptr %i.h, align 1, !range !21, !noundef !5
  switch i8 %i.i, label %default.unreachable26 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.d
  ]

default.unreachable26:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %2 = zext i1 %i.g to i16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.sroa.0.0 = phi i16 [ %2, %bb.c ], [ 0, %bb.d ], [ 1, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 154
  %i.k = load i8, ptr %i.j, align 2, !range !21, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.k, 2                      ; 2 uses
  %brmerge.not = and i1 %i.g, %.not
  %.mux = select i1 %.not, i8 0, i8 %i.k
  br i1 %brmerge.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 155
  %i.m = load i8, ptr %i.l, align 1, !range !15, !noundef !5 ; 2 uses
  %.not17 = icmp eq i8 %i.m, 1
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 3
  %i.o = zext i1 %i.n to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.01.0 = phi i8 [ %.mux, %bb.e ], [ %i.o, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.p = invoke noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout()
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.r, %bb.j
  %.pn = phi { ptr, i32 } [ %i.s, %bb.r ], [ %i.q, %bb.j ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6output12OutputConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.e) #31
          to label %bb.s unwind label %bb.p

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutE13with_capacityCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, i64 noundef 8192, ptr noundef nonnull align 8 %i.p)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -1, ptr %i.b, align 8
  %i.r = invoke { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant3now()
          to label %bb.n unwind label %bb.m       ; 2 uses

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #31
          to label %bb.q unwind label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.t = invoke { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant3now()
          to label %bb.o unwind label %bb.m       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.u = extractvalue { i64, i32 } %i.r, 1
  %i.v = extractvalue { i64, i32 } %i.r, 0
  %i.w = extractvalue { i64, i32 } %i.t, 0
  %i.x = extractvalue { i64, i32 } %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 456
  %3 = zext nneg i8 %.sroa.01.0 to i16
  %4 = shl nuw nsw i16 %3, 8
  %5 = or disjoint i16 %4, %.sroa.0.0
  store i16 %5, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.v, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %i.u, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %i.w, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %i.x, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.ai, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ag, i8 0, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.p:                                             ; preds = %bb.t, %bb.r, %bb.q, %bb.m, %bb.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.q:                                             ; preds = %bb.m
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #31
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #31
          to label %bb.i unwind label %bb.p

bb.s:                                             ; preds = %bb.i, %bb.t
  %.pn.pn24 = phi { ptr, i32 } [ %i.ak, %bb.t ], [ %.pn, %bb.i ]
  resume { ptr, i32 } %.pn.pn24

bb.t:                                             ; preds = %.noexc, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6output12OutputConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %1) #31
          to label %bb.s unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter5flush(ptr noalias nofree noundef align 8 dereferenceable(464) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.b = load i8, ptr %i.a, align 1, !range !15, !noundef !5
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = tail call noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef ptr @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter16finish_json_file(ptr noalias nofree noundef align 8 dereferenceable(464) %0) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter6finish(ptr noalias nofree noundef align 8 dereferenceable(464) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.ae = load i8, ptr %i.ad, align 1, !range !15, !noundef !5
  %i.af = icmp eq i8 %i.ae, 2
  br i1 %i.af, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.be, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ah = call noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag)
  br label %bb.bf

bb.c:                                             ; preds = %bb.a
  %i.ai = tail call fastcc noundef ptr @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter16finish_json_file(ptr noalias nofree noundef align 8 dereferenceable(464) %0) ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.d, label %bb.bf

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ak = tail call { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj) ; 2 uses
  %i.al = extractvalue { i64, i32 } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { i64, i32 } %i.ak, 1      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ao = load i64, ptr %i.an, align 8, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store i64 %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.ar, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr null, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.f unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit50

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit50, %.body46.thread, %bb.bh
  %.pn40 = phi { ptr, i32 } [ %eh.lpad-body4759, %.body46.thread ], [ %.pn37, %bb.bh ], [ %i.dk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit50 ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.bg

bb.f:                                             ; preds = %bb.d
  %i.at = load i64, ptr %i.g, align 8, !range !8, !noundef !5
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !22, !noundef !5 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.au, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %i.ax, align 8
  br label %.invoke76

.invoke76:                                        ; preds = %bb.r, %bb.g
  %i.az = phi i64 [ %i.aw, %bb.g ], [ %i.bp, %bb.r ]
  %i.ba = phi i64 [ %i.ay, %bb.g ], [ %i.br, %bb.r ]
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.az, i64 %i.ba) #33
          to label %.cont77 unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit50

.cont77:                                          ; preds = %.invoke76
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.aw, 3
  tail call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i32 1701869940, ptr %i.bb, align 1
  store i64 %i.aw, ptr %i.z, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.bb, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 4, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @104)
          to label %bb.i unwind label %.body46.thread60

.body46.thread60:                                 ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body46.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.be = load i8, ptr %i.x, align 8, !range !23, !alias.scope !980, !noundef !5
  %i.bf = icmp eq i8 %i.be, -1
  br i1 %i.bf, label %bb.j, label %bb.n, !prof !6

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !981
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !980, !nonnull !5, !align !12, !noundef !5
  store ptr %i.bh, ptr %i.a, align 8, !noalias !981
end_hunk_0
