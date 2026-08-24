Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvpack?download=true
inline.NumInlined: 614
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.bd = load ptr, ptr %10, align 8, !tbaa !36
  %i.be = load i32, ptr %i.h, align 8, !tbaa !13
  %i.bf = invoke i32 @parsePackModeInfo(ptr noundef %i.bd, i32 noundef %i.be, ptr noundef nonnull %13)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i
  %i.bg = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.q
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %bb.h
  %i.bi = load i64, ptr %i.q, align 8, !tbaa !28
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
  %i.bk = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.o
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i: ; preds = %bb.i
  %i.bm = load i64, ptr %i.o, align 8, !tbaa !28
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %lpad.phi74.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.phi74.i, %bb.i ]
  %i.bo = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.m
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i
  %i.bq = load i64, ptr %i.m, align 8, !tbaa !28
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
  %i.bt = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.q
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %bb.j
  %i.bv = load i64, ptr %i.q, align 8, !tbaa !28
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
  %i.bx = load i32, ptr %i.h, align 8, !tbaa !13
  %i.by = call i32 @parsePackModeInfo(ptr noundef nonnull @.str.7, i32 noundef %i.bx, ptr noundef nonnull %13) ; 0 uses
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.l:                                             ; preds = %_ZL12setNameValuePc.exit.i
  %i.bz = load ptr, ptr @optarg, align 8, !tbaa !32
  store ptr %i.bz, ptr @_ZL5gname, align 8, !tbaa !32
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.m:                                             ; preds = %_ZL12setNameValuePc.exit.i
  %i.ca = load i32, ptr %i.h, align 8, !tbaa !13
  %i.cb = call i32 @parsePackModeInfo(ptr noundef nonnull @.str.8, i32 noundef %i.ca, ptr noundef nonnull %13) ; 0 uses
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.n:                                             ; preds = %_ZL12setNameValuePc.exit.i
  %i.cc = load ptr, ptr @optarg, align 8, !tbaa !32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.cd = call i64 @__isoc23_strtol(ptr noundef %i.cc, ptr noundef nonnull %i.f, i32 noundef 10) #30
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !32
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
  store i32 %i.cl, ptr %i.i, align 8, !tbaa !24
  br label %_ZL7setUIntPjPc.exit.i

_ZL7setUIntPjPc.exit.i:                           ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.q:                                             ; preds = %_ZL12setNameValuePc.exit.i
  %i.cm = load ptr, ptr @_ZL5outfp, align 8, !tbaa !40 ; 2 uses
  %.not30.i = icmp eq ptr %i.cm, null
  br i1 %.not30.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = call i32 @fclose(ptr noundef nonnull %i.cm) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.co = load ptr, ptr @optarg, align 8, !tbaa !32 ; 3 uses
  %i.cp = call noalias ptr @fopen(ptr noundef %i.co, ptr noundef nonnull @.str.10) ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.t, label %_ZL8openFilePKcS0_S0_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.cs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9, ptr noundef %i.co, ptr noundef nonnull @.str.23) #32 ; 0 uses
  call void @perror(ptr noundef %i.co) #33
  call fastcc void @_ZL13graphviz_exiti(i32 noundef 1) #31
  unreachable

_ZL8openFilePKcS0_S0_.exit.i:                     ; preds = %bb.s
  store ptr %i.cp, ptr @_ZL5outfp, align 8, !tbaa !40
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.u:                                             ; preds = %_ZL12setNameValuePc.exit.i
  store i32 0, ptr %i.h, align 8, !tbaa !13
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.v:                                             ; preds = %_ZL12setNameValuePc.exit.i
  %i.ct = load ptr, ptr @optarg, align 8, !tbaa !32 ; 4 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !28
  %.not29.i = icmp eq i8 %i.cu, 0
  br i1 %.not29.i, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ct, i32 noundef 61) #34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 0, ptr %i.cv, align 1, !tbaa !28
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i60.i = phi ptr [ %i.cw, %bb.x ], [ @.str.25, %bb.w ] ; 2 uses
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL6G_args, i64 8), align 8, !tbaa !42 ; 5 uses
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL6G_args, i64 16), align 8, !tbaa !12
  %.not.i.i.i.i = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.ct, ptr %i.cx, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %.0.i60.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.cz, ptr getelementptr inbounds nuw (i8, ptr @_ZL6G_args, i64 8), align 8, !tbaa !42
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.aa:                                            ; preds = %bb.y
  %i.da = load ptr, ptr @_ZL6G_args, align 8, !tbaa !9 ; 4 uses
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 6 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775792
  br i1 %i.de, label %bb.ab, label %_ZNKSt6vectorI6attr_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #31
  unreachable

_ZNKSt6vectorI6attr_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.df = ashr exact i64 %i.dd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 576460752303423487)
  %i.dj = select i1 %i.dh, i64 576460752303423487, i64 %i.di ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.dk = shl nuw nsw i64 %i.dj, 4
  %i.dl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #35 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.dd ; 3 uses
  store ptr %i.ct, ptr %i.dm, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %.0.i60.i, ptr %.sroa.5.0..sroa_idx8.i.i, align 8, !tbaa !32
  %i.dn = icmp sgt i64 %i.dd, 0
  br i1 %i.dn, label %bb.ac, label %_ZNSt6vectorI6attr_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i

bb.ac:                                            ; preds = %_ZNKSt6vectorI6attr_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr align 8 %i.da, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorI6attr_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i

_ZNSt6vectorI6attr_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i: ; preds = %bb.ac, %_ZNKSt6vectorI6attr_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorI6attr_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorI6attr_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dd) #29
  br label %_ZNSt6vectorI6attr_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorI6attr_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ad, %_ZNSt6vectorI6attr_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i
  store ptr %i.dl, ptr @_ZL6G_args, align 8, !tbaa !9
  store ptr %i.do, ptr getelementptr inbounds nuw (i8, ptr @_ZL6G_args, i64 8), align 8, !tbaa !42
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.dp, ptr getelementptr inbounds nuw (i8, ptr @_ZL6G_args, i64 16), align 8, !tbaa !12
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.ae:                                            ; preds = %bb.v
  %i.dq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.11, i64 noundef 45) ; 0 uses
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.af:                                            ; preds = %_ZL12setNameValuePc.exit.i
  store i1 true, ptr @_ZL7verbose, align 4
  store i8 1, ptr @Verbose, align 1, !tbaa !28
  br label %_ZL12setNameValuePc.exit.i.backedge

bb.ag:                                            ; preds = %_ZL12setNameValuePc.exit.i
  %i.dr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 16) ; 0 uses
  %i.ds = load i32, ptr @optopt, align 4, !tbaa !24
  %i.dt = trunc i32 %i.ds to i8                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.dt, ptr %i.e, align 1, !tbaa !28
  %i.du = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !43
  %i.dv = getelementptr i8, ptr %i.du, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !45
  %.not.i61.i = icmp eq i64 %i.dz, 0
  br i1 %.not.i61.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.e, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %i.dt) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.ai, %bb.ah
  %.0.i62.i = phi ptr [ %i.ea, %bb.ah ], [ @_ZSt4cerr, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ec = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i62.i, ptr noundef nonnull @.str.13, i64 noundef 28) ; 0 uses
  br label %_ZL12setNameValuePc.exit.i.backedge

_ZL12setNameValuePc.exit.i.backedge:              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %bb.af, %bb.ae, %_ZNSt6vectorI6attr_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i, %bb.z, %bb.u, %_ZL8openFilePKcS0_S0_.exit.i, %_ZL7setUIntPjPc.exit.i, %bb.m, %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, %_ZL12setNameValuePc.exit.i
  br label %_ZL12setNameValuePc.exit.i, !llvm.loop !54

bb.aj:                                            ; preds = %_ZL12setNameValuePc.exit.i
  %i.ed = load i32, ptr @optopt, align 4, !tbaa !24
  switch i32 %i.ed, label %bb.al [
    i32 63, label %bb.ak
    i32 0, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZL9useString) ; 0 uses
  call fastcc void @_ZL13graphviz_exiti(i32 noundef 0) #31
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.ef = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 16) ; 0 uses
  %i.eg = load i32, ptr @optopt, align 4, !tbaa !24
  %i.eh = trunc i32 %i.eg to i8                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.eh, ptr %i.d, align 1, !tbaa !28
  %i.ei = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !43
  %i.ej = getelementptr i8, ptr %i.ei, i64 -24
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !45
  %.not.i63.i = icmp eq i64 %i.en, 0
  br i1 %.not.i63.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.d, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit65.i

bb.an:                                            ; preds = %bb.al
  %i.ep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %i.eh) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit65.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit65.i: ; preds = %bb.an, %bb.am
  %.0.i64.i = phi ptr [ %i.eo, %bb.am ], [ @_ZSt4cerr, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i64.i, ptr noundef nonnull @.str.14, i64 noundef 14) ; 0 uses
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZL9useString) ; 0 uses
  call fastcc void @_ZL13graphviz_exiti(i32 noundef 1) #31
  unreachable

bb.ao:                                            ; preds = %_ZL12setNameValuePc.exit.i
  %i.es = load i32, ptr @optind, align 4, !tbaa !24 ; 2 uses
  %i.et = icmp sgt i32 %0, %i.es
  br i1 %i.et, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eu = sext i32 %i.es to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eu
  store ptr %i.ev, ptr @_ZL7myFiles, align 8, !tbaa !56
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ew = load ptr, ptr @_ZL5outfp, align 8, !tbaa !40
  %.not28.i = icmp eq ptr %i.ew, null
  br i1 %.not28.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ex = load ptr, ptr @stdout, align 8, !tbaa !40
  store ptr %i.ex, ptr @_ZL5outfp, align 8, !tbaa !40
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.b.i = load i1, ptr @_ZL7verbose, align 4
  br i1 %.b.i, label %bb.at, label %_ZL4initiPPcP9pack_info.exit

bb.at:                                            ; preds = %bb.as
  %i.ey = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.15, i64 noundef 9) ; 0 uses
  %i.ez = load i32, ptr %i.i, align 8, !tbaa !20
  %i.fa = zext i32 %i.ez to i64
  %i.fb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %i.fa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !28
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !43
  %i.fd = getelementptr i8, ptr %i.fc, i64 -24
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds i8, ptr %i.fb, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !45
  %.not.i67.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i67.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69.i

bb.av:                                            ; preds = %bb.at
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69.i: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZL4initiPPcP9pack_info.exit

_ZL4initiPPcP9pack_info.exit:                     ; preds = %bb.as, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69.i
  %i.fk = load i32, ptr %i.h, align 8, !tbaa !13
  %i.fl = icmp ne i32 %i.fk, 0
  %i.fm = zext i1 %i.fl to i8
  store i8 %i.fm, ptr @_ZL6doPack, align 1, !tbaa !59
  store ptr @gvplugin_neato_layout_LTX_library, ptr getelementptr inbounds nuw (i8, ptr @lt_preloaded_symbols, i64 8), align 8, !tbaa !60
  %i.fn = call ptr @gvContextPlugins(ptr noundef nonnull @lt_preloaded_symbols, i32 noundef 0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !62
  store double 7.200000e+01, ptr @PSinputscale, align 8, !tbaa !65, !noalias !62
  store i32 2, ptr @Nop, align 4, !tbaa !24, !noalias !62
  %i.fo = load ptr, ptr @_ZL7myFiles, align 8, !tbaa !56, !noalias !62
  %i.fp = call ptr @newIngraph(ptr noundef nonnull %9, ptr noundef %i.fo), !noalias !62 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer: ; preds = %_ZL4initiPPcP9pack_info.exit, %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.sroa.5.0.ph.ph = phi i1 [ false, %_ZL4initiPPcP9pack_info.exit ], [ true, %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %.sroa.064.0.ph.ph = phi i32 [ undef, %_ZL4initiPPcP9pack_info.exit ], [ %.sroa.064.1, %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %.ph.ph = phi ptr [ null, %_ZL4initiPPcP9pack_info.exit ], [ %i.hu, %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 21 uses
  %.ph239.ph = phi ptr [ null, %_ZL4initiPPcP9pack_info.exit ], [ %i.hy, %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 4 uses
  %.ph240.ph = phi ptr [ null, %_ZL4initiPPcP9pack_info.exit ], [ %i.hx, %_ZNSt6vectorIP8Agraph_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer, %bb.bs
  %.sroa.5.0.ph = phi i1 [ true, %bb.bs ], [ %.sroa.5.0.ph.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer ]
  %.sroa.064.0.ph = phi i32 [ %.sroa.064.1, %bb.bs ], [ %.sroa.064.0.ph.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer ] ; 3 uses
  %.ph240 = phi ptr [ %i.hj, %bb.bs ], [ %.ph240.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer.outer ] ; 8 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i.outer, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23.i
  %i.fq = invoke ptr @nextGraph(ptr noundef nonnull %9)
          to label %bb.aw unwind label %.loopexit.i12.loopexit, !noalias !62 ; 10 uses

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i
  %.not.i = icmp eq ptr %i.fq, null
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
end_hunk_0
begin_hunk_1_@_ZL9cloneSubgP8Agraph_sS0_P7Agsym_sRSt8multisetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_EE:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !109
  %i.bo = icmp eq i32 %i.bf, 2
  %i.bp = select i1 %i.bo, i64 56, i64 -8
  %i.bq = getelementptr inbounds i8, ptr %.05167, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !164
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !86
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 152
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !109
  %i.bw = call ptr @agedge(ptr noundef %1, ptr noundef %i.bn, ptr noundef %i.bv, ptr noundef null, i32 noundef 1) ; 5 uses
  %i.bx = call ptr @agbindrec(ptr noundef %i.bw, ptr noundef nonnull @.str.33, i32 noundef 240, i32 noundef 1) ; 0 uses
  %i.by = load i32, ptr %.05167, align 8
  %i.bz = and i32 %i.by, 3                        ; 2 uses
  %i.ca = call ptr @agroot(ptr noundef nonnull %.05167) ; 2 uses
  %i.cb = call ptr @agroot(ptr noundef %i.bw)     ; 2 uses
  %i.cc = call ptr @agnxtattr(ptr noundef %i.ca, i32 noundef %i.bz, ptr noundef null) ; 2 uses
  %.not22.i = icmp eq ptr %i.cc, null
  br i1 %.not22.i, label %_ZL10cloneAttrsPvS_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.r
  %.023.i = phi ptr [ %i.cn, %bb.r ], [ %i.cc, %bb.o ] ; 4 uses
  %i.cd = call ptr @agxget(ptr noundef nonnull %.05167, ptr noundef nonnull %.023.i) ; 3 uses
  %i.ce = call i32 @aghtmlstr(ptr noundef %i.cd)
  %.not21.i = icmp eq i32 %i.ce, 0
  br i1 %.not21.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.cf = call ptr @agstrdup_html(ptr noundef %i.cb, ptr noundef %i.cd) ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.023.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !116
  %i.ci = call i32 @agset(ptr noundef %i.bw, ptr noundef %i.ch, ptr noundef %i.cf) ; 0 uses
  %i.cj = call i32 @agstrfree(ptr noundef %i.cb, ptr noundef %i.cf, i1 noundef zeroext true) ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.023.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !116
  %i.cm = call i32 @agset(ptr noundef %i.bw, ptr noundef %i.cl, ptr noundef %i.cd) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cn = call ptr @agnxtattr(ptr noundef %i.ca, i32 noundef %i.bz, ptr noundef nonnull %.023.i) ; 2 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %_ZL10cloneAttrsPvS_.exit, label %.lr.ph.i, !llvm.loop !120

_ZL10cloneAttrsPvS_.exit:                         ; preds = %bb.r, %bb.o
  %i.co = load ptr, ptr %i.ba, align 8, !tbaa !86 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !141
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !86 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !141
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 152
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !147
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 152
  store i8 %i.cv, ptr %i.cw, align 8, !tbaa !147
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 120
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  %i.cz = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !166
  store <2 x ptr> %i.cz, ptr %i.cy, align 8, !tbaa !166
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 136
  %i.dc = load <2 x ptr>, ptr %i.da, align 8, !tbaa !166
  store <2 x ptr> %i.dc, ptr %i.db, align 8, !tbaa !166
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 168
  store ptr %.05167, ptr %i.dd, align 8, !tbaa !163
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph70, %_ZL10cloneAttrsPvS_.exit
  %i.de = call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.05167) ; 2 uses
  %.not54 = icmp eq ptr %i.de, null
  br i1 %.not54, label %._crit_edge71, label %.lr.ph70, !llvm.loop !167

._crit_edge71:                                    ; preds = %bb.s, %.lr.ph75
  %i.df = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.173) ; 2 uses
  %.not53 = icmp eq ptr %i.df, null
  br i1 %.not53, label %._crit_edge76, label %.lr.ph75, !llvm.loop !168

._crit_edge76:                                    ; preds = %._crit_edge71, %._crit_edge65
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL16cloneClusterTreeP8Agraph_sS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %.val21 = load ptr, ptr %i.b, align 8, !tbaa !86 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %.val21, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %.val21, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !170
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 236 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !90   ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 236
  store i32 %i.j, ptr %i.l, align 4, !tbaa !90
  %i.m = load i32, ptr %i.i, align 4, !tbaa !90   ; 3 uses
  %i.n = add nsw i32 %i.m, 1                      ; 2 uses
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %mul.ov.i = icmp slt i32 %i.m, -1
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.54, i64 noundef range(i64 -2147483647, 2147483648) %i.o, i64 noundef 8) #32 ; 0 uses
  tail call fastcc void @_ZL13graphviz_exiti(i32 noundef 1) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = icmp ne i32 %i.n, 0
  %i.s = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483647, 2147483648) %i.o, i64 noundef 8) #36 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  %or.cond3.i = and i1 %i.r, %i.t
  br i1 %or.cond3.i, label %bb.e, label %_ZL9gv_callocmm.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.v = shl nuw nsw i64 %i.o, 3
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.55, i64 noundef %i.v) #32 ; 0 uses
  tail call fastcc void @_ZL13graphviz_exiti(i32 noundef 1) #31
  unreachable

_ZL9gv_callocmm.exit:                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  store ptr %i.s, ptr %i.x, align 8, !tbaa !128
  %.not2022 = icmp slt i32 %i.m, 1
  br i1 %.not2022, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL9gv_callocmm.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %_ZL9gv_callocmm.exit ] ; 4 uses
  %i.y = phi ptr [ %i.am, %.lr.ph ], [ %i.h, %_ZL9gv_callocmm.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !128
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !129 ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !128
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !70
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !70
  tail call fastcc void @_ZL16cloneClusterTreeP8Agraph_sS0_(ptr noundef %i.al, ptr noundef %i.ag)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 236
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !90
  %i.ap = sext i32 %i.ao to i64
  %.not20.not = icmp slt i64 %indvars.iv, %i.ap
  br i1 %.not20.not, label %.lr.ph, label %.loopexit, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph, %_ZL9gv_callocmm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8multisetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #37
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL8fillDictRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEEP8Agraph_si(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.std::pair.18", align 8     ; 16 uses
  %5 = alloca %"struct.(anonymous namespace)::AttributeValue", align 8 ; 14 uses
  %i.e = tail call ptr @agnxtattr(ptr noundef %1, i32 noundef %2, ptr noundef null) ; 2 uses
  %.not75 = icmp eq ptr %i.e, null
  br i1 %.not75, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65
  %.076 = phi ptr [ %i.e, %.lr.ph ], [ %i.fq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65 ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.076, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116  ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.076, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !159  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.f, ptr %3, align 8, !tbaa !25
  %i.y = icmp eq ptr %i.v, null
  br i1 %i.y, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.17) #31
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 %i.z, ptr %i.d, align 8, !tbaa !81
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !36
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !81
  store i64 %i.ac, ptr %i.f, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.ad = phi ptr [ %i.ab, %.noexc.i ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %i.z, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i8, ptr %i.v, align 1, !tbaa !28
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %i.v, i64 %i.z, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.af = load i64, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  store i64 %i.af, ptr %i.g, align 8, !tbaa !29
  %i.ag = load ptr, ptr %3, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %.val25 = load ptr, ptr %3, align 8             ; 4 uses
  %.val26 = load i64, ptr %i.g, align 8           ; 5 uses
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !77 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %.val.i.i, %bb.f ] ; 4 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.i, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !29 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val26, i64 %i.aj) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.an = call i32 @memcmp(ptr noundef %i.am, ptr noundef readonly %.val25, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ao = sub i64 %i.aj, %.val26
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ap, ptr %.083.i.i.i, ptr %.04.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ap, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !173

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.aq = icmp eq ptr %.19.i.i.i, %i.i
  br i1 %i.aq, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !29 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %.val26) ; 2 uses
  %i.at = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.at, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36
  %i.aw = call i32 @memcmp(ptr noundef readonly %.val25, ptr noundef %i.av, i64 noundef %.sroa.speculated.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.ax = sub i64 %.val26, %i.as
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ax, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ay = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ay, ptr %i.i, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.f
  %.sroa.0.0.i.i = phi ptr [ %i.i, %bb.f ], [ %i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 4 uses
  %i.az = icmp eq ptr %.val25, %i.f
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.ba = icmp ult i64 %.val26, 16
  call void @llvm.assume(i1 %i.ba)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !28
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %.val25, i64 noundef %i.bc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.bd = icmp eq ptr %.sroa.0.0.i.i, %i.i
  br i1 %i.bd, label %bb.h, label %bb.ag

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.j, ptr %5, align 8, !tbaa !25
  %i.be = icmp eq ptr %i.x, null
  br i1 %i.be, label %.noexc33, label %bb.i

.noexc33:                                         ; preds = %bb.h
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.17) #31
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 %i.bf, ptr %i.c, align 8, !tbaa !81
  %i.bg = icmp ugt i64 %i.bf, 15
  br i1 %i.bg, label %.noexc.i32, label %._crit_edge.i.i31

.noexc.i32:                                       ; preds = %bb.i
  %i.bh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.bh, ptr %5, align 8, !tbaa !36
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !81
  store i64 %i.bi, ptr %i.j, align 8, !tbaa !28
  br label %._crit_edge.i.i31

._crit_edge.i.i31:                                ; preds = %.noexc.i32, %bb.i
  %i.bj = phi ptr [ %i.bh, %.noexc.i32 ], [ %i.j, %bb.i ] ; 2 uses
  switch i64 %i.bf, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i31
  %i.bk = load i8, ptr %i.x, align 1, !tbaa !28
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !28
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 1 %i.x, i64 %i.bf, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i31, %bb.j, %bb.k
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !81  ; 2 uses
  store i64 %i.bl, ptr %i.k, align 8, !tbaa !29
  %i.bm = load ptr, ptr %5, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  store i8 0, ptr %i.bn, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  store i64 1, ptr %i.l, align 8, !tbaa !174
  store ptr %i.m, ptr %4, align 8, !tbaa !25
  %i.bo = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.v) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !81
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.l
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc38 unwind label %bb.ad  ; 2 uses

.noexc38:                                         ; preds = %.noexc.i.i
  store ptr %i.bq, ptr %4, align 8, !tbaa !36
  %i.br = load i64, ptr %i.b, align 8, !tbaa !81
  store i64 %i.br, ptr %i.m, align 8, !tbaa !28
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc38, %bb.l
  %i.bs = phi ptr [ %i.bq, %.noexc38 ], [ %i.m, %bb.l ] ; 2 uses
  switch i64 %i.bo, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.bt = load i8, ptr %i.v, align 1, !tbaa !28
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !28
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr nonnull readonly align 1 %i.v, i64 %i.bo, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !81  ; 2 uses
  store i64 %i.bu, ptr %i.n, align 8, !tbaa !29
  %i.bv = load ptr, ptr %4, align 8, !tbaa !36
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store i8 0, ptr %i.bw, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  store ptr %i.p, ptr %i.o, align 8, !tbaa !25
  %i.bx = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %i.by = icmp eq ptr %i.bx, %i.j
  br i1 %i.by, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bz = load i64, ptr %i.k, align 8, !tbaa !29  ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.cb, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  store ptr %i.bx, ptr %i.o, align 8, !tbaa !36
  %i.cc = load i64, ptr %i.j, align 8, !tbaa !28
  store i64 %i.cc, ptr %i.p, align 8, !tbaa !28
  %.pre = load i64, ptr %i.k, align 8, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.p
  %i.cd = phi ptr [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.p, %bb.p ]
  %i.ce = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bz, %bb.p ]
  store i64 %i.ce, ptr %i.q, align 8, !tbaa !29
  store ptr %i.j, ptr %5, align 8, !tbaa !36
  store i64 0, ptr %i.k, align 8, !tbaa !29
  store i8 0, ptr %i.j, align 8, !tbaa !28
  %i.cf = load i64, ptr %i.l, align 8, !tbaa !174
  store i64 %i.cf, ptr %i.r, align 8, !tbaa !174
  %.val.i.i39 = load ptr, ptr %4, align 8         ; 5 uses
  %.val5.i.i = load i64, ptr %i.n, align 8        ; 10 uses
  %.01113.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !172 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %.01113.i.i.i, null
  br i1 %.not14.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %bb.q, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i44
  %.01115.i.i.i = phi ptr [ %.011.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i44 ], [ %.01113.i.i.i, %bb.q ] ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01115.i.i.i, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !29 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i41 = call i64 @llvm.umin.i64(i64 %i.ch, i64 %.val5.i.i) ; 3 uses
  %i.ci = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i41, 0
  br i1 %i.ci, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i42

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i42: ; preds = %.lr.ph.i.i.i40
  %i.cj = getelementptr inbounds nuw i8, ptr %.01115.i.i.i, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !36
  %i.cl = call i32 @memcmp(ptr noundef readonly %.val.i.i39, ptr noundef %i.ck, i64 noundef %.sroa.speculated.i.i.i.i.i.i41) #30 ; 2 uses
  %.not.i.i.i.i.i.i43 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i.i.i43, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i48, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i44

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i42, %.lr.ph.i.i.i40
  %i.cm = sub i64 %.val5.i.i, %i.ch
  %spec.select7.i.i.i.i.i.i.i49 = call i64 @llvm.smax.i64(i64 %i.cm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i50 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i49, i64 2147483647)
  %.0.i6.i.i.i.i.i.i51 = trunc nsw i64 %.08.i.i.i.i.i.i.i50 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i44

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i44: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i48, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i42
  %.0.i.i.i.i.i.i45 = phi i32 [ %i.cl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i42 ], [ %.0.i6.i.i.i.i.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i48 ]
  %i.cn = icmp slt i32 %.0.i.i.i.i.i.i45, 0       ; 2 uses
  %.in.v.i.i.i = select i1 %i.cn, i64 16, i64 24
  %.in.i.i.i = getelementptr i8, ptr %.01115.i.i.i, i64 %.in.v.i.i.i
  %.011.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %.011.i.i.i, null
  br i1 %.not.i.i.i46, label %._crit_edge.i.i.i47, label %.lr.ph.i.i.i40, !llvm.loop !176

._crit_edge.i.i.i47:                              ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i44
  br i1 %i.cn, label %._crit_edge.thread.i.i.i, label %bb.s

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i47, %bb.q
  %.010.lcssa21.i.i.i = phi ptr [ %.01115.i.i.i, %._crit_edge.i.i.i47 ], [ %i.i, %bb.q ] ; 4 uses
  %.val9.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.co = icmp eq ptr %.010.lcssa21.i.i.i, %.val9.i.i.i
  br i1 %i.co, label %select.unfold.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.cp = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa21.i.i.i) #34 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !29 ; 2 uses
  %.pre31.i.i = call i64 @llvm.umin.i64(i64 %.val5.i.i, i64 %.pre.i.i)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i47
  %.sroa.speculated.i.i.i14.i.pre-phi.i.i = phi i64 [ %.pre31.i.i, %bb.r ], [ %.sroa.speculated.i.i.i.i.i.i41, %._crit_edge.i.i.i47 ] ; 2 uses
  %i.cq = phi i64 [ %.pre.i.i, %bb.r ], [ %i.ch, %._crit_edge.i.i.i47 ]
  %.010.lcssa20.i.i.i = phi ptr [ %.010.lcssa21.i.i.i, %bb.r ], [ %.01115.i.i.i, %._crit_edge.i.i.i47 ]
  %.sroa.01.0.i.i.i = phi ptr [ %i.cp, %bb.r ], [ %.01115.i.i.i, %._crit_edge.i.i.i47 ]
  %i.cr = icmp eq i64 %.sroa.speculated.i.i.i14.i.pre-phi.i.i, 0
  br i1 %i.cr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i.i.i: ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !36
  %i.cu = call i32 @memcmp(ptr noundef %i.ct, ptr noundef readonly %.val.i.i39, i64 noundef %.sroa.speculated.i.i.i14.i.pre-phi.i.i) #30 ; 2 uses
  %.not.i.i.i16.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i16.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i.i.i, %bb.s
  %i.cv = sub i64 %i.cq, %.val5.i.i
  %spec.select7.i.i.i.i19.i.i.i = call i64 @llvm.smax.i64(i64 %i.cv, i64 -2147483648)
  %.08.i.i.i.i20.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i19.i.i.i, i64 2147483647)
  %.0.i6.i.i.i21.i.i.i = trunc nsw i64 %.08.i.i.i.i20.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i.i.i
  %.0.i.i.i17.i.i.i = phi i32 [ %i.cu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i.i.i ], [ %.0.i6.i.i.i21.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18.i.i.i ]
  %i.cw = icmp slt i32 %.0.i.i.i17.i.i.i, 0
  br i1 %i.cw, label %select.unfold.i.i, label %bb.ac

select.unfold.i.i:                                ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i.i.i, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.010.lcssa21.i.i.i, %._crit_edge.thread.i.i.i ], [ %.010.lcssa20.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i.i.i ] ; 4 uses
  %i.cx = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.i
  br i1 %i.cx, label %bb.u, label %bb.t

bb.t:                                             ; preds = %select.unfold.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 40
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !29 ; 2 uses
  %.sroa.speculated.i.i.i.i11.i.i = call i64 @llvm.umin.i64(i64 %i.cz, i64 %.val5.i.i) ; 2 uses
  %i.da = icmp eq i64 %.sroa.speculated.i.i.i.i11.i.i, 0
  br i1 %i.da, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i12.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i12.i.i: ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !36
  %i.dd = call i32 @memcmp(ptr noundef %.val.i.i39, ptr noundef %i.dc, i64 noundef %.sroa.speculated.i.i.i.i11.i.i) #30 ; 2 uses
  %.not.i.i.i.i13.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i.i.i13.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i14.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i12.i.i, %bb.t
  %i.de = sub i64 %.val5.i.i, %i.cz
  %spec.select7.i.i.i.i.i17.i.i = call i64 @llvm.smax.i64(i64 %i.de, i64 -2147483648)
  %.08.i.i.i.i.i18.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i17.i.i, i64 2147483647)
  %.0.i6.i.i.i.i19.i.i = trunc nsw i64 %.08.i.i.i.i.i18.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i14.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i14.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i12.i.i
  %.0.i.i.i.i15.i.i = phi i32 [ %i.dd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i12.i.i ], [ %.0.i6.i.i.i.i19.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i ]
  %i.df = icmp slt i32 %.0.i.i.i.i15.i.i, 0
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i14.i.i, %select.unfold.i.i
  %i.dg = phi i1 [ %i.df, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i14.i.i ], [ true, %select.unfold.i.i ]
  %i.dh = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #35
          to label %.noexc52 unwind label %bb.ae  ; 9 uses

.noexc52:                                         ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 48 ; 3 uses
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %.val5.i.i, ptr %i.a, align 8, !tbaa !81
  %i.dk = icmp ugt i64 %.val5.i.i, 15
  br i1 %i.dk, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.noexc52
  %i.dl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(72) %i.di, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.y ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !36
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.dm, ptr %i.dj, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i, %.noexc52
  %i.dn = phi ptr [ %i.dl, %.noexc.i.i.i.i.i.i ], [ %i.dj, %.noexc52 ] ; 2 uses
  switch i64 %.val5.i.i, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.do = load i8, ptr %.val.i.i39, align 1, !tbaa !28
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr align 1 %.val.i.i39, i64 %.val5.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !29
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dp
  store i8 0, ptr %i.ds, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 64 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 80 ; 3 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !25
  %i.dv = load ptr, ptr %i.o, align 8, !tbaa !36  ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.p
  br i1 %i.dw, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.dx = load i64, ptr %i.q, align 8, !tbaa !29  ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 16
  call void @llvm.assume(i1 %i.dy)
  %i.dz = add nuw nsw i64 %i.dx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.du, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.dz, i1 false)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_M_insert_ISA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i
  store ptr %i.dv, ptr %i.dt, align 8, !tbaa !36
  %i.ea = load i64, ptr %i.p, align 8, !tbaa !28
  store i64 %i.ea, ptr %i.du, align 8, !tbaa !28
  %.pre.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_M_insert_ISA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i.i

bb.y:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #30 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 104) #29
  invoke void @__cxa_rethrow() #31
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #37
  unreachable

bb.ab:                                            ; preds = %bb.y
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_M_insert_ISA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.x
  %i.eh = phi i64 [ %i.dx, %bb.x ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !29
  store ptr %i.p, ptr %i.o, align 8, !tbaa !36
  store i64 0, ptr %i.q, align 8, !tbaa !29
  store i8 0, ptr %i.p, align 8, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.ek = load i64, ptr %i.r, align 8, !tbaa !174
  store i64 %i.ek, ptr %i.ej, align 8, !tbaa !174
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dg, ptr noundef nonnull %i.dh, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #30
  %i.el = load i64, ptr %i.t, align 8, !tbaa !80
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %i.t, align 8, !tbaa !80
  %.pre79 = load ptr, ptr %i.o, align 8, !tbaa !36
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_M_insert_ISA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i.i.i
  %i.en = phi ptr [ %.pre79, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_M_insert_ISA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i.i ], [ %i.cd, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i.i.i ] ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.p
  br i1 %i.eo, label %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ac
  %i.ep = load i64, ptr %i.p, align 8, !tbaa !28
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #29
  br label %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit.i

_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit.i:     ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.er = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.m
  br i1 %i.es, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit.i
  %i.et = load i64, ptr %i.m, align 8, !tbaa !28
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #29
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
  %i.ev = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.j
  br i1 %i.ew, label %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueEED2Ev.exit
  %i.ex = load i64, ptr %i.j, align 8, !tbaa !28
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #29
  br label %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit

_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit:       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65

bb.ad:                                            ; preds = %.noexc.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.u
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.z, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.fa, %bb.ae ], [ %i.ee, %bb.z ]
  call fastcc void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #30
  br label %bb.af

bb.af:                                            ; preds = %.body, %bb.ad
  %.pn20 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ez, %bb.ad ]
  %i.fb = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.j
  br i1 %i.fc, label %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59: ; preds = %bb.af
  %i.fd = load i64, ptr %i.j, align 8, !tbaa !28
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #29
  br label %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit61

_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit61:     ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn20

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !29 ; 3 uses
  %i.fi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #30
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65

bb.ah:                                            ; preds = %bb.ag
  %i.fk = icmp eq i64 %i.fh, 0
  br i1 %i.fk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ah
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !36
  %bcmp.i = call i32 @bcmp(ptr %i.fl, ptr nonnull %i.x, i64 %i.fh)
  %i.fm = icmp eq i32 %bcmp.i, 0
  br i1 %i.fm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.ah, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 96 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !177
  %i.fp = add i64 %i.fo, 1
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !177
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65: ; preds = %bb.ag, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit
  %i.fq = call ptr @agnxtattr(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %.076) ; 2 uses
  %.not = icmp eq ptr %i.fq, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !179
}

declare ptr @agnxtattr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114AttributeValueEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(72) dereferenceable(72) %0) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit

_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit:       ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !28
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.02 = phi ptr [ %.0.val, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %0, %bb.a ] ; 7 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val6 = load ptr, ptr %i.a, align 8, !tbaa !180
  tail call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.0.val6)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val = load ptr, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %.02, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.h = load i64, ptr %i.f, align 8, !tbaa !28
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit.i.i.i

_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !28
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %_ZN12_GLOBAL__N_114AttributeValueD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 104) #29
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !182

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114AttributeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8multisetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.078.i.i = load ptr, ptr %i.a, align 8, !tbaa !172 ; 2 uses
  %.not9.i.i = icmp eq ptr %.078.i.i, null
  %.pre = load ptr, ptr %1, align 8               ; 4 uses
  br i1 %.not9.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_insert_equalIS5_EESt17_Rb_tree_iteratorIS5_EOT_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %.lr.ph.i.i
  %.0710.i.i = phi ptr [ %.078.i.i, %.lr.ph.i.i ], [ %.07.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.d) ; 3 uses
  %i.g = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = tail call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.b
  %i.k = sub i64 %i.d, %i.f
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.l = icmp slt i32 %.0.i.i.i.i.i, 0
  %.in.v.i.i = select i1 %i.l, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 %.in.v.i.i
  %.07.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !172 ; 2 uses
  %.not.i.i = icmp eq ptr %.07.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_insert_equalIS5_EESt17_Rb_tree_iteratorIS5_EOT_.exit, label %bb.b, !llvm.loop !183

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_insert_equalIS5_EESt17_Rb_tree_iteratorIS5_EOT_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.m = icmp eq ptr %.0710.i.i, %i.b
  br i1 %i.m, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_insert_equalIS5_EESt17_Rb_tree_iteratorIS5_EOT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_insert_equalIS5_EESt17_Rb_tree_iteratorIS5_EOT_.exit
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = tail call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.q = sub i64 %i.d, %i.f
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.r = icmp slt i32 %.0.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_insert_equalIS5_EESt17_Rb_tree_iteratorIS5_EOT_.exit.thread

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_insert_equalIS5_EESt17_Rb_tree_iteratorIS5_EOT_.exit.thread: ; preds = %bb.a, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_insert_equalIS5_EESt17_Rb_tree_iteratorIS5_EOT_.exit
  %.0.lcssa.i.i5 = phi ptr [ %.0710.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.0710.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_insert_equalIS5_EESt17_Rb_tree_iteratorIS5_EOT_.exit ], [ %i.b, %bb.a ]
  %i.s = phi i1 [ %i.r, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_insert_equalIS5_EESt17_Rb_tree_iteratorIS5_EOT_.exit ], [ true, %bb.a ]
  %i.t = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.x = icmp eq ptr %.pre, %i.w
  br i1 %i.x, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_insert_equalIS5_EESt17_Rb_tree_iteratorIS5_EOT_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !29   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_insert_equalIS5_EESt17_Rb_tree_iteratorIS5_EOT_.exit.thread
  store ptr %.pre, ptr %i.u, align 8, !tbaa !36
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !28
  store i64 %i.ac, ptr %i.v, align 8, !tbaa !28
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ad = phi i64 [ %i.z, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !29
  store ptr %i.w, ptr %1, align 8, !tbaa !36
  store i64 0, ptr %i.ae, align 8, !tbaa !29
  store i8 0, ptr %i.w, align 8, !tbaa !28
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %.0.lcssa.i.i5, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !80
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !80
  ret ptr %i.t
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !25
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !36
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !28
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !29
  store ptr %i.v, ptr %i.s, align 8, !tbaa !36
  store i64 0, ptr %i.ac, align 8, !tbaa !29
  store i8 0, ptr %i.v, align 8, !tbaa !28
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !36
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !25
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !36
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !28
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !29
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !36
  store i64 0, ptr %i.as, align 8, !tbaa !29
  store i8 0, ptr %i.al, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11equal_rangeERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.065 = load ptr, ptr %i.a, align 8, !tbaa !172 ; 2 uses
  %.not66 = icmp eq ptr %.065, null
  br i1 %.not66, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_upper_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 8 uses
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.068 = phi ptr [ %.065, %.lr.ph ], [ %.0, %bb.d ] ; 8 uses
  %.02267 = phi ptr [ %i.b, %.lr.ph ], [ %.123, %bb.d ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.068, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29   ; 4 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g) ; 3 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.068, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.k = tail call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.e, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %bb.b
  %i.l = sub i64 %i.g, %i.d
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.n = sub i64 %i.g, %i.d
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.p = icmp slt i32 %i.k, 0
  br i1 %i.p, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread
  %i.q = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i26 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i26, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32
end_hunk_1
