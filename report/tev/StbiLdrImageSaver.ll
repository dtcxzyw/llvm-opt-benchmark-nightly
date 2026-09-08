Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/StbiLdrImageSaver?download=true
inline.NumInlined: 3759
inline.NumDeleted: 1104
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK3tev17StbiLdrImageSaver4saveERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEERKNS1_4__fs10filesystem4pathENS1_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEi:.from.
  store ptr %2, ptr %i.dx, align 8, !tbaa !56
  %i.dy = invoke fastcc noundef range(i32 0, 2) i32 @_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv(ptr noundef %.reload.addr156, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %.sroa.8.0.extract.trunc, i32 noundef %7, ptr noundef %4)
          to label %stbi_write_jpg_to_func.exit unwind label %.from.132 ; 0 uses

.noexc:                                           ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit44, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit165
  %i.dz = call ptr @__cxa_allocate_exception(i64 16) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store ptr %3, ptr %.reload.addr158, align 16, !tbaa !59
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__14__fs10filesystem4pathEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ea, align 8, !tbaa !59
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %12, ptr nonnull @.str.11, i64 28, i64 15, ptr nonnull %.reload.addr158)
          to label %bb.s unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit61.thread

bb.s:                                             ; preds = %.noexc
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageSaveErrorE, i64 16), ptr %i.dz, align 8, !tbaa !72
  invoke void @__cxa_throw(ptr nonnull %i.dz, ptr nonnull @_ZTIN3tev14ImageSaveErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #39
          to label %bb.af unwind label %.thread

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit61.thread: ; preds = %.noexc
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.130.sink.split

bb.u:                                             ; preds = %bb.s
  %i.ec = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ed = load i8, ptr %12, align 8
  %i.ee = trunc i8 %i.ed to i1
  br i1 %i.ee, label %.split, label %.from.130.sink.split

.thread:                                          ; preds = %bb.t
  %i.ef = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.eg = load i8, ptr %12, align 8
  %i.eh = trunc i8 %i.eg to i1
  br i1 %i.eh, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit61127

.split:                                           ; preds = %.thread, %bb.u
  %i.ei = phi { ptr, i32 } [ %i.ef, %.thread ], [ %i.ec, %bb.u ] ; 2 uses
  %.0168 = phi i1 [ false, %.thread ], [ true, %bb.u ]
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !59
  %i.el = load i64, ptr %12, align 8
  %i.em = and i64 %i.el, -2
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.em) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %.0168, label %.from.130, label %.from..split125

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit61127: ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %.from..split125

.from.130.sink.split:                             ; preds = %bb.u, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit61.thread
  %.pn2984.ph = phi { ptr, i32 } [ %i.eb, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit61.thread ], [ %i.ec, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %.from.130

.from.130:                                        ; preds = %.from.130.sink.split, %.split
  %.pn2984 = phi { ptr, i32 } [ %i.ei, %.split ], [ %.pn2984.ph, %.from.130.sink.split ]
  call void @__cxa_free_exception(ptr %i.dz) #33
  br label %.from..split125

stbi_write_jpg_to_func.exit:                      ; preds = %bb.r, %.noexc53, %bb.o, %bb.m, %stbi_write_bmp_to_func.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr161)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.v

bb.v:                                             ; preds = %stbi_write_jpg_to_func.exit
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #38
  unreachable

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %stbi_write_jpg_to_func.exit
  %i.ep = load i8, ptr %.reload.addr155, align 8
  %i.eq = trunc i8 %i.ep to i1
  br i1 %i.eq, label %bb.w, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62

bb.w:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !59
  %i.et = load i64, ptr %.reload.addr155, align 8
  %i.eu = and i64 %i.et, -2
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.eu) #40
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62

.from..split125:                                  ; preds = %.split, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit61127, %.from.130, %.from.132
  %.pn30 = phi { ptr, i32 } [ %i.cw, %.from.132 ], [ %.pn2984, %.from.130 ], [ %i.ef, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit61127 ], [ %i.ei, %.split ] ; 2 uses
  %i.ev = load i8, ptr %.reload.addr155, align 8
  %i.ew = trunc i8 %i.ev to i1
  br i1 %i.ew, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63.from., label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63.from.: ; preds = %.from..split125
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !59
  %i.ez = load i64, ptr %.reload.addr155, align 8
  %i.fa = and i64 %i.ez, -2
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fa) #40
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63: ; preds = %.from..split125, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63.from., %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63.from._ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit47
  %.pn30.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63.from._ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit47 ], [ %.pn30, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63.from. ], [ %.pn30, %.from..split125 ]
  %.4 = extractvalue { ptr, i32 } %.pn30.pn, 0
  %i.fb = call ptr @__cxa_begin_catch(ptr %.4) #33 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr161)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62 unwind label %.from.145

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62: ; preds = %bb.w, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit, %bb.x
  %i.fc = load ptr, ptr %i.d, align 8, !tbaa !351
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = atomicrmw add ptr %i.fd, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 1
  br i1 %i.ff, label %bb.y, label %_ZN3tev5Latch9countDownEv.exit.i

bb.y:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.y
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !78 ; 7 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !89
  %i.fj = and i32 %i.fi, 8
  %.not.i.i.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i.i.i, label %bb.z, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.z:                                             ; preds = %.noexc.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !90 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !91 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.fl, %i.fn
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.z
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 33
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.fl, %.from..lr.ph.i.i.i.i.i ], [ %i.gd, %.noexc2.i.i ] ; 2 uses
  %i.fs = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  %i.ft = load i8, ptr %i.fo, align 8             ; 2 uses
  %i.fu = trunc i8 %i.ft to i1                    ; 2 uses
  %i.fv = load ptr, ptr %i.fp, align 8
  %i.fw = select i1 %i.fu, ptr %i.fv, ptr %i.fq
  %i.fx = load i64, ptr %i.fr, align 8
  %i.fy = lshr i8 %i.ft, 1
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = select i1 %i.fu, i64 %i.fx, i64 %i.fz
  %i.gb = load ptr, ptr %i.fs, align 8, !tbaa !72
  %i.gc = load ptr, ptr %i.gb, align 8
  invoke void %i.gc(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr %i.fw, i64 %i.ga, i32 noundef 8, ptr nonnull @.str.16, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !2

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gd, %i.fn
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

.from..loopexit.split-lp.i.i:                     ; preds = %bb.y
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

bb.aa:                                            ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ge = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.ge) #38
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62
  %i.gf = icmp slt i32 %i.fe, 2
  br i1 %i.gf, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.z, %_ZN3tev5Latch9countDownEv.exit.i
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !351
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !67 ; 2 uses
  %i.gi = inttoptr i64 %i.gh to ptr               ; 3 uses
  store ptr %i.gi, ptr %.reload.addr155, align 8
  %.not.i = icmp eq i64 %i.gh, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr162 = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  store i1 false, ptr %index.addr162, align 4
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr nonnull %i.gi)
  br label %AfterCoroEnd

bb.ab:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.152 unwind label %bb.ae

.from.145:                                        ; preds = %bb.x
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.152

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.gm = load ptr, ptr %i.h, align 8, !tbaa !76  ; 5 uses
  %.not.i.i64 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i64, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = atomicrmw add ptr %i.gn, i64 -1 acq_rel, align 8
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.ad, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.gq = load ptr, ptr %i.gm, align 8, !tbaa !72
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(24) %i.gm) #33, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gm) #33
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ac, %bb.ad
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr161) #33
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #33
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.152:                                   ; preds = %bb.ab, %.from.145
  %.pn31 = phi { ptr, i32 } [ %i.gl, %.from.145 ], [ %i.gk, %bb.ab ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #33
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr161) #33
  br label %.body

.body:                                            ; preds = %.body.from.152, %.body.from.149, %.body.from.
  %.merged33 = phi { ptr, i32 } [ %.pn31, %.body.from.152 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.149 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #33
  resume { ptr, i32 } %.merged33

bb.ae:                                            ; preds = %bb.ab
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #38
  unreachable

bb.af:                                            ; preds = %bb.t
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3tev7toLowerENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8, ptr, i64) local_unnamed_addr #10

declare void @_ZN3tev8toStringERKNSt3__14__fs10filesystem4pathE(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %1) #33
  invoke void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #33
  resume { ptr, i32 } %i.a
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #33 ; 0 uses
  tail call void @_ZSt9terminatev() #38
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !359
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !89
  %i.e = and i32 %i.d, 8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91   ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.noexc1, %.lr.ph.i.i.i
  %.sroa.09.013.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.y, %.noexc1 ] ; 2 uses
  %i.n = load ptr, ptr %.sroa.09.013.i.i.i, align 8, !tbaa !94 ; 2 uses
  %i.o = load i8, ptr %i.j, align 8               ; 2 uses
  %i.p = trunc i8 %i.o to i1                      ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = select i1 %i.p, ptr %i.q, ptr %i.l
  %i.s = load i64, ptr %i.m, align 8
  %i.t = lshr i8 %i.o, 1
  %i.u = zext nneg i8 %i.t to i64
  %i.v = select i1 %i.p, i64 %i.s, i64 %i.u
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr %i.r, i64 %i.v, i32 noundef 8, ptr nonnull @.str.88, i64 39)
          to label %.noexc1 unwind label %.loopexit, !inline_history !2

.noexc1:                                          ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.d

_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit: ; preds = %.noexc1, %bb.c, %.noexc, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76  ; 5 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 acq_rel, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #33, !inline_history !4
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #33
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, %bb.e, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #33
  ret void

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
end_hunk_0
