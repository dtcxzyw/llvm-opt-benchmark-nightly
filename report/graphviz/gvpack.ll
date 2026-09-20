Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvpack?download=true
inline.NumInlined: 614
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.bd = load ptr, ptr %10, align 8, !tbaa !22
  %i.be = load i32, ptr %i.h, align 8, !tbaa !106
  %i.bf = invoke i32 @parsePackModeInfo(ptr noundef %i.bd, i32 noundef %i.be, ptr noundef nonnull %13)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i
  %i.bg = load ptr, ptr %10, align 8, !tbaa !22   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.q
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %bb.h
  %i.bi = load i64, ptr %i.q, align 8, !tbaa !18
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZL12setNameValuePc.exit.i.backedge

.loopexit.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

.loopexit70.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37.i
  %lpad.loopexit72.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp71.i:                           ; preds = %bb.e
  %lpad.loopexit.split-lp73.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp71.i, %.loopexit70.i
  %lpad.phi74.i = phi { ptr, i32 } [ %lpad.loopexit72.i, %.loopexit70.i ], [ %lpad.loopexit.split-lp73.i, %.loopexit.split-lp71.i ] ; 2 uses
  %i.bk = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.o
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i: ; preds = %bb.i
  %i.bm = load i64, ptr %i.o, align 8, !tbaa !18
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %lpad.phi74.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.phi74.i, %bb.i ]
  %i.bo = load ptr, ptr %12, align 8, !tbaa !22   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.m
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i
  %i.bq = load i64, ptr %i.m, align 8, !tbaa !18
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %10, align 8, !tbaa !22   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.q
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %bb.j
  %i.bv = load i64, ptr %i.q, align 8, !tbaa !18
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

common.resume:                                    ; preds = %.loopexit.i12, %bb.bx, %_ZNSt6vectorIP8Agraph_sSaIS1_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i
  %common.resume.op = phi { ptr, i32 } [ %.pn33.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i ], [ %.pn, %_ZNSt6vectorIP8Agraph_sSaIS1_EED2Ev.exit ], [ %.pn.i14, %bb.bx ], [ %.pn.i14, %.loopexit.i12 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i
  %.pn33.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i ], [ %i.bs, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %common.resume

bb.k:                                             ; preds = %_ZL12setNameValuePc.exit.i
  %i.bx = load i32, ptr %i.h, align 8, !tbaa !106
  %i.by = call i32 @parsePackModeInfo(ptr noundef nonnull @.str.7, i32 noundef %i.bx, ptr noundef nonnull %13) ; 0 uses
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.l:                                             ; preds = %_ZL12setNameValuePc.exit.i
  %i.bz = load ptr, ptr @optarg, align 8, !tbaa !112
  store ptr %i.bz, ptr @_ZL5gname, align 8, !tbaa !112
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.m:                                             ; preds = %_ZL12setNameValuePc.exit.i
  %i.ca = load i32, ptr %i.h, align 8, !tbaa !106
  %i.cb = call i32 @parsePackModeInfo(ptr noundef nonnull @.str.8, i32 noundef %i.ca, ptr noundef nonnull %13) ; 0 uses
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.n:                                             ; preds = %_ZL12setNameValuePc.exit.i
  %i.cc = load ptr, ptr @optarg, align 8, !tbaa !112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.cd = call i64 @__isoc23_strtol(ptr noundef %i.cc, ptr noundef nonnull %i.f, i32 noundef 10) #30
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !112
  %i.cf = icmp eq ptr %i.ce, %i.cc
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 26) ; 0 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cc, i64 -1 ; 2 uses
  %i.ci = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ch) #30
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.ch, i64 noundef %i.ci) ; 0 uses
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20, i64 noundef 11) ; 0 uses
  br label %_ZL7setUIntPjPc.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cl = trunc i64 %i.cd to i32
  store i32 %i.cl, ptr %i.i, align 8, !tbaa !111
  br label %_ZL7setUIntPjPc.exit.i

_ZL7setUIntPjPc.exit.i:                           ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.q:                                             ; preds = %_ZL12setNameValuePc.exit.i
  %i.cm = load ptr, ptr @_ZL5outfp, align 8, !tbaa !24 ; 2 uses
  %.not30.i = icmp eq ptr %i.cm, null
  br i1 %.not30.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = call i32 @fclose(ptr noundef nonnull %i.cm) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.co = load ptr, ptr @optarg, align 8, !tbaa !112 ; 3 uses
  %i.cp = call noalias ptr @fopen(ptr noundef %i.co, ptr noundef nonnull @.str.10) ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.t, label %_ZL8openFilePKcS0_S0_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.cs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9, ptr noundef %i.co, ptr noundef nonnull @.str.23) #32 ; 0 uses
  call void @perror(ptr noundef %i.co) #33
  call fastcc void @_ZL13graphviz_exiti(i32 noundef 1) #31
  unreachable

_ZL8openFilePKcS0_S0_.exit.i:                     ; preds = %bb.s
  store ptr %i.cp, ptr @_ZL5outfp, align 8, !tbaa !24
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.u:                                             ; preds = %_ZL12setNameValuePc.exit.i
  store i32 0, ptr %i.h, align 8, !tbaa !106
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.v:                                             ; preds = %_ZL12setNameValuePc.exit.i
  %i.ct = load ptr, ptr @optarg, align 8, !tbaa !112 ; 4 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !18
  %.not29.i = icmp eq i8 %i.cu, 0
  br i1 %.not29.i, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ct, i32 noundef 61) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 0, ptr %i.cv, align 1, !tbaa !18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i60.i = phi ptr [ %i.cw, %bb.x ], [ @.str.25, %bb.w ] ; 2 uses
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL6G_args, i64 8), align 8, !tbaa !115 ; 5 uses
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL6G_args, i64 16), align 8, !tbaa !13
  %.not.i.i.i.i = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.ct, ptr %i.cx, align 8, !tbaa !112
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %.0.i60.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !112
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.cz, ptr getelementptr inbounds nuw (i8, ptr @_ZL6G_args, i64 8), align 8, !tbaa !115
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.aa:                                            ; preds = %bb.y
  %i.da = load ptr, ptr @_ZL6G_args, align 8, !tbaa !12 ; 4 uses
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 5 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775792
  br i1 %i.de, label %bb.ab, label %_ZNKSt6vectorI6attr_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #31
  unreachable

_ZNKSt6vectorI6attr_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.df = ashr exact i64 %i.dd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %14 = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.df ; 2 uses
  %i.dg = icmp ult i64 %14, %i.df
  %i.dh = call i64 @llvm.umin.i64(i64 %14, i64 576460752303423487)
  %i.di = select i1 %i.dg, i64 576460752303423487, i64 %i.dh ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.dj = shl nuw nsw i64 %i.di, 4
  %i.dk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #35 ; 4 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dd ; 3 uses
  store ptr %i.ct, ptr %i.dl, align 8, !tbaa !112
  %.sroa.5.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %.0.i60.i, ptr %.sroa.5.0..sroa_idx8.i.i, align 8, !tbaa !112
  %i.dm = icmp sgt i64 %i.dd, 0
  br i1 %i.dm, label %bb.ac, label %_ZNSt6vectorI6attr_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i

bb.ac:                                            ; preds = %_ZNKSt6vectorI6attr_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %i.da, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorI6attr_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i

_ZNSt6vectorI6attr_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i: ; preds = %bb.ac, %_ZNKSt6vectorI6attr_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorI6attr_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorI6attr_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL6G_args, i64 16), align 8, !tbaa !13
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dq) #29
  br label %_ZNSt6vectorI6attr_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorI6attr_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ad, %_ZNSt6vectorI6attr_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i
  store ptr %i.dk, ptr @_ZL6G_args, align 8, !tbaa !12
  store ptr %i.dn, ptr getelementptr inbounds nuw (i8, ptr @_ZL6G_args, i64 8), align 8, !tbaa !115
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.dr, ptr getelementptr inbounds nuw (i8, ptr @_ZL6G_args, i64 16), align 8, !tbaa !13
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.ae:                                            ; preds = %bb.v
  %i.ds = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.11, i64 noundef 45) ; 0 uses
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.af:                                            ; preds = %_ZL12setNameValuePc.exit.i
  store i1 true, ptr @_ZL7verbose, align 4
  store i8 1, ptr @Verbose, align 1, !tbaa !18
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.ag:                                            ; preds = %_ZL12setNameValuePc.exit.i
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 16) ; 0 uses
  %i.du = load i32, ptr @optopt, align 4, !tbaa !111
  %i.dv = trunc i32 %i.du to i8                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.dv, ptr %i.e, align 1, !tbaa !18
  %i.dw = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !117
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !126
  %.not.i61.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i61.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.e, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.ed = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %i.dv) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.ai, %bb.ah
  %.0.i62.i = phi ptr [ %i.ec, %bb.ah ], [ @_ZSt4cerr, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i62.i, ptr noundef nonnull @.str.13, i64 noundef 28) ; 0 uses
  br label %_ZL12setNameValuePc.exit.i.backedge

_ZL12setNameValuePc.exit.i.backedge:              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %bb.af, %bb.ae, %_ZNSt6vectorI6attr_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i, %bb.z, %bb.u, %_ZL8openFilePKcS0_S0_.exit.i, %_ZL7setUIntPjPc.exit.i, %bb.m, %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, %_ZL12setNameValuePc.exit.i
  br label %_ZL12setNameValuePc.exit.i, !llvm.loop !92

bb.aj:                                            ; preds = %_ZL12setNameValuePc.exit.i
  %i.ef = load i32, ptr @optopt, align 4, !tbaa !111
  switch i32 %i.ef, label %bb.al [
    i32 63, label %bb.ak
    i32 0, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.eg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZL9useString) ; 0 uses
  call fastcc void @_ZL13graphviz_exiti(i32 noundef 0) #31
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.eh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 16) ; 0 uses
  %i.ei = load i32, ptr @optopt, align 4, !tbaa !111
  %i.ej = trunc i32 %i.ei to i8                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.ej, ptr %i.d, align 1, !tbaa !18
  %i.ek = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !117
  %i.el = getelementptr i8, ptr %i.ek, i64 -24
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !126
  %.not.i63.i = icmp eq i64 %i.ep, 0
  br i1 %.not.i63.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.d, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit65.i

bb.an:                                            ; preds = %bb.al
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %i.ej) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit65.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit65.i: ; preds = %bb.an, %bb.am
  %.0.i64.i = phi ptr [ %i.eq, %bb.am ], [ @_ZSt4cerr, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.es = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i64.i, ptr noundef nonnull @.str.14, i64 noundef 14) ; 0 uses
  %i.et = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZL9useString) ; 0 uses
  call fastcc void @_ZL13graphviz_exiti(i32 noundef 1) #31
  unreachable

bb.ao:                                            ; preds = %_ZL12setNameValuePc.exit.i
  %i.eu = load i32, ptr @optind, align 4, !tbaa !111 ; 2 uses
  %i.ev = icmp sgt i32 %0, %i.eu
  br i1 %i.ev, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ew = sext i32 %i.eu to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ew
  store ptr %i.ex, ptr @_ZL7myFiles, align 8, !tbaa !128
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ey = load ptr, ptr @_ZL5outfp, align 8, !tbaa !24
  %.not28.i = icmp eq ptr %i.ey, null
  br i1 %.not28.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ez = load ptr, ptr @stdout, align 8, !tbaa !24
  store ptr %i.ez, ptr @_ZL5outfp, align 8, !tbaa !24
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.b.i = load i1, ptr @_ZL7verbose, align 4
  br i1 %.b.i, label %bb.at, label %_ZL4initiPPcP9pack_info.exit

bb.at:                                            ; preds = %bb.as
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.15, i64 noundef 9) ; 0 uses
  %i.fb = load i32, ptr %i.i, align 8, !tbaa !107
  %i.fc = zext i32 %i.fb to i64
  %i.fd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %i.fc) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !18
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !117
  %i.ff = getelementptr i8, ptr %i.fe, i64 -24
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds i8, ptr %i.fd, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !126
  %.not.i67.i = icmp eq i64 %i.fj, 0
  br i1 %.not.i67.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69.i

bb.av:                                            ; preds = %bb.at
  %i.fl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69.i: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZL4initiPPcP9pack_info.exit

_ZL4initiPPcP9pack_info.exit:                     ; preds = %bb.as, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69.i
  %i.fm = load i32, ptr %i.h, align 8, !tbaa !106
  %i.fn = icmp ne i32 %i.fm, 0
  %i.fo = zext i1 %i.fn to i8
  store i8 %i.fo, ptr @_ZL6doPack, align 1, !tbaa !27
  store ptr @gvplugin_neato_layout_LTX_library, ptr getelementptr inbounds nuw (i8, ptr @lt_preloaded_symbols, i64 8), align 8, !tbaa !130
  %i.fp = call ptr @gvContextPlugins(ptr noundef nonnull @lt_preloaded_symbols, i32 noundef 0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !131
  store double 7.200000e+01, ptr @PSinputscale, align 8, !tbaa !29, !noalias !131
  store i32 2, ptr @Nop, align 4, !tbaa !111, !noalias !131
  %i.fq = load ptr, ptr @_ZL7myFiles, align 8, !tbaa !128, !noalias !131
  %i.fr = call ptr @newIngraph(ptr noundef nonnull %9, ptr noundef %i.fq), !noalias !131 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer: ; preds = %_ZL4initiPPcP9pack_info.exit, %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.sroa.5.0.ph.ph = phi i1 [ false, %_ZL4initiPPcP9pack_info.exit ], [ true, %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %.sroa.064.0.ph.ph = phi i32 [ undef, %_ZL4initiPPcP9pack_info.exit ], [ %.sroa.064.1, %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %.ph.ph = phi ptr [ null, %_ZL4initiPPcP9pack_info.exit ], [ %i.hv, %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 21 uses
  %.ph239.ph = phi ptr [ null, %_ZL4initiPPcP9pack_info.exit ], [ %i.hz, %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 4 uses
  %.ph240.ph = phi ptr [ null, %_ZL4initiPPcP9pack_info.exit ], [ %i.hy, %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer, %bb.bs
  %.sroa.5.0.ph = phi i1 [ true, %bb.bs ], [ %.sroa.5.0.ph.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer ]
  %.sroa.064.0.ph = phi i32 [ %.sroa.064.1, %bb.bs ], [ %.sroa.064.0.ph.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer ] ; 3 uses
  %.ph240 = phi ptr [ %i.hl, %bb.bs ], [ %.ph240.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer ] ; 8 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23.i
  %i.fs = invoke ptr @nextGraph(ptr noundef nonnull %9)
          to label %bb.aw unwind label %.loopexit.i12.loopexit, !noalias !131 ; 10 uses

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i
  %.not.i = icmp eq ptr %i.fs, null
  br i1 %.not.i, label %_ZL10readGraphsP5GVC_sRSt8optionalI8Agdesc_sE.exit, label %bb.ax

.loopexit.i12.loopexit:                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i, %bb.ay, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19.i, %bb.bi, %bb.bj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23.i
  %lpad.loopexit241 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i12

.loopexit.i12.loopexit.split-lp.loopexit:         ; preds = %.sink.split.i, %bb.bo
  %lpad.loopexit243 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i12

.loopexit.i12.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIP8Agraph_sSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.split-lp244 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i12

.loopexit.split-lp.i17:                           ; preds = %bb.bu, %bb.bm
  %lpad.loopexit.split-lp.i18 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i12

bb.ax:                                            ; preds = %bb.aw
  %.b.i15 = load i1, ptr @_ZL7verbose, align 4, !noalias !131
  br i1 %.b.i15, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.27, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit.i12.loopexit, !noalias !131 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.ay
  %i.fu = invoke ptr @agnameof(ptr noundef nonnull %i.fs)
          to label %bb.az unwind label %.loopexit.i12.loopexit, !noalias !131 ; 3 uses

bb.az:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %.not.i.i19 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i19, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fv = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !117, !noalias !131
  %i.fw = getelementptr i8, ptr %i.fv, i64 -24
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !131
  %i.fy = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !132, !noalias !131
  %i.gb = or i32 %i.ga, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fy, i32 noundef %i.gb)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.i unwind label %.loopexit.i12.loopexit, !noalias !131

bb.bb:                                            ; preds = %bb.az
  %i.gc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fu) #30, !noalias !131
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.fu, i64 noundef %i.gc)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.i unwind label %.loopexit.i12.loopexit, !noalias !131 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.i: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !131
  store i8 10, ptr %i.b, align 1, !tbaa !18, !noalias !131
  %i.ge = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !117, !noalias !131
  %i.gf = getelementptr i8, ptr %i.ge, i64 -24
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !131
  %i.gh = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !126, !noalias !131
  %.not.i15.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i15.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.i
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i20 unwind label %.loopexit.i12.loopexit, !noalias !131 ; 0 uses

bb.bd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.i
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i20 unwind label %.loopexit.i12.loopexit, !noalias !131 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i20: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131
  br label %bb.be

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i20, %bb.ax
  %i.gm = invoke i32 @agnnodes(ptr noundef nonnull %i.fs)
          to label %bb.bf unwind label %.loopexit.i12.loopexit, !noalias !131

bb.bf:                                            ; preds = %bb.be
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.28, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19.i unwind label %.loopexit.i12.loopexit, !noalias !131 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19.i: ; preds = %bb.bg
  %i.gp = invoke ptr @agnameof(ptr noundef nonnull %i.fs)
          to label %bb.bh unwind label %.loopexit.i12.loopexit, !noalias !131 ; 3 uses

bb.bh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19.i
  %.not.i20.i = icmp eq ptr %i.gp, null
  br i1 %.not.i20.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gq = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !117, !noalias !131
  %i.gr = getelementptr i8, ptr %i.gq, i64 -24
  %i.gs = load i64, ptr %i.gr, align 8, !noalias !131
  %i.gt = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.gs ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !132, !noalias !131
  %i.gw = or i32 %i.gv, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.gt, i32 noundef %i.gw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23.i unwind label %.loopexit.i12.loopexit, !noalias !131

bb.bj:                                            ; preds = %bb.bh
  %i.gx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gp) #30, !noalias !131
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.gp, i64 noundef %i.gx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23.i unwind label %.loopexit.i12.loopexit, !noalias !131 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23.i: ; preds = %bb.bj, %bb.bi
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.29, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i unwind label %.loopexit.i12.loopexit, !noalias !131 ; 0 uses

bb.bk:                                            ; preds = %bb.bf
  br i1 %.sroa.5.0.ph, label %bb.bl, label %.sink.split.sink.split.i

bb.bl:                                            ; preds = %bb.bk
  %.sroa.064.0.extract.trunc = trunc i32 %.sroa.064.0.ph to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 8, !noalias !131
  %i.hc = xor i8 %i.hb, %.sroa.064.0.extract.trunc
  %i.hd = and i8 %i.hc, 1
  %.not10.i = icmp eq i8 %i.hd, 0
  br i1 %.not10.i, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.30)
          to label %bb.bn unwind label %.loopexit.split-lp.i17, !noalias !131 ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  call fastcc void @_ZL13graphviz_exiti(i32 noundef 1) #31, !noalias !131
  unreachable

bb.bo:                                            ; preds = %bb.bl
  %i.hf = invoke i32 @agisstrict(ptr noundef nonnull %i.fs)
          to label %bb.bp unwind label %.loopexit.i12.loopexit.split-lp.loopexit, !noalias !131

bb.bp:                                            ; preds = %bb.bo
  %.not11.i = icmp eq i32 %i.hf, 0
  br i1 %.not11.i, label %bb.bq, label %.sink.split.i

bb.bq:                                            ; preds = %bb.bp
  %i.hg = load i32, ptr %i.ha, align 8, !noalias !131
  br label %.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.bk
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.hi = load i32, ptr %i.hh, align 4, !noalias !131
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.bq, %bb.bp
  %.sroa.064.1 = phi i32 [ %.sroa.064.0.ph, %bb.bp ], [ %i.hg, %bb.bq ], [ %i.hi, %.sink.split.sink.split.i ] ; 2 uses
  %i.hj = load i8, ptr @_ZL6doPack, align 1, !tbaa !27, !range !30, !noalias !131, !noundef !31
  %i.hk = trunc nuw i8 %i.hj to i1
  invoke fastcc void @_ZL10init_graphP8Agraph_sbP5GVC_s(ptr noundef nonnull %i.fs, i1 noundef zeroext %i.hk, ptr noundef %i.fp)
          to label %bb.br unwind label %.loopexit.i12.loopexit.split-lp.loopexit, !noalias !131

bb.br:                                            ; preds = %.sink.split.i
  %.not.i27.i = icmp eq ptr %.ph240, %.ph239.ph
  br i1 %.not.i27.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store ptr %i.fs, ptr %.ph240, align 8, !tbaa !33, !noalias !131
  %i.hl = getelementptr inbounds nuw i8, ptr %.ph240, i64 8
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer

bb.bt:                                            ; preds = %bb.br
  %i.hm = ptrtoint ptr %.ph239.ph to i64
  %i.hn = ptrtoint ptr %.ph.ph to i64
  %i.ho = sub i64 %i.hm, %i.hn                    ; 6 uses
  %i.hp = icmp eq i64 %i.ho, 9223372036854775800
  br i1 %i.hp, label %bb.bu, label %_ZNKSt6vectorIP8Agraph_sSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #31
          to label %.noexc28.i unwind label %.loopexit.split-lp.i17, !noalias !131

.noexc28.i:                                       ; preds = %bb.bu
  unreachable

_ZNKSt6vectorIP8Agraph_sSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bt
  %i.hq = ashr exact i64 %i.ho, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %15 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hq ; 2 uses
  %i.hr = icmp ult i64 %15, %i.hq
  %i.hs = call i64 @llvm.umin.i64(i64 %15, i64 1152921504606846975)
  %i.ht = select i1 %i.hr, i64 1152921504606846975, i64 %i.hs ; 3 uses
  %.not.i.i.i.i16 = icmp ne i64 %i.ht, 0
  call void @llvm.assume(i1 %.not.i.i.i.i16)
  %i.hu = shl nuw nsw i64 %i.ht, 3
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #35
          to label %.noexc29.i unwind label %.loopexit.i12.loopexit.split-lp.loopexit.split-lp, !noalias !131 ; 4 uses

.noexc29.i:                                       ; preds = %_ZNKSt6vectorIP8Agraph_sSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.ho ; 2 uses
  store ptr %i.fs, ptr %i.hw, align 8, !tbaa !33, !noalias !131
  %i.hx = icmp sgt i64 %i.ho, 0
  br i1 %i.hx, label %bb.bv, label %_ZNSt6vectorIP8Agraph_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.bv:                                            ; preds = %.noexc29.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hv, ptr align 8 %.ph.ph, i64 %i.ho, i1 false), !noalias !131
  br label %_ZNSt6vectorIP8Agraph_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP8Agraph_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.bv, %.noexc29.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.ph.ph, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIP8Agraph_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.ph.ph, i64 noundef %i.ho) #29, !noalias !131
  br label %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bw, %_ZNSt6vectorIP8Agraph_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.ht
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer

.loopexit.i12:                                    ; preds = %.loopexit.i12.loopexit, %.loopexit.i12.loopexit.split-lp.loopexit.split-lp, %.loopexit.i12.loopexit.split-lp.loopexit, %.loopexit.split-lp.i17
  %.pn.i14 = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i18, %.loopexit.split-lp.i17 ], [ %lpad.loopexit241, %.loopexit.i12.loopexit ], [ %lpad.loopexit243, %.loopexit.i12.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp244, %.loopexit.i12.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !131
  %.not.i.i.i30.i = icmp eq ptr %.ph.ph, null
  br i1 %.not.i.i.i30.i, label %common.resume, label %bb.bx

bb.bx:                                            ; preds = %.loopexit.i12
  %i.ia = ptrtoint ptr %.ph239.ph to i64
  %i.ib = ptrtoint ptr %.ph.ph to i64
  %i.ic = sub i64 %i.ia, %i.ib
  call void @_ZdlPvm(ptr noundef nonnull %.ph.ph, i64 noundef %i.ic) #29, !noalias !131
  br label %common.resume

_ZL10readGraphsP5GVC_sRSt8optionalI8Agdesc_sE.exit: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !131
  %i.id = icmp eq ptr %.ph.ph, %.ph240
  br i1 %i.id, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZL10readGraphsP5GVC_sRSt8optionalI8Agdesc_sE.exit
  call fastcc void @_ZL13graphviz_exiti(i32 noundef 0) #31
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %bb.cn, %bb.co
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ca, %bb.cc, %_ZL6compBBRSt6vectorIP8Agraph_sSaIS1_EE.exit, %bb.eg, %bb.eh, %bb.cf, %.noexc, %_ZL9initAttrsP8Agraph_sRSt6vectorIS0_SaIS0_EE.exit.i, %._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bz:                                            ; preds = %_ZL10readGraphsP5GVC_sRSt8optionalI8Agdesc_sE.exit
  %i.ie = load i8, ptr @_ZL6doPack, align 1, !tbaa !27, !range !30, !noundef !31
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.ig = ptrtoint ptr %.ph240 to i64
  %i.ih = ptrtoint ptr %.ph.ph to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = ashr exact i64 %i.ii, 3
  %i.ik = invoke i32 @packGraphs(i64 noundef %i.ij, ptr noundef %.ph.ph, ptr noundef null, ptr noundef nonnull %13)
          to label %bb.cb unwind label %.loopexit.split-lp

bb.cb:                                            ; preds = %bb.ca
  %.not = icmp eq i32 %i.ik, 0
  br i1 %.not, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.il = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1)
          to label %bb.cd unwind label %.loopexit.split-lp ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  call fastcc void @_ZL13graphviz_exiti(i32 noundef 1) #31
  unreachable

bb.ce:                                            ; preds = %bb.cb, %bb.bz
  %.b83.i = load i1, ptr @_ZL7verbose, align 4
  br i1 %.b83.i, label %bb.cf, label %.noexc

bb.cf:                                            ; preds = %bb.ce
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.42, i64 noundef 21)
          to label %.noexc unwind label %.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.cf, %bb.ce
  %i.in = load ptr, ptr @_ZL5gname, align 8, !tbaa !112
  %i.io = invoke ptr @agopen(ptr noundef %i.in, i32 %.sroa.064.0.ph, ptr noundef nonnull @AgDefaultDisc)
          to label %.noexc34 unwind label %.loopexit.split-lp ; 15 uses

.noexc34:                                         ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.ip, align 8, !tbaa !133
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr null, ptr %i.iq, align 8, !tbaa !38
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.ip, ptr %i.ir, align 8, !tbaa !39
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ip, ptr %i.is, align 8, !tbaa !134
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.it, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.iu, align 8, !tbaa !133
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.iv, align 8, !tbaa !38
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.iu, ptr %i.iw, align 8, !tbaa !39
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.iu, ptr %i.ix, align 8, !tbaa !134
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.iy, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.iz, align 8, !tbaa !133
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr null, ptr %i.ja, align 8, !tbaa !38
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.iz, ptr %i.jb, align 8, !tbaa !39
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.iz, ptr %i.jc, align 8, !tbaa !134
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.jd, align 8, !tbaa !40
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.cj
  %.val.i.pre.i.i = load ptr, ptr %i.jb, align 8, !tbaa !39 ; 2 uses
  %i.je = ptrtoint ptr %.ph240 to i64
  %i.jf = ptrtoint ptr %.ph.ph to i64
  %i.jg = sub i64 %i.je, %i.jf                    ; 2 uses
  %i.jh = ashr exact i64 %i.jg, 3                 ; 6 uses
  %.not18.i.i.i = icmp eq ptr %.val.i.pre.i.i, %i.iz
  br i1 %.not18.i.i.i, label %_ZL9fillGraphP8Agraph_sRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS7_ESaISt4pairIKS7_S9_EEEPFP7Agsym_sS0_PcPKcEm.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i, %.noexc.i.i
  %.sroa.017.019.i.i.i = phi ptr [ %i.jr, %.noexc.i.i ], [ %.val.i.pre.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.017.019.i.i.i, i64 32
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.017.019.i.i.i, i64 96
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !41
  %i.jl = icmp eq i64 %i.jh, %i.jk
  br i1 %i.jl, label %bb.cg, label %.invoke86.i.i

bb.cg:                                            ; preds = %.lr.ph.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.017.019.i.i.i, i64 64
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !22
  br label %.invoke86.i.i

.invoke86.i.i:                                    ; preds = %bb.cg, %.lr.ph.i.i.i
  %i.jo = phi ptr [ %i.jn, %bb.cg ], [ @.str.50, %.lr.ph.i.i.i ]
  %i.jp = load ptr, ptr %i.ji, align 8, !tbaa !22
  %i.jq = invoke noundef ptr @agattr_text(ptr noundef %i.io, i32 noundef 0, ptr noundef %i.jp, ptr noundef %i.jo)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i ; 0 uses

.noexc.i.i:                                       ; preds = %.invoke86.i.i
  %i.jr = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.017.019.i.i.i) #34 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jr, %i.iz
  br i1 %.not.i.i.i, label %_ZL9fillGraphP8Agraph_sRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS7_ESaISt4pairIKS7_S9_EEEPFP7Agsym_sS0_PcPKcEm.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i:                                       ; preds = %.noexc34, %bb.cj
  %.sroa.046.053.i.i = phi ptr [ %i.jt, %bb.cj ], [ %.ph.ph, %.noexc34 ] ; 2 uses
  %i.js = load ptr, ptr %.sroa.046.053.i.i, align 8, !tbaa !33 ; 3 uses
  invoke fastcc void @_ZL8fillDictRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEEP8Agraph_si(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.js, i32 noundef 0)
          to label %bb.ch unwind label %bb.ck

bb.ch:                                            ; preds = %.lr.ph.i.i
  invoke fastcc void @_ZL8fillDictRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEEP8Agraph_si(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.js, i32 noundef 1)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  invoke fastcc void @_ZL8fillDictRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEEP8Agraph_si(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.js, i32 noundef 2)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.046.053.i.i, i64 8 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.jt, %.ph240
  br i1 %.not.i.i21, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ck:                                            ; preds = %bb.ci, %bb.ch, %.lr.ph.i.i
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

_ZL9fillGraphP8Agraph_sRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS7_ESaISt4pairIKS7_S9_EEEPFP7Agsym_sS0_PcPKcEm.exit.i.i: ; preds = %.noexc.i.i, %._crit_edge.i.i
  %.val.i21.i.i = load ptr, ptr %i.ir, align 8, !tbaa !39 ; 2 uses
  %.not18.i22.i.i = icmp eq ptr %.val.i21.i.i, %i.ip
  br i1 %.not18.i22.i.i, label %_ZL9fillGraphP8Agraph_sRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS7_ESaISt4pairIKS7_S9_EEEPFP7Agsym_sS0_PcPKcEm.exit28.i.i, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %_ZL9fillGraphP8Agraph_sRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS7_ESaISt4pairIKS7_S9_EEEPFP7Agsym_sS0_PcPKcEm.exit.i.i, %.noexc26.i.i
  %.sroa.017.019.i24.i.i = phi ptr [ %i.ke, %.noexc26.i.i ], [ %.val.i21.i.i, %_ZL9fillGraphP8Agraph_sRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS7_ESaISt4pairIKS7_S9_EEEPFP7Agsym_sS0_PcPKcEm.exit.i.i ] ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.017.019.i24.i.i, i64 32
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.017.019.i24.i.i, i64 96
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !41
end_hunk_0
