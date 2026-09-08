Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Ipc?download=true
inline.NumInlined: 7176
inline.NumDeleted: 2939
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNK3tev9IpcPacket22interpretAsUpdateImageEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.bs:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %.body89

.loopexit:                                        ; preds = %bb.br
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %bb.bp, %_ZN3tev4TaskIvE12await_resumeEv.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #32
  br label %.body89

.body89:                                          ; preds = %bb.bs, %bb.bn, %bb.bt
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.bt ], [ %i.kf, %bb.bs ], [ %i.ja, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %.body

.body:                                            ; preds = %.loopexit106, %.loopexit.split-lp107, %bb.h, %bb.at, %bb.be, %bb.k, %bb.ad, %bb.aj, %bb.am, %bb.ag, %bb.p, %bb.d, %bb.au, %bb.as, %bb.aq, %.body89, %bb.bi, %bb.bh, %bb.g
  %.pn37.pn = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.dv, %bb.am ], [ %i.y, %bb.h ], [ %i.fk, %bb.at ], [ %i.ic, %bb.be ], [ %i.fd, %bb.as ], [ %i.r, %bb.d ], [ %i.ac, %bb.k ], [ %i.ap, %bb.p ], [ %i.cz, %bb.ad ], [ %i.dh, %bb.ag ], [ %i.do, %bb.aj ], [ %i.is, %bb.bi ], [ %i.eo, %bb.aq ], [ %i.fl, %bb.au ], [ %.pn, %.body89 ], [ %i.ir, %bb.bh ], [ %lpad.loopexit108, %.loopexit106 ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @_ZN3tev20IpcPacketUpdateImageD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #32
  resume { ptr, i32 } %.pn37.pn

bb.bu:                                            ; preds = %bb.bg
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly byval(%class.anon) align 8 captures(none) %5, i32 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 16 uses
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !547
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !550
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !149, !noalias !550
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !550
  store i32 2, ptr %i.g, align 8, !tbaa !151, !noalias !550
  store ptr %i.f, ptr %i.d, align 8, !tbaa !154, !alias.scope !551
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !155, !alias.scope !551
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !552
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !552

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !156, !alias.scope !552
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !159, !noalias !552
  store ptr %i.j, ptr %i.i, align 8, !tbaa !159, !alias.scope !552
  store ptr null, ptr %7, align 8, !tbaa !159, !noalias !552
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !155, !noalias !552 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !156, !noalias !552
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !156, !alias.scope !552
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !552 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !552
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32, !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !552
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EES9_S4_S4_mSA_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nonnull %.reload.addr76, i32 noundef %6)
          to label %bb.f unwind label %.from.62

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !154
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !134 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !141
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !142 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ag, %.from..lr.ph.i.i.i.i.i ], [ %i.ay, %.noexc2.i.i ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.az = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.az) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i1 false, ptr %index.addr79, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.62:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !132 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.60, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !132
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.60

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #37
  unreachable

.from.60:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %bb.o

bb.o:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.60 ], [ %i.bb, %.from.62 ]
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.012) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !134 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !141
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i28, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !142 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i29 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not12.i.i.i.i.i29, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i30

.from..lr.ph.i.i.i.i.i30:                         ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  br label %.from..noexc2.i.i34

.from..noexc2.i.i34:                              ; preds = %.noexc2.i.i34, %.from..lr.ph.i.i.i.i.i30
  %.sroa.09.013.i.i.i.i.i31 = phi ptr [ %i.bs, %.from..lr.ph.i.i.i.i.i30 ], [ %i.ck, %.noexc2.i.i34 ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !147 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !149
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i34 unwind label %.from..loopexit.i.i32, !inline_history !0

.noexc2.i.i34:                                    ; preds = %.from..noexc2.i.i34
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i31, i64 16 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.ck, %i.bu
  br i1 %.not.i.i.i.i.i35, label %_ZN3tev5Latch9countDownEv.exit.i23, label %.from..noexc2.i.i34

.from..loopexit.i.i32:                            ; preds = %.from..noexc2.i.i34
  %lpad.loopexit.i.i33 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i24:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i24, %.from..loopexit.i.i32
  %lpad.phi.i.i26 = phi { ptr, i32 } [ %lpad.loopexit.i.i33, %.from..loopexit.i.i32 ], [ %lpad.loopexit.split-lp.i.i25, %.from..loopexit.split-lp.i.i24 ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi.i.i26, 0
  call void @__clang_call_terminate(ptr %i.cl) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i27, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !156 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr, align 8
  %.not.i36 = icmp eq i64 %i.co, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend53

AfterCoroSuspend53:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i1 true, ptr %index.addr80, align 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr nonnull %i.cp)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.74 unwind label %bb.w

.from.70:                                         ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.74

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !155 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !149
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend53, %AfterCoroSave
  ret void

.body.from.74:                                    ; preds = %bb.t, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.cs, %.from.70 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr78) #32
  br label %.body

.body:                                            ; preds = %.body.from.74, %.body.from.72, %.body.from.
  %.merged19 = phi { ptr, i32 } [ %.pn17, %.body.from.74 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.72 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #32
  resume { ptr, i32 } %.merged19

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !132
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134  ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !141
  %i.e = and i32 %i.d, 8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !143  ; 2 uses
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
  %i.n = load ptr, ptr %.sroa.09.013.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.o = load i8, ptr %i.j, align 8               ; 2 uses
  %i.p = trunc i8 %i.o to i1                      ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = select i1 %i.p, ptr %i.q, ptr %i.l
  %i.s = load i64, ptr %i.m, align 8
  %i.t = lshr i8 %i.o, 1
  %i.u = zext nneg i8 %i.t to i64
  %i.v = select i1 %i.p, i64 %i.s, i64 %i.u
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !149
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr %i.r, i64 %i.v, i32 noundef 8, ptr nonnull @.str.143, i64 39)
          to label %.noexc1 unwind label %.loopexit, !inline_history !0

.noexc1:                                          ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.d

_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit: ; preds = %.noexc1, %bb.c, %.noexc, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !155 ; 5 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 acq_rel, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !149
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #32, !inline_history !3
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #32
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, %bb.e, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #32
  ret void

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ai = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev20IpcPacketUpdateImageD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIfNS1_IfEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.e, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIfNS1_IfEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103  ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIfNS1_IfEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !104
  %i.h = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.l) #34
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIfNS1_IfEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIfNS1_IfEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIfNS1_IfEEEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.a, align 8, !tbaa !124
  br label %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.b
  %i.m = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.b, %bb.b ] ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !123
end_hunk_0
begin_hunk_1_@"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EES9_S4_S4_mSA_i":.from.
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
          to label %bb.ac unwind label %.thread185

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.138.sink.split

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.av = load i8, ptr %8, align 8
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %.split, label %.from.138.sink.split

.thread185:                                       ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ay = load i8, ptr %8, align 8
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135

.split:                                           ; preds = %.thread185, %bb.i
  %i.ba = phi { ptr, i32 } [ %i.ax, %.thread185 ], [ %i.au, %bb.i ] ; 2 uses
  %.0187 = phi i1 [ false, %.thread185 ], [ true, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67
  %i.bd = load i64, ptr %8, align 8
  %i.be = and i64 %i.bd, -2
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br i1 %.0187, label %.from.138, label %.from.157

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135: ; preds = %.thread185
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.from.157

.from.138.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn4284.ph = phi { ptr, i32 } [ %i.at, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.au, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.from.138

.from.138:                                        ; preds = %.from.138.sink.split, %.split
  %.pn4284 = phi { ptr, i32 } [ %i.ba, %.split ], [ %.pn4284.ph, %.from.138.sink.split ]
  call void @__cxa_free_exception(ptr %i.ap) #32
  br label %.from.157

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.bf = phi i64 [ %i.ao, %bb.f ], [ %i.ai, %.lr.ph.preheader ]
  %i.bg = phi i64 [ %i.am, %bb.f ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.bh = phi i64 [ %i.al, %bb.f ], [ 0, %.lr.ph.preheader ]
  %i.bi = add i64 %i.bf, %2
  %i.bj = add i64 %i.bh, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store i64 %i.bj, ptr %10, align 8, !tbaa !395
  store i64 %i.bi, ptr %i.ac, align 8, !tbaa !396
  store ptr %.reload.addr180, ptr %i.ad, align 8, !tbaa !156
  invoke fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESA_S5_S5_mSB_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %6)
          to label %bb.j unwind label %.from.133

bb.j:                                             ; preds = %.lr.ph
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !401 ; 6 uses
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !402
  %i.bm = icmp ult ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from., label %bb.k

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  %i.bo = load i64, ptr %9, align 8, !tbaa !156
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !156
  %i.bp = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !156
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !156
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.ah, align 8, !tbaa !403
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !403
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !156
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  br label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.bt = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr179, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit unwind label %.from.130

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit: ; preds = %bb.k, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.
  %.0.i = phi ptr [ %i.bs, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from. ], [ %i.bt, %bb.k ]
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !401
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %exitcond.not = icmp eq i64 %i.bg, %.sroa.speculated.i
  br i1 %exitcond.not, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge, label %bb.f, !llvm.loop !1430

.from.133:                                        ; preds = %.lr.ph
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.142

.from.130:                                        ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  br label %.from.142

.from.142:                                        ; preds = %.from.133, %.from.130
  %.pn43 = phi { ptr, i32 } [ %i.bv, %.from.130 ], [ %i.bu, %.from.133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.from.157

.from.157:                                        ; preds = %.from.142, %.from.138, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135, %.split
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.from.142 ], [ %.pn4284, %.from.138 ], [ %i.ax, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135 ], [ %i.ba, %.split ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #32
  br label %.from.159

bb.l:                                             ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !154
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load atomic i32, ptr %i.by acquire, align 4
  %i.ca = icmp slt i32 %i.bz, 2
  br i1 %i.ca, label %bb.m, label %AfterCoroSave

bb.m:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !154
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4
  %i.ce = icmp slt i32 %i.cd, 1
  br i1 %i.ce, label %bb.n, label %.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !134 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !141
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !142 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ck, %.from..lr.ph.i.i.i.i.i ], [ %i.dc, %.noexc2.i.i ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.cs = load i8, ptr %i.cn, align 8             ; 2 uses
  %i.ct = trunc i8 %i.cs to i1                    ; 2 uses
  %i.cu = load ptr, ptr %i.co, align 8
  %i.cv = select i1 %i.ct, ptr %i.cu, ptr %i.cp
  %i.cw = load i64, ptr %i.cq, align 8
  %i.cx = lshr i8 %i.cs, 1
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = select i1 %i.ct, i64 %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !149
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, %i.cm
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

.from..loopexit.split-lp.i.i:                     ; preds = %bb.n
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.p:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.dd = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.dd) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  %index.addr183 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i1 false, ptr %index.addr183, align 8
  %i.de = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.de, label %AfterCoroEnd, label %bb.q

.from.151:                                        ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.159

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !132 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.148, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr, align 8, !tbaa !132
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.148

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %i.dj = load ptr, ptr %.reload.addr179, align 8, !tbaa !404 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !401 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dj, %i.dl
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.dl, %bb.s ]
  %i.dm = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dm) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.dj, %i.dm
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !404
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.dn = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dj, %bb.s ] ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !401
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !402
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.ds) #34
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr182)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #37
  unreachable

.from.148:                                        ; preds = %bb.r, %.thread
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %.from.159

.from.159:                                        ; preds = %.from.148, %.from.151, %.from.154, %.from.157
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %.from.154 ], [ %.pn43.pn, %.from.157 ], [ %i.dv, %.from.148 ], [ %i.df, %.from.151 ]
  call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr179) #32
  %.6 = extractvalue { ptr, i32 } %.pn43.pn.pn.pn, 0
  %i.dw = call ptr @__cxa_begin_catch(ptr %.6) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %.from.159
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.168

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.u
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = atomicrmw add ptr %i.dy, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 1
  br i1 %i.ea, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.v
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !134 ; 7 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !141
  %i.ee = and i32 %i.ed, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i62
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !142 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i64 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not12.i.i.i.i.i64, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i65

.from..lr.ph.i.i.i.i.i65:                         ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 33
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  br label %.from..noexc2.i.i69

.from..noexc2.i.i69:                              ; preds = %.noexc2.i.i69, %.from..lr.ph.i.i.i.i.i65
  %.sroa.09.013.i.i.i.i.i66 = phi ptr [ %i.eg, %.from..lr.ph.i.i.i.i.i65 ], [ %i.ey, %.noexc2.i.i69 ] ; 2 uses
  %i.en = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !147 ; 2 uses
  %i.eo = load i8, ptr %i.ej, align 8             ; 2 uses
  %i.ep = trunc i8 %i.eo to i1                    ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8
  %i.er = select i1 %i.ep, ptr %i.eq, ptr %i.el
  %i.es = load i64, ptr %i.em, align 8
  %i.et = lshr i8 %i.eo, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = select i1 %i.ep, i64 %i.es, i64 %i.eu
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !149
  %i.ex = load ptr, ptr %i.ew, align 8
  invoke void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr %i.er, i64 %i.ev, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !0

.noexc2.i.i69:                                    ; preds = %.from..noexc2.i.i69
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i66, i64 16 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.ey, %i.ei
  br i1 %.not.i.i.i.i.i70, label %_ZN3tev5Latch9countDownEv.exit.i58, label %.from..noexc2.i.i69

.from..loopexit.i.i67:                            ; preds = %.from..noexc2.i.i69
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

.from..loopexit.split-lp.i.i59:                   ; preds = %bb.v
  %lpad.loopexit.split-lp.i.i60 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.x:                                             ; preds = %.from..loopexit.split-lp.i.i59, %.from..loopexit.i.i67
  %lpad.phi.i.i61 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.from..loopexit.i.i67 ], [ %lpad.loopexit.split-lp.i.i60, %.from..loopexit.split-lp.i.i59 ]
  %i.ez = extractvalue { ptr, i32 } %lpad.phi.i.i61, 0
  call void @__clang_call_terminate(ptr %i.ez) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fa = icmp slt i32 %i.dz, 2
  br i1 %i.fa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i62, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !156 ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr               ; 3 uses
  store ptr %i.fd, ptr %.reload.addr179, align 8
  %.not.i71 = icmp eq i64 %i.fc, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend110

AfterCoroSuspend110:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr184 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i1 true, ptr %index.addr184, align 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr nonnull %i.fd)
  br label %AfterCoroEnd

bb.y:                                             ; preds = %.from.159
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.175 unwind label %bb.ab

.from.168:                                        ; preds = %bb.u
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.175

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !155 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = atomicrmw add ptr %i.fi, i64 -1 acq_rel, align 8
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !149
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(24) %i.fh) #32, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fh) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend110, %AfterCoroSave
  ret void

.body.from.175:                                   ; preds = %bb.y, %.from.168
  %.pn44 = phi { ptr, i32 } [ %i.fg, %.from.168 ], [ %i.ff, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr182) #32
  br label %.body

.body:                                            ; preds = %.body.from.175, %.body.from.172, %.body.from.
  %.merged47 = phi { ptr, i32 } [ %.pn44, %.body.from.175 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.172 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #32
  resume { ptr, i32 } %.merged47

bb.ab:                                            ; preds = %bb.y
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #37
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !132
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr nonnull @.str.149, i64 44)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #37
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154
  store ptr %1, ptr %i.c, align 8, !tbaa !156
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN3tev5Latch9countDownEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134  ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !141
  %i.k = and i32 %i.j, 8
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tev5Latch9countDownEv.exit.thread

bb.f:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !142  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not12.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  br label %bb.g

bb.g:                                             ; preds = %.noexc2.i, %.lr.ph.i.i.i.i
  %.sroa.09.013.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ae, %.noexc2.i ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.u = load i8, ptr %i.p, align 8               ; 2 uses
  %i.v = trunc i8 %i.u to i1                      ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = select i1 %i.v, ptr %i.w, ptr %i.r
  %i.y = load i64, ptr %i.s, align 8
  %i.z = lshr i8 %i.u, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = select i1 %i.v, i64 %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr %i.x, i64 %i.ab, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i unwind label %.loopexit.i, !inline_history !0

.noexc2.i:                                        ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.o
  br i1 %.not.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit, label %bb.g

.loopexit.i:                                      ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.af = extractvalue { ptr, i32 } %lpad.phi.i, 0
  tail call void @__clang_call_terminate(ptr %i.af) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit:                   ; preds = %.noexc2.i, %bb.d
  %i.ag = icmp slt i32 %i.f, 2
  br i1 %i.ag, label %_ZN3tev5Latch9countDownEv.exit.thread, label %bb.i

_ZN3tev5Latch9countDownEv.exit.thread:            ; preds = %bb.f, %.noexc.i, %_ZN3tev5Latch9countDownEv.exit
  store ptr null, ptr %0, align 8, !tbaa !132
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tev5Latch9countDownEv.exit.thread, %_ZN3tev5Latch9countDownEv.exit
  %i.ah = phi i1 [ false, %_ZN3tev5Latch9countDownEv.exit.thread ], [ true, %_ZN3tev5Latch9countDownEv.exit ]
  ret i1 %i.ah

bb.j:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %1) #32
  invoke void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #32
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev:bb.a
_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #32
  ret void
}

declare void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %0, align 8, !tbaa !149
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %0, align 8, !tbaa !149
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %0) #32, !inline_history !1440
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind writable sret(%"class.std::__1::future") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESA_S5_S5_mSB_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36 ; 15 uses
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESA_S5_S5_mSB_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESA_S5_S5_mSB_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.a unwind label %.body.from.68 ; 5 uses

.body.from.68:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1451
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !149, !noalias !1451
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1451
  store i32 2, ptr %i.g, align 8, !tbaa !151, !noalias !1451
  store ptr %i.f, ptr %i.d, align 8, !tbaa !154, !alias.scope !1452
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !155, !alias.scope !1452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !1453
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.b unwind label %bb.d, !noalias !1453

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !156, !alias.scope !1453
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !159, !noalias !1453
  store ptr %i.j, ptr %i.i, align 8, !tbaa !159, !alias.scope !1453
  store ptr null, ptr %4, align 8, !tbaa !159, !noalias !1453
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !155, !noalias !1453 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !156, !noalias !1453
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !156, !alias.scope !1453
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1453 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1453
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32, !noalias !1453
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !1453
  invoke fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESA_S5_S5_mSB_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSD_PS0_iE_clESD_SI_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr, ptr nonnull align 1 poison, ptr noundef nonnull byval(%class.anon.403) align 8 %2, ptr noundef nonnull %1, i32 noundef %3)
          to label %bb.f unwind label %.from.58

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !154
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !134 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !141
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !142 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ag, %.from..lr.ph.i.i.i.i.i ], [ %i.ay, %.noexc2.i.i ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.az = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.az) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 false, ptr %index.addr75, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.58:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !132 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.56, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !132
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.56

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #37
  unreachable

.from.56:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %bb.o

bb.o:                                             ; preds = %.from.56, %.from.58
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.56 ], [ %i.bb, %.from.58 ]
  %.08 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.08) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !134 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !141
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !142 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i25 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not12.i.i.i.i.i25, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i26

.from..lr.ph.i.i.i.i.i26:                         ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  br label %.from..noexc2.i.i30

.from..noexc2.i.i30:                              ; preds = %.noexc2.i.i30, %.from..lr.ph.i.i.i.i.i26
  %.sroa.09.013.i.i.i.i.i27 = phi ptr [ %i.bs, %.from..lr.ph.i.i.i.i.i26 ], [ %i.ck, %.noexc2.i.i30 ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !147 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !149
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !0

.noexc2.i.i30:                                    ; preds = %.from..noexc2.i.i30
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i27, i64 16 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.ck, %i.bu
  br i1 %.not.i.i.i.i.i31, label %_ZN3tev5Latch9countDownEv.exit.i19, label %.from..noexc2.i.i30

.from..loopexit.i.i28:                            ; preds = %.from..noexc2.i.i30
  %lpad.loopexit.i.i29 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i20:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i21 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i20, %.from..loopexit.i.i28
  %lpad.phi.i.i22 = phi { ptr, i32 } [ %lpad.loopexit.i.i29, %.from..loopexit.i.i28 ], [ %lpad.loopexit.split-lp.i.i21, %.from..loopexit.split-lp.i.i20 ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi.i.i22, 0
  call void @__clang_call_terminate(ptr %i.cl) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i23, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !156 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr, align 8
  %.not.i32 = icmp eq i64 %i.co, 0
  br i1 %.not.i32, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend49

AfterCoroSuspend49:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 true, ptr %index.addr76, align 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr nonnull %i.cp)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.70 unwind label %bb.w

.from.66:                                         ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.70

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !155 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !149
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend49, %AfterCoroSave
  ret void

.body.from.70:                                    ; preds = %bb.t, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.cs, %.from.66 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr74) #32
  br label %.body

.body:                                            ; preds = %.body.from.70, %.body.from.68, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %.pn13, %.body.from.70 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.68 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #32
  resume { ptr, i32 } %.merged15

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #36 ; 20 uses
  store ptr @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.destroy, ptr %destroy.addr, align 8
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 8 uses
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.a unwind label %.body.from.126 ; 5 uses

.body.from.126:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1464
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !149, !noalias !1464
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1464
  store i32 2, ptr %i.g, align 8, !tbaa !151, !noalias !1464
  store ptr %i.f, ptr %i.d, align 8, !tbaa !154, !alias.scope !1465
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !155, !alias.scope !1465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !1466
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.b unwind label %bb.d, !noalias !1466

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !156, !alias.scope !1466
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !159, !noalias !1466
  store ptr %i.j, ptr %i.i, align 8, !tbaa !159, !alias.scope !1466
  store ptr null, ptr %2, align 8, !tbaa !159, !noalias !1466
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !155, !noalias !1466 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !156, !noalias !1466
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !156, !alias.scope !1466
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1466 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1466
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32, !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !1466
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %1, align 8, !tbaa !404    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !401  ; 2 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store ptr %i.u, ptr %.spill.addr, align 8
  %.not51.not63 = icmp eq ptr %i.s, %i.u
  br i1 %.not51.not63, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.sroa.041.064.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 5 uses
  %index.addr143 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.sroa.041.064 = phi ptr [ %i.bo, %bb.o ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  store ptr %.sroa.041.064, ptr %.sroa.041.064.spill.addr, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.041.064, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load atomic i32, ptr %i.x acquire, align 4
  %i.z = icmp slt i32 %i.y, 2
  br i1 %i.z, label %bb.f, label %AfterCoroSave

bb.f:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i32 -1 acq_rel, align 4
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !134 ; 7 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !141
  %i.ah = and i32 %i.ag, 8
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %.noexc.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !142 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.aj, %.from..lr.ph.i.i.i.i.i ], [ %i.bb, %.noexc2.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.ar = load i8, ptr %i.am, align 8             ; 2 uses
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8
  %i.au = select i1 %i.as, ptr %i.at, ptr %i.ao
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = lshr i8 %i.ar, 1
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = select i1 %i.as, i64 %i.av, i64 %i.ax
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !149
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr %i.au, i64 %i.ay, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.al
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i:                     ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.bc = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bc) #37
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i1 false, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !406
  %i.bd = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %i.a) #32
  br i1 %i.bd, label %AfterCoroEnd, label %bb.j

bb.j:                                             ; preds = %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !406 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !132 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.l, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.k, %bb.h, %.noexc.i.i, %bb.f
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !406 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !132
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.j
  %.sroa.041.064.reload135 = phi ptr [ %.sroa.041.064.reload131, %.thread.sink.split ], [ %.sroa.041.064.reload137, %bb.j ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload135, i64 8
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.bh = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { ptr, i32 } %i.bh, 1
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #32
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %.loopexit52

bb.m:                                             ; preds = %bb.l
  %i.bm = call ptr @__cxa_begin_catch(ptr %i.bi) #32 ; 0 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #32
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #32
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %.from.104

bb.o:                                             ; preds = %bb.n, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !406
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !406
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.bo, %.reload
  br i1 %.not51.not, label %._crit_edge.from.._crit_edge.loopexit, label %.lr.ph

bb.p:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #32
  invoke void @__cxa_end_catch()
          to label %.loopexit52.from.110 unwind label %bb.af

.from.104:                                        ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit52.from.110

.loopexit52.from.110:                             ; preds = %.from.104, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bq, %.from.104 ], [ %i.bp, %bb.p ]
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit52

._crit_edge.from.._crit_edge.loopexit:            ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !411
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !412
  %i.br = ptrtoint ptr %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.from.._crit_edge.loopexit
  %i.bs = phi ptr [ %.pre70, %._crit_edge.from.._crit_edge.loopexit ], [ null, %bb.e ] ; 2 uses
  %i.bt = phi i64 [ %i.br, %._crit_edge.from.._crit_edge.loopexit ], [ 0, %bb.e ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bt, %i.bv                    ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 8
  br i1 %i.bx, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #32
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #33
          to label %bb.r unwind label %.loopexit52.from.115

bb.r:                                             ; preds = %bb.q
  unreachable

.loopexit52.from.115:                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #32
  br label %.loopexit52

bb.s:                                             ; preds = %._crit_edge
  %i.ca = icmp ugt i64 %i.bw, 8
  br i1 %i.ca, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cb = call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  %i.cc = load ptr, ptr %.reload.addr138, align 8, !tbaa !412 ; 2 uses
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !411
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr %i.cc, i64 %i.ch)
          to label %bb.u unwind label %.loopexit52.from.113

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #33
          to label %bb.ag unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__cxa_free_exception(ptr nonnull %i.cb) #32
  br label %.loopexit52

.loopexit52.from.111:                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  br label %.loopexit52

bb.v:                                             ; preds = %bb.s
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #37
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.v
  %i.co = load ptr, ptr %.reload.addr138, align 8, !tbaa !412 ; 5 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !411 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.cp, %bb.x ]
  %i.cq = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cq) #32
  %.not.i.i.i.i24 = icmp eq ptr %i.co, %i.cq
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !412
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.x, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.cr = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.co, %bb.x ] ; 2 uses
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !411
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !413
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cw) #34
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.l, %.loopexit52.from.110, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115
  %.213 = phi ptr [ %i.bz, %.loopexit52.from.115 ], [ %i.cl, %.loopexit52.from.111 ], [ %i.cj, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.bi, %bb.l ]
  call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #32
  %i.cx = call ptr @__cxa_begin_catch(ptr %.213) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %.loopexit52
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit unwind label %.from.124

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit, %bb.y
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4 ; 2 uses
  %i.db = icmp slt i32 %i.da, 1
  br i1 %i.db, label %bb.z, label %_ZN3tev5Latch9countDownEv.exit.i25

bb.z:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i29 unwind label %.from..loopexit.split-lp.i.i26

.noexc.i.i29:                                     ; preds = %bb.z
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !134 ; 7 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !141
  %i.df = and i32 %i.de, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i30, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.aa:                                            ; preds = %.noexc.i.i29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !142 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i31 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not12.i.i.i.i.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i32

.from..lr.ph.i.i.i.i.i32:                         ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 33
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  br label %.from..noexc2.i.i36

.from..noexc2.i.i36:                              ; preds = %.noexc2.i.i36, %.from..lr.ph.i.i.i.i.i32
  %.sroa.09.013.i.i.i.i.i33 = phi ptr [ %i.dh, %.from..lr.ph.i.i.i.i.i32 ], [ %i.dz, %.noexc2.i.i36 ] ; 2 uses
  %i.do = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !147 ; 2 uses
  %i.dp = load i8, ptr %i.dk, align 8             ; 2 uses
  %i.dq = trunc i8 %i.dp to i1                    ; 2 uses
  %i.dr = load ptr, ptr %i.dl, align 8
  %i.ds = select i1 %i.dq, ptr %i.dr, ptr %i.dm
  %i.dt = load i64, ptr %i.dn, align 8
  %i.du = lshr i8 %i.dp, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = select i1 %i.dq, i64 %i.dt, i64 %i.dv
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !149
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr %i.ds, i64 %i.dw, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i36 unwind label %.from..loopexit.i.i34, !inline_history !0

.noexc2.i.i36:                                    ; preds = %.from..noexc2.i.i36
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i33, i64 16 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.dz, %i.dj
  br i1 %.not.i.i.i.i.i37, label %_ZN3tev5Latch9countDownEv.exit.i25, label %.from..noexc2.i.i36

.from..loopexit.i.i34:                            ; preds = %.from..noexc2.i.i36
  %lpad.loopexit.i.i35 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

.from..loopexit.split-lp.i.i26:                   ; preds = %bb.z
  %lpad.loopexit.split-lp.i.i27 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %.from..loopexit.split-lp.i.i26, %.from..loopexit.i.i34
  %lpad.phi.i.i28 = phi { ptr, i32 } [ %lpad.loopexit.i.i35, %.from..loopexit.i.i34 ], [ %lpad.loopexit.split-lp.i.i27, %.from..loopexit.split-lp.i.i26 ]
  %i.ea = extractvalue { ptr, i32 } %lpad.phi.i.i28, 0
  call void @__clang_call_terminate(ptr %i.ea) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.eb = icmp slt i32 %i.da, 2
  br i1 %i.eb, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i29, %bb.aa, %_ZN3tev5Latch9countDownEv.exit.i25
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !156 ; 2 uses
  %i.ee = inttoptr i64 %i.ed to ptr               ; 3 uses
  store ptr %i.ee, ptr %.reload.addr138, align 8
  %.not.i38 = icmp eq i64 %i.ed, 0
  br i1 %.not.i38, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend91

AfterCoroSuspend91:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr144 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i1 true, ptr %index.addr144, align 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr nonnull %i.ee)
  br label %AfterCoroEnd

bb.ac:                                            ; preds = %.loopexit52
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.128 unwind label %bb.af

.from.124:                                        ; preds = %bb.y
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.128

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i25
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !155 ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 acq_rel, align 8
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.ae, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !149
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #32, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ad, %bb.ae
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend91
  ret void

.body.from.128:                                   ; preds = %bb.ac, %.from.124
  %.pn18 = phi { ptr, i32 } [ %i.eh, %.from.124 ], [ %i.eg, %bb.ac ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr142) #32
  br label %.body

.body:                                            ; preds = %.body.from.128, %.body.from.126, %.body.from.
  %.merged20 = phi { ptr, i32 } [ %.pn18, %.body.from.128 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.126 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #32
  resume { ptr, i32 } %.merged20

bb.af:                                            ; preds = %bb.ac, %bb.p
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #37
  unreachable

bb.ag:                                            ; preds = %bb.u
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !404    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !401  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #32
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !404
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.e = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !401
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !402
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #34
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt3__16thread20hardware_concurrencyEv() local_unnamed_addr #2

declare void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !401
  %i.d = load ptr, ptr %0, align 8, !tbaa !404
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 5
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #33
  unreachable

_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !402
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.not.i = icmp ult i64 %i.m, 9223372036854775776
  %i.n = ashr exact i64 %i.m, 4
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 576460752303423487 ; 4 uses
  %i.o = icmp ne i64 %.0.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ugt i64 %.0.i, 576460752303423487
  br i1 %i.p, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i

bb.c:                                             ; preds = %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #33
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i: ; preds = %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #35 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 6 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %1, align 8, !tbaa !156
  store i64 %i.v, ptr %i.s, align 8, !tbaa !156
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !156
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !156
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !403
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !403
  store <4 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !156
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !401 ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !404   ; 3 uses
  %.not27.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 4 uses
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -32 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !156
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !156
  store ptr null, ptr %i.ag, align 8, !tbaa !156
  %i.aj = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !156
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !156
  store ptr null, ptr %i.aj, align 8, !tbaa !1468
  store ptr null, ptr %i.ak, align 8, !tbaa !1469
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.an = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !403
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !403
  store ptr null, ptr %i.an, align 8, !tbaa !403
  %.not.i.i = icmp eq ptr %i.ag, %i.ad
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !1467

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !402
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !402
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i
  %i.ap = phi ptr [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre9, %.loopexit.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.lcssa.i.i = phi ptr [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %i.af, %.loopexit.loopexit ]
  store ptr %.lcssa.i.i, ptr %0, align 8, !tbaa !402
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !402
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !402
  store ptr %i.t, ptr %i.a, align 8, !tbaa !402
  %.not2.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ap, %.loopexit ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.at) #32
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.aw) #34
  br label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.d
  ret ptr %i.ab
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.58) #33
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESA_S5_S5_mSB_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSD_PS0_iE_clESD_SI_i"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree nonnull readnone align 1 captures(none) %1, ptr nofree noundef readonly byval(%class.anon.403) align 8 captures(none) %2, ptr noundef %3, i32 noundef %4) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %5 = alloca %"struct.std::__1::coroutine_handle.379", align 8 ; 4 uses
  %6 = alloca %"class.std::__1::future", align 8  ; 4 uses
  %7 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #36 ; 12 uses
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESA_S5_S5_mSB_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSD_PS0_iE_clESD_SI_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESA_S5_S5_mSB_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSD_PS0_iE_clESD_SI_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.spill.addr, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1480
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !149, !noalias !1480
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1480
  store i32 2, ptr %i.g, align 8, !tbaa !151, !noalias !1480
  store ptr %i.f, ptr %i.d, align 8, !tbaa !154, !alias.scope !1481
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !155, !alias.scope !1481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1482
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.b unwind label %bb.d, !noalias !1482

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !156, !alias.scope !1482
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !159, !noalias !1482
  store ptr %i.j, ptr %i.i, align 8, !tbaa !159, !alias.scope !1482
  store ptr null, ptr %7, align 8, !tbaa !159, !noalias !1482
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !155, !noalias !1482 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !156, !noalias !1482
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !156, !alias.scope !1482
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1482 ; 0 uses
  br label %AfterCoroSave

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1482
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

AfterCoroSave:                                    ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32, !noalias !1482
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1482
  store ptr %3, ptr %.reload.addr76, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %4, ptr %.sroa.2.0..sroa_idx, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i2 0, ptr %index.addr80, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.a, ptr %5, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %6, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %4, i1 noundef zeroext false)
          to label %AfterCoroSuspend unwind label %bb.e

bb.e:                                             ; preds = %AfterCoroSave
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #37
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void

.body:                                            ; preds = %.body.from.72, %.body.from.
  %.merged14 = phi { ptr, i32 } [ %i.c, %.body.from.72 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #32
  resume { ptr, i32 } %.merged14
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EES9_S4_S4_mSA_iENKUlvE_clEv"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36 ; 15 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EES9_S4_S4_mSA_iENKUlvE_clEv.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EES9_S4_S4_mSA_iENKUlvE_clEv.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.a unwind label %.body.from.64 ; 5 uses

.body.from.64:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1493
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !149, !noalias !1493
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1493
  store i32 2, ptr %i.g, align 8, !tbaa !151, !noalias !1493
  store ptr %i.f, ptr %i.d, align 8, !tbaa !154, !alias.scope !1494
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !155, !alias.scope !1494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !1495
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.b unwind label %bb.d, !noalias !1495

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !156, !alias.scope !1495
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !159, !noalias !1495
  store ptr %i.j, ptr %i.i, align 8, !tbaa !159, !alias.scope !1495
  store ptr null, ptr %2, align 8, !tbaa !159, !noalias !1495
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !155, !noalias !1495 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !156, !noalias !1495
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !156, !alias.scope !1495
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1495 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1495
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32, !noalias !1495
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !1495
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1496, !nonnull !190, !align !235
  %i.u = load i64, ptr %1, align 8, !tbaa !395
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !396
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.u, i64 noundef %i.w)
          to label %bb.f unwind label %.from.54

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !154
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load atomic i32, ptr %i.z acquire, align 4
  %i.ab = icmp slt i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !154
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !134 ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !141
  %i.aj = and i32 %i.ai, 8
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !142 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.al, %.from..lr.ph.i.i.i.i.i ], [ %i.bd, %.noexc2.i.i ] ; 2 uses
  %i.as = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.at = load i8, ptr %i.ao, align 8             ; 2 uses
  %i.au = trunc i8 %i.at to i1                    ; 2 uses
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = select i1 %i.au, ptr %i.av, ptr %i.aq
  %i.ax = load i64, ptr %i.ar, align 8
  %i.ay = lshr i8 %i.at, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = select i1 %i.au, i64 %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !149
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr %i.aw, i64 %i.ba, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.an
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.be = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.be) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr70 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 false, ptr %index.addr70, align 8
  %i.bf = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.bf, label %AfterCoroEnd, label %bb.k

.from.54:                                         ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !132 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.52, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !132
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.m unwind label %.from.52

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #37
  unreachable

.from.52:                                         ; preds = %bb.l, %.thread
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %bb.o

bb.o:                                             ; preds = %.from.52, %.from.54
  %.pn = phi { ptr, i32 } [ %i.bm, %.from.52 ], [ %i.bg, %.from.54 ]
  %.04 = extractvalue { ptr, i32 } %.pn, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %.04) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i32 -1 acq_rel, align 4 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.q
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !134 ; 7 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !141
  %i.bv = and i32 %i.bu, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i20, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !142 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i21 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not12.i.i.i.i.i21, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i22

.from..lr.ph.i.i.i.i.i22:                         ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 33
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  br label %.from..noexc2.i.i26

.from..noexc2.i.i26:                              ; preds = %.noexc2.i.i26, %.from..lr.ph.i.i.i.i.i22
  %.sroa.09.013.i.i.i.i.i23 = phi ptr [ %i.bx, %.from..lr.ph.i.i.i.i.i22 ], [ %i.cp, %.noexc2.i.i26 ] ; 2 uses
  %i.ce = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !147 ; 2 uses
  %i.cf = load i8, ptr %i.ca, align 8             ; 2 uses
  %i.cg = trunc i8 %i.cf to i1                    ; 2 uses
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = select i1 %i.cg, ptr %i.ch, ptr %i.cc
  %i.cj = load i64, ptr %i.cd, align 8
  %i.ck = lshr i8 %i.cf, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = select i1 %i.cg, i64 %i.cj, i64 %i.cl
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !149
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i26 unwind label %.from..loopexit.i.i24, !inline_history !0

.noexc2.i.i26:                                    ; preds = %.from..noexc2.i.i26
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i23, i64 16 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.cp, %i.bz
  br i1 %.not.i.i.i.i.i27, label %_ZN3tev5Latch9countDownEv.exit.i15, label %.from..noexc2.i.i26

.from..loopexit.i.i24:                            ; preds = %.from..noexc2.i.i26
  %lpad.loopexit.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i16:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i17 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i16, %.from..loopexit.i.i24
  %lpad.phi.i.i18 = phi { ptr, i32 } [ %lpad.loopexit.i.i25, %.from..loopexit.i.i24 ], [ %lpad.loopexit.split-lp.i.i17, %.from..loopexit.split-lp.i.i16 ]
  %i.cq = extractvalue { ptr, i32 } %lpad.phi.i.i18, 0
  call void @__clang_call_terminate(ptr %i.cq) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !156 ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr               ; 3 uses
  store ptr %i.cu, ptr %.reload.addr, align 8
  %.not.i28 = icmp eq i64 %i.ct, 0
  br i1 %.not.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend45

AfterCoroSuspend45:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr71 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 true, ptr %index.addr71, align 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr nonnull %i.cu)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.66 unwind label %bb.w

.from.62:                                         ; preds = %bb.p
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.66

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !155 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !149
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #32, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend45, %AfterCoroSave
  ret void

.body.from.66:                                    ; preds = %bb.t, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.62 ], [ %i.cw, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr69) #32
  br label %.body

.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #32
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind noalias writable sret(%"class.std::__1::future") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::ThreadPool::QueuedTask::Comparator", align 1 ; 3 uses
  %6 = alloca %"class.std::__1::shared_ptr.418", align 8 ; 6 uses
  %7 = alloca %"class.std::__1::future", align 8  ; 8 uses
  %8 = alloca %"struct.tev::ThreadPool::QueuedTask", align 16 ; 13 uses
  %9 = alloca %class.anon.424, align 8            ; 3 uses
  %i.a = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #35, !noalias !1507 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !1507
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE, i64 16), ptr %i.b, align 16, !tbaa !149, !noalias !1507
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE, i64 16), ptr %i.d, align 16, !tbaa !149, !noalias !1507
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i64, ptr %2, align 8, !tbaa !156, !noalias !1507
  store i64 %i.g, ptr %i.f, align 8, !tbaa !156, !noalias !1507
  store ptr %i.d, ptr %i.e, align 16, !tbaa !416, !noalias !1507
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit unwind label %.body.i.i.i, !noalias !1507

common.resume:                                    ; preds = %bb.r, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i.i.i ], [ %.pn11.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__124__packaged_task_functionIFvvEED2Ev(ptr noundef nonnull align 16 dead_on_return(40) dereferenceable(56) %i.d) #32, !noalias !1507
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 16 dead_on_return(24) dereferenceable(96) %i.b) #32, !noalias !1507
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #34, !noalias !1507
  br label %common.resume

_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %6, align 8, !tbaa !419, !alias.scope !1508
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !420, !alias.scope !1508
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit unwind label %bb.b

_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit: ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1529, !range !189, !noundef !190
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN10moodycamel20LightweightSemaphore6signalEl.exit, label %bb.c

bb.b:                                             ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.c:                                             ; preds = %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store ptr %i.d, ptr %9, align 8, !tbaa !419
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !420
  %i.q = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE, i64 16), ptr %8, align 16, !tbaa !149
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.s, align 8, !tbaa !419
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.t, align 16, !tbaa !420
  %i.u = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  store ptr %8, ptr %i.r, align 16, !tbaa !427
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 %3, ptr %i.w, align 16, !tbaa !430
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i8 %i.a, ptr %i.x, align 4, !tbaa !1530
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !431  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !432
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.z, ptr %i.ad, align 16, !tbaa !427
  %i.ae = load ptr, ptr %i.r, align 16, !tbaa !427 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !149
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 16 dereferenceable(53) %i.z)
          to label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #37
  unreachable

_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.ak, ptr noundef nonnull align 16 dereferenceable(5) %i.w, i64 5, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  br label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i

bb.g:                                             ; preds = %bb.d
  %i.am = invoke noundef ptr @_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE21__push_back_slow_pathIS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(25) %i.v, ptr noundef nonnull align 16 dereferenceable(53) %8)
          to label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i unwind label %bb.m

_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i: ; preds = %bb.g, %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i
  %.0.i.i = phi ptr [ %i.al, %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i ], [ %i.am, %bb.g ] ; 3 uses
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !431
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !433 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ao = ptrtoint ptr %.0.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6
  invoke void @_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERN3tev10ThreadPool10QueuedTask10ComparatorENS_11__wrap_iterIPS4_EEEEvT1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE(ptr %i.an, ptr %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %i.ar)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.as = load ptr, ptr %i.r, align 16, !tbaa !427 ; 4 uses
  %i.at = icmp eq ptr %i.as, %8
  br i1 %i.at, label %.sink.split.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.i, %bb.h
end_hunk_2
begin_hunk_3_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm":.from.
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32, !noalias !1566
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !1566
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !1568, !nonnull !190, !align !235 ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !120
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.split, label %._crit_edge

._crit_edge:                                      ; preds = %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit", %.lr.ph, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr49)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #37
  unreachable

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = atomicrmw add ptr %i.ac, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !134 ; 7 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !141
  %i.ai = and i32 %i.ah, 8
  %.not.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !142 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ak, %.from..lr.ph.i.i.i.i.i ], [ %i.bc, %.noexc2.i.i ] ; 2 uses
  %i.ar = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.as = load i8, ptr %i.an, align 8             ; 2 uses
  %i.at = trunc i8 %i.as to i1                    ; 2 uses
  %i.au = load ptr, ptr %i.ao, align 8
  %i.av = select i1 %i.at, ptr %i.au, ptr %i.ap
  %i.aw = load i64, ptr %i.aq, align 8
  %i.ax = lshr i8 %i.as, 1
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = select i1 %i.at, i64 %i.aw, i64 %i.ay
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !149
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr %i.av, i64 %i.az, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.am
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i:                     ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.bd = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bd) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.be = icmp slt i32 %i.ad, 2
  br i1 %i.be, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !156 ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr               ; 3 uses
  store ptr %i.bh, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

.lr.ph.split:                                     ; preds = %.lr.ph, %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit"
  %.020 = phi i64 [ %i.da, %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit" ], [ %2, %.lr.ph ] ; 7 uses
  %.val = load ptr, ptr %i.t, align 8             ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !120 ; 4 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.from..lr.ph.i, label %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit"

.from..lr.ph.i:                                   ; preds = %.lr.ph.split
  %.val17 = load ptr, ptr %i.u, align 8
  %i.bl = load ptr, ptr %.val17, align 8, !tbaa !93 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !122 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !122 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !124 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.bj to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bs = icmp eq i32 %i.bj, 1
  br i1 %i.bs, label %.from.41.epil.preheader, label %.from..lr.ph.i.new

.from..lr.ph.i.new:                               ; preds = %.from..lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.from.41

.from.41:                                         ; preds = %.from.41, %.from..lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.from..lr.ph.i.new ], [ %indvars.iv.next.i.1, %.from.41 ] ; 5 uses
  %niter = phi i64 [ 0, %.from..lr.ph.i.new ], [ %niter.next.1, %.from.41 ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !81
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !81
  %i.bx = mul i64 %i.bw, %.020
  %i.by = getelementptr [4 x i8], ptr %i.bl, i64 %i.bu
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !95
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !103
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.020
  store float %i.ca, ptr %i.cd, align 4, !tbaa !95
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !81
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !81
  %i.ci = mul i64 %i.ch, %.020
  %i.cj = getelementptr [4 x i8], ptr %i.bl, i64 %i.cf
  %i.ck = getelementptr [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !95
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv.next.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !103
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.020
  store float %i.cl, ptr %i.co, align 4, !tbaa !95
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit.loopexit.unr-lcssa", label %.from.41, !llvm.loop !1560

"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit.loopexit.unr-lcssa": ; preds = %.from.41
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit", label %.from.41.epil.preheader

.from.41.epil.preheader:                          ; preds = %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit.loopexit.unr-lcssa", %.from..lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.from..lr.ph.i ], [ %indvars.iv.next.i.1, %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit.loopexit.unr-lcssa" ] ; 3 uses
  %lcmp.mod61 = trunc i32 %i.bj to i1
  call void @llvm.assume(i1 %lcmp.mod61)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.epil.init
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !81
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i.epil.init
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !81
  %i.ct = mul i64 %i.cs, %.020
  %i.cu = getelementptr [4 x i8], ptr %i.bl, i64 %i.cq
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !95
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv.i.epil.init
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !103
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.020
  store float %i.cw, ptr %i.cz, align 4, !tbaa !95
  br label %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit"

"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit": ; preds = %.from.41.epil.preheader, %"_ZZNK3tev9IpcPacket22interpretAsUpdateImageEvENK3$_0clEm.exit.loopexit.unr-lcssa", %.lr.ph.split
  %i.da = add nuw i64 %.020, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.da, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1561

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr50 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i1 false, ptr %index.addr50, align 8
  %i.db = load ptr, ptr %i.bh, align 8
  call void %i.db(ptr nonnull %i.bh)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.dc = load ptr, ptr %i.h, align 8, !tbaa !155 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = atomicrmw add ptr %i.dd, i64 -1 acq_rel, align 8
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !149
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(24) %i.dc) #32, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dc) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.j, %bb.k
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr49) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.43, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %i.c, %.body.from.43 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  resume { ptr, i32 } %.merged15
}

; Function Attrs: nounwind
declare void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !413
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJS1_EEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]  ; 2 uses
  store ptr %.0, ptr %i.a, align 8, !tbaa !411
  %i.h = getelementptr inbounds i8, ptr %.0, i64 -8
  ret ptr %i.h
}

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #28

; Function Attrs: nounwind
declare void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__exception_guard_exceptions.504", align 8 ; 6 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZN3tev17CompoundException12buildMessageENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %4, ptr %1, i64 %2)
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %4, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = load i64, ptr %4, align 8
  %i.f = and i64 %i.e, -2
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.f) #34
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev17CompoundExceptionE, i64 16), ptr %0, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.idx8 = shl nuw nsw i64 %2, 3                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.g, ptr %3, align 8, !tbaa !1573, !alias.scope !1574
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !437, !alias.scope !1574
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.e, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx8) #35
          to label %bb.d unwind label %.body      ; 6 uses

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i
  store ptr %i.l, ptr %i.g, align 8, !tbaa !412
  store ptr %i.l, ptr %i.i, align 8, !tbaa !411
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx8
  store ptr %i.m, ptr %i.j, align 8, !tbaa !413
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.026.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %1, %bb.d ] ; 2 uses
  %.02325.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.02325.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.026.i.i.i.i.i) #32
  %i.n = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02325.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1572

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.l, i64 %i.r
  store ptr %i.s, ptr %i.i, align 8, !tbaa !411
  br label %bb.e

.body:                                            ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #32
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.f:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i8, ptr %4, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67
  %i.z = load i64, ptr %4, align 8
  %i.aa = and i64 %i.z, -2
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #34
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.h

bb.h:                                             ; preds = %.body, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.t, %.body ], [ %i.u, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !412  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !411  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #32
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.a, align 8, !tbaa !412
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

end_hunk_3
begin_hunk_4_@_ZN4tlog6Logger3logIJRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERiEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSF_:bb.a
  %i.ct = load i64, ptr %9, align 8
  %i.cu = and i64 %i.ct, -2
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cu) #34
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__125__throw_bad_function_callB8ne180100Ev() local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt3__117bad_function_callE, i64 16), ptr %i.a, align 8, !tbaa !149
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTINSt3__117bad_function_callE, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__117bad_function_callD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #34
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume(ptr noundef nonnull align 8 dereferenceable(104) %0) #0 personality ptr @__gxx_personality_v0 {
resume.0:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.041.064.reload.addr136 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %index.addr143 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.j
  store ptr %i.at, ptr %.sroa.041.064.reload.addr136, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.a, label %AfterCoroSave

bb.a:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !134  ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !141
  %i.m = and i32 %i.l, 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %.noexc.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !142  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 33
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.o, %.from..lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc2.i.i ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.w = load i8, ptr %i.r, align 8               ; 2 uses
  %i.x = trunc i8 %i.w to i1                      ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = select i1 %i.x, ptr %i.y, ptr %i.t
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = lshr i8 %i.w, 1
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = select i1 %i.x, i64 %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !149
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr %i.z, i64 %i.ad, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.q
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

.from..loopexit.split-lp.i.i:                     ; preds = %bb.b
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

bb.d:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ah = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #37
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i1 false, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !406
  %i.ai = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %0) #32
  br i1 %i.ai, label %CoroEnd, label %bb.e

bb.e:                                             ; preds = %resume.0, %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !406 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !132 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.g, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.f, %bb.c, %.noexc.i.i, %bb.a
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !406 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !132
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %.sroa.041.064.reload135 = phi ptr [ %.sroa.041.064.reload131, %.thread.sink.split ], [ %.sroa.041.064.reload137, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload135, i64 8
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.an = extractvalue { ptr, i32 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, i32 } %i.am, 1
  %i.ap = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #32
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %.loopexit52

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.an) #32 ; 0 uses
  tail call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #32
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #32
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %.from.104

bb.j:                                             ; preds = %bb.i, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !406 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !406
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.at, %.reload
  br i1 %.not51.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #32
  invoke void @__cxa_end_catch()
          to label %.loopexit52.from.110 unwind label %bb.ac

.from.104:                                        ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit52.from.110

.loopexit52.from.110:                             ; preds = %.from.104, %bb.k
  %.pn = phi { ptr, i32 } [ %i.av, %.from.104 ], [ %i.au, %bb.k ]
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit52

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !411
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !412 ; 2 uses
  %i.aw = ptrtoint ptr %.pre to i64
  %i.ax = ptrtoint ptr %.pre70 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp eq i64 %i.ay, 8
  br i1 %i.az, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %.pre70) #32
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #33
          to label %bb.m unwind label %.loopexit52.from.115

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit52.from.115:                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #32
  br label %.loopexit52

bb.n:                                             ; preds = %._crit_edge
  %i.bc = icmp ugt i64 %i.ay, 8
  br i1 %i.bc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  %i.be = load ptr, ptr %.reload.addr138, align 8, !tbaa !412 ; 2 uses
  %i.bf = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !411
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr %i.be, i64 %i.bj)
          to label %bb.p unwind label %.loopexit52.from.113

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #33
          to label %bb.ad unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #32
  br label %.loopexit52

.loopexit52.from.111:                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  br label %.loopexit52

bb.q:                                             ; preds = %bb.n
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  tail call void @__clang_call_terminate(ptr %i.bp) #37
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.q
  %i.bq = load ptr, ptr %.reload.addr138, align 8, !tbaa !412 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.br = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !411 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.br, %bb.s ]
  %i.bs = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #32
  %.not.i.i.i.i24 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !412
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.bt = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.bq, %bb.s ] ; 2 uses
  store ptr %i.bq, ptr %.phi.trans.insert, align 8, !tbaa !411
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !413
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.by) #34
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.g, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115, %.loopexit52.from.110
  %.213 = phi ptr [ %i.bb, %.loopexit52.from.115 ], [ %i.bn, %.loopexit52.from.111 ], [ %i.bl, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.an, %bb.g ]
  tail call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #32
  %i.bz = tail call ptr @__cxa_begin_catch(ptr %.213) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %.loopexit52
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit unwind label %.from.124

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !154
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 1
  br i1 %i.ce, label %bb.u, label %_ZN3tev5Latch9countDownEv.exit.i25

bb.u:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i29 unwind label %.from..loopexit.split-lp.i.i26

.noexc.i.i29:                                     ; preds = %bb.u
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !134 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !141
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i30, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.v:                                             ; preds = %.noexc.i.i29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !142 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i31 = icmp eq ptr %i.ck, %i.cm
  br i1 %.not12.i.i.i.i.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i32

.from..lr.ph.i.i.i.i.i32:                         ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  br label %.from..noexc2.i.i36

.from..noexc2.i.i36:                              ; preds = %.noexc2.i.i36, %.from..lr.ph.i.i.i.i.i32
  %.sroa.09.013.i.i.i.i.i33 = phi ptr [ %i.ck, %.from..lr.ph.i.i.i.i.i32 ], [ %i.dc, %.noexc2.i.i36 ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !147 ; 2 uses
  %i.cs = load i8, ptr %i.cn, align 8             ; 2 uses
  %i.ct = trunc i8 %i.cs to i1                    ; 2 uses
  %i.cu = load ptr, ptr %i.co, align 8
  %i.cv = select i1 %i.ct, ptr %i.cu, ptr %i.cp
  %i.cw = load i64, ptr %i.cq, align 8
  %i.cx = lshr i8 %i.cs, 1
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = select i1 %i.ct, i64 %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !149
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i36 unwind label %.from..loopexit.i.i34, !inline_history !0

.noexc2.i.i36:                                    ; preds = %.from..noexc2.i.i36
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i33, i64 16 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.dc, %i.cm
  br i1 %.not.i.i.i.i.i37, label %_ZN3tev5Latch9countDownEv.exit.i25, label %.from..noexc2.i.i36

.from..loopexit.i.i34:                            ; preds = %.from..noexc2.i.i36
  %lpad.loopexit.i.i35 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

.from..loopexit.split-lp.i.i26:                   ; preds = %bb.u
  %lpad.loopexit.split-lp.i.i27 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.w:                                             ; preds = %.from..loopexit.split-lp.i.i26, %.from..loopexit.i.i34
  %lpad.phi.i.i28 = phi { ptr, i32 } [ %lpad.loopexit.i.i35, %.from..loopexit.i.i34 ], [ %lpad.loopexit.split-lp.i.i27, %.from..loopexit.split-lp.i.i26 ]
  %i.dd = extractvalue { ptr, i32 } %lpad.phi.i.i28, 0
  tail call void @__clang_call_terminate(ptr %i.dd) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.de = icmp slt i32 %i.cd, 2
  br i1 %i.de, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i25, %bb.v, %.noexc.i.i29
  %i.df = load ptr, ptr %i.ca, align 8, !tbaa !154
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !156 ; 2 uses
  %i.dh = inttoptr i64 %i.dg to ptr               ; 3 uses
  store ptr %i.dh, ptr %.reload.addr138, align 8
  %.not.i38 = icmp eq i64 %i.dg, 0
  br i1 %.not.i38, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i1 true, ptr %index.addr143, align 8
  %i.di = load ptr, ptr %i.dh, align 8
  musttail call void %i.di(ptr nonnull %i.dh)
  ret void

bb.y:                                             ; preds = %.loopexit52
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

.from.124:                                        ; preds = %bb.t
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i25, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !155 ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = atomicrmw add ptr %i.dn, i64 -1 acq_rel, align 8
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.aa, %bb.z, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  br label %CoroEnd

CoroEnd:                                          ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.y, %.from.124
  %.pn18 = phi { ptr, i32 } [ %i.dk, %.from.124 ], [ %i.dj, %bb.y ]
  store ptr null, ptr %0, align 8
  store i1 true, ptr %index.addr143, align 8
  resume { ptr, i32 } %.pn18

bb.ac:                                            ; preds = %bb.y, %bb.k
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  tail call void @__clang_call_terminate(ptr %i.du) #37
  unreachable

bb.ad:                                            ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.destroy(ptr noundef nonnull align 8 dereferenceable(104) %0) #5 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !1672

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr138, align 8, !tbaa !412 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !411  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #32
  %.not.i.i.i.i24 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !412
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !411
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !413
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %resume.entry
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155  ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.l, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.resume"(ptr nofree nonnull readnone align 8 captures(none) %0) #31 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.destroy"(ptr noundef nonnull align 8 dereferenceable(56) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr49 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr49) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EES9_S4_S4_mSA_iENKUlvE_clEv.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !132 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !1

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !132
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #37
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %.04 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.04) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !141
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i19
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !142  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !143  ; 2 uses
  %.not12.i.i.i.i.i21 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i21, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i22

.from..lr.ph.i.i.i.i.i22:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i26

.from..noexc2.i.i26:                              ; preds = %.noexc2.i.i26, %.from..lr.ph.i.i.i.i.i22
  %.sroa.09.013.i.i.i.i.i23 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i22 ], [ %i.aj, %.noexc2.i.i26 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !147 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !149
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i26 unwind label %.from..loopexit.i.i24, !inline_history !0

.noexc2.i.i26:                                    ; preds = %.from..noexc2.i.i26
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i23, i64 16 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i27, label %_ZN3tev5Latch9countDownEv.exit.i15, label %.from..noexc2.i.i26

.from..loopexit.i.i24:                            ; preds = %.from..noexc2.i.i26
  %lpad.loopexit.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i16:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i17 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i16, %.from..loopexit.i.i24
  %lpad.phi.i.i18 = phi { ptr, i32 } [ %lpad.loopexit.i.i25, %.from..loopexit.i.i24 ], [ %lpad.loopexit.split-lp.i.i17, %.from..loopexit.split-lp.i.i16 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i18, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i15, %bb.h, %.noexc.i.i19
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.an = load i64, ptr %i.am, align 8, !tbaa !156 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i28 = icmp eq i64 %i.an, 0
  br i1 %.not.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr71 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr71, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.62:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i15, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !155 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !149
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.ar, %.from.62 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn9

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EES9_S4_S4_mSA_iENKUlvE_clEv.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !439

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESA_S5_S5_mSB_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSD_PS0_iE_clESD_SI_i.resume"(ptr noundef nonnull align 8 dereferenceable(104) %0) #21 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend49, !prof !1673

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EES9_S4_S4_mSA_iENKUlvE_clEv"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr)
          to label %bb.a unwind label %.from.62

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %AfterCoroSave47

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !154
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread33.sink.split

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134  ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !141
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread33.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !143  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not12.i.i.i.i.i, label %.thread33.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.p, %.from..lr.ph.i.i.i.i.i ], [ %i.ah, %.noexc2.i.i ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.x = load i8, ptr %i.s, align 8               ; 2 uses
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = select i1 %i.y, ptr %i.z, ptr %i.u
  %i.ab = load i64, ptr %i.v, align 8
  %i.ac = lshr i8 %i.x, 1
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = select i1 %i.y, i64 %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !149
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.r
  br i1 %.not.i.i.i.i.i, label %.thread33.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

.from..loopexit.split-lp.i.i:                     ; preds = %bb.c
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

bb.e:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ai = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #37
  unreachable

AfterCoroSave47:                                  ; preds = %bb.a
  store i2 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %0) #32
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend49

.from.62:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend49:                               ; preds = %resume.entry, %AfterCoroSave47
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !132 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread33, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend49
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread33.sink.split unwind label %.from.60, !inline_history !1

.thread33.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !132
  br label %.thread33

.thread33:                                        ; preds = %.thread33.sink.split, %AfterCoroSuspend49
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.60

bb.g:                                             ; preds = %.thread33
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr79)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #37
  unreachable

.from.60:                                         ; preds = %bb.f, %.thread33
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  br label %bb.i

bb.i:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.60 ], [ %i.ak, %.from.62 ]
  %.07 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.07) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !154
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i18

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i22 unwind label %.from..loopexit.split-lp.i.i19

.noexc.i.i22:                                     ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !134 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !141
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i23 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i23, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !142 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i24 = icmp eq ptr %i.bc, %i.be
  br i1 %.not12.i.i.i.i.i24, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i25

.from..lr.ph.i.i.i.i.i25:                         ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  br label %.from..noexc2.i.i29

.from..noexc2.i.i29:                              ; preds = %.noexc2.i.i29, %.from..lr.ph.i.i.i.i.i25
  %.sroa.09.013.i.i.i.i.i26 = phi ptr [ %i.bc, %.from..lr.ph.i.i.i.i.i25 ], [ %i.bu, %.noexc2.i.i29 ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i26, align 8, !tbaa !147 ; 2 uses
  %i.bk = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = select i1 %i.bl, ptr %i.bm, ptr %i.bh
  %i.bo = load i64, ptr %i.bi, align 8
  %i.bp = lshr i8 %i.bk, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = select i1 %i.bl, i64 %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !149
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i29 unwind label %.from..loopexit.i.i27, !inline_history !0

.noexc2.i.i29:                                    ; preds = %.from..noexc2.i.i29
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i26, i64 16 ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.bu, %i.be
  br i1 %.not.i.i.i.i.i30, label %_ZN3tev5Latch9countDownEv.exit.i18, label %.from..noexc2.i.i29

.from..loopexit.i.i27:                            ; preds = %.from..noexc2.i.i29
  %lpad.loopexit.i.i28 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.from..loopexit.split-lp.i.i19:                   ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i20 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.from..loopexit.split-lp.i.i19, %.from..loopexit.i.i27
  %lpad.phi.i.i21 = phi { ptr, i32 } [ %lpad.loopexit.i.i28, %.from..loopexit.i.i27 ], [ %lpad.loopexit.split-lp.i.i20, %.from..loopexit.split-lp.i.i19 ]
  %i.bv = extractvalue { ptr, i32 } %lpad.phi.i.i21, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i18:               ; preds = %.noexc2.i.i29, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i18, %bb.l, %.noexc.i.i22
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !154
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !156 ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  store ptr %i.bz, ptr %.reload.addr76, align 8
  %.not.i31 = icmp eq i64 %i.by, 0
  br i1 %.not.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  %i.ca = load ptr, ptr %i.bz, align 8
  musttail call void %i.ca(ptr nonnull %i.bz)
  ret void

bb.o:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

.from.70:                                         ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i18, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !155 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 acq_rel, align 8
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !149
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  br label %CoroEnd

CoroEnd:                                          ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSave47
  ret void

bb.r:                                             ; preds = %bb.o, %.from.70
  %.pn12 = phi { ptr, i32 } [ %i.cc, %.from.70 ], [ %i.cb, %bb.o ]
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  resume { ptr, i32 } %.pn12

bb.s:                                             ; preds = %bb.o
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESA_S5_S5_mSB_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSD_PS0_iE_clESD_SI_i.destroy"(ptr noundef nonnull align 8 dereferenceable(104) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !1674

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !155  ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESA_S5_S5_mSB_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !132 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !1

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !132
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #37
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %.08 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.08) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !141
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !142  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !143  ; 2 uses
  %.not12.i.i.i.i.i25 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i25, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i26

.from..lr.ph.i.i.i.i.i26:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i30

.from..noexc2.i.i30:                              ; preds = %.noexc2.i.i30, %.from..lr.ph.i.i.i.i.i26
  %.sroa.09.013.i.i.i.i.i27 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i26 ], [ %i.aj, %.noexc2.i.i30 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !147 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !149
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !0

.noexc2.i.i30:                                    ; preds = %.from..noexc2.i.i30
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i27, i64 16 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i31, label %_ZN3tev5Latch9countDownEv.exit.i19, label %.from..noexc2.i.i30

.from..loopexit.i.i28:                            ; preds = %.from..noexc2.i.i30
  %lpad.loopexit.i.i29 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i20:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i21 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i20, %.from..loopexit.i.i28
  %lpad.phi.i.i22 = phi { ptr, i32 } [ %lpad.loopexit.i.i29, %.from..loopexit.i.i28 ], [ %lpad.loopexit.split-lp.i.i21, %.from..loopexit.split-lp.i.i20 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i22, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %bb.h, %.noexc.i.i23
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.an = load i64, ptr %i.am, align 8, !tbaa !156 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i32 = icmp eq i64 %i.an, 0
  br i1 %.not.i32, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr76, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.66:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !155 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !149
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.ar, %.from.66 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn13

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESA_S5_S5_mSB_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !439

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EES9_S4_S4_mSA_i.resume"(ptr noundef nonnull align 16 dereferenceable(144) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr178, align 16, !tbaa !132 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !1

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr178, align 16, !tbaa !132
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.e

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #32
  %i.d = load ptr, ptr %.reload.addr179, align 8, !tbaa !404 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !401 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !404
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !401
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !402
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #34
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr182)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #37
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #32
  tail call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr179) #32
  %.6 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.6) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.168

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !154
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw add ptr %i.t, i32 -1 acq_rel, align 4 ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !134  ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !141
  %i.z = and i32 %i.y, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i63, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !142 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !143 ; 2 uses
  %.not12.i.i.i.i.i64 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not12.i.i.i.i.i64, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i65

.from..lr.ph.i.i.i.i.i65:                         ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  br label %.from..noexc2.i.i69

.from..noexc2.i.i69:                              ; preds = %.noexc2.i.i69, %.from..lr.ph.i.i.i.i.i65
  %.sroa.09.013.i.i.i.i.i66 = phi ptr [ %i.ab, %.from..lr.ph.i.i.i.i.i65 ], [ %i.at, %.noexc2.i.i69 ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !147 ; 2 uses
  %i.aj = load i8, ptr %i.ae, align 8             ; 2 uses
  %i.ak = trunc i8 %i.aj to i1                    ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = select i1 %i.ak, ptr %i.al, ptr %i.ag
  %i.an = load i64, ptr %i.ah, align 8
  %i.ao = lshr i8 %i.aj, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = select i1 %i.ak, i64 %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !149
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr %i.am, i64 %i.aq, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !0

.noexc2.i.i69:                                    ; preds = %.from..noexc2.i.i69
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i66, i64 16 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i.i.i70, label %_ZN3tev5Latch9countDownEv.exit.i58, label %.from..noexc2.i.i69

.from..loopexit.i.i67:                            ; preds = %.from..noexc2.i.i69
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i59:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i60 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i59, %.from..loopexit.i.i67
  %lpad.phi.i.i61 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.from..loopexit.i.i67 ], [ %lpad.loopexit.split-lp.i.i60, %.from..loopexit.split-lp.i.i59 ]
  %i.au = extractvalue { ptr, i32 } %lpad.phi.i.i61, 0
  tail call void @__clang_call_terminate(ptr %i.au) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.av = icmp slt i32 %i.u, 2
  br i1 %i.av, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %bb.h, %.noexc.i.i62
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !154
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !156 ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  store ptr %i.ay, ptr %.reload.addr179, align 8
  %.not.i71 = icmp eq i64 %i.ax, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  %index.addr184 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i1 true, ptr %index.addr184, align 8
  %i.az = load ptr, ptr %i.ay, align 8
  musttail call void %i.az(ptr nonnull %i.ay)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.168:                                        ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !155 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = atomicrmw add ptr %i.be, i64 -1 acq_rel, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !149
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.168
  %.pn44 = phi { ptr, i32 } [ %i.bb, %.from.168 ], [ %i.ba, %bb.k ]
  store ptr null, ptr %0, align 16
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn44

bb.o:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EES9_S4_S4_mSA_i.destroy"(ptr noundef nonnull align 16 dereferenceable(144) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !1675

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #32
  %i.a = load ptr, ptr %.reload.addr179, align 8, !tbaa !404 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !401 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !404
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 16, !tbaa !401
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !402
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #34
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !155 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.l, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_i.resume"(ptr noundef nonnull align 8 dereferenceable(96) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !132 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !1

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !132
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #37
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %.012 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.012) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !141
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i28, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !142  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !143  ; 2 uses
  %.not12.i.i.i.i.i29 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i29, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i30

.from..lr.ph.i.i.i.i.i30:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i34

.from..noexc2.i.i34:                              ; preds = %.noexc2.i.i34, %.from..lr.ph.i.i.i.i.i30
  %.sroa.09.013.i.i.i.i.i31 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i30 ], [ %i.aj, %.noexc2.i.i34 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !147 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !149
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.148, i64 36)
          to label %.noexc2.i.i34 unwind label %.from..loopexit.i.i32, !inline_history !0

.noexc2.i.i34:                                    ; preds = %.from..noexc2.i.i34
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i31, i64 16 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i35, label %_ZN3tev5Latch9countDownEv.exit.i23, label %.from..noexc2.i.i34

.from..loopexit.i.i32:                            ; preds = %.from..noexc2.i.i34
  %lpad.loopexit.i.i33 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i24:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i24, %.from..loopexit.i.i32
  %lpad.phi.i.i26 = phi { ptr, i32 } [ %lpad.loopexit.i.i33, %.from..loopexit.i.i32 ], [ %lpad.loopexit.split-lp.i.i25, %.from..loopexit.split-lp.i.i24 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i26, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %bb.h, %.noexc.i.i27
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.an = load i64, ptr %i.am, align 8, !tbaa !156 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i36 = icmp eq i64 %i.an, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i1 true, ptr %index.addr80, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.70:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !155 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !149
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.ar, %.from.70 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn17

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_i.destroy"(ptr noundef nonnull align 8 dereferenceable(96) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !439

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #32
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind memory(none) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind }
attributes #33 = { noreturn }
attributes #34 = { builtin nounwind }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { allocsize(0) }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind allocsize(0) }

!llvm.module.flags = !{!49, !50, !51, !52}
!llvm.ident = !{!53}
!llvm.errno.tbaa = !{!58}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{!6, !87}
!7 = distinct !{null, null}
!8 = distinct !{!8, !87}
!9 = distinct !{!9, !87}
!10 = distinct !{!10, !87}
!11 = distinct !{null, null}
!12 = distinct !{null, null, null}
!13 = distinct !{null, null}
!14 = distinct !{!14, !87}
!15 = distinct !{!15, !87}
!16 = distinct !{!16, !87}
!17 = distinct !{!17, !87}
!18 = distinct !{null, null}
!19 = distinct !{null, null}
!20 = distinct !{!20, !87}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{!23, !87}
!24 = distinct !{!24, !87}
!25 = distinct !{!25, !87}
!26 = distinct !{null, null, null, null}
!27 = distinct !{!27, !87}
!28 = distinct !{null, null}
!29 = distinct !{null}
!30 = distinct !{null, null}
!31 = distinct !{!31, !87}
!32 = distinct !{!32, !87}
!33 = distinct !{!33, !87}
!34 = distinct !{null}
!35 = distinct !{null, null, null, null}
!36 = distinct !{null, null, null}
!37 = distinct !{null}
!38 = distinct !{!38, !87}
!39 = distinct !{!39, !87}
!40 = distinct !{null, null, null, null}
!41 = distinct !{null, null, null, null, null}
!42 = distinct !{null, null}
!43 = distinct !{!43, !87}
!44 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!45 = distinct !{null, null, null}
!46 = distinct !{ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!47 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!48 = distinct !{null}
!49 = !{i32 1, !"long-double-type", !"x86_fp80"}
!50 = !{i32 8, !"PIC Level", i32 2}
!51 = !{i32 7, !"PIE Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 2}
!53 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!"omnipotent char", !54, i64 0}
!56 = !{!"int", !55, i64 0}
!57 = !{!"__libc_errno", !56, i64 0}
!58 = !{!57, !56, i64 0}
!59 = !{!"any pointer", !55, i64 0}
!60 = !{!"p1 omnipotent char", !59, i64 0}
!61 = !{!"_ZTSNSt3__122__compressed_pair_elemIPcLi0ELb0EEE", !60, i64 0}
!62 = !{!"_ZTSNSt3__117__compressed_pairIPcNS_9allocatorIcEEEE", !61, i64 0}
!63 = !{!"_ZTSNSt3__16vectorIcNS_9allocatorIcEEEE", !60, i64 0, !60, i64 8, !62, i64 16}
!64 = !{!63, !60, i64 0}
!65 = !{!63, !60, i64 8}
!66 = !{!60, !60, i64 0}
!67 = !{!55, !55, i64 0}
!68 = !{!"p1 _ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !59, i64 0}
!69 = !{!"_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorE", !68, i64 0}
!70 = !{!"bool", !55, i64 0}
!71 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEE", !69, i64 0, !70, i64 8}
!72 = !{!71, !70, i64 8}
!73 = !{!"p1 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !59, i64 0}
!74 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEE", !73, i64 0}
!75 = !{!"_ZTSNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !74, i64 0}
!76 = !{!"_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !73, i64 0, !73, i64 8, !75, i64 16}
!77 = !{!76, !73, i64 0}
!78 = !{!73, !73, i64 0}
!79 = !{!76, !73, i64 8}
!80 = !{!"long", !55, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{i64 0, i64 24, !67}
!83 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !55, i64 0}
!84 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !83, i64 0}
!85 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !84, i64 0}
!86 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !85, i64 0}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = !{!"branch_weights", i32 8, i32 24}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!"p1 float", !59, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"float", !55, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"p1 _ZTSN3tev9VgCommandE", !59, i64 0}
!97 = !{!"_ZTSN3tev9VgCommand5ETypeE", !55, i64 0}
!98 = !{!"_ZTSNSt3__122__compressed_pair_elemIPfLi0ELb0EEE", !92, i64 0}
!99 = !{!"_ZTSNSt3__117__compressed_pairIPfNS_9allocatorIfEEEE", !98, i64 0}
!100 = !{!"_ZTSNSt3__16vectorIfNS_9allocatorIfEEEE", !92, i64 0, !92, i64 8, !99, i64 16}
!101 = !{!"_ZTSN3tev9VgCommandE", !97, i64 0, !100, i64 8, !86, i64 32}
!102 = !{!101, !97, i64 0}
!103 = !{!100, !92, i64 0}
!104 = !{!100, !92, i64 8}
!105 = !{!"_ZTSNSt3__14spanIKcLm18446744073709551615EEE", !60, i64 0, !80, i64 8}
!106 = !{!105, !80, i64 8}
!107 = !{!"_ZTSN3tev9IpcPacket7IStreamE", !105, i64 0, !80, i64 16}
!108 = !{!107, !80, i64 16}
!109 = !{!105, !60, i64 0}
!110 = !{!70, !70, i64 0}
!111 = !{!"p1 long", !59, i64 0}
!112 = !{!"_ZTSNSt3__122__compressed_pair_elemIPlLi0ELb0EEE", !111, i64 0}
!113 = !{!"_ZTSNSt3__117__compressed_pairIPlNS_9allocatorIlEEEE", !112, i64 0}
end_hunk_4
begin_hunk_5_@llvm.vector.reduce.umax.v2i64
!239 = !{!"_ZTSNSt3__114__split_bufferIN3tev9VgCommandERNS_9allocatorIS2_EEEE", !96, i64 0, !96, i64 8, !96, i64 16, !238, i64 24}
!240 = !{!239, !96, i64 0}
!241 = !{!239, !96, i64 8}
!242 = !{!"p1 _ZTSN3tev7visitorIJZNS_3IpcC1ENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEE3$_0ZNS1_C1ES6_E3$_1EEE", !59, i64 0}
!243 = !{!"_ZTSNSt3__116__variant_detail12__visitation9__variant15__value_visitorIN3tev7visitorIJZNS4_3IpcC1ENS_17basic_string_viewIcNS_11char_traitsIcEEEEE3$_0ZNS6_C1ESA_E3$_1EEEEE", !242, i64 0}
!244 = !{!243, !242, i64 0}
!245 = !{!"short", !55, i64 0}
!246 = !{!"_ZTSN3fmt3v126detail4typeE", !55, i64 0}
!247 = !{!246, !246, i64 0}
!248 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !200, i64 0, !55, i64 8}
!249 = !{!248, !200, i64 0}
!250 = !{!"_ZTSN3fmt3v1211basic_specsE", !56, i64 0, !55, i64 4}
!251 = !{!250, !56, i64 0}
!252 = !{!"_ZTSN3fmt3v1212format_specsE", !250, i64 0, !56, i64 8, !56, i64 12}
!253 = !{!252, !56, i64 12}
!254 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !80, i64 0, !56, i64 8}
!255 = !{!254, !80, i64 0}
!256 = !{!254, !56, i64 8}
!257 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !59, i64 0}
!258 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !257, i64 0, !56, i64 8}
!259 = !{!258, !56, i64 8}
!260 = !{!"branch_weights", i32 4, i32 28}
!261 = !{ptr @_ZN3fmt3v1212format_facetINSt3__16localeEED2Ev}
!262 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !70, i64 0, !55, i64 1}
!263 = !{!262, !70, i64 0}
!264 = !{!262, !55, i64 1}
!265 = !{!252, !56, i64 8}
!266 = !{!"_ZTSNSt3__114__shared_countE", !80, i64 8}
!267 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !59, i64 0}
!268 = !{!267, !267, i64 0}
!269 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !55, i64 0}
!270 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !269, i64 0, !246, i64 16}
!271 = !{!270, !246, i64 16}
!272 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !198, i64 0}
!273 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !272, i64 0, !267, i64 8, !86, i64 16, !86, i64 40, !86, i64 64}
!274 = !{!273, !267, i64 8}
!275 = !{i64 4}
!276 = !{!"p1 int", !59, i64 0}
!277 = !{!276, !276, i64 0}
!278 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !59, i64 0}
!279 = !{!278, !278, i64 0}
!280 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !59, i64 0}
!281 = !{!280, !280, i64 0}
!282 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !60, i64 0, !60, i64 8, !56, i64 16}
!283 = !{!282, !60, i64 0}
!284 = !{!282, !60, i64 8}
!285 = !{!282, !56, i64 16}
!286 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !276, i64 0, !80, i64 8, !80, i64 16, !59, i64 24}
!287 = !{!286, !276, i64 0}
!288 = !{!286, !80, i64 16}
!289 = !{!286, !80, i64 8}
!290 = !{!195, !60, i64 0}
!291 = !{!195, !80, i64 8}
!292 = !{!"_ZTSN3fmt3v124signE", !55, i64 0}
!293 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEEUlS4_E_", !292, i64 0, !60, i64 8}
!294 = !{!293, !292, i64 0}
!295 = !{!293, !60, i64 8}
!296 = !{!292, !292, i64 0}
!297 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !56, i64 0, !56, i64 4}
!298 = !{!297, !56, i64 4}
!299 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !59, i64 0}
!300 = !{!299, !299, i64 0}
!301 = !{!"p1 _ZTSN3fmt3v126detail23fallback_digit_groupingIcEE", !59, i64 0}
!302 = !{!301, !301, i64 0}
!303 = !{!"p1 bool", !59, i64 0}
!304 = !{!303, !303, i64 0}
!305 = !{!297, !56, i64 0}
!306 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !80, i64 0, !56, i64 8}
!307 = !{!306, !56, i64 8}
!308 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !59, i64 0}
!309 = !{!308, !308, i64 0}
!310 = !{!306, !80, i64 0}
!311 = !{!"_ZTSN3fmt3v126detail14big_decimal_fpE", !60, i64 0, !56, i64 8, !56, i64 12}
!312 = !{!311, !60, i64 0}
!313 = !{!311, !56, i64 8}
!314 = !{!311, !56, i64 12}
!315 = !{!"__int128", !55, i64 0}
!316 = !{!315, !315, i64 0}
!317 = !{!"_ZTSN3fmt3v126detail6bufferIjEE", !276, i64 0, !80, i64 8, !80, i64 16, !59, i64 24}
!318 = !{!317, !59, i64 24}
!319 = !{!317, !276, i64 0}
!320 = !{!317, !80, i64 16}
!321 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEE", !317, i64 0, !55, i64 32}
!322 = !{!"_ZTSN3fmt3v126detail6bigintE", !321, i64 0, !56, i64 160}
!323 = !{!322, !56, i64 160}
!324 = !{!317, !80, i64 8}
!325 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !292, i64 0, !311, i64 8, !56, i64 24, !55, i64 28, !56, i64 32, !55, i64 36, !56, i64 40}
!326 = !{!325, !292, i64 0}
!327 = !{!325, !56, i64 24}
!328 = !{!325, !55, i64 28}
!329 = !{!325, !56, i64 32}
!330 = !{!325, !55, i64 36}
!331 = !{!325, !56, i64 40}
!332 = !{!"p1 _ZTSN3fmt3v126detail14big_decimal_fpE", !59, i64 0}
!333 = !{!"_ZTSN3fmt3v126detail20thousands_sep_resultIcEE", !86, i64 0, !55, i64 24}
!334 = !{!333, !55, i64 24}
!335 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !59, i64 0}
!336 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !335, i64 0, !80, i64 8}
!337 = !{!336, !80, i64 8}
!338 = !{!336, !335, i64 0}
!339 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !60, i64 0, !56, i64 8}
!340 = !{!339, !60, i64 0}
!341 = !{!339, !56, i64 8}
!342 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !55, i64 0}
!343 = !{!342, !342, i64 0}
!344 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !59, i64 0}
!345 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !59, i64 0}
!346 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !292, i64 0, !306, i64 8, !56, i64 24, !55, i64 28, !56, i64 32, !55, i64 36, !56, i64 40}
!347 = !{!346, !292, i64 0}
!348 = !{!346, !56, i64 24}
!349 = !{!346, !55, i64 28}
!350 = !{!346, !56, i64 32}
!351 = !{!346, !55, i64 36}
!352 = !{!346, !56, i64 40}
!353 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !59, i64 0}
!354 = !{!353, !353, i64 0}
!355 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUlS4_E_", !70, i64 0, !80, i64 8, !195, i64 16}
!356 = !{!355, !70, i64 0}
!357 = !{!355, !80, i64 8}
!358 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !191, i64 0, !55, i64 32, !80, i64 288}
!359 = !{!358, !80, i64 288}
!360 = !{!"p1 _ZTSN4tlog13ConsoleOutputE", !59, i64 0}
!361 = !{!"_ZTSNSt3__110shared_ptrIN4tlog13ConsoleOutputEEE", !360, i64 0, !145, i64 8}
!362 = !{!361, !145, i64 8}
!363 = !{!146, !145, i64 8}
!364 = !{!"p1 _ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !59, i64 0}
!365 = !{!364, !364, i64 0}
!366 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE16__destroy_vectorE", !364, i64 0}
!367 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEE", !366, i64 0, !70, i64 8}
!368 = !{!367, !70, i64 8}
!369 = !{!136, !136, i64 0}
!370 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !59, i64 0}
!371 = !{!"_ZTSN4tlog7IOutputE"}
!372 = !{!"_ZTSNSt3__15mutexE", !55, i64 0}
!373 = !{!"_ZTSN4tlog13ConsoleOutputE", !371, i64 0, !70, i64 8, !370, i64 16, !372, i64 24}
!374 = !{!373, !70, i64 8}
!375 = !{!"_ZTSNSt3__18ios_baseE", !56, i64 8, !80, i64 16, !80, i64 24, !56, i64 32, !56, i64 36, !59, i64 40, !59, i64 48, !128, i64 56, !276, i64 64, !80, i64 72, !80, i64 80, !111, i64 88, !80, i64 96, !80, i64 104, !128, i64 112, !80, i64 120, !80, i64 128}
!376 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !375, i64 0, !370, i64 136, !56, i64 144}
!377 = !{!376, !56, i64 144}
!378 = !{!"p1 _ZTSNSt3__16locale5__impE", !59, i64 0}
!379 = !{!"_ZTSNSt3__16localeE", !378, i64 0}
!380 = !{!"_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !379, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56}
!381 = !{!"_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !380, i64 0, !86, i64 64, !60, i64 88, !56, i64 96}
!382 = !{!381, !56, i64 96}
!383 = !{!381, !60, i64 88}
!384 = !{!380, !60, i64 48}
!385 = !{!380, !60, i64 32}
!386 = !{!"_ZTSSt9type_info", !60, i64 8}
!387 = !{!386, !60, i64 8}
!388 = !{!"p1 _ZTSN3tev7visitorIJZNS_3Ipc28receiveFromSecondaryInstanceENSt3__18functionIFvRKNS_9IpcPacketEEEEE3$_0ZNS1_28receiveFromSecondaryInstanceES8_E3$_1EEE", !59, i64 0}
!389 = !{!"_ZTSNSt3__116__variant_detail12__visitation9__variant15__value_visitorIN3tev7visitorIJZNS4_3Ipc28receiveFromSecondaryInstanceENS_8functionIFvRKNS4_9IpcPacketEEEEE3$_0ZNS6_28receiveFromSecondaryInstanceESC_E3$_1EEEEE", !388, i64 0}
!390 = !{!389, !388, i64 0}
!391 = !{!"p1 _ZTSN3tev7visitorIJZNKS_3Ipc8hostnameEvE3$_0ZNKS1_8hostnameEvE3$_1EEE", !59, i64 0}
!392 = !{!"_ZTSNSt3__116__variant_detail12__visitation9__variant15__value_visitorIN3tev7visitorIJZNKS4_3Ipc8hostnameEvE3$_0ZNKS6_8hostnameEvE3$_1EEEEE", !391, i64 0}
!393 = !{!392, !391, i64 0}
!394 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EES9_S4_S4_mSA_iEUlvE_", !80, i64 0, !80, i64 8, !59, i64 16}
!395 = !{!394, !80, i64 0}
!396 = !{!394, !80, i64 8}
!397 = !{!"p1 _ZTSN3tev4TaskIvEE", !59, i64 0}
!398 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev4TaskIvEELi0ELb0EEE", !397, i64 0}
!399 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev4TaskIvEENS_9allocatorIS3_EEEE", !398, i64 0}
!400 = !{!"_ZTSNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEEE", !397, i64 0, !397, i64 8, !399, i64 16}
!401 = !{!400, !397, i64 8}
!402 = !{!397, !397, i64 0}
!403 = !{!145, !145, i64 0}
!404 = !{!400, !397, i64 0}
!405 = !{!"_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.Frame Slot", !54, i64 0}
!406 = !{!405, !405, i64 0}
!407 = !{!"p1 _ZTSSt13exception_ptr", !59, i64 0}
!408 = !{!"_ZTSNSt3__122__compressed_pair_elemIPSt13exception_ptrLi0ELb0EEE", !407, i64 0}
!409 = !{!"_ZTSNSt3__117__compressed_pairIPSt13exception_ptrNS_9allocatorIS1_EEEE", !408, i64 0}
!410 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !407, i64 0, !407, i64 8, !409, i64 16}
!411 = !{!410, !407, i64 8}
!412 = !{!410, !407, i64 0}
!413 = !{!407, !407, i64 0}
!414 = !{!"p1 _ZTSNSt3__120__packaged_task_baseIFvvEEE", !59, i64 0}
!415 = !{!"_ZTSNSt3__124__packaged_task_functionIFvvEEE", !229, i64 0, !414, i64 32}
!416 = !{!415, !414, i64 32}
!417 = !{!"p1 _ZTSNSt3__113packaged_taskIFvvEEE", !59, i64 0}
!418 = !{!"_ZTSNSt3__110shared_ptrINS_13packaged_taskIFvvEEEEE", !417, i64 0, !145, i64 8}
!419 = !{!418, !417, i64 0}
!420 = !{!418, !145, i64 8}
!421 = !{!"p1 _ZTSN3tev10ThreadPool10QueuedTaskE", !59, i64 0}
!422 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev10ThreadPool10QueuedTaskELi0ELb0EEE", !421, i64 0}
!423 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !422, i64 0}
!424 = !{!"_ZTSNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !421, i64 0, !421, i64 8, !423, i64 16}
!425 = !{!"p1 _ZTSNSt3__110__function6__baseIFvvEEE", !59, i64 0}
!426 = !{!"_ZTSNSt3__110__function12__value_funcIFvvEEE", !229, i64 0, !425, i64 32}
!427 = !{!426, !425, i64 32}
!428 = !{!"_ZTSNSt3__18functionIFvvEEE", !426, i64 0}
!429 = !{!"_ZTSN3tev10ThreadPool10QueuedTaskE", !428, i64 0, !56, i64 48, !70, i64 52}
!430 = !{!429, !56, i64 48}
!431 = !{!424, !421, i64 8}
!432 = !{!421, !421, i64 0}
!433 = !{!424, !421, i64 0}
!434 = !{!"p1 _ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !59, i64 0}
!435 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorE", !434, i64 0}
!436 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEE", !435, i64 0, !70, i64 8}
!437 = !{!436, !70, i64 8}
!438 = !{ptr @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE}
!439 = !{!"branch_weights", i32 -693363755, i32 -1546098377}
!440 = distinct !{!440, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_"}
!441 = distinct !{!441, !440, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_: argument 0"}
!442 = distinct !{!442, !87}
!443 = distinct !{!443, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPcEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!444 = distinct !{!444, !443, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPcEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!445 = distinct !{!445, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPcEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!446 = distinct !{!446, !445, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPcEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!447 = distinct !{!447, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPcEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!448 = distinct !{!448, !447, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPcEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!449 = distinct !{!449, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPcEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!450 = distinct !{!450, !449, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPcEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!451 = distinct !{!451, !87, !88, !89}
!452 = distinct !{!452, !87, !88, !89}
!453 = distinct !{!453, !91}
!454 = distinct !{!454, !87, !88}
!455 = distinct !{!455, !87, !88, !89}
!456 = distinct !{!456, !87, !89, !88}
!457 = distinct !{!457, !"_ZN3fmt3v126formatIJRmEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!458 = distinct !{!458, !457, !"_ZN3fmt3v126formatIJRmEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!459 = !{!68, !68, i64 0}
!460 = !{!441}
!461 = !{!"_ZTSN3tev9IpcPacket11ChannelDescE", !86, i64 0, !80, i64 24, !80, i64 32}
!462 = !{!461, !80, i64 24}
!463 = !{!461, !80, i64 32}
!464 = !{!450, !448, !446, !444}
!465 = !{!"_ZTSNSt3__14spanIKfLm18446744073709551615EEE", !92, i64 0, !80, i64 8}
!466 = !{!465, !80, i64 8}
!467 = !{!458}
!468 = distinct !{!468, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPcEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!469 = distinct !{!469, !468, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPcEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!470 = distinct !{!470, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPcEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!471 = distinct !{!471, !470, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPcEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!472 = distinct !{!472, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPcEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!473 = distinct !{!473, !472, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPcEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!474 = distinct !{!474, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPcEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!475 = distinct !{!475, !474, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPcEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!476 = distinct !{!476, !87, !88, !89}
!477 = distinct !{!477, !87, !88, !89}
!478 = distinct !{!478, !91}
!479 = distinct !{!479, !87, !88}
!480 = !{!"_ZTSNSt3__14spanIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELm18446744073709551615EEE", !73, i64 0, !80, i64 8}
!481 = !{!480, !80, i64 8}
!482 = !{!475, !473, !471, !469}
!483 = distinct !{!483, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPcEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!484 = distinct !{!484, !483, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPcEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!485 = distinct !{!485, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPcEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!486 = distinct !{!486, !485, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPcEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!487 = distinct !{!487, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPcEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!488 = distinct !{!488, !487, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPcEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!489 = distinct !{!489, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPcEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!490 = distinct !{!490, !489, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPcEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!491 = distinct !{!491, !87, !88, !89}
!492 = distinct !{!492, !87, !88, !89}
!493 = distinct !{!493, !91}
!494 = distinct !{!494, !87, !88}
!495 = distinct !{!495, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPcEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!496 = distinct !{!496, !495, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPcEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!497 = distinct !{!497, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPcEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!498 = distinct !{!498, !497, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPcEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!499 = distinct !{!499, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPcEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!500 = distinct !{!500, !499, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPcEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!501 = distinct !{!501, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPcEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!502 = distinct !{!502, !501, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPcEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!503 = distinct !{!503, !87, !88, !89}
!504 = distinct !{!504, !87, !88, !89}
!505 = distinct !{!505, !91}
!506 = distinct !{!506, !87, !88}
!507 = !{!"_ZTSNSt3__14spanIKN3tev9VgCommandELm18446744073709551615EEE", !96, i64 0, !80, i64 8}
!508 = !{!507, !80, i64 8}
!509 = !{!507, !96, i64 0}
!510 = !{!490, !488, !486, !484}
!511 = !{!502, !500, !498, !496}
!512 = distinct !{!512, !87}
!513 = distinct !{!513, !"_ZNKRSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne180100Emm"}
!514 = distinct !{!514, !513, !"_ZNKRSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne180100Emm: argument 0"}
!515 = distinct !{!515, !"_ZNKRSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne180100Emm"}
!516 = distinct !{!516, !515, !"_ZNKRSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne180100Emm: argument 0"}
!517 = !{!514}
!518 = !{!516}
!519 = distinct !{!519, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPcEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!520 = distinct !{!520, !519, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPcEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!521 = distinct !{!521, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPcEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!522 = distinct !{!522, !521, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPcEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!523 = distinct !{!523, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPcEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!524 = distinct !{!524, !523, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPcEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!525 = distinct !{!525, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPcEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!526 = distinct !{!526, !525, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPcEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!527 = distinct !{!527, !87, !88, !89}
!528 = distinct !{!528, !87, !88, !89}
!529 = distinct !{!529, !91}
!530 = distinct !{!530, !87, !88}
!531 = distinct !{!531, !87}
!532 = !{!526, !524, !522, !520}
!533 = distinct !{!533, !87}
!534 = distinct !{!534, !91}
!535 = distinct !{!535, !87, !88, !89}
!536 = distinct !{!536, !87}
!537 = distinct !{!537, !87, !89, !88}
!538 = distinct !{null}
!539 = distinct !{!539, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!540 = distinct !{!540, !539, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!541 = distinct !{!541, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!542 = distinct !{!542, !541, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!543 = distinct !{!543, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!544 = distinct !{!544, !543, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!545 = distinct !{!545, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!546 = distinct !{!546, !545, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!547 = !{i64 0, i64 8, !127, i64 8, i64 8, !130}
!548 = !{!540}
!549 = !{!542}
!550 = !{!542, !540}
!551 = !{!544, !542, !540}
!552 = !{!546}
!553 = distinct !{!553, !87}
!554 = !{!"_ZTSN3tev23IpcPacketVectorGraphicsE", !86, i64 0, !70, i64 24, !70, i64 25, !56, i64 28, !164, i64 32}
!555 = !{!554, !56, i64 28}
!556 = distinct !{!556, !"_ZN3fmt3v126formatIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEEEENS2_12basic_stringIcS5_NS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!557 = distinct !{!557, !556, !"_ZN3fmt3v126formatIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEEEENS2_12basic_stringIcS5_NS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!558 = distinct !{!558, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!559 = distinct !{!559, !558, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!560 = distinct !{!560, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!561 = distinct !{!561, !560, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!562 = distinct !{!562, !"_ZN3fmt3v126formatIJRKNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEEEENS2_12basic_stringIcS5_NS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSE_"}
!563 = distinct !{!563, !562, !"_ZN3fmt3v126formatIJRKNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEEEENS2_12basic_stringIcS5_NS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSE_: argument 0"}
!564 = distinct !{!564, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!565 = distinct !{!565, !564, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!566 = distinct !{!566, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!567 = distinct !{!567, !566, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!568 = distinct !{!568, !"_ZNSt3__14__fs10filesystemdvB8ne180100ERKNS1_4pathES4_"}
!569 = distinct !{!569, !568, !"_ZNSt3__14__fs10filesystemdvB8ne180100ERKNS1_4pathES4_: argument 0"}
!570 = distinct !{!570, !"_ZNK3tev3Ipc8hostnameEv"}
!571 = distinct !{!571, !570, !"_ZNK3tev3Ipc8hostnameEv: argument 0"}
!572 = distinct !{!572, !"_ZNK3tev3Ipc8hostnameEv"}
!573 = distinct !{!573, !572, !"_ZNK3tev3Ipc8hostnameEv: argument 0"}
!574 = distinct !{!574, !"_ZN3fmt3v126formatIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEEEENS2_12basic_stringIcS5_NS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!575 = distinct !{!575, !574, !"_ZN3fmt3v126formatIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEEEENS2_12basic_stringIcS5_NS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!576 = distinct !{null}
!577 = distinct !{!577, !"_ZNK3tev3Ipc8hostnameEv"}
!578 = distinct !{!578, !577, !"_ZNK3tev3Ipc8hostnameEv: argument 0"}
!579 = distinct !{!579, !87}
!580 = !{!"_ZTSNSt3__124__optional_destruct_baseIN3tev11FlatpakInfoELb0EEE", !55, i64 0, !70, i64 64}
!581 = !{!580, !70, i64 64}
!582 = !{!557}
!583 = !{!559}
!584 = !{!561}
!585 = !{!561, !559}
!586 = !{!563}
!587 = !{!565}
!588 = !{!567}
!589 = !{!567, !565}
!590 = !{!569}
!591 = !{!571}
!592 = !{!573}
!593 = !{!575}
!594 = !{!215, !215, i64 0}
!595 = !{!216, !216, i64 0}
!596 = !{!218, !56, i64 12}
!597 = !{!578}
!598 = !{!218, !213, i64 40}
!599 = distinct !{!599, !87}
!600 = distinct !{!600, !"_ZNSt3__14__fs10filesystemdvB8ne180100ERKNS1_4pathES4_"}
!601 = distinct !{!601, !600, !"_ZNSt3__14__fs10filesystemdvB8ne180100ERKNS1_4pathES4_: argument 0"}
!602 = distinct !{!602, !"_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev"}
!603 = distinct !{!603, !602, !"_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev: argument 0"}
!604 = distinct !{!604, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_"}
!605 = distinct !{!605, !604, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!606 = distinct !{null, null, null}
!607 = distinct !{!607, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_"}
!608 = distinct !{!608, !607, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!609 = distinct !{!609, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_"}
!610 = distinct !{!610, !609, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!611 = distinct !{null}
!612 = distinct !{!612, !"_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev"}
!613 = distinct !{!613, !612, !"_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev: argument 0"}
!614 = distinct !{!614, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_"}
!615 = distinct !{!615, !614, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!616 = distinct !{!616, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_"}
!617 = distinct !{!617, !616, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!618 = distinct !{!618, !"_ZNK3tev3Ipc8hostnameEv"}
!619 = distinct !{!619, !618, !"_ZNK3tev3Ipc8hostnameEv: argument 0"}
!620 = !{!601}
!621 = !{!603}
!622 = !{!605}
!623 = !{!608}
!624 = !{!610}
!625 = !{!613}
!626 = !{!615}
!627 = !{!617}
!628 = !{!619}
!629 = distinct !{null, null, null, null}
!630 = distinct !{null}
!631 = distinct !{ptr @_ZNSt3__110__list_impIN3tev3Ipc16SocketConnectionENS_9allocatorIS3_EEED2Ev, null, null, null, null}
!632 = distinct !{!632, !87}
!633 = distinct !{!633, !"_ZNK3tev3Ipc8hostnameEv"}
!634 = distinct !{!634, !633, !"_ZNK3tev3Ipc8hostnameEv: argument 0"}
!635 = distinct !{!635, !"_ZNK3tev3Ipc8hostnameEv"}
!636 = distinct !{!636, !635, !"_ZNK3tev3Ipc8hostnameEv: argument 0"}
!637 = !{!634}
!638 = !{!636}
!639 = distinct !{!639, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_"}
end_hunk_5
begin_hunk_6_@llvm.vector.reduce.umax.v2i64
!1472 = distinct !{!1472, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1473 = distinct !{!1473, !1472, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1474 = distinct !{!1474, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1475 = distinct !{!1475, !1474, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1476 = distinct !{!1476, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1477 = distinct !{!1477, !1476, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1478 = !{!1471}
!1479 = !{!1473}
!1480 = !{!1473, !1471}
!1481 = !{!1475, !1473, !1471}
!1482 = !{!1477}
!1483 = distinct !{!1483, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1484 = distinct !{!1484, !1483, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1485 = distinct !{!1485, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1486 = distinct !{!1486, !1485, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1487 = distinct !{!1487, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1488 = distinct !{!1488, !1487, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1489 = distinct !{!1489, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1490 = distinct !{!1490, !1489, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1491 = !{!1484}
!1492 = !{!1486}
!1493 = !{!1486, !1484}
!1494 = !{!1488, !1486, !1484}
!1495 = !{!1490}
!1496 = !{!394, !59, i64 16}
!1497 = distinct !{!1497, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_"}
!1498 = distinct !{!1498, !1497, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1499 = distinct !{!1499, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1500 = distinct !{!1500, !1499, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1501 = distinct !{!1501, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_"}
!1502 = distinct !{!1502, !1501, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_: argument 0"}
!1503 = distinct !{ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1504 = distinct !{!1504, !87}
!1505 = !{!1498}
!1506 = !{!1500}
!1507 = !{!1500, !1498}
!1508 = !{!1502, !1500, !1498}
!1509 = !{!"p1 _ZTSNSt3__16threadE", !59, i64 0}
!1510 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEE", !1509, i64 0}
!1511 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEE", !1510, i64 0}
!1512 = !{!"_ZTSNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEE", !1509, i64 0, !1509, i64 8, !1511, i64 16}
!1513 = !{!"_ZTSN3tev10ThreadPool10QueuedTask10ComparatorE"}
!1514 = !{!"_ZTSN3tev13PriorityQueueINS_10ThreadPool10QueuedTaskENS2_10ComparatorEEE", !424, i64 0, !1513, i64 24}
!1515 = !{!"_ZTSNSt3__115recursive_mutexE", !55, i64 0}
!1516 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIlEE", !55, i64 0}
!1517 = !{!"_ZTSNSt3__117__cxx_atomic_implIlNS_22__cxx_atomic_base_implIlEEEE", !1516, i64 0}
!1518 = !{!"_ZTSNSt3__113__atomic_baseIlLb0EEE", !1517, i64 0}
!1519 = !{!"_ZTSNSt3__113__atomic_baseIlLb1EEE", !1518, i64 0}
!1520 = !{!"_ZTSNSt3__16atomicIlEE", !1519, i64 0}
!1521 = !{!"_ZTSN10moodycamel7details9SemaphoreE", !55, i64 0}
!1522 = !{!"_ZTSN10moodycamel20LightweightSemaphoreE", !1520, i64 0, !1521, i64 8, !56, i64 40}
!1523 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !55, i64 0}
!1524 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !1523, i64 0}
!1525 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !1524, i64 0}
!1526 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !1525, i64 0}
!1527 = !{!"_ZTSNSt3__16atomicImEE", !1526, i64 0}
!1528 = !{!"_ZTSN3tev10ThreadPoolE", !70, i64 8, !1512, i64 16, !1514, i64 40, !1515, i64 72, !1522, i64 112, !1515, i64 160, !1527, i64 200, !1527, i64 208}
!1529 = !{!1528, !70, i64 8}
!1530 = !{!429, !70, i64 52}
!1531 = !{ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEED2Ev}
!1532 = distinct !{null, null, null}
!1533 = !{!"_ZTSNSt3__116coroutine_handleIvEE", !59, i64 0}
!1534 = !{!1533, !59, i64 0}
!1535 = distinct !{!1535, !87}
!1536 = distinct !{null, null, null, null, null, null, null, null, null}
!1537 = distinct !{null, null, null, null}
!1538 = distinct !{null}
!1539 = distinct !{!1539, !87}
!1540 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1541 = distinct !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev, null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1542 = !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev}
!1543 = distinct !{null}
!1544 = !{!"_ZTSNSt3__17promiseIvEE", !157, i64 0}
!1545 = !{!"_ZTSNSt3__113packaged_taskIFvvEEE", !415, i64 0, !1544, i64 48}
!1546 = !{!1545, !157, i64 48}
!1547 = !{!"_ZTSSt13exception_ptr", !59, i64 0}
!1548 = !{!"_ZTSNSt3__118condition_variableE", !55, i64 0}
!1549 = !{!"_ZTSNSt3__117__assoc_sub_stateE", !266, i64 0, !1547, i64 16, !372, i64 24, !1548, i64 64, !56, i64 112}
!1550 = !{!1549, !56, i64 112}
!1551 = !{!1547, !59, i64 0}
!1552 = distinct !{!1552, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1553 = distinct !{!1553, !1552, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1554 = distinct !{!1554, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1555 = distinct !{!1555, !1554, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1556 = distinct !{!1556, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1557 = distinct !{!1557, !1556, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1558 = distinct !{!1558, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1559 = distinct !{!1559, !1558, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1560 = distinct !{!1560, !87}
!1561 = distinct !{!1561, !87, !1569}
!1562 = !{!1553}
!1563 = !{!1555}
!1564 = !{!1555, !1553}
!1565 = !{!1557, !1555, !1553}
!1566 = !{!1559}
!1567 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_9IpcPacket22interpretAsUpdateImageEvE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_", !59, i64 0}
!1568 = !{!1567, !59, i64 0}
!1569 = !{!"llvm.loop.unswitch.partial.disable"}
!1570 = distinct !{!1570, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_"}
!1571 = distinct !{!1571, !1570, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!1572 = distinct !{!1572, !87}
!1573 = !{!434, !434, i64 0}
!1574 = !{!1571}
!1575 = distinct !{!1575, !87}
!1576 = !{!435, !434, i64 0}
!1577 = distinct !{null, null}
!1578 = distinct !{!1578, !"_ZN3fmt3v126formatIJNSt3__14__fs10filesystem4pathEPKcEEENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_"}
!1579 = distinct !{!1579, !1578, !"_ZN3fmt3v126formatIJNSt3__14__fs10filesystem4pathEPKcEEENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_: argument 0"}
!1580 = distinct !{!1580, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1581 = distinct !{!1581, !1580, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1582 = distinct !{!1582, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1583 = distinct !{!1583, !1582, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1584 = !{!1579}
!1585 = !{!1581}
!1586 = !{!1583}
!1587 = !{!1583, !1581}
!1588 = distinct !{!1588, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_"}
!1589 = distinct !{!1589, !1588, !"_ZN3fmt3v126formatIJNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!1590 = distinct !{!1590, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1591 = distinct !{!1591, !1590, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1592 = distinct !{!1592, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1593 = distinct !{!1593, !1592, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1594 = !{!1589}
!1595 = !{!1591}
!1596 = !{!1593}
!1597 = !{!1593, !1591}
!1598 = distinct !{!1598, !"_ZN3fmt3v126formatIJPKcEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!1599 = distinct !{!1599, !1598, !"_ZN3fmt3v126formatIJPKcEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1600 = distinct !{!1600, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1601 = distinct !{!1601, !1600, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1602 = distinct !{!1602, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1603 = distinct !{!1603, !1602, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1604 = !{!1599}
!1605 = !{!1601}
!1606 = !{!1603}
!1607 = !{!1603, !1601}
!1608 = distinct !{!1608, !"_ZN3fmt3v126formatIJRiNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEES9_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!1609 = distinct !{!1609, !1608, !"_ZN3fmt3v126formatIJRiNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEES9_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!1610 = distinct !{!1610, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1611 = distinct !{!1611, !1610, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1612 = distinct !{!1612, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1613 = distinct !{!1613, !1612, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1614 = !{!1609}
!1615 = !{!1611}
!1616 = !{!1613}
!1617 = !{!1613, !1611}
!1618 = distinct !{!1618, !"_ZN3fmt3v126formatIJxNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_"}
!1619 = distinct !{!1619, !1618, !"_ZN3fmt3v126formatIJxNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!1620 = distinct !{!1620, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1621 = distinct !{!1621, !1620, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1622 = distinct !{!1622, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1623 = distinct !{!1623, !1622, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1624 = !{!1619}
!1625 = !{!1621}
!1626 = !{!1623}
!1627 = !{!1623, !1621}
!1628 = distinct !{!1628, !87, !88, !89}
!1629 = distinct !{!1629, !87, !88, !89}
!1630 = distinct !{!1630, !91}
!1631 = distinct !{!1631, !87, !88}
!1632 = distinct !{!1632, !"_ZN3fmt3v126formatIJRNSt3__14__fs10filesystem4pathEEEENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSE_"}
!1633 = distinct !{!1633, !1632, !"_ZN3fmt3v126formatIJRNSt3__14__fs10filesystem4pathEEEENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSE_: argument 0"}
!1634 = distinct !{!1634, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1635 = distinct !{!1635, !1634, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1636 = distinct !{!1636, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1637 = distinct !{!1637, !1636, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1638 = !{!1633}
!1639 = !{!1635}
!1640 = !{!1637}
!1641 = !{!1637, !1635}
!1642 = distinct !{!1642, !"_ZN3fmt3v126formatIJRKiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEEESA_NS0_7fstringIJDpT_EE1tEDpOSC_"}
!1643 = distinct !{!1643, !1642, !"_ZN3fmt3v126formatIJRKiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEEESA_NS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1644 = distinct !{!1644, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1645 = distinct !{!1645, !1644, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1646 = distinct !{!1646, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1647 = distinct !{!1647, !1646, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1648 = !{!1643}
!1649 = !{!1645}
!1650 = !{!1647}
!1651 = !{!1647, !1645}
!1652 = distinct !{!1652, !"_ZN3fmt3v126formatIJRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKiEEES8_NS0_7fstringIJDpT_EE1tEDpOSD_"}
!1653 = distinct !{!1653, !1652, !"_ZN3fmt3v126formatIJRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKiEEES8_NS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!1654 = distinct !{!1654, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1655 = distinct !{!1655, !1654, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1656 = distinct !{!1656, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1657 = distinct !{!1657, !1656, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1658 = !{!1653}
!1659 = !{!1655}
!1660 = !{!1657}
!1661 = !{!1657, !1655}
!1662 = distinct !{!1662, !"_ZN3fmt3v126formatIJRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERiEEES8_NS0_7fstringIJDpT_EE1tEDpOSC_"}
!1663 = distinct !{!1663, !1662, !"_ZN3fmt3v126formatIJRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERiEEES8_NS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1664 = distinct !{!1664, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1665 = distinct !{!1665, !1664, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1666 = distinct !{!1666, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1667 = distinct !{!1667, !1666, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1668 = !{!1663}
!1669 = !{!1665}
!1670 = !{!1667}
!1671 = !{!1667, !1665}
!1672 = !{!"branch_weights", i32 118691432, i32 -2004248167}
!1673 = !{!"branch_weights", i32 -171659984, i32 343608614}
!1674 = !{!"branch_weights", i32 171804307, i32 -2008213419}
!1675 = !{!"branch_weights", i32 -1751137347, i32 -840054308}
end_hunk_6
