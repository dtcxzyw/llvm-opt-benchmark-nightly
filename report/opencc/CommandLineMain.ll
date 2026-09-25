Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/CommandLineMain?download=true
inline.NumInlined: 2961
inline.NumDeleted: 669
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z19WriteMeasuredResultv:bb.a
  %i.fl = load ptr, ptr %i.o, align 8, !tbaa !130
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -16 ; 2 uses
  store ptr %i.fm, ptr %i.o, align 8, !tbaa !130
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !132
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !129
  %i.fr = load ptr, ptr %i.fh, align 8, !tbaa !130 ; 2 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = icmp slt i64 %i.fu, 1
  br i1 %i.fv, label %bb.z, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i, !prof !92

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ff, i64 noundef 1)
          to label %.noexc90 unwind label %bb.h

.noexc90:                                         ; preds = %bb.z
  %.pre.i.i89 = load ptr, ptr %i.fh, align 8, !tbaa !130
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i: ; preds = %.noexc90, %bb.y
  %i.fw = phi ptr [ %i.fr, %bb.y ], [ %.pre.i.i89, %.noexc90 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  store ptr %i.fx, ptr %i.fh, align 8, !tbaa !130
  store i8 10, ptr %i.fw, align 1, !tbaa !47
  %i.fy = load ptr, ptr %i.o, align 8, !tbaa !130
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !145
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = lshr i64 %i.gd, 4
  %i.gf = load i32, ptr %i.k, align 8, !tbaa !127
  %i.gg = zext i32 %i.gf to i64
  %i.gh = mul i64 %i.ge, %i.gg                    ; 4 uses
  %i.gi = load ptr, ptr %1, align 8, !tbaa !121   ; 3 uses
  %i.gj = load i8, ptr %i.j, align 1, !tbaa !126
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !129
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !130 ; 2 uses
  %i.go = ptrtoint ptr %i.gl to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = icmp sgt i64 %i.gh, %i.gq
  br i1 %i.gr, label %bb.aa, label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit.i, !prof !92

bb.aa:                                            ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.gi, i64 noundef %i.gh)
          to label %.noexc91 unwind label %bb.h

.noexc91:                                         ; preds = %bb.aa
  %.pre.i.i.i88 = load ptr, ptr %i.gm, align 8, !tbaa !130
  br label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit.i

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit.i: ; preds = %.noexc91, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i
  %i.gs = phi ptr [ %i.gn, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i ], [ %.pre.i.i.i88, %.noexc91 ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gh
  store ptr %i.gt, ptr %i.gm, align 8, !tbaa !130
  call void @llvm.memset.p0.i64(ptr align 1 %i.gs, i8 %i.gj, i64 %i.gh, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !121
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit.i, %bb.x
  %i.gu = phi ptr [ %.pre, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit.i ], [ %i.ff, %bb.x ] ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !129
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 24 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !130 ; 2 uses
  %i.gz = ptrtoint ptr %i.gw to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = icmp slt i64 %i.hb, 1
  br i1 %i.hc, label %bb.ac, label %bb.ad, !prof !92

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.gu, i64 noundef 1)
          to label %.noexc92 unwind label %bb.h

.noexc92:                                         ; preds = %bb.ac
  %.pre.i.i1.i = load ptr, ptr %i.gx, align 8, !tbaa !130
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc92, %bb.ab
  %i.hd = phi ptr [ %i.gy, %bb.ab ], [ %.pre.i.i1.i, %.noexc92 ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  store ptr %i.he, ptr %i.gx, align 8, !tbaa !130
  store i8 125, ptr %i.hd, align 1, !tbaa !47
  %i.hf = invoke noundef ptr @_ZN6opencc5tools12OpenFileUtf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_Z22measuredResultFileNameB5cxx11, i64 8), ptr noundef nonnull @.str.30)
          to label %bb.ae unwind label %bb.ah     ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  %.not = icmp eq ptr %i.hf, null
  br i1 %.not, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.hg = call ptr @__cxa_allocate_exception(i64 40) #34 ; 3 uses
  invoke void @_ZN6opencc15FileNotWritableC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.hg, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_Z22measuredResultFileNameB5cxx11, i64 8))
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.hg, ptr nonnull @_ZTIN6opencc15FileNotWritableE, ptr nonnull @_ZN6opencc9ExceptionD2Ev) #35
          to label %bb.aq unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %bb.ag, %bb.ad
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ai:                                            ; preds = %bb.af
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hg) #34
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ae
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !129
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !130 ; 2 uses
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = icmp slt i64 %i.hp, 1
  br i1 %i.hq, label %bb.ak, label %bb.al, !prof !92

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
          to label %.noexc94 unwind label %bb.ah

.noexc94:                                         ; preds = %bb.ak
  %.pre.i93 = load ptr, ptr %i.hl, align 8, !tbaa !130
  br label %bb.al

bb.al:                                            ; preds = %.noexc94, %bb.aj
  %i.hr = phi ptr [ %i.hm, %bb.aj ], [ %.pre.i93, %.noexc94 ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  store ptr %i.hs, ptr %i.hl, align 8, !tbaa !130
  store i8 0, ptr %i.hr, align 1, !tbaa !47
  %i.ht = load ptr, ptr %i.hl, align 8, !tbaa !130
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -1
  store ptr %i.hu, ptr %i.hl, align 8, !tbaa !130
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !145
  %i.hx = call i32 @fputs(ptr noundef %i.hw, ptr noundef nonnull %i.hf) ; 0 uses
  %i.hy = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.hf) ; 0 uses
  %i.hz = call i32 @fclose(ptr noundef nonnull %i.hf) ; 0 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !145
  call void @free(ptr noundef %i.ib) #34
  %i.ic = load ptr, ptr %i.f, align 8, !tbaa !146 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef 1) #36
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EED2Ev.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EED2Ev.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.ie = load ptr, ptr %i.hv, align 8, !tbaa !145
  call void @free(ptr noundef %i.ie) #34
  %i.if = load ptr, ptr %i.c, align 8, !tbaa !146 ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef 1) #36
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit: ; preds = %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EED2Ev.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit
  ret void

bb.ap:                                            ; preds = %bb.ah, %bb.ai, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.h ], [ %i.hh, %bb.ah ], [ %i.hi, %bb.ai ]
  call void @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  call void @_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  resume { ptr, i32 } %.pn.pn

bb.aq:                                            ; preds = %bb.ag
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6DoubleEd(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  tail call void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 6)
  %2 = bitcast double %1 to i64                   ; 2 uses
  %3 = and i64 %2, 9218868437227405312
  %4 = icmp ne i64 %3, 9218868437227405312        ; 2 uses
  br i1 %4, label %bb.b, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteDoubleEd.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !121    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp slt i64 %i.j, 25
  br i1 %i.k, label %bb.c, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i, !prof !92

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef 25)
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !130
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i: ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 25
  store ptr %i.m, ptr %i.f, align 8, !tbaa !130
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !122
  %i.p = fcmp oeq double %1, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i
  %5 = icmp slt i64 %2, 0
  br i1 %5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 45, ptr %i.l, align 1, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.013.i.i = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ] ; 4 uses
  store i8 48, ptr %.013.i.i, align 1, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  store i8 46, ptr %i.r, align 1, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 2
  store i8 48, ptr %i.s, align 1, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 3
  br label %_ZN9rapidjson8internal4dtoaEdPci.exit.i

bb.g:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i
  %i.u = fcmp olt double %1, 0.000000e+00
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 45, ptr %i.l, align 1, !tbaa !47
  %i.w = fneg double %1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.014.i.i = phi double [ %i.w, %bb.h ], [ %1, %bb.g ]
  %.1.i.i = phi ptr [ %i.v, %bb.h ], [ %i.l, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @_ZN9rapidjson8internal6Grisu2EdPcPiS2_(double noundef %.014.i.i, ptr noundef %.1.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.x = load i32, ptr %i.a, align 4, !tbaa !39
  %i.y = load i32, ptr %i.b, align 4, !tbaa !39
  %i.z = call noundef ptr @_ZN9rapidjson8internal8PrettifyEPciii(ptr noundef %.1.i.i, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %_ZN9rapidjson8internal4dtoaEdPci.exit.i

_ZN9rapidjson8internal4dtoaEdPci.exit.i:          ; preds = %bb.i, %bb.f
  %.0.i.i = phi ptr [ %i.t, %bb.f ], [ %i.z, %bb.i ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !121
  %i.ab = ptrtoint ptr %.0.i.i to i64
  %i.ac = ptrtoint ptr %i.l to i64
  %.neg.neg.i = sub i64 %i.ab, %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !130
  %i.af = getelementptr i8, ptr %i.ae, i64 %.neg.neg.i
  %i.ag = getelementptr i8, ptr %i.af, i64 -25
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !130
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteDoubleEd.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteDoubleEd.exit: ; preds = %bb.a, %_ZN9rapidjson8internal4dtoaEdPci.exit.i
  ret i1 %4
}

declare noundef ptr @_ZN6opencc5tools12OpenFileUtf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145
  tail call void @free(ptr noundef %i.b) #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1) #36
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_Z15GetOutputStreamv() local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_Z14outputFileNameB5cxx11, align 8, !tbaa !115, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !148
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN6opencc5tools12OpenFileUtf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_Z14outputFileNameB5cxx11, i64 8), ptr noundef nonnull @.str.30) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #34 ; 3 uses
  invoke void @_ZN6opencc15FileNotWritableC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_Z14outputFileNameB5cxx11, i64 8))
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6opencc15FileNotWritableE, ptr nonnull @_ZN6opencc9ExceptionD2Ev) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #34
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z25PrintInteractiveStdinHintv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @stdin, align 8, !tbaa !148
  %i.b = tail call i32 @fileno(ptr noundef %i.a) #34
  %i.c = tail call i32 @isatty(i32 noundef %i.b) #34
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !148
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.31, i64 53, i64 1, ptr %i.d) #39 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z33PrintVariationSelectorWarningOncev() local_unnamed_addr #17 {
bb.a:
  %i.a = load i8, ptr @variationSelectorWarningShown, align 1, !tbaa !149, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @variationSelectorWarningShown, align 1, !tbaa !149
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !148
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.32, i64 106, i64 1, ptr %i.c) #39 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z35WarnIfTextContainsVariationSelectorPKcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load i8, ptr @variationSelectorWarningShown, align 1, !tbaa !149, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN6opencc8UTF8Util25ContainsVariationSelectorEPKcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN6opencc8UTF8Util25ContainsVariationSelectorEPKcm.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = ptrtoint ptr %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN6opencc8UTF8Util25NextCharLengthNoExceptionEPKc.exit.i, %.lr.ph.i
  %.01733.i = phi ptr [ %0, %.lr.ph.i ], [ %i.bf, %_ZN6opencc8UTF8Util25NextCharLengthNoExceptionEPKc.exit.i ] ; 8 uses
  %i.e = load i8, ptr %.01733.i, align 1, !tbaa !47 ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 7 uses
  %i.g = and i32 %i.f, 240
  %i.h = icmp eq i32 %i.g, 224                    ; 2 uses
  br i1 %i.h, label %select.unfold.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp sgt i8 %i.e, -1
  br i1 %i.i, label %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.f, 224
  %i.k = icmp eq i32 %i.j, 192
  br i1 %i.k, label %select.unfold.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %i.f, 248
  %i.m = icmp eq i32 %i.l, 240
  br i1 %i.m, label %select.unfold.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = and i32 %i.f, 252
  %i.o = icmp eq i32 %i.n, 248
  br i1 %i.o, label %select.unfold.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = and i32 %i.f, 254
  %i.q = icmp eq i32 %i.p, 252
  br i1 %i.q, label %select.unfold.i, label %_ZN6opencc8UTF8Util25NextCharLengthNoExceptionEPKc.exit.i, !llvm.loop !10

select.unfold.i:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %exitcond.not.i.i = phi i1 [ false, %bb.c ], [ false, %bb.f ], [ true, %bb.e ], [ false, %bb.g ], [ false, %bb.h ]
  %exitcond.not.i.i.2 = phi i1 [ false, %bb.c ], [ true, %bb.f ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ]
  %exitcond.not.i.i.3 = phi i1 [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.e ], [ true, %bb.g ], [ false, %bb.h ]
  %.0.i.ph.i = phi i64 [ 3, %bb.c ], [ 4, %bb.f ], [ 2, %bb.e ], [ 5, %bb.g ], [ 6, %bb.h ] ; 7 uses
  %i.r = ptrtoint ptr %.01733.i to i64
  %i.s = sub i64 %i.d, %i.r
  %i.t = icmp ugt i64 %.0.i.ph.i, %i.s
  br i1 %i.t, label %_ZN6opencc8UTF8Util25ContainsVariationSelectorEPKcm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i
  %i.u = trunc nuw nsw i64 %.0.i.ph.i to i32
  %i.v = lshr i32 127, %i.u
  %i.w = and i32 %i.v, %i.f
  %i.x = shl nuw nsw i32 %i.w, 6
  %i.y = getelementptr inbounds nuw i8, ptr %.01733.i, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !47
  %i.aa = and i8 %i.z, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.x, %i.ab             ; 2 uses
  br i1 %exitcond.not.i.i, label %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.ad = shl nuw nsw i32 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %.01733.i, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !47
  %i.ag = and i8 %i.af, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ad, %i.ah            ; 2 uses
  br i1 %i.h, label %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.aj = shl nuw nsw i32 %i.ai, 6
  %i.ak = getelementptr inbounds nuw i8, ptr %.01733.i, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !47
  %i.am = and i8 %i.al, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.aj, %i.an            ; 2 uses
  br i1 %exitcond.not.i.i.2, label %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %i.ap = shl i32 %i.ao, 6
  %i.aq = getelementptr inbounds nuw i8, ptr %.01733.i, i64 4
end_hunk_0
begin_hunk_1_@_ZN5TCLAP3ArgC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bbPNS_7VisitorE:bb.a
  %i.aj = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !45 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.al, ptr %i.a, align 8, !tbaa !55
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i128, label %._crit_edge.i.i127

.noexc.i128:                                      ; preds = %bb.f
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc129 unwind label %bb.n  ; 2 uses

.noexc129:                                        ; preds = %.noexc.i128
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !46
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !47
  br label %._crit_edge.i.i127

._crit_edge.i.i127:                               ; preds = %.noexc129, %bb.f
  %i.ap = phi ptr [ %i.an, %.noexc129 ], [ %i.ai, %bb.f ] ; 2 uses
  switch i64 %i.al, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %._crit_edge.i.i131
  ]

bb.g:                                             ; preds = %._crit_edge.i.i127
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !47
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !47
  br label %._crit_edge.i.i131

bb.h:                                             ; preds = %._crit_edge.i.i127
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %._crit_edge.i.i131

._crit_edge.i.i131:                               ; preds = %bb.h, %bb.g, %._crit_edge.i.i127
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !45
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.d, ptr %i.av, align 8, !tbaa !220
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !48
  store i64 7234314173708068210, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 8, ptr %i.ay, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.az, align 8, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.e, ptr %i.ba, align 8, !tbaa !221
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 0, ptr %i.bb, align 1, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %6, ptr %i.bc, align 8, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 1, ptr %i.bd, align 8, !tbaa !36
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 0, ptr %i.be, align 1, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 0, ptr %i.bf, align 2, !tbaa !217
  %i.bg = load i64, ptr %i.q, align 8, !tbaa !45  ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 1
  br i1 %i.bh, label %bb.i, label %bb.p

bb.i:                                             ; preds = %._crit_edge.i.i131
  %i.bi = call ptr @__cxa_allocate_exception(i64 104) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.111, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.bj = load ptr, ptr %0, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(163) %0)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5TCLAP22SpecificationExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN5TCLAP22SpecificationExceptionE, ptr nonnull @_ZN5TCLAP12ArgExceptionD2Ev) #35
          to label %bb.au unwind label %bb.o

bb.m:                                             ; preds = %.noexc.i125
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

bb.n:                                             ; preds = %.noexc.i128
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.thread: ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.o:                                             ; preds = %bb.l, %bb.k
  %.047 = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !47
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.bv = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.bz = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !47
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #36
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = load i64, ptr %i.bw, align 8, !tbaa !47
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.cf) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %.047, label %.sink.split375, label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %.047, label %.sink.split375, label %bb.at

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.thread
  %.pn109.pn259.ph = phi { ptr, i32 } [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.thread ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.thread ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %.sink.split375

bb.p:                                             ; preds = %._crit_edge.i.i131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.cg, ptr %10, align 8, !tbaa !48, !alias.scope !596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cg, ptr noundef nonnull align 1 dereferenceable(11) @.str.120, i64 11, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 11, ptr %i.ch, align 8, !tbaa !45, !alias.scope !596
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 27
  store i8 0, ptr %i.ci, align 1, !tbaa !47, !alias.scope !596
  %i.cj = load i64, ptr %i.ae, align 8, !tbaa !45 ; 4 uses
  %i.ck = icmp eq i64 %i.cj, 11
  br i1 %i.ck, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.p
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !46  ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 1
  %i.cn = load i64, ptr %i.cg, align 1
  %i.co = xor i64 %i.cm, %i.cn
  %i.cp = getelementptr i8, ptr %i.cl, i64 3
  %i.cq = getelementptr i8, ptr %i.cg, i64 3
  %i.cr = load i64, ptr %i.cp, align 1
  %i.cs = load i64, ptr %i.cq, align 1
  %i.ct = xor i64 %i.cr, %i.cs
  %i.cu = or i64 %i.co, %i.ct
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %.not = icmp eq i32 %i.cw, 0
  br i1 %.not, label %._crit_edge.i.i.i.sink.split, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.p, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.cx, ptr %11, align 8, !tbaa !48, !alias.scope !597
  store i8 45, ptr %i.cx, align 8, !tbaa !47, !alias.scope !597
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.cy, align 8, !tbaa !45, !alias.scope !597
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.cz, align 1, !tbaa !47, !alias.scope !597
  %i.da = icmp eq i64 %i.bg, 1
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.thread368

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !46
  %lhsc = load i8, ptr %i.db, align 1
  %rhsc = load i8, ptr %i.cx, align 8
  %i.dc = icmp eq i8 %lhsc, %rhsc
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.thread366, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.thread366: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.thread368: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %._crit_edge.i.i.i.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.dd, ptr %12, align 8, !tbaa !48, !alias.scope !598
  store i16 11565, ptr %i.dd, align 8, !alias.scope !598
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.de, align 8, !tbaa !45, !alias.scope !598
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 18
  store i8 0, ptr %i.df, align 2, !tbaa !47, !alias.scope !598
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !46
  %lhsc363 = load i8, ptr %i.dg, align 1
  %i.dh = icmp eq i8 %lhsc363, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br i1 %i.dh, label %bb.q, label %._crit_edge.i.i.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.thread366, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.di = call ptr @__cxa_allocate_exception(i64 104) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.dj, ptr %17, align 8, !tbaa !48, !alias.scope !599
  store i8 45, ptr %i.dj, align 8, !tbaa !47, !alias.scope !599
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.dk, align 8, !tbaa !45, !alias.scope !599
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.dl, align 1, !tbaa !47, !alias.scope !599
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull @.str.112, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.113)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.dm, ptr %18, align 8, !tbaa !48, !alias.scope !600
  store i16 11565, ptr %i.dm, align 8, !alias.scope !600
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 2, ptr %i.dn, align 8, !tbaa !45, !alias.scope !600
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 18
  store i8 0, ptr %i.do, align 2, !tbaa !47, !alias.scope !600
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.114)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  %i.dp = load ptr, ptr %0, align 8, !tbaa !44
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(163) %0)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5TCLAP22SpecificationExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTIN5TCLAP22SpecificationExceptionE, ptr nonnull @_ZN5TCLAP12ArgExceptionD2Ev) #35
          to label %bb.au unwind label %bb.ab

bb.x:                                             ; preds = %bb.r
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.y:                                             ; preds = %bb.s
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

bb.z:                                             ; preds = %bb.t
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

bb.aa:                                            ; preds = %bb.u
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

bb.ab:                                            ; preds = %bb.w, %bb.v
  %.035 = phi i1 [ false, %bb.w ], [ true, %bb.v ] ; 2 uses
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %19, align 8, !tbaa !46   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.ab
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !47
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155, %bb.aa
  %.pn101 = phi { ptr, i32 } [ %i.dv, %bb.aa ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %i.dw, %bb.ab ] ; 2 uses
  %.136 = phi i1 [ true, %bb.aa ], [ %.035, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %.035, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  %i.ec = load ptr, ptr %13, align 8, !tbaa !46   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !47
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %bb.z
  %.pn101.pn = phi { ptr, i32 } [ %i.du, %bb.z ], [ %.pn101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %.pn101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ] ; 2 uses
  %.237 = phi i1 [ true, %bb.z ], [ %.136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %.136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ] ; 2 uses
  %i.eh = load ptr, ptr %14, align 8, !tbaa !46   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !47
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161, %bb.y
  %.pn101.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.y ], [ %.pn101.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161 ], [ %.pn101.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ] ; 2 uses
  %.338 = phi i1 [ true, %bb.y ], [ %.237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161 ], [ %.237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ] ; 2 uses
  %i.em = load ptr, ptr %18, align 8, !tbaa !46   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.dm
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.eo = load i64, ptr %i.dm, align 8, !tbaa !47
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  %i.eq = load ptr, ptr %15, align 8, !tbaa !46   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.et = load i64, ptr %i.er, align 8, !tbaa !47
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.x
  %.pn101.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.x ], [ %.pn101.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %.pn101.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ] ; 4 uses
  %.540 = phi i1 [ true, %bb.x ], [ %.338, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %.338, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ] ; 2 uses
  %i.ev = load ptr, ptr %16, align 8, !tbaa !46   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !47
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  %i.fa = load ptr, ptr %17, align 8, !tbaa !46   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.dj
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.thread: ; preds = %bb.q
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %17, align 8, !tbaa !46   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.dj
  br i1 %i.fe, label %.sink.split373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.thread
  %i.ff = load i64, ptr %i.dj, align 8, !tbaa !47
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #36
  br label %.sink.split373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.fh = load i64, ptr %i.dj, align 8, !tbaa !47
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fi) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br i1 %.540, label %.sink.split375, label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br i1 %.540, label %.sink.split375, label %bb.at

.sink.split373:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %.sink.split375

._crit_edge.i.i.i.sink.split:                     ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.thread368
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #34
  %i.fj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.fj, ptr %21, align 8, !tbaa !48, !alias.scope !601
  store i8 45, ptr %i.fj, align 8, !tbaa !47, !alias.scope !601
  %i.fk = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 1, ptr %i.fk, align 8, !tbaa !45, !alias.scope !601
  %i.fl = getelementptr inbounds nuw i8, ptr %21, i64 17
  store i8 0, ptr %i.fl, align 1, !tbaa !47, !alias.scope !601
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.fm = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.fm, ptr %20, align 8, !tbaa !48, !alias.scope !602
  %i.fn = load ptr, ptr %i.t, align 8, !tbaa !46, !noalias !602 ; 3 uses
  %i.fo = icmp ne i64 %i.cj, 0                    ; 2 uses
  %spec.select.i.i.i = zext i1 %i.fo to i64       ; 3 uses
  br i1 %i.fo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit179, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %spec.select.i.i.i, ptr %i.fp, align 8, !tbaa !45, !alias.scope !602
  store i8 0, ptr %i.fm, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  %i.fq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.fq, ptr %22, align 8, !tbaa !48, !alias.scope !603
  store i8 45, ptr %i.fq, align 8, !tbaa !47, !alias.scope !603
  %i.fr = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.fr, align 8, !tbaa !45, !alias.scope !603
  %i.fs = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 0, ptr %i.fs, align 1, !tbaa !47, !alias.scope !603
  br label %._crit_edge.i.i.i182

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit179: ; preds = %._crit_edge.i.i.i
  %i.ft = load i8, ptr %i.fn, align 1, !tbaa !47
  store i8 %i.ft, ptr %i.fm, align 8, !tbaa !47
  %i.fu = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %spec.select.i.i.i, ptr %i.fu, align 8, !tbaa !45, !alias.scope !602
  %.sroa.gep377 = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 0, ptr %.sroa.gep377, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  %i.fv = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  store ptr %i.fv, ptr %22, align 8, !tbaa !48, !alias.scope !603
  store i8 45, ptr %i.fv, align 8, !tbaa !47, !alias.scope !603
  %i.fw = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.fw, align 8, !tbaa !45, !alias.scope !603
  %i.fx = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 0, ptr %i.fx, align 1, !tbaa !47, !alias.scope !603
  %bcmp.i178 = call i32 @bcmp(ptr nonnull %i.fm, ptr nonnull %i.fv, i64 %spec.select.i.i.i)
  %i.fy = icmp eq i32 %bcmp.i178, 0
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %._crit_edge.i.i.i182

._crit_edge.i.i.i182:                             ; preds = %bb.ac, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit179
  %i.fz = phi ptr [ %i.fq, %bb.ac ], [ %i.fv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit179 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  %i.ga = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  store ptr %i.ga, ptr %24, align 8, !tbaa !48, !alias.scope !604
  store i16 11565, ptr %i.ga, align 8, !alias.scope !604
  %i.gb = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 2, ptr %i.gb, align 8, !tbaa !45, !alias.scope !604
  %i.gc = getelementptr inbounds nuw i8, ptr %24, i64 18
  store i8 0, ptr %i.gc, align 2, !tbaa !47, !alias.scope !604
  %i.gd = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.gd, ptr %23, align 8, !tbaa !48, !alias.scope !605
  %spec.select.i.i.i181 = call noundef i64 @llvm.umin.i64(i64 %i.cj, i64 2) ; 4 uses
  switch i64 %spec.select.i.i.i181, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i182
  %i.ge = load i8, ptr %i.fn, align 1, !tbaa !47
  store i8 %i.ge, ptr %i.gd, align 8, !tbaa !47
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i182
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr align 1 %i.fn, i64 %spec.select.i.i.i181, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i.i.i182, %bb.ad, %bb.ae
  %i.gf = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %spec.select.i.i.i181, ptr %i.gf, align 8, !tbaa !45, !alias.scope !605
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 %spec.select.i.i.i181
  store i8 0, ptr %i.gg, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34
  %i.gh = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  store ptr %i.gh, ptr %25, align 8, !tbaa !48, !alias.scope !606
  store i16 11565, ptr %i.gh, align 8, !alias.scope !606
  %i.gi = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 2, ptr %i.gi, align 8, !tbaa !45, !alias.scope !606
  %i.gj = getelementptr inbounds nuw i8, ptr %25, i64 18
  store i8 0, ptr %i.gj, align 2, !tbaa !47, !alias.scope !606
  %i.gk = icmp ugt i64 %i.cj, 1
  br i1 %i.gk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit188, label %.critedge119

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit188: ; preds = %bb.af
  %lhsv = load i16, ptr %i.gd, align 8
  %rhsv = load i16, ptr %i.gh, align 8
  %.not365 = icmp eq i16 %lhsv, %rhsv
  br i1 %.not365, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %.critedge119

.critedge119:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit188, %bb.af
  %i.gl = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull @.str.89, i64 noundef 0, i64 noundef 1) #34
  %i.gm = icmp ne i64 %i.gl, -1                   ; 2 uses
  %.pre = load ptr, ptr %25, align 8, !tbaa !46   ; 2 uses
  %i.gn = icmp eq ptr %.pre, %i.gh
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %.critedge119
  %i.go = load i64, ptr %i.gh, align 8, !tbaa !47
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.gp) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %.critedge119, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  %.ph283371 = phi i1 [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ], [ %i.gm, %.critedge119 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit188 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  %i.gq = load ptr, ptr %23, align 8, !tbaa !46   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.gd
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %i.gs = load i64, ptr %i.gd, align 8, !tbaa !47
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  %i.gu = load ptr, ptr %24, align 8, !tbaa !46   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ga
  br i1 %i.gv, label %.critedge123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %i.gw = load i64, ptr %i.ga, align 8, !tbaa !47
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #36
  br label %.critedge123

.critedge123:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  %.pre303 = load ptr, ptr %22, align 8, !tbaa !46 ; 2 uses
  %i.gy = icmp eq ptr %.pre303, %i.fz
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %.critedge123
  %i.gz = load i64, ptr %i.fz, align 8, !tbaa !47
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %.pre303, i64 noundef %i.ha) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %.critedge123, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  %i.hb = phi i1 [ %.ph283371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ], [ %.ph283371, %.critedge123 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit179 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  %i.hc = load ptr, ptr %20, align 8, !tbaa !46   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.fm
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.he = load i64, ptr %i.fm, align 8, !tbaa !47
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  %i.hg = load ptr, ptr %21, align 8, !tbaa !46   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.fj
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.hi = load i64, ptr %i.fj, align 8, !tbaa !47
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br i1 %i.hb, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %i.hk = call ptr @__cxa_allocate_exception(i64 104) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #34
  %i.hl = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.hl, ptr %30, align 8, !tbaa !48, !alias.scope !607
  store i8 45, ptr %i.hl, align 8, !tbaa !47, !alias.scope !607
  %i.hm = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 1, ptr %i.hm, align 8, !tbaa !45, !alias.scope !607
  %i.hn = getelementptr inbounds nuw i8, ptr %30, i64 17
  store i8 0, ptr %i.hn, align 1, !tbaa !47, !alias.scope !607
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull @.str.115, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.thread

end_hunk_1
begin_hunk_2_@_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_6WriterINS_19GenericStringBufferINS_4UTF8IcEES2_EES8_S8_S2_Lj1EE5LevelEEEvm:bb.a
  store ptr %i.z, ptr %i.q, align 8, !tbaa !130
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %spec.select
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !129
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN6opencc19ZipResourceProviderELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN6opencc19ZipResourceProviderELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN6opencc19ZipResourceProviderELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN6opencc19ZipResourceProviderELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !171
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !14
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !14
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CommandLineMain.cpp() #29 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, i64 16), ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 24, ptr %i.b, align 8, !tbaa !55
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, align 8, !tbaa !46
  %i.d = load i64, ptr %i.b, align 8, !tbaa !55   ; 3 uses
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, i64 16), align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.3, i64 24, i1 false)
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, i64 8), align 8, !tbaa !45
  %i.e = load ptr, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.g = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, ptr nonnull @__dso_handle) #34 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, i64 16), ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 30, ptr %i.a, align 8, !tbaa !55
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, align 8, !tbaa !46
  %i.i = load i64, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, i64 16), align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.h, ptr noundef nonnull align 1 dereferenceable(30) @.str.5, i64 30, i1 false)
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, i64 8), align 8, !tbaa !45
  %i.j = load ptr, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, ptr nonnull @__dso_handle) #34 ; 0 uses
  store i8 1, ptr @_Z13inputFileNameB5cxx11, align 8, !tbaa !115, !alias.scope !685
  store ptr getelementptr inbounds nuw (i8, ptr @_Z13inputFileNameB5cxx11, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_Z13inputFileNameB5cxx11, i64 8), align 8, !tbaa !48, !alias.scope !685
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_Z13inputFileNameB5cxx11, i64 16), align 8, !tbaa !45, !alias.scope !685
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_Z13inputFileNameB5cxx11, i64 24), align 8, !tbaa !47, !alias.scope !685
  %i.m = call i32 @__cxa_atexit(ptr nonnull @_ZN6opencc8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr nonnull @_Z13inputFileNameB5cxx11, ptr nonnull @__dso_handle) #34 ; 0 uses
  store i8 1, ptr @_Z14outputFileNameB5cxx11, align 8, !tbaa !115, !alias.scope !686
  store ptr getelementptr inbounds nuw (i8, ptr @_Z14outputFileNameB5cxx11, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_Z14outputFileNameB5cxx11, i64 8), align 8, !tbaa !48, !alias.scope !686
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_Z14outputFileNameB5cxx11, i64 16), align 8, !tbaa !45, !alias.scope !686
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_Z14outputFileNameB5cxx11, i64 24), align 8, !tbaa !47, !alias.scope !686
  %i.n = call i32 @__cxa_atexit(ptr nonnull @_ZN6opencc8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr nonnull @_Z14outputFileNameB5cxx11, ptr nonnull @__dso_handle) #34 ; 0 uses
  store i8 1, ptr @_Z22measuredResultFileNameB5cxx11, align 8, !tbaa !115, !alias.scope !687
  store ptr getelementptr inbounds nuw (i8, ptr @_Z22measuredResultFileNameB5cxx11, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_Z22measuredResultFileNameB5cxx11, i64 8), align 8, !tbaa !48, !alias.scope !687
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_Z22measuredResultFileNameB5cxx11, i64 16), align 8, !tbaa !45, !alias.scope !687
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_Z22measuredResultFileNameB5cxx11, i64 24), align 8, !tbaa !47, !alias.scope !687
  %i.o = call i32 @__cxa_atexit(ptr nonnull @_ZN6opencc8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr nonnull @_Z22measuredResultFileNameB5cxx11, ptr nonnull @__dso_handle) #34 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_Z14configFileNameB5cxx11, i64 16), ptr @_Z14configFileNameB5cxx11, align 8, !tbaa !48
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_Z14configFileNameB5cxx11, i64 8), align 8, !tbaa !45
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_Z14configFileNameB5cxx11, i64 16), align 8, !tbaa !47
  %i.p = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_Z14configFileNameB5cxx11, ptr nonnull @__dso_handle) #34 ; 0 uses
  call void @_ZN6opencc6ConfigC1Ev(ptr noundef nonnull align 8 dereferenceable(16) @config)
  %i.q = call i32 @__cxa_atexit(ptr nonnull @_ZN6opencc6ConfigD1Ev, ptr nonnull @config, ptr nonnull @__dso_handle) #34 ; 0 uses
  %i.r = call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @converter, ptr nonnull @__dso_handle) #34 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_Z25variationSelectorScanTailB5cxx11, i64 16), ptr @_Z25variationSelectorScanTailB5cxx11, align 8, !tbaa !48
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_Z25variationSelectorScanTailB5cxx11, i64 8), align 8, !tbaa !45
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_Z25variationSelectorScanTailB5cxx11, i64 16), align 8, !tbaa !47
  %i.s = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_Z25variationSelectorScanTailB5cxx11, ptr nonnull @__dso_handle) #34 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #27

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind memory(none) }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind }
attributes #35 = { noreturn }
attributes #36 = { builtin nounwind }
attributes #37 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { cold }
attributes #40 = { nounwind allocsize(1) }

!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!27}

!0 = distinct !{null}
!1 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!2 = distinct !{!2, !49}
!3 = distinct !{!3, !49}
!4 = distinct !{!4, !49}
!5 = distinct !{!5, !49}
!6 = distinct !{!6, !49}
!7 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!8 = distinct !{!8, !49}
!9 = distinct !{!9, !49}
!10 = distinct !{!10, !49}
!11 = distinct !{!11, !49}
!12 = distinct !{ptr @_ZNSt12__shared_ptrIN6opencc12SegmentationELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!13 = distinct !{!13, !49}
!14 = distinct !{null, null}
!15 = distinct !{ptr @_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!16 = distinct !{null}
!17 = distinct !{!17, !49}
!18 = distinct !{!18, !49}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!23 = !{!"Simple C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!"__libc_errno", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"any pointer", !24, i64 0}
!29 = !{!"p1 omnipotent char", !28, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!31 = !{!"long", !24, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !31, i64 8, !24, i64 16}
!33 = !{!"bool", !24, i64 0}
!34 = !{!"p1 _ZTSN5TCLAP7VisitorE", !28, i64 0}
!35 = !{!"_ZTSN5TCLAP3ArgE", !32, i64 8, !32, i64 40, !32, i64 72, !33, i64 104, !32, i64 112, !33, i64 144, !33, i64 145, !34, i64 152, !33, i64 160, !33, i64 161, !33, i64 162}
!36 = !{!35, !33, i64 160}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!25, !25, i64 0}
!40 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 0}
!43 = !{!"vtable pointer", !23, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!32, !31, i64 8}
!46 = !{!32, !29, i64 0}
!47 = !{!24, !24, i64 0}
!48 = !{!30, !29, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!35, !33, i64 161}
!51 = !{!35, !33, i64 145}
!52 = !{!"_ZTSN5TCLAP9SwitchArgE", !35, i64 0, !33, i64 163, !33, i64 164}
!53 = !{!52, !33, i64 163}
!54 = !{!35, !34, i64 152}
!55 = !{!31, !31, i64 0}
!56 = !{!"_ZTSSt13_Ios_Fmtflags", !24, i64 0}
!57 = !{!"_ZTSSt12_Ios_Iostate", !24, i64 0}
!58 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !28, i64 0}
!59 = !{!"_ZTSNSt8ios_base6_WordsE", !28, i64 0, !31, i64 8}
!60 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !28, i64 0}
!61 = !{!"p1 _ZTSNSt6locale5_ImplE", !28, i64 0}
!62 = !{!"_ZTSSt6locale", !61, i64 0}
!63 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !56, i64 24, !57, i64 28, !57, i64 32, !58, i64 40, !59, i64 48, !24, i64 64, !25, i64 192, !60, i64 200, !62, i64 208}
!64 = !{!"p1 _ZTSSo", !28, i64 0}
!65 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !28, i64 0}
!66 = !{!"p1 _ZTSSt5ctypeIcE", !28, i64 0}
!67 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !28, i64 0}
!68 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !28, i64 0}
!69 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !63, i64 0, !64, i64 216, !24, i64 224, !33, i64 225, !65, i64 232, !66, i64 240, !67, i64 248, !68, i64 256}
!70 = !{!69, !66, i64 240}
!71 = !{!"_ZTSNSt6locale5facetE", !25, i64 8}
!72 = !{!"p1 _ZTS15__locale_struct", !28, i64 0}
!73 = !{!"p1 int", !28, i64 0}
!74 = !{!"p1 short", !28, i64 0}
!75 = !{!"_ZTSSt5ctypeIcE", !71, i64 0, !72, i64 16, !33, i64 24, !73, i64 32, !73, i64 40, !74, i64 48, !24, i64 56, !24, i64 57, !24, i64 313, !24, i64 569}
!76 = !{!75, !24, i64 56}
!77 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !28, i64 0}
!78 = !{!"_ZTSNSt8__detail15_List_node_baseE", !77, i64 0, !77, i64 8}
!79 = !{!78, !77, i64 8}
!80 = !{!78, !77, i64 0}
!81 = !{!"_ZTSNSt8__detail17_List_node_headerE", !78, i64 0, !31, i64 16}
!82 = !{!81, !31, i64 16}
!83 = !{!"p1 _ZTSN5TCLAP3ArgE", !28, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5TCLAP3ArgESaIS3_EE10_List_implE", !81, i64 0}
!86 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5TCLAP3ArgESaIS3_EEE", !85, i64 0}
!87 = !{!86, !31, i64 16}
!88 = !{!"p1 _ZTSSt6vectorIPN5TCLAP3ArgESaIS2_EE", !28, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN5TCLAP3ArgESaIS3_EESaIS5_EE17_Vector_impl_dataE", !88, i64 0, !88, i64 8, !88, i64 16}
!90 = !{!89, !88, i64 8}
!91 = !{!89, !88, i64 0}
!92 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!93 = !{!89, !88, i64 16}
!94 = !{!"any p2 pointer", !28, i64 0}
!95 = !{!"p2 _ZTSN5TCLAP3ArgE", !94, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIPN5TCLAP3ArgESaIS2_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!98 = !{!97, !95, i64 0}
!99 = !{!97, !95, i64 16}
!100 = !{!34, !34, i64 0}
!101 = !{!"_ZTSN5TCLAP16CmdLineInterfaceE"}
!102 = !{!"_ZTSNSt7__cxx114listIPN5TCLAP3ArgESaIS3_EEE", !86, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN5TCLAP3ArgESaIS3_EESaIS5_EE12_Vector_implE", !89, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN5TCLAP3ArgESaIS3_EESaIS5_EE", !103, i64 0}
!105 = !{!"_ZTSSt6vectorIS_IPN5TCLAP3ArgESaIS2_EESaIS4_EE", !104, i64 0}
!106 = !{!"_ZTSN5TCLAP10XorHandlerE", !105, i64 0}
!107 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5TCLAP7VisitorESaIS3_EE10_List_implE", !81, i64 0}
!108 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5TCLAP7VisitorESaIS3_EEE", !107, i64 0}
!109 = !{!"_ZTSNSt7__cxx114listIPN5TCLAP7VisitorESaIS3_EEE", !108, i64 0}
!110 = !{!"p1 _ZTSN5TCLAP13CmdLineOutputE", !28, i64 0}
!111 = !{!"_ZTSN5TCLAP7CmdLineE", !101, i64 0, !102, i64 8, !32, i64 32, !32, i64 64, !32, i64 96, !25, i64 128, !24, i64 132, !106, i64 136, !102, i64 160, !109, i64 184, !110, i64 208, !33, i64 216, !33, i64 217, !33, i64 218, !33, i64 219}
!112 = !{!111, !33, i64 217}
!113 = !{!111, !110, i64 208}
!114 = !{!"_ZTSN6opencc8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !33, i64 0, !32, i64 8}
!115 = !{!114, !33, i64 0}
!116 = !{!"p1 _ZTSN9rapidjson12CrtAllocatorE", !28, i64 0}
!117 = !{!"_ZTSN9rapidjson8internal5StackINS_12CrtAllocatorEEE", !116, i64 0, !116, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !31, i64 40}
!118 = !{!117, !31, i64 40}
!119 = !{!"p1 _ZTSN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEE", !28, i64 0}
!120 = !{!"_ZTSN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EEE", !119, i64 0, !117, i64 8, !25, i64 56, !33, i64 60}
!121 = !{!120, !119, i64 0}
!122 = !{!120, !25, i64 56}
!123 = !{!120, !33, i64 60}
!124 = !{!"_ZTSN9rapidjson19PrettyFormatOptionsE", !24, i64 0}
!125 = !{!"_ZTSN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EEE", !120, i64 0, !24, i64 61, !25, i64 64, !124, i64 68}
!126 = !{!125, !24, i64 61}
!127 = !{!125, !25, i64 64}
!128 = !{!125, !124, i64 68}
!129 = !{!117, !29, i64 32}
!130 = !{!117, !29, i64 24}
!131 = !{!"_ZTSN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE5LevelE", !31, i64 0, !33, i64 8}
!132 = !{!131, !31, i64 0}
!133 = !{!131, !33, i64 8}
!134 = !{!"double", !24, i64 0}
!135 = !{!"_ZTS10OutputMode", !24, i64 0}
!136 = !{!"_ZTS17MeasurementResult", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24, !31, i64 32, !31, i64 40, !33, i64 48, !135, i64 52}
!137 = !{!136, !33, i64 48}
!138 = !{!136, !135, i64 52}
!139 = !{!136, !134, i64 0}
!140 = !{!136, !134, i64 8}
!141 = !{!136, !134, i64 16}
!142 = !{!136, !134, i64 24}
!143 = !{!136, !31, i64 32}
!144 = !{!136, !31, i64 40}
!145 = !{!117, !29, i64 16}
!146 = !{!117, !116, i64 8}
!147 = !{!"p1 _ZTS8_IO_FILE", !28, i64 0}
!148 = !{!147, !147, i64 0}
!149 = !{!33, !33, i64 0}
!150 = !{!29, !29, i64 0}
!151 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!152 = !{!40, !40, i64 0}
!153 = !{!"p1 _ZTSN6opencc25ConversionInspectionStageE", !28, i64 0}
end_hunk_2
