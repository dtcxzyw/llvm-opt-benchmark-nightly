Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SsdFile?download=true
inline.NumInlined: 4657
inline.NumDeleted: 2099
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8facebook5velox5cache7SsdFile17growOrEvictLockedEv:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.aw, ptr %i.z, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d
  %i.ax = phi i32 [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ab, %bb.d ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.az = sext i32 %i.ax to i64
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !185
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.az
  store i32 0, ptr %i.bb, align 4, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bd = load i32, ptr %i.i, align 8, !tbaa !170
  %i.be = sext i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !185
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.be
  store i32 0, ptr %i.bg, align 4, !tbaa !40
  %i.bh = load i32, ptr %i.i, align 8, !tbaa !170
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.i, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.3, i32 noundef 299)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.j unwind label %bb.p       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.15, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.16, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bm = load ptr, ptr %0, align 8, !tbaa !49
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !107
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bm, i64 noundef %i.bo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.p ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.17, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.br = load i32, ptr %i.i, align 8, !tbaa !170
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef %i.br)
          to label %bb.k unwind label %bb.p       ; 2 uses

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %bb.k
  %i.bu = load i32, ptr %i.k, align 8, !tbaa !109
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i32 noundef %i.bu)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %.critedge unwind label %bb.p  ; 0 uses

.critedge:                                        ; preds = %bb.l
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %.loopexit99

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.a
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.m
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !45
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.n:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.f, %bb.b
  %i.cc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.r

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.k, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62, %bb.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #33
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn37 = phi { ptr, i32 } [ %i.ce, %bb.p ], [ %i.cd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %bb.q ], [ %i.cc, %bb.n ] ; 3 uses
  %.220 = extractvalue { ptr, i32 } %.pn37.pn, 1
  %i.cf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #33
  %i.cg = icmp eq i32 %.220, %i.cf
  br i1 %i.cg, label %bb.s, label %bb.av

bb.s:                                             ; preds = %bb.r
  %.223 = extractvalue { ptr, i32 } %.pn37.pn, 0
  %i.ch = call ptr @__cxa_begin_catch(ptr %.223) #33 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !446
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.3, i32 noundef 305, i32 noundef 2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.u unwind label %bb.y       ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.15, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %bb.u
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.20, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.co = load ptr, ptr %0, align 8, !tbaa !49
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !107
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef %i.co, i64 noundef %i.cq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit75 unwind label %bb.y ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit75: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull @.str.17, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit75
  %i.ct = load i32, ptr %i.i, align 8, !tbaa !170
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i32 noundef %i.ct)
          to label %bb.v unwind label %bb.y       ; 2 uses

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.21, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79: ; preds = %bb.v
  %i.cw = load ptr, ptr %i.ch, align 8, !tbaa !121
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef ptr %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.ch) #33
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef %i.cz)
          to label %bb.w unwind label %bb.y       ; 0 uses

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.aa

bb.x:                                             ; preds = %bb.s
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.v, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit75, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77, %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn40 = phi { ptr, i32 } [ %i.dc, %bb.y ], [ %i.db, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  invoke void @__cxa_end_catch()
          to label %bb.av unwind label %bb.aw

bb.aa:                                            ; preds = %bb.w
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ab:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.df = load atomic i8, ptr %i.de seq_cst, align 8
  %i.dg = icmp eq i8 %i.df, 1
  br i1 %i.dg, label %.preheader98, label %bb.aj

.preheader98:                                     ; preds = %bb.ab
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #33
  %i.di = sdiv i64 %i.dh, 1000000                 ; 2 uses
  %invariant.op = add nsw i64 %i.di, -1000
  %8 = load atomic i64, ptr @_ZZN8facebook5velox5cache7SsdFile17growOrEvictLockedEvE11FB_LEM_hist acquire, align 8 ; 2 uses
  %9 = icmp sgt i64 %8, %invariant.op
  br i1 %9, label %.loopexit99, label %bb.ac

bb.ac:                                            ; preds = %.preheader98
  %i.dj = cmpxchg ptr @_ZZN8facebook5velox5cache7SsdFile17growOrEvictLockedEvE11FB_LEM_hist, i64 %8, i64 %i.di seq_cst seq_cst, align 8
  %i.dk = extractvalue { i64, i1 } %i.dj, 1
  br i1 %i.dk, label %bb.ad, label %.loopexit99

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str.3, i32 noundef 316, i32 noundef 1)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.af unwind label %bb.ah     ; 3 uses

bb.af:                                            ; preds = %bb.ae
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull @.str.15, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %bb.af
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull @.str.20, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.do = load ptr, ptr %0, align 8, !tbaa !49
  %i.dp = load i64, ptr %7, align 8, !tbaa !107
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %i.do, i64 noundef %i.dp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85 unwind label %bb.ah

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.22, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.loopexit99

bb.ag:                                            ; preds = %bb.ad
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81, %bb.af, %bb.ae
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #33
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn48 = phi { ptr, i32 } [ %i.dt, %bb.ah ], [ %i.ds, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.av

bb.aj:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dv = load i32, ptr %i.i, align 8, !tbaa !170
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke void @_ZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKSt6vectorIiSaIiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.du, i32 noundef 3, i32 noundef %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.dx = load ptr, ptr %6, align 8, !tbaa !173   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !173
  %i.ea = icmp ne ptr %i.dx, %i.dz                ; 2 uses
  br i1 %i.ea, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 1, ptr %i.eb, align 4, !tbaa !102
  br label %bb.at

bb.am:                                            ; preds = %bb.aj
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.an:                                            ; preds = %bb.ak
  invoke void @_ZN8facebook5velox5cache7SsdFile11logEvictionERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN8facebook5velox5cache7SsdFile24clearRegionEntriesLockedERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !172
  %i.ee = load ptr, ptr %6, align 8, !tbaa !43
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !192
  %i.el = add i64 %i.ei, %i.ek
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !192
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.en = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.aq unwind label %bb.ar     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 0, ptr %i.eo, align 4, !tbaa !102
  %.pre100 = load ptr, ptr %6, align 8, !tbaa !43
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %6, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !186
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ev) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.at:                                            ; preds = %bb.aq, %bb.al
  %i.ew = phi ptr [ %.pre100, %bb.aq ], [ %i.dx, %bb.al ] ; 3 uses
  %.not.i.i.i89 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIiSaIiEED2Ev.exit90, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !186
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fb) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit90

_ZNSt6vectorIiSaIiEED2Ev.exit90:                  ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %.loopexit99

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.as, %bb.ar, %bb.am
  %.pn44 = phi { ptr, i32 } [ %i.ec, %bb.am ], [ %i.ep, %bb.ar ], [ %i.ep, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.av

.loopexit99:                                      ; preds = %bb.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87, %.preheader98, %.critedge, %_ZNSt6vectorIiSaIiEED2Ev.exit90
  %.234 = phi i1 [ true, %.critedge ], [ %i.ea, %_ZNSt6vectorIiSaIiEED2Ev.exit90 ], [ false, %.preheader98 ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 ], [ false, %bb.ac ]
  call void @_ZN8facebook5velox7process12TraceContextD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret i1 %.234

bb.av:                                            ; preds = %bb.ai, %bb.r, %bb.z, %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.merged51 = phi { ptr, i32 } [ %.pn40, %bb.z ], [ %.pn44, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.pn37.pn, %bb.r ], [ %i.dd, %bb.aa ], [ %.pn48, %bb.ai ]
  call void @_ZN8facebook5velox7process12TraceContextD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.av
  %.merged = phi { ptr, i32 } [ %.merged51, %bb.av ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.bx, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.merged

bb.aw:                                            ; preds = %bb.z
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile4findENS1_15RawFileCacheKeyE(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::cache::SsdPin") align 8 %0, ptr noundef nonnull align 8 dereferenceable(548) %1, i64 %2, i64 %3) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::cache::FileCacheKey", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN8facebook5velox7fileIdsEv() ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !195
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.b, align 8, !tbaa !196
  tail call void @_ZN8facebook5velox11StringIdMap12addReferenceEm(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %3, ptr %i.c, align 8, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.e = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #33
  %i.f = icmp eq i32 %i.e, 35
  br i1 %i.f, label %bb.b, label %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #34
          to label %.noexc30 unwind label %bb.c

.noexc30:                                         ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit:  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.h = load i8, ptr %i.g, align 4, !tbaa !102, !range !103, !noundef !104
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.sink.split, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #33 ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !115
  %i.q = lshr i64 %i.p, 8
  %i.r = trunc i64 %i.q to i32
  invoke void @_ZN8facebook5velox5cache14SsdFileTracker11fileTouchedEi(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i32 noundef %i.r)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.o, align 8, !tbaa !115  ; 2 uses
  %i.t = icmp ult i64 %i.s, 256
  br i1 %i.t, label %.sink.split, label %.noexc24
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS1_6SsdPinESaIS4_EERKS3_INS1_8CachePinESaIS9_EE:bb.a
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.m
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !45
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.bw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.cc = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !45
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.n
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !45
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.pn64 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ch, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %_ZNSt14_Function_baseD2Ev.exit95

bb.o:                                             ; preds = %bb.g
  %i.cn = zext nneg i32 %i.at to i64              ; 2 uses
  %i.co = add i64 %.056124, %i.cn                 ; 2 uses
  %i.cp = lshr i64 %.sroa.0.0.copyload.i, 49
  %i.cq = uitofp nneg i32 %i.ap to double
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.cp ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !179
  %i.ct = fadd double %i.cs, %i.cq
  store double %i.ct, ptr %i.cr, align 8, !tbaa !179
  %i.cu = load i64, ptr %i.y, align 8, !tbaa !464
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.y, align 8, !tbaa !464
  %i.cw = load i64, ptr %i.z, align 8, !tbaa !465
  %i.cx = add i64 %i.cw, %i.cn
  store i64 %i.cx, ptr %i.z, align 8, !tbaa !465
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %umax
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !453

bb.p:                                             ; preds = %._crit_edge
  %i.cy = load ptr, ptr %i.ai, align 8, !tbaa !211 ; 2 uses
  %.not.i = icmp eq ptr %i.cy, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.p, %bb.q
  %i.dc = load ptr, ptr %i.ae, align 8, !tbaa !211 ; 2 uses
  %.not.i90 = icmp eq ptr %i.dc, null
  br i1 %.not.i90, label %_ZNSt14_Function_baseD2Ev.exit91, label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.dd = invoke noundef zeroext i1 %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit91 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit91:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.s
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !455
  %i.dh = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %.not127 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not127, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %_ZNSt14_Function_baseD2Ev.exit91
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.z

bb.u:                                             ; preds = %._crit_edge
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %i.ai, align 8, !tbaa !211 ; 2 uses
  %.not.i92 = icmp eq ptr %i.dj, null
  br i1 %.not.i92, label %_ZNSt14_Function_baseD2Ev.exit93, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = invoke noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit93 unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit93:                 ; preds = %bb.u, %bb.v
  %i.dn = load ptr, ptr %i.ae, align 8, !tbaa !211 ; 2 uses
  %.not.i94 = icmp eq ptr %i.dn, null
  br i1 %.not.i94, label %_ZNSt14_Function_baseD2Ev.exit95, label %bb.x

bb.x:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit93
  %i.do = invoke noundef zeroext i1 %i.dn(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit95 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #36
  unreachable

bb.z:                                             ; preds = %.lr.ph126, %bb.z
  %indvars.iv133 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next134, %bb.z ] ; 5 uses
  %i.dr = phi ptr [ %i.dh, %.lr.ph126 ], [ %i.ei, %bb.z ]
  %i.ds = load ptr, ptr %3, align 8, !tbaa !207
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv133
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !215 ; 3 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %indvars.iv133
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.0.0.copyload.i96 = load i64, ptr %i.dw, align 8, !tbaa !39
  %i.dx = lshr i64 %.sroa.0.0.copyload.i96, 23
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 152
  store ptr %1, ptr %i.dy, align 8, !tbaa !238
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 160
  store i64 %i.dx, ptr %i.dz, align 8, !tbaa !239
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 168
  store atomic i8 0, ptr %i.ea seq_cst, align 8
  %i.eb = load ptr, ptr %3, align 8, !tbaa !207
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv133
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.ee = load ptr, ptr %2, align 8, !tbaa !203
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %indvars.iv133 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.sroa.0.0.copyload.i101 = load i64, ptr %i.eg, align 8, !tbaa !39
  %.sroa.2.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %.sroa.2.0.copyload.i103 = load i32, ptr %.sroa.2.0..sroa_idx.i102, align 8, !tbaa !40
  store i64 %.sroa.0.0.copyload.i101, ptr %12, align 8
  store i32 %.sroa.2.0.copyload.i103, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN8facebook5velox5cache7SsdFile19maybeVerifyChecksumERKNS1_19AsyncDataCacheEntryERKNS1_6SsdRunE(ptr noundef nonnull align 8 dereferenceable(548) %1, ptr noundef nonnull align 8 dereferenceable(169) %i.ed, ptr noundef nonnull align 8 dereferenceable(12) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !455
  %i.ei = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = sdiv exact i64 %i.el, 24
  %i.en = icmp ugt i64 %i.em, %indvars.iv.next134
  br i1 %i.en, label %bb.z, label %.loopexit, !llvm.loop !454

.loopexit:                                        ; preds = %bb.z, %_ZNSt14_Function_baseD2Ev.exit91, %bb.f
  ret void

_ZNSt14_Function_baseD2Ev.exit95:                 ; preds = %bb.x, %_ZNSt14_Function_baseD2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn67 = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.di, %_ZNSt14_Function_baseD2Ev.exit93 ], [ %i.di, %bb.x ]
  resume { ptr, i32 } %.pn67
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN8facebook5velox5cache8readPinsERKSt6vectorINS1_8CachePinESaIS3_EEiiSt8functionIFmiEES8_IFvS7_iimRKS2_IN5folly5RangeIPcEESaISE_EEEE(ptr dead_on_unwind writable sret(%"struct.facebook::velox::CoalesceIoStats") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile19maybeVerifyChecksumERKNS1_19AsyncDataCacheEntryERKNS1_6SsdRunE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(548) %0, ptr noundef nonnull align 8 dereferenceable(169) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.539", align 16 ; 7 uses
  %4 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.b = load i8, ptr %i.a, align 2, !tbaa !111, !range !103, !noundef !104
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit52

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8, !tbaa !50
  %i.e = trunc i64 %i.d to i32
  %i.f = and i32 %i.e, 8388607
  %i.g = add nuw nsw i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !237
  %.not = icmp eq i32 %i.g, %i.i
  br i1 %.not, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !470
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !470
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.m = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #33
  %i.n = sdiv i64 %i.m, 1000000                   ; 2 uses
  %invariant.op = add nsw i64 %i.n, -1000
  %9 = load atomic i64, ptr @_ZZN8facebook5velox5cache7SsdFile19maybeVerifyChecksumERKNS1_19AsyncDataCacheEntryERKNS1_6SsdRunEE11FB_LEM_hist acquire, align 8 ; 2 uses
  %10 = icmp sgt i64 %9, %invariant.op
  br i1 %10, label %.loopexit52, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.o = cmpxchg ptr @_ZZN8facebook5velox5cache7SsdFile19maybeVerifyChecksumERKNS1_19AsyncDataCacheEntryERKNS1_6SsdRunEE11FB_LEM_hist, i64 %9, i64 %i.n seq_cst seq_cst, align 8
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.d, label %.loopexit52

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.3, i32 noundef 966, i32 noundef 1)
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.e unwind label %bb.h       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.91, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.92, i64 noundef 77)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = load i64, ptr %2, align 8, !tbaa !50
  %i.u = and i64 %i.t, 8388607
  %i.v = add nuw nsw i64 %i.u, 1
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.v)
          to label %_ZNSolsEj.exit unwind label %bb.h ; 2 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.93, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZNSolsEj.exit
  %i.y = load i32, ptr %i.h, align 8, !tbaa !237
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef %i.y)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.94, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZNK8facebook5velox5cache19AsyncDataCacheEntry8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(169) %1)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.ab = load ptr, ptr %5, align 8, !tbaa !49
  %i.ac = load i64, ptr %7, align 8, !tbaa !107
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.ab, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.g
  %i.ae = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %8
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ag = load i64, ptr %8, align 8, !tbaa !45
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.loopexit52

bb.h:                                             ; preds = %bb.f, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.j:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.am = icmp eq ptr %i.al, %8
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.j
  %i.an = load i64, ptr %8, align 8, !tbaa !45
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.ak, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.ai, %bb.h ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.p

bb.l:                                             ; preds = %bb.b
  %i.ap = tail call noundef i32 @_ZNK8facebook5velox5cache7SsdFile13checksumEntryERKNS1_19AsyncDataCacheEntryE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(169) %1)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !105
  %.not26 = icmp eq i32 %i.ap, %i.ar
  br i1 %.not26, label %.loopexit52, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !471
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.av = load i64, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.aw = lshr i64 %i.av, 23
  %i.ax = trunc i64 %i.av to i32
  %i.ay = and i32 %i.ax, 8388607
  %i.az = add nuw nsw i32 %i.ay, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !472
  %i.ba = load ptr, ptr %0, align 8, !tbaa !49, !noalias !472
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !107, !noalias !472
  store ptr %i.ba, ptr %3, align 16, !tbaa !45, !noalias !472
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !45, !noalias !472
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.aw, ptr %i.be, align 16, !tbaa !45, !alias.scope !473, !noalias !472
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.az, ptr %i.bf, align 16, !tbaa !45, !alias.scope !473, !noalias !472
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.96, i64 63, i64 589, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !472
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile19maybeVerifyChecksumERKNS1_19AsyncDataCacheEntryERKNS1_6SsdRunEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.96) #34
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.o
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !45
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.p

.loopexit52:                                      ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.preheader, %bb.l, %bb.a
  ret void

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile4readEmRKSt6vectorIN5folly5RangeIPcEESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(548) %0, i64 noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.facebook::velox::process::TraceContext", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"struct.facebook::velox::FileIoContext", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.11, i64 13, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 13, ptr %i.b, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 29
  store i8 0, ptr %i.c, align 1, !tbaa !45
  invoke void @_ZN8facebook5velox7process12TraceContextC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 %4, i1 noundef zeroext false)
          to label %bb.a unwind label %bb.i

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !45
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.j, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.k, i8 0, i64 25, i1 false)
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !121
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(49) %5)
          to label %bb.b unwind label %bb.j       ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !116  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN8facebook5velox13FileIoContextD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.r, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !119
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !121
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #33, !inline_history !9
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !121
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #33, !inline_history !9
  br label %_ZN8facebook5velox13FileIoContextD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.h, label %_ZN8facebook5velox13FileIoContextD2Ev.exit, !prof !44

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #33
  br label %_ZN8facebook5velox13FileIoContextD2Ev.exit

_ZN8facebook5velox13FileIoContextD2Ev.exit:       ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN8facebook5velox7process12TraceContextD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !45
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13FileIoContextD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN8facebook5velox7process12TraceContextD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIiSaIiEEaSERKS1_:bb.a
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #37 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !200

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !40
  store i32 %i.r, ptr %i.o, align 4, !tbaa !40
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !186
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #35
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !186
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !172  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !200

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !40
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !40
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !200

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !43
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !172 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !43
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !172
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !40
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !40
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !200

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !40
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !40
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !172
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !191 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #35
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !252
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !251
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !252    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !251
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile5writeERSt6vectorINS1_8CachePinESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"struct.std::pair.484", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.487", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.490", align 1    ; 3 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.462", align 16 ; 5 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.464", align 16 ; 5 uses
  %7 = alloca %"class.facebook::velox::process::TraceContext", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.136", align 8 ; 8 uses
  %11 = alloca %"class.std::vector.171", align 8  ; 19 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"struct.facebook::velox::cache::FileCacheKey", align 8 ; 11 uses
  %15 = alloca %"class.facebook::velox::cache::SsdRun", align 8 ; 6 uses
  %16 = alloca %"class.facebook::velox::cache::SsdRun", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.23, i64 14, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 14, ptr %i.b, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 30
  store i8 0, ptr %i.c, align 2, !tbaa !45
  invoke void @_ZN8facebook5velox7process12TraceContextC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 %8, i1 noundef zeroext false)
          to label %bb.a unwind label %19

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %8, align 8, !tbaa !49     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !45
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load atomic i8, ptr %i.h seq_cst, align 8
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %.preheader.a, label %bb.i

.preheader.a:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !500
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !500
  %i.n = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #33
  %i.o = sdiv i64 %i.n, 1000000                   ; 2 uses
  %invariant.op = add nsw i64 %i.o, -10000
  %17 = load atomic i64, ptr @_ZZN8facebook5velox5cache7SsdFile5writeERSt6vectorINS1_8CachePinESaIS4_EEE11FB_LEM_hist acquire, align 8 ; 2 uses
  %18 = icmp sgt i64 %17, %invariant.op
  br i1 %18, label %.loopexit252, label %bb.b

19:                                               ; preds = %._crit_edge.i.i
  %20 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %21 = load ptr, ptr %8, align 8, !tbaa !49      ; 2 uses
  %22 = icmp eq ptr %21, %i.a
  br i1 %22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %19
  %23 = load i64, ptr %i.a, align 8, !tbaa !45
  %24 = add i64 %23, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %24) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

bb.b:                                             ; preds = %.preheader.a
  %i.p = cmpxchg ptr @_ZZN8facebook5velox5cache7SsdFile5writeERSt6vectorINS1_8CachePinESaIS4_EEE11FB_LEM_hist, i64 %17, i64 %i.o seq_cst seq_cst, align 8
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %bb.c, label %.loopexit252

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull @.str.3, i32 noundef 363, i32 noundef 1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %9)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.15, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.24, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %.loopexit252

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn145 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.cr

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !112
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.z = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.y) #33
  switch i32 %i.z, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit [
    i32 11, label %bb.k
    i32 35, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #34
          to label %.noexc160 unwind label %bb.m

.noexc160:                                        ; preds = %bb.l
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit: ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !115
  %i.ac = lshr i64 %i.ab, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !206
  %i.af = load ptr, ptr %1, align 8, !tbaa !207
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = add nsw i64 %i.aj, %i.ac
  %i.al = load i64, ptr %i.w, align 8, !tbaa !112
  %.not123 = icmp ult i64 %i.ak, %i.al
  br i1 %.not123, label %_ZNSt11shared_lockISt12shared_mutexED2Ev.exit161, label %_ZNSt11shared_lockISt12shared_mutexED2Ev.exit

_ZNSt11shared_lockISt12shared_mutexED2Ev.exit:    ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !501
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !501
  %i.ap = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.y) #33 ; 0 uses
  br label %.loopexit252

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_ZNSt11shared_lockISt12shared_mutexED2Ev.exit161: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit
  %i.ar = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.y) #33 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt11shared_lockISt12shared_mutexED2Ev.exit161, %bb.i
  %i.as = load ptr, ptr %1, align 8, !tbaa !502   ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !502 ; 6 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.as to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 true)
  %i.bb = shl nuw nsw i64 %i.ba, 1
  %i.bc = xor i64 %i.bb, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %i.as, ptr %i.au, i64 noundef %i.bc)
          to label %.noexc162 unwind label %bb.t

.noexc162:                                        ; preds = %bb.o
  %i.bd = icmp sgt i64 %i.ay, 128
  br i1 %i.bd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.noexc162
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 128 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.as, ptr nonnull %i.be)
          to label %.noexc163 unwind label %bb.t

.noexc163:                                        ; preds = %bb.p
  %i.bf = icmp eq ptr %i.be, %i.au
  br i1 %i.bf, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc163, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i
  %.sroa.0.04.i.i.i.i = phi ptr [ %i.bs, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i ], [ %i.be, %.noexc163 ] ; 4 uses
  %i.bg = load ptr, ptr %.sroa.0.04.i.i.i.i, align 8, !tbaa !215 ; 3 uses
  store ptr null, ptr %.sroa.0.04.i.i.i.i, align 8, !tbaa !215
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.pre.i.i.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !196 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN8facebook5velox5cache8CachePinaSEOS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.06.0.i.i.i.i.i = phi ptr [ %.sroa.0.04.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %_ZN8facebook5velox5cache8CachePinaSEOS2_.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bj = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !215 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !196 ; 2 uses
  %i.bm = icmp eq i64 %.pre.i.i.i.i.i, %i.bl
  br i1 %i.bm, label %.split.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN8facebook5velox5cache8CachePinENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.q
  %i.bn = load i64, ptr %i.bi, align 8, !tbaa !255
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !255
  %i.bq = icmp slt i64 %i.bn, %i.bp
  br i1 %i.bq, label %_ZN8facebook5velox5cache8CachePinaSEOS2_.exit.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN8facebook5velox5cache8CachePinENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i: ; preds = %bb.q
  %i.br = icmp ult i64 %.pre.i.i.i.i.i, %i.bl
  br i1 %i.br, label %_ZN8facebook5velox5cache8CachePinaSEOS2_.exit.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i

_ZN8facebook5velox5cache8CachePinaSEOS2_.exit.i.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN8facebook5velox5cache8CachePinENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i, %.split.i.i.i.i.i
  store ptr %i.bj, ptr %.sroa.06.0.i.i.i.i.i, align 8, !tbaa !215
  store ptr null, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !215
  br label %bb.q, !llvm.loop !11

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN8facebook5velox5cache8CachePinENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i, %.split.i.i.i.i.i
  store ptr %i.bg, ptr %.sroa.06.0.i.i.i.i.i, align 8, !tbaa !215
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i.i, i64 8 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.au
  br i1 %i.bt, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !481

bb.r:                                             ; preds = %.noexc162
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.as, ptr %i.au)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit unwind label %bb.t

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, %.noexc163, %bb.n, %bb.r
  %i.bu = load ptr, ptr %1, align 8, !tbaa !502   ; 2 uses
  %i.bv = load ptr, ptr %i.at, align 8, !tbaa !502 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %.preheader259, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0214.0298, i64 8 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bv
  br i1 %i.by, label %.preheader259, label %.lr.ph

.preheader259:                                    ; preds = %bb.s, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox5cache8CachePinESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 12 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 520
  br label %bb.x

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox5cache7SsdFile5writeERSt6vectorINS1_8CachePinESaIS4_EE:._crit_edge.i.i

_ZN8facebook5velox13StringIdLeaseC2ERKS1_.exit:   ; preds = %bb.bt, %bb.bu
  %i.le = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !255
  store i64 %i.lf, ptr %i.cf, align 8, !tbaa !198
  %i.lg = load i8, ptr %i.cg, align 1, !tbaa !110, !range !103, !noundef !104
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %_ZN8facebook5velox13StringIdLeaseC2ERKS1_.exit
  %i.li = invoke noundef i32 @_ZNK8facebook5velox5cache7SsdFile13checksumEntryERKNS1_19AsyncDataCacheEntryE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(169) %i.kt)
          to label %bb.by unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bx:                                            ; preds = %bb.cc, %bb.cb, %bb.bv
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.by:                                            ; preds = %bb.bv, %_ZN8facebook5velox13StringIdLeaseC2ERKS1_.exit
  %.0 = phi i32 [ 0, %_ZN8facebook5velox13StringIdLeaseC2ERKS1_.exit ], [ %i.li, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  invoke void @_ZN8facebook5velox5cache6SsdRunC2Emjj(ptr noundef nonnull align 8 dereferenceable(12) %15, i64 noundef %.sroa.0206.0311, i32 noundef %i.la, i32 noundef %.0)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !508
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !508
  store ptr %14, ptr %3, align 8, !tbaa !259, !alias.scope !509, !noalias !508
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !508
  %i.ll = load i64, ptr %i.ce, align 8, !tbaa !196, !noalias !510 ; 2 uses
  %i.lm = load i64, ptr %i.cf, align 8, !tbaa !198, !noalias !510
  %i.ln = xor i64 %i.lm, %i.ll
  %i.lo = mul i64 %i.ln, -7070675565921424023     ; 2 uses
  %i.lp = lshr i64 %i.lo, 47
  %i.lq = xor i64 %i.ll, %i.lp
  %i.lr = xor i64 %i.lq, %i.lo
  %i.ls = mul i64 %i.lr, -7070675565921424023     ; 2 uses
  %i.lt = lshr i64 %i.ls, 47
  %i.lu = xor i64 %i.lt, %i.ls
  %i.lv = mul i64 %i.lu, -7070675565921424023     ; 2 uses
  %i.lw = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.lv) ; 2 uses
  %i.lx = lshr i64 %i.lw, 24
  %i.ly = or i64 %i.lx, 128
  %i.lz = add i64 %i.lv, %i.lw
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKSt21piecewise_construct_tSt5tupleIJOS7_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.484") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 %i.lz, i64 %i.ly, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !508
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !508
  %i.ma = load ptr, ptr %2, align 8, !tbaa !261, !noalias !508, !nonnull !104, !noundef !104
  %i.mb = load ptr, ptr %i.ch, align 8, !tbaa !199, !noalias !508, !nonnull !104, !noundef !104
  %i.mc = load i32, ptr %i.ma, align 4, !tbaa !40, !noalias !508
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [40 x i8], ptr %i.mb, i64 %i.md ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !508
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load i64, ptr %15, align 8, !tbaa !50
  store i64 %i.mg, ptr %i.mf, align 8, !tbaa !50
  %i.mh = load i32, ptr %i.ci, align 8, !tbaa !105
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  store i32 %i.mh, ptr %i.mi, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %i.mj = load i8, ptr @_ZN3fLB28FLAGS_velox_ssd_verify_writeE, align 1, !tbaa !165, !range !103, !noundef !104
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN8facebook5velox5cache6SsdRunC2Emjj(ptr noundef nonnull align 8 dereferenceable(12) %16, i64 noundef %.sroa.0206.0311, i32 noundef %i.la, i32 noundef %.0)
          to label %bb.cc unwind label %bb.bx

bb.cc:                                            ; preds = %bb.cb
  %i.ml = load i64, ptr %16, align 8
  invoke void @_ZN8facebook5velox5cache7SsdFile11verifyWriteERNS1_19AsyncDataCacheEntryENS1_6SsdRunE(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr noundef nonnull align 8 dereferenceable(169) %i.kt, i64 %i.ml, i32 poison)
          to label %bb.ce unwind label %bb.bx

bb.cd:                                            ; preds = %bb.bz, %bb.by
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc, %bb.ca
  %i.mn = sext i32 %i.la to i64                   ; 3 uses
  %i.mo = add i64 %.sroa.0206.0311, %i.mn
  %i.mp = load <2 x i64>, ptr %i.cj, align 8, !tbaa !39
  %i.mq = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.mn, i64 1
  %i.mr = add <2 x i64> %i.mp, %i.mq
  store <2 x i64> %i.mr, ptr %i.cj, align 8, !tbaa !39
  %i.ms = atomicrmw add ptr %i.ck, i64 %i.mn seq_cst, align 8 ; 0 uses
  %i.mt = load ptr, ptr %14, align 8, !tbaa !195  ; 2 uses
  %.not.i.i.i188 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i188, label %_ZN8facebook5velox5cache12FileCacheKeyD2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mu = load i64, ptr %i.ce, align 8, !tbaa !196
  invoke void @_ZN8facebook5velox11StringIdMap7releaseEm(ptr noundef nonnull align 8 dereferenceable(104) %i.mt, i64 noundef %i.mu)
          to label %_ZN8facebook5velox5cache12FileCacheKeyD2Ev.exit unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mv = landingpad { ptr, i32 }
          catch ptr null
  %i.mw = extractvalue { ptr, i32 } %i.mv, 0
  call void @__clang_call_terminate(ptr %i.mw) #36
  unreachable

_ZN8facebook5velox5cache12FileCacheKeyD2Ev.exit:  ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %indvars.iv.next340 = add nsw i64 %indvars.iv339, 1 ; 2 uses
  %i.mx = icmp slt i64 %indvars.iv.next340, %i.ko
  br i1 %i.mx, label %.lr.ph313, label %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit._crit_edge, !llvm.loop !498

bb.ch:                                            ; preds = %bb.cd, %bb.bx
  %.pn126 = phi { ptr, i32 } [ %i.lk, %bb.bx ], [ %i.mm, %bb.cd ]
  call void @_ZN8facebook5velox5cache12FileCacheKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #33
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bw
  %.pn126.pn = phi { ptr, i32 } [ %.pn126, %bb.ch ], [ %i.lj, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bs
  %.pn129 = phi { ptr, i32 } [ %i.kw, %bb.bs ], [ %.pn126.pn, %bb.ci ]
  %i.my = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.cd) #33 ; 0 uses
  br label %.loopexit.split-lp

.loopexit258:                                     ; preds = %bb.ai, %bb.bf, %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit._crit_edge
  %i.mz = phi i1 [ true, %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit._crit_edge ], [ false, %bb.bf ], [ false, %bb.ai ]
  %.189 = phi i32 [ %i.km, %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit._crit_edge ], [ %.088, %bb.bf ], [ %.088, %bb.ai ]
  %i.na = load ptr, ptr %11, align 8, !tbaa !244  ; 3 uses
  %.not.i.i.i189 = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorI5iovecSaIS0_EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %.loopexit258
  %i.nb = load ptr, ptr %i.cb, align 8, !tbaa !245
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = ptrtoint ptr %i.na to i64
  %i.ne = sub i64 %i.nc, %i.nd
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef %i.ne) #35
  br label %_ZNSt6vectorI5iovecSaIS0_EED2Ev.exit

_ZNSt6vectorI5iovecSaIS0_EED2Ev.exit:             ; preds = %.loopexit258, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br i1 %i.mz, label %bb.x, label %.loopexit252, !llvm.loop !499

.loopexit.split-lp:                               ; preds = %.loopexit253, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bp, %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %bb.bg, %bb.bd
  %.pn134.pn.pn = phi { ptr, i32 } [ %i.jx, %bb.bg ], [ %i.ju, %bb.bd ], [ %.pn132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %i.kq, %bb.bp ], [ %.pn134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %.pn129, %bb.cj ], [ %lpad.loopexit, %.loopexit253 ], [ %lpad.loopexit255, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp256, %.loopexit.split-lp.loopexit.split-lp ]
  %i.nf = load ptr, ptr %11, align 8, !tbaa !244  ; 3 uses
  %.not.i.i.i190 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i190, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.loopexit.split-lp
  %i.ng = load ptr, ptr %i.cb, align 8, !tbaa !245
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = ptrtoint ptr %i.nf to i64
  %i.nj = sub i64 %i.nh, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %i.nf, i64 noundef %i.nj) #35
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.aa
  %.pn134.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn134.pn.pn, %bb.cm ], [ %i.dd, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.cr

bb.co:                                            ; preds = %bb.x
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !122
  %i.nm = icmp sgt i64 %i.nl, 0
  br i1 %i.nm, label %bb.cp, label %.loopexit252

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN8facebook5velox5cache7SsdFile10checkpointEb(ptr noundef nonnull align 8 dereferenceable(548) %0, i1 noundef zeroext false)
          to label %.loopexit252 unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit252:                                     ; preds = %_ZNSt6vectorI5iovecSaIS0_EED2Ev.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159, %.preheader.a, %_ZNSt11shared_lockISt12shared_mutexED2Ev.exit, %.critedge151, %bb.cp, %bb.co
  call void @_ZN8facebook5velox7process12TraceContextD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret void

bb.cr:                                            ; preds = %bb.h, %bb.cn, %bb.cq, %bb.w, %bb.t, %bb.m
  %.pn145.pn.pn = phi { ptr, i32 } [ %i.nn, %bb.cq ], [ %i.cp, %bb.w ], [ %i.aq, %bb.m ], [ %i.cl, %bb.t ], [ %.pn134.pn.pn.pn.pn, %bb.cn ], [ %.pn145, %bb.h ]
  call void @_ZN8facebook5velox7process12TraceContextD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %bb.cr
  %.pn145.pn.pn.pn = phi { ptr, i32 } [ %.pn145.pn.pn, %bb.cr ], [ %20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  resume { ptr, i32 } %.pn145.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox5cache7SsdFile5writeEllRKSt6vectorI5iovecSaIS4_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(548) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %1, i64 noundef %2)
          to label %bb.aa unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.g = extractvalue { ptr, i32 } %i.f, 1
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #33
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { ptr, i32 } %i.f, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.j) #33 ; 0 uses
  %i.l = tail call ptr @__errno_location() #38
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.3, i32 noundef 477, i32 noundef 2)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.e unwind label %bb.n       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.15, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.30, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !107
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.31, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !247
  %i.x = load ptr, ptr %3, align 8, !tbaa !244
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.ab)
          to label %_ZNSolsEm.exit unwind label %bb.n ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.32, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %_ZNSolsEm.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef %1)
          to label %_ZNSolsEl.exit unwind label %bb.n ; 2 uses

_ZNSolsEl.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.33, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZNSolsEl.exit
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 noundef %i.m)
          to label %bb.f unwind label %bb.n       ; 2 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.34, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.m)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.ai = load ptr, ptr %5, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !107
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ai, i64 noundef %i.ak)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit36 unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit36: ; preds = %bb.g
  %i.am = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit36
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !45
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !248
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !248
  %i.au = icmp eq i32 %i.m, 28
  br i1 %i.au, label %bb.h, label %bb.y

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aw = atomicrmw xchg ptr %i.av, i8 1 seq_cst, align 1
  %.not = icmp eq i8 %i.aw, 1
  br i1 %.not, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull @.str.3, i32 noundef 486, i32 noundef 1)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.k unwind label %bb.t       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.15, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %bb.k
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.35, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  %i.ba = load ptr, ptr %0, align 8, !tbaa !49
  %i.bb = load i64, ptr %i.r, align 8, !tbaa !107
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.ba, i64 noundef %i.bb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit39 unwind label %bb.t ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.36, i64 noundef 13)
          to label %bb.l unwind label %bb.t       ; 0 uses

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.be, ptr %7, align 8, !tbaa !106, !alias.scope !513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.be, ptr noundef nonnull align 1 dereferenceable(7) @.str.82, i64 7, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 7, ptr %i.bf, align 8, !tbaa !107, !alias.scope !513
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 23
  store i8 0, ptr %i.bg, align 1, !tbaa !45, !alias.scope !513
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %i.be, i64 noundef 7)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit41 unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit41: ; preds = %bb.l
  %i.bi = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.be
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit41
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.x

bb.m:                                             ; preds = %bb.c
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.n:                                             ; preds = %bb.f, %_ZNSolsEl.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34, %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.bo = landingpad { ptr, i32 }
          cleanup
end_hunk_3
