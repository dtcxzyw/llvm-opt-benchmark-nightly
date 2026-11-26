Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/build_script_build.build_script_build.cb22ba0cbf2cef99-cgu.0?download=true
inline.NumInlined: 59
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCshrhKyGBusiH_18build_script_build4main:bb.a
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [56 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [28 x i8], align 4                ; 4 uses
  %i.q = alloca [56 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [200 x i8], align 8               ; 8 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [28 x i8], align 4                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 9 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [8 x i8], align 8                ; 2 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  call void @_RNvCs1mz4BA98KdY_17fish_build_helper12fish_doc_dir(ptr nonnull sret([24 x i8]) align 8 %i.ai)
  %i.al = invoke { ptr, i64 } @_RNvXs2_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCskfouyF4kJzn_2cc(ptr nonnull align 8 %i.ai)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.am, %bb.c ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.ai) #12
          to label %bb.da unwind label %bb.cz

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.an = extractvalue { ptr, i64 } %i.al, 0
  %i.ao = extractvalue { ptr, i64 } %i.al, 1
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.aj, ptr %i.an, i64 %i.ao, ptr nonnull @6, i64 3)
          to label %bb.f unwind label %bb.c

bb.e:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.aj) #12
          to label %bb.b unwind label %bb.cz

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val6 = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val7 = load i64, ptr %i.ar, align 8
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.ak, ptr %.val6, i64 %.val7, ptr nonnull @7, i64 4)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.aj)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.ai) #12
          to label %.body unwind label %bb.cz

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.ai)
          to label %bb.k unwind label %bb.j

.body:                                            ; preds = %bb.n, %bb.j, %bb.h
  %.pn2 = phi { ptr, i32 } [ %i.as, %bb.h ], [ %i.at, %bb.j ], [ %.pn20.i, %bb.n ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.ak) #12
          to label %bb.da unwind label %bb.cz

bb.j:                                             ; preds = %bb.bx, %.noexc, %bb.m, %bb.l, %bb.k, %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.au = invoke ptr @_RINvNtCsaL1QbXo9JQH_3std2fs14create_dir_allRNtNtB4_4path7PathBufECskLYWf4FTVoC_6rsconf(ptr nonnull align 8 %i.ak)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  store ptr %i.au, ptr %i.ah, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoY6yLMcqBx_9jobserver(ptr nonnull align 8 %i.ah)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val5 = load i64, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %.val, ptr %i.ag, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.val5, ptr %i.ax, align 8
  %i.ay = invoke { ptr, i64 } @_RNvCs1mz4BA98KdY_17fish_build_helper14workspace_root()
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %bb.m
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 3 uses
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1      ; 3 uses
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.af, ptr %i.az, i64 %i.ba, ptr nonnull @8, i64 7)
          to label %.noexc8 unwind label %bb.j

.noexc8:                                          ; preds = %.noexc
  invoke void @_RNvCs1mz4BA98KdY_17fish_build_helper12fish_doc_dir(ptr nonnull sret([24 x i8]) align 8 %i.ad)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %.thread.i, %bb.q, %bb.o
  %.pn20.i = phi { ptr, i32 } [ %i.bb, %bb.o ], [ %.pn18.i, %.thread.i ], [ %i.bd, %bb.q ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.af) #12
          to label %.body unwind label %bb.bn

bb.o:                                             ; preds = %.invoke.i, %.noexc8
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %.noexc8
  %i.bc = invoke { ptr, i64 } @_RNvXs2_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCskfouyF4kJzn_2cc(ptr nonnull align 8 %i.ad)
          to label %bb.r unwind label %bb.q       ; 2 uses

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.ad) #12
          to label %bb.n unwind label %bb.bn

bb.r:                                             ; preds = %bb.p
  %i.be = extractvalue { ptr, i64 } %i.bc, 0
  %i.bf = extractvalue { ptr, i64 } %i.bc, 1
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.ae, ptr %i.be, i64 %i.bf, ptr nonnull @9, i64 13)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.ad)
          to label %bb.t unwind label %.thread77.i

.thread.i:                                        ; preds = %bb.cb, %bb.by, %bb.bc, %.thread77.i, %.thread81.i, %bb.ae, %bb.v
  %.pn18.i = phi { ptr, i32 } [ %i.fh, %bb.by ], [ %.pn16.i, %bb.ae ], [ %.pn11.pn.pn.pn.i, %.thread81.i ], [ %lpad.thr_comm.split-lp.i, %bb.cb ], [ %lpad.thr_comm.i, %.thread77.i ], [ %.pn.i, %bb.v ], [ %.pn7.i, %bb.bc ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.ae) #12
          to label %bb.n unwind label %bb.bn

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.ac, ptr %i.az, i64 %i.ba, ptr nonnull @10, i64 13)
          to label %bb.u unwind label %.thread77.i

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.ab, ptr %i.az, i64 %i.ba, ptr nonnull @11, i64 16)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.y, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.bg, %bb.w ], [ %i.ce, %bb.y ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.ac) #12
          to label %.thread.i unwind label %bb.bn

bb.w:                                             ; preds = %bb.z, %bb.u
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.ac, ptr %i.g, align 8, !captures !12
  %i.bj = invoke { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtB2_5AsRefNtBy_4PathE6as_refCskfouyF4kJzn_2cc(ptr nonnull align 8 %i.g)
          to label %.noexc.i unwind label %bb.y   ; 2 uses

.noexc.i:                                         ; preds = %bb.x
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0
  %i.bl = extractvalue { ptr, i64 } %i.bj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.bk, i64 %i.bl)
          to label %.noexc31.i unwind label %bb.y

.noexc31.i:                                       ; preds = %.noexc.i
  %i.bm = load i64, ptr %i.f, align 8
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bp = load i64, ptr %i.bi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not.i7.i.i = icmp eq ptr %i.bo, null
  %.not.i.i.i = select i1 %i.bn, i1 true, i1 %.not.i7.i.i
  br i1 %.not.i.i.i, label %.noexc.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6unwrapCshrhKyGBusiH_18build_script_build.exit.i.i

.noexc.i.i:                                       ; preds = %.noexc38.i, %.noexc35.i, %.noexc31.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @1) #9
          to label %.noexc32.i unwind label %bb.y

.noexc32.i:                                       ; preds = %.noexc.i.i
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6unwrapCshrhKyGBusiH_18build_script_build.exit.i.i: ; preds = %.noexc31.i
  invoke void @_RNvCskLYWf4FTVoC_6rsconf23rebuild_if_path_changed(ptr nonnull %i.bo, i64 %i.bp)
          to label %.noexc33.i unwind label %bb.y

.noexc33.i:                                       ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6unwrapCshrhKyGBusiH_18build_script_build.exit.i.i
  store ptr %i.ab, ptr %i.g, align 8, !captures !12
  %i.bq = invoke { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtB2_5AsRefNtBy_4PathE6as_refCskfouyF4kJzn_2cc(ptr nonnull align 8 %i.g)
          to label %.noexc34.i unwind label %bb.y ; 2 uses

.noexc34.i:                                       ; preds = %.noexc33.i
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.br, i64 %i.bs)
          to label %.noexc35.i unwind label %bb.y

.noexc35.i:                                       ; preds = %.noexc34.i
  %i.bt = load i64, ptr %i.f, align 8
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bw = load i64, ptr %i.bi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not.i7.1.i.i = icmp eq ptr %i.bv, null
  %.not.i.1.i.i = select i1 %i.bu, i1 true, i1 %.not.i7.1.i.i
  br i1 %.not.i.1.i.i, label %.noexc.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6unwrapCshrhKyGBusiH_18build_script_build.exit.1.i.i

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6unwrapCshrhKyGBusiH_18build_script_build.exit.1.i.i: ; preds = %.noexc35.i
  invoke void @_RNvCskLYWf4FTVoC_6rsconf23rebuild_if_path_changed(ptr nonnull %i.bv, i64 %i.bw)
          to label %.noexc36.i unwind label %bb.y

.noexc36.i:                                       ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6unwrapCshrhKyGBusiH_18build_script_build.exit.1.i.i
  store ptr %i.af, ptr %i.g, align 8, !captures !12
  %i.bx = invoke { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtB2_5AsRefNtBy_4PathE6as_refCskfouyF4kJzn_2cc(ptr nonnull align 8 %i.g)
          to label %.noexc37.i unwind label %bb.y ; 2 uses

.noexc37.i:                                       ; preds = %.noexc36.i
  %i.by = extractvalue { ptr, i64 } %i.bx, 0
  %i.bz = extractvalue { ptr, i64 } %i.bx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.by, i64 %i.bz)
          to label %.noexc38.i unwind label %bb.y

.noexc38.i:                                       ; preds = %.noexc37.i
  %i.ca = load i64, ptr %i.f, align 8
  %i.cb = trunc nuw i64 %i.ca to i1
  %i.cc = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.cd = load i64, ptr %i.bi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not.i7.2.i.i = icmp eq ptr %i.cc, null
  %.not.i.2.i.i = select i1 %i.cb, i1 true, i1 %.not.i7.2.i.i
  br i1 %.not.i.2.i.i, label %.noexc.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6unwrapCshrhKyGBusiH_18build_script_build.exit.2.i.i

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6unwrapCshrhKyGBusiH_18build_script_build.exit.2.i.i: ; preds = %.noexc38.i
  invoke void @_RNvCskLYWf4FTVoC_6rsconf23rebuild_if_path_changed(ptr nonnull %i.cc, i64 %i.cd)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6unwrapCshrhKyGBusiH_18build_script_build.exit.2.i.i, %.noexc37.i, %.noexc36.i, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6unwrapCshrhKyGBusiH_18build_script_build.exit.1.i.i, %.noexc34.i, %.noexc33.i, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6unwrapCshrhKyGBusiH_18build_script_build.exit.i.i, %.noexc.i.i, %.noexc.i, %bb.x
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.ab) #12
          to label %bb.v unwind label %bb.bn

bb.z:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6unwrapCshrhKyGBusiH_18build_script_build.exit.2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.ab)
          to label %bb.aa unwind label %bb.w

bb.aa:                                            ; preds = %bb.z
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.ac)
          to label %bb.ab unwind label %.thread77.i

bb.ab:                                            ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val25.i = load ptr, ptr %i.cf, align 8        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.val26.i = load i64, ptr %i.cg, align 8        ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val23.i = load ptr, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val24.i = load i64, ptr %i.ci, align 8
  %i.cj = invoke { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB2_5AsRefNtNtNtBA_3ffi6os_str5OsStrE6as_refCskfouyF4kJzn_2cc(ptr nonnull align 8 %i.ag) #13
          to label %_RINvNvCshrhKyGBusiH_18build_script_build9build_man9as_os_strRNtNtCsaL1QbXo9JQH_3std4path4PathEB4_.exit.i unwind label %.thread77.i ; 2 uses

_RINvNvCshrhKyGBusiH_18build_script_build9build_man9as_os_strRNtNtCsaL1QbXo9JQH_3std4path4PathEB4_.exit.i: ; preds = %bb.ab
  %i.ck = extractvalue { ptr, i64 } %i.cj, 0
  %i.cl = extractvalue { ptr, i64 } %i.cj, 1
  invoke void @_RNvCskLYWf4FTVoC_6rsconf22rebuild_if_env_changed(ptr nonnull @18, i64 15)
          to label %bb.ac unwind label %.thread77.i

bb.ac:                                            ; preds = %_RINvNvCshrhKyGBusiH_18build_script_build9build_man9as_os_strRNtNtCsaL1QbXo9JQH_3std4path4PathEB4_.exit.i
  invoke void @_RNvCs1mz4BA98KdY_17fish_build_helper7env_var(ptr nonnull sret([24 x i8]) align 8 %i.aa, ptr nonnull @18, i64 15)
          to label %bb.ad unwind label %.thread77.i

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull @19, i64 1) #13
          to label %bb.ag unwind label %bb.af, !noalias !13

bb.ae:                                            ; preds = %bb.aj, %bb.af
  %.pn16.i = phi { ptr, i32 } [ %i.cm, %bb.af ], [ %i.da, %bb.aj ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECscoY6yLMcqBx_9jobserver(ptr nonnull align 8 %i.aa) #12
          to label %.thread.i unwind label %bb.bn

bb.af:                                            ; preds = %bb.ak, %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit.thread.i, %bb.ad
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cn = load i64, ptr %i.aa, align 8
  %.not.i42.i = icmp eq i64 %i.cn, -1             ; 2 uses
  %i.co = load i64, ptr %i.z, align 8
  %i.cp = icmp eq i64 %i.co, -1                   ; 2 uses
  %brmerge.i.i = select i1 %.not.i42.i, i1 true, i1 %i.cp
  %.mux.i.i = select i1 %.not.i42.i, i1 %i.cp, i1 false
  br i1 %brmerge.i.i, label %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = icmp eq i64 %i.cr, %i.ct
  br i1 %i.cu, label %bb.ai, label %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCskfouyF4kJzn_2cc(ptr %i.cy, ptr %i.cw, i64 %i.cr) #13
          to label %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECscoY6yLMcqBx_9jobserver(ptr nonnull align 8 %i.z) #12
          to label %bb.ae unwind label %bb.bn

_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit.i: ; preds = %bb.ai, %bb.ag
  %.sroa.0.0.shrunk.i.i = phi i1 [ %.mux.i.i, %bb.ag ], [ %i.cz, %bb.ai ]
  br i1 %.sroa.0.0.shrunk.i.i, label %bb.ak, label %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit.thread.i

_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit.thread.i: ; preds = %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit.i, %bb.ah
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECscoY6yLMcqBx_9jobserver(ptr nonnull align 8 %i.z)
          to label %bb.al unwind label %bb.af

bb.ak:                                            ; preds = %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECscoY6yLMcqBx_9jobserver(ptr nonnull align 8 %i.z)
          to label %bb.cw unwind label %bb.af

bb.al:                                            ; preds = %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit.thread.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECscoY6yLMcqBx_9jobserver(ptr nonnull align 8 %i.aa)
          to label %bb.am unwind label %.thread77.i

bb.am:                                            ; preds = %bb.al
  %i.db = invoke { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE9unwrap_orCskfouyF4kJzn_2cc(ptr null, i64 undef, ptr nonnull @20, i64 12)
          to label %bb.an unwind label %.thread77.i ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.dc = extractvalue { ptr, i64 } %i.db, 0
  %i.dd = extractvalue { ptr, i64 } %i.db, 1
  invoke void @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3newReECskfouyF4kJzn_2cc(ptr nonnull sret([200 x i8]) align 8 %i.w, ptr %i.dc, i64 %i.dd)
          to label %bb.ao unwind label %.thread77.i

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.3.0..sroa_idx.i44.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @12, ptr %.sroa.3.0..sroa_idx.i44.i, align 8
  %.sroa.271.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 2, ptr %.sroa.271.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.3.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @13, ptr %.sroa.3.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.472.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 4, ptr %.sroa.472.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.5.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr @14, ptr %.sroa.5.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.6.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 2, ptr %.sroa.6.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.7.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr @15, ptr %.sroa.7.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.8.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i64 2, ptr %.sroa.8.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.9.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @6, ptr %.sroa.9.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.10.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 3, ptr %.sroa.10.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.11.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr @16, ptr %.sroa.11.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.12.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 2, ptr %.sroa.12.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.13.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr %.val25.i, ptr %.sroa.13.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.14.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 %.val26.i, ptr %.sroa.14.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.15.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr @17, ptr %.sroa.15.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.16.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i64 2, ptr %.sroa.16.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.17.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store ptr %.val23.i, ptr %.sroa.17.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.18.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store i64 %.val24.i, ptr %.sroa.18.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.19.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store ptr %.val25.i, ptr %.sroa.19.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.20.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i64 %.val26.i, ptr %.sroa.20.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.21.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr %i.ck, ptr %.sroa.21.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  %.sroa.22.0..sroa.3.0..sroa_idx.i44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i64 %i.cl, ptr %.sroa.22.0..sroa.3.0..sroa_idx.i44.sroa_idx.i, align 8
  store i64 0, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx.i45.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 11, ptr %.sroa.2.0..sroa_idx.i45.i, align 8
  %i.de = invoke { ptr, i64 } @_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE4nextCskLYWf4FTVoC_6rsconf(ptr nonnull align 8 %i.d, i64 11) #13
          to label %.noexc47.i unwind label %.thread85.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc47.i:                                       ; preds = %bb.ao
  %i.df = extractvalue { ptr, i64 } %i.de, 0      ; 2 uses
  %.not6.i.i = icmp eq ptr %i.df, null
  br i1 %.not6.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc47.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrKjb_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCshrhKyGBusiH_18build_script_build.exit.i.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrKjb_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCshrhKyGBusiH_18build_script_build.exit.i.i: ; preds = %.noexc50.i, %.lr.ph.i.i
  %i.dh = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.dp, %.noexc50.i ]
  %i.di = phi { ptr, i64 } [ %i.de, %.lr.ph.i.i ], [ %i.do, %.noexc50.i ]
  %i.dj = extractvalue { ptr, i64 } %i.di, 1
  store ptr %i.dh, ptr %i.c, align 8, !captures !12
  store i64 %i.dj, ptr %i.dg, align 8
  %i.dk = invoke { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrINtB2_5AsRefBw_E6as_refCskfouyF4kJzn_2cc(ptr nonnull align 8 %i.c)
          to label %.noexc48.i unwind label %.thread85.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc48.i:                                       ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrKjb_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCshrhKyGBusiH_18build_script_build.exit.i.i
  %i.dl = extractvalue { ptr, i64 } %i.dk, 0
  %i.dm = extractvalue { ptr, i64 } %i.dk, 1
  %i.dn = invoke align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.w, ptr %i.dl, i64 %i.dm)
          to label %.noexc49.i unwind label %.thread85.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc49.i:                                       ; preds = %.noexc48.i
  %i.do = invoke { ptr, i64 } @_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE4nextCskLYWf4FTVoC_6rsconf(ptr nonnull align 8 %i.d, i64 11) #13
          to label %.noexc50.i unwind label %.thread85.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc50.i:                                       ; preds = %.noexc49.i
  %i.dp = extractvalue { ptr, i64 } %i.do, 0      ; 2 uses
  %.not.i46.i = icmp eq ptr %i.dp, null
  br i1 %.not.i46.i, label %.loopexit.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrKjb_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCshrhKyGBusiH_18build_script_build.exit.i.i

.thread81.i:                                      ; preds = %.thread85.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cv, %bb.ch, %bb.cf, %bb.cc
  %.pn11.pn.pn.pn.i = phi { ptr, i32 } [ %i.fn, %bb.cv ], [ %i.fn, %bb.cc ], [ %.pn11.pn.i, %bb.ch ], [ %i.fr, %bb.cf ], [ %lpad.loopexit.split-lp17, %.thread85.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process7CommandECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.w) #12
          to label %.thread.i unwind label %bb.bn

.loopexit.i:                                      ; preds = %.noexc50.i, %.noexc47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dq = invoke align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command6stdoutNtB6_5StdioECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.w, i32 2, i32 undef)
          to label %bb.ap unwind label %.thread85.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %.loopexit.i
  %i.dr = invoke align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command6stderrNtB6_5StdioECskfouyF4kJzn_2cc(ptr align 8 %i.dq, i32 2, i32 undef)
          to label %bb.aq unwind label %.thread85.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMsi_NtCsaL1QbXo9JQH_3std7processNtB5_7Command5spawn(ptr nonnull sret([32 x i8]) align 8 %i.x, ptr align 8 %i.dr)
          to label %bb.ar unwind label %.thread85.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.ds = load i32, ptr %i.x, align 8
  %i.dt = trunc i32 %i.ds to i1
  br i1 %i.dt, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.du = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %.val27.i = load ptr, ptr %i.du, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECscoY6yLMcqBx_9jobserver(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr %.val27.i) #13
          to label %.noexc51.i unwind label %bb.cc

.noexc51.i:                                       ; preds = %bb.as
  %i.dv = load i8, ptr %i.b, align 8
  switch i8 %i.dv, label %bb.at [
    i8 0, label %bb.au
    i8 1, label %bb.av
    i8 2, label %bb.aw
    i8 3, label %bb.ax
  ]

bb.at:                                            ; preds = %.noexc51.i
  unreachable

bb.au:                                            ; preds = %.noexc51.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = invoke align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc52.i unwind label %bb.cc

.noexc52.i:                                       ; preds = %bb.au
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = invoke i8 %i.ea(i32 %i.dx)
          to label %bb.cd unwind label %bb.cc, !inline_history !9

bb.av:                                            ; preds = %.noexc51.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ed = load i8, ptr %i.ec, align 1
  br label %bb.cd

bb.aw:                                            ; preds = %.noexc51.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load i8, ptr %i.eg, align 8
  br label %bb.cd

bb.ax:                                            ; preds = %.noexc51.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load i8, ptr %i.ek, align 8
  br label %bb.cd

bb.ay:                                            ; preds = %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.y, ptr noundef nonnull align 4 dereferenceable(28) %i.em, i64 28, i1 false)
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process7CommandECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.w)
          to label %bb.az unwind label %bb.cb

.thread77.i:                                      ; preds = %bb.cx, %bb.cw, %bb.ct, %bb.bv, %bb.az, %bb.an, %bb.am, %bb.al, %bb.ac, %_RINvNvCshrhKyGBusiH_18build_script_build9build_man9as_os_strRNtNtCsaL1QbXo9JQH_3std4path4PathEB4_.exit.i, %bb.ab, %bb.aa, %bb.t, %bb.s
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.p, ptr noundef nonnull align 4 dereferenceable(28) %i.y, i64 28, i1 false)
  invoke void @_RNvMsT_NtCsaL1QbXo9JQH_3std7processNtB5_5Child16wait_with_output(ptr nonnull sret([56 x i8]) align 8 %i.q, ptr nonnull align 4 %i.p)
          to label %bb.ba unwind label %.thread77.i

bb.ba:                                            ; preds = %bb.az
  %i.en = load i64, ptr %i.q, align 8
  %i.eo = icmp eq i64 %i.en, -1
  br i1 %i.eo, label %bb.bz, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.eq = invoke zeroext i1 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8is_emptyCshXFRILY6tCo_5shlex(ptr nonnull align 8 %i.ep)
          to label %bb.be unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bp, %bb.bj, %bb.bd
  %.pn7.i = phi { ptr, i32 } [ %i.er, %bb.bd ], [ %i.fd, %bb.bp ], [ %i.ew, %bb.bj ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process6OutputECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.m) #12
          to label %.thread.i unwind label %bb.bn

bb.bd:                                            ; preds = %bb.bw, %bb.bs, %bb.bo, %bb.bm, %bb.bh, %bb.bg, %bb.bf, %bb.bb
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.be:                                            ; preds = %bb.bb
  br i1 %i.eq, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.es = invoke { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCskfouyF4kJzn_2cc(ptr nonnull align 8 %i.ep)
          to label %bb.bh unwind label %bb.bd     ; 2 uses

bb.bg:                                            ; preds = %bb.bm, %bb.be
  %i.et = invoke { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCskfouyF4kJzn_2cc(ptr nonnull align 8 %i.m)
          to label %bb.bo unwind label %bb.bd     ; 2 uses

bb.bh:                                            ; preds = %bb.bf
  %i.eu = extractvalue { ptr, i64 } %i.es, 0
  %i.ev = extractvalue { ptr, i64 } %i.es, 1
  invoke void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String15from_utf8_lossy(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr %i.eu, i64 %i.ev)
          to label %bb.bi unwind label %bb.bd

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskfouyF4kJzn_2cc(ptr nonnull sret([16 x i8]) align 8 %i.j, ptr nonnull align 8 %i.l)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.bk, %bb.bi
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.l) #12
          to label %bb.bc unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.ex = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj21_Kj1_ECskLYWf4FTVoC_6rsconf(ptr nonnull @21, ptr nonnull align 8 %i.k)
          to label %bb.bl unwind label %bb.bj     ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ey = extractvalue { ptr, ptr } %i.ex, 0
  %i.ez = extractvalue { ptr, ptr } %i.ex, 1
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr %i.ey, ptr %i.ez)
          to label %bb.bm unwind label %bb.bj

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.l)
          to label %bb.bg unwind label %bb.bd

bb.bn:                                            ; preds = %bb.cv, %bb.cp, %bb.ck, %bb.ch, %bb.cf, %bb.cb, %bb.by, %bb.bp, %bb.bj, %bb.bc, %.thread81.i, %bb.aj, %bb.ae, %bb.y, %bb.v, %.thread.i, %bb.q, %bb.n
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.bo:                                            ; preds = %bb.bg
  %i.fb = extractvalue { ptr, i64 } %i.et, 0
  %i.fc = extractvalue { ptr, i64 } %i.et, 1
  invoke void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String15from_utf8_lossy(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr %i.fb, i64 %i.fc)
          to label %bb.bq unwind label %bb.bd

bb.bp:                                            ; preds = %bb.br
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.h) #12
          to label %bb.bc unwind label %bb.bn

bb.bq:                                            ; preds = %bb.bo
  store ptr %i.h, ptr %i.i, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val28.val.i = load i64, ptr %i.fe, align 8
  %i.ff = icmp eq i64 %.val28.val.i, 0
  br i1 %i.ff, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedRINtNtCs1xwejQucwHj_5alloc6borrow3CoweEReECshrhKyGBusiH_18build_script_build(ptr align 8 %i.i) #15
          to label %bb.bt unwind label %bb.bp

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.h)
          to label %bb.bu unwind label %bb.bd

bb.bt:                                            ; preds = %bb.br, %bb.cu, %bb.cg, %bb.ca, %bb.bw
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.fg = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.val29.i = load i32, ptr %i.fg, align 8
  %.not.i55.i = icmp eq i32 %.val29.i, 0
  br i1 %.not.i55.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process6OutputECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.m)
          to label %.invoke.i unwind label %.thread77.i

bb.bw:                                            ; preds = %bb.bu
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @25, ptr nonnull inttoptr (i64 87 to ptr), ptr nonnull align 8 @26) #15
          to label %bb.bt unwind label %bb.bd

bb.bx:                                            ; preds = %.invoke.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.af)
          to label %bb.cy unwind label %bb.j

bb.by:                                            ; preds = %bb.ca, %bb.bz
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.o) #12
          to label %.thread.i unwind label %bb.bn

bb.bz:                                            ; preds = %bb.ba
  %i.fi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  store ptr %i.fj, ptr %i.o, align 8
  store ptr %i.o, ptr %i.n, align 8
  %.sroa.269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXNtNtCs3oUPovFnLWP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt, ptr %.sroa.269.0..sroa_idx.i, align 8
  %i.fk = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj36_Kj1_ECscoY6yLMcqBx_9jobserver(ptr nonnull @27, ptr nonnull align 8 %i.n)
          to label %bb.ca unwind label %bb.by     ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.fl = extractvalue { ptr, ptr } %i.fk, 0
  %i.fm = extractvalue { ptr, ptr } %i.fk, 1
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr %i.fl, ptr %i.fm, ptr nonnull align 8 @28) #15
          to label %bb.bt unwind label %bb.by

bb.cb:                                            ; preds = %bb.ay
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECskfouyF4kJzn_2cc(ptr nonnull align 4 %i.y) #12
          to label %.thread.i unwind label %bb.bn

bb.cc:                                            ; preds = %.noexc52.i, %bb.au, %bb.as
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load i32, ptr %i.x, align 8
  %.not.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i, label %.thread81.i, label %bb.cv

bb.cd:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %.noexc52.i
  %.sroa.0.0.i.i = phi i8 [ %i.el, %bb.ax ], [ %i.ed, %bb.av ], [ %i.eh, %bb.aw ], [ %i.eb, %.noexc52.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fp = icmp eq i8 %.sroa.0.0.i.i, 0
  %i.fq = load ptr, ptr %i.du, align 8            ; 2 uses
  br i1 %i.fp, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.fq, ptr %i.v, align 8
  invoke void @_RNvCs1mz4BA98KdY_17fish_build_helper7env_var(ptr nonnull sret([24 x i8]) align 8 %i.u, ptr nonnull @18, i64 15)
          to label %bb.cj unwind label %bb.ci

bb.cf:                                            ; preds = %bb.cg
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.s) #12
          to label %.thread81.i unwind label %bb.bn

bb.cg:                                            ; preds = %bb.cd
  store ptr %i.fq, ptr %i.s, align 8
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXNtNtCs3oUPovFnLWP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt, ptr %.sroa.267.0..sroa_idx.i, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @29, ptr nonnull %i.r, ptr nonnull align 8 @30) #15
          to label %bb.bt unwind label %bb.cf

bb.ch:                                            ; preds = %bb.ck, %bb.ci
  %.pn11.pn.i = phi { ptr, i32 } [ %.pn11.i, %bb.ck ], [ %i.fs, %bb.ci ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.v) #12
          to label %.thread81.i unwind label %bb.bn

bb.ci:                                            ; preds = %bb.cr, %bb.cq, %bb.ce
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cj:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull @31, i64 1) #13
          to label %bb.cm unwind label %bb.cl, !noalias !14

bb.ck:                                            ; preds = %bb.cp, %bb.cl
  %.pn11.i = phi { ptr, i32 } [ %i.gh, %bb.cp ], [ %i.ft, %bb.cl ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECscoY6yLMcqBx_9jobserver(ptr nonnull align 8 %i.u) #12
          to label %bb.ch unwind label %bb.bn

bb.cl:                                            ; preds = %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit64.thread.i, %bb.cj
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cm:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fu = load i64, ptr %i.u, align 8
  %.not.i59.i = icmp eq i64 %i.fu, -1             ; 2 uses
  %i.fv = load i64, ptr %i.t, align 8
  %i.fw = icmp eq i64 %i.fv, -1                   ; 2 uses
  %brmerge.i60.i = select i1 %.not.i59.i, i1 true, i1 %i.fw
  %.mux.i61.i = select i1 %.not.i59.i, i1 %i.fw, i1 false
  br i1 %brmerge.i60.i, label %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit64.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.fy = load i64, ptr %i.fx, align 8            ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = icmp eq i64 %i.fy, %i.ga
  br i1 %i.gb, label %bb.co, label %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit64.thread.i

bb.co:                                            ; preds = %bb.cn
  %i.gc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = invoke zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCskfouyF4kJzn_2cc(ptr %i.gf, ptr %i.gd, i64 %i.fy) #13
          to label %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit64.i unwind label %bb.cp

bb.cp:                                            ; preds = %bb.cu, %bb.co
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECscoY6yLMcqBx_9jobserver(ptr nonnull align 8 %i.t) #12
          to label %bb.ck unwind label %bb.bn

_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit64.i: ; preds = %bb.co, %bb.cm
  %.sroa.0.0.shrunk.i62.i = phi i1 [ %.mux.i61.i, %bb.cm ], [ %i.gg, %bb.co ]
  br i1 %.sroa.0.0.shrunk.i62.i, label %bb.cu, label %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit64.thread.i

_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit64.thread.i: ; preds = %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit64.i, %bb.cn
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECscoY6yLMcqBx_9jobserver(ptr nonnull align 8 %i.t)
          to label %bb.cq unwind label %bb.cl

bb.cq:                                            ; preds = %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit64.thread.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECscoY6yLMcqBx_9jobserver(ptr nonnull align 8 %i.u)
          to label %bb.cr unwind label %bb.ci

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr nonnull @32, ptr nonnull inttoptr (i64 441 to ptr))
          to label %bb.cs unwind label %bb.ci

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.v)
          to label %bb.ct unwind label %.thread85.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread85.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc49.i, %.noexc48.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrKjb_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCshrhKyGBusiH_18build_script_build.exit.i.i, %bb.cs, %bb.aq, %bb.ap, %.loopexit.i, %bb.ao
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.thread81.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process7CommandECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.w)
          to label %.invoke.i unwind label %.thread77.i

.invoke.i:                                        ; preds = %bb.cx, %bb.ct, %bb.bv
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.ae)
          to label %bb.bx unwind label %bb.o

bb.cu:                                            ; preds = %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshrhKyGBusiH_18build_script_build.exit64.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEBM_ECshrhKyGBusiH_18build_script_build(ptr align 8 %i.u, ptr align 8 %i.t, ptr nonnull @33, ptr nonnull inttoptr (i64 263 to ptr)) #15
          to label %bb.bt unwind label %bb.cp

bb.cv:                                            ; preds = %bb.cc
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.du) #12
          to label %.thread81.i unwind label %bb.bn

bb.cw:                                            ; preds = %bb.ak
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECscoY6yLMcqBx_9jobserver(ptr nonnull align 8 %i.aa)
          to label %bb.cx unwind label %.thread77.i

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr nonnull @35, ptr nonnull inttoptr (i64 141 to ptr))
          to label %.invoke.i unwind label %.thread77.i

bb.cy:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.ak)
  ret void

bb.cz:                                            ; preds = %.body, %bb.h, %bb.e, %bb.b
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.da:                                            ; preds = %.body, %bb.b
  %.pn2.pn = phi { ptr, i32 } [ %.pn2, %.body ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %.pn2.pn
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtB6_5Debug3fmtCshrhKyGBusiH_18build_script_build(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load i64, ptr %i.b, align 8
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8
  %i.d = call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %1, ptr nonnull @38, i64 4, ptr nonnull %i.a, ptr nonnull align 8 @37)
  br label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCshrhKyGBusiH_18build_script_build.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @36, i64 4)
  br label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCshrhKyGBusiH_18build_script_build.exit

_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCshrhKyGBusiH_18build_script_build.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs1xwejQucwHj_5alloc6string6StringNtB6_5Debug3fmtCshrhKyGBusiH_18build_script_build(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8
  %i.d = tail call zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr %.val, i64 %.val1, ptr align 8 %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRRINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtB6_5Debug3fmtCshrhKyGBusiH_18build_script_build(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtB6_5Debug3fmtCskfouyF4kJzn_2cc(ptr align 8 %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRReNtB6_5Debug3fmtCshrhKyGBusiH_18build_script_build(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCsaDvkSoazevh_14rustc_demangle(ptr align 8 %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtB2_5AsRefNtBy_4PathE6as_refCskfouyF4kJzn_2cc(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvCskLYWf4FTVoC_6rsconf23rebuild_if_path_changed(ptr, i64) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXNtNtCs3oUPovFnLWP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrINtB2_5AsRefBw_E6as_refCskfouyF4kJzn_2cc(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECskfouyF4kJzn_2cc(ptr align 8, ptr, i64) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8, ptr, ptr align 8, ptr, ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtCsaL1QbXo9JQH_3std2rt19lang_start_internal(ptr, ptr align 8, i64, ptr, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB2_5AsRefNtNtNtBA_3ffi6os_str5OsStrE6as_refCskfouyF4kJzn_2cc(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs1mz4BA98KdY_17fish_build_helper12fish_doc_dir(ptr sret([24 x i8]) align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs2_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCskfouyF4kJzn_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs5ILFtGS3mP9_15find_msvc_tools(ptr sret([24 x i8]) align 8, ptr, i64, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5ILFtGS3mP9_15find_msvc_tools(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEECskfouyF4kJzn_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare ptr @_RINvNtCsaL1QbXo9JQH_3std2fs14create_dir_allRNtNtB4_4path7PathBufECskLYWf4FTVoC_6rsconf(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoY6yLMcqBx_9jobserver(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvCs1mz4BA98KdY_17fish_build_helper14workspace_root() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCskLYWf4FTVoC_6rsconf22rebuild_if_env_changed(ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs1mz4BA98KdY_17fish_build_helper7env_var(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECscoY6yLMcqBx_9jobserver(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE9unwrap_orCskfouyF4kJzn_2cc(ptr, i64, ptr, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3newReECskfouyF4kJzn_2cc(ptr sret([200 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command6stdoutNtB6_5StdioECskfouyF4kJzn_2cc(ptr align 8, i32, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command6stderrNtB6_5StdioECskfouyF4kJzn_2cc(ptr align 8, i32, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_NtCsaL1QbXo9JQH_3std7processNtB5_7Command5spawn(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process7CommandECs5ILFtGS3mP9_15find_msvc_tools(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsT_NtCsaL1QbXo9JQH_3std7processNtB5_5Child16wait_with_output(ptr sret([56 x i8]) align 8, ptr align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8is_emptyCshXFRILY6tCo_5shlex(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCskfouyF4kJzn_2cc(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String15from_utf8_lossy(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskfouyF4kJzn_2cc(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj21_Kj1_ECskLYWf4FTVoC_6rsconf(ptr, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskfouyF4kJzn_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process6OutputECskfouyF4kJzn_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj36_Kj1_ECscoY6yLMcqBx_9jobserver(ptr, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5ILFtGS3mP9_15find_msvc_tools(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECskfouyF4kJzn_2cc(ptr align 4) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr align 8) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECscoY6yLMcqBx_9jobserver(ptr sret([16 x i8]) align 8, ptr) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions() unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCskfouyF4kJzn_2cc(ptr, ptr, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtB6_5Debug3fmtCskfouyF4kJzn_2cc(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCsaDvkSoazevh_14rustc_demangle(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs5ILFtGS3mP9_15find_msvc_tools(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE4nextCskLYWf4FTVoC_6rsconf(ptr align 8, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCshrhKyGBusiH_18build_script_build4main, ptr %i.a, align 8
  %i.c = call i64 @_RNvNtCsaL1QbXo9JQH_3std2rt19lang_start_internal(ptr nonnull %i.a, ptr nonnull align 8 @5, i64 %i.b, ptr %1, i8 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

attributes #0 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { noinline noreturn }
attributes #10 = { nounwind }
attributes #11 = { noinline }
attributes #12 = { cold }
attributes #13 = { inlinehint }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!5 = distinct !{null}
!6 = !{i64 21277267989337965}
!7 = distinct !{!7, i1 true, !"_RNvXs2_NtCs1xwejQucwHj_5alloc3streNtNtB7_6borrow7ToOwned8to_ownedCshrhKyGBusiH_18build_script_build"}
!8 = distinct !{!8, !7, !"_RNvXs2_NtCs1xwejQucwHj_5alloc3streNtNtB7_6borrow7ToOwned8to_ownedCshrhKyGBusiH_18build_script_build: argument 0"}
!9 = distinct !{null}
!10 = distinct !{!10, i1 true, !"_RNvXs2_NtCs1xwejQucwHj_5alloc3streNtNtB7_6borrow7ToOwned8to_ownedCshrhKyGBusiH_18build_script_build"}
!11 = distinct !{!11, !10, !"_RNvXs2_NtCs1xwejQucwHj_5alloc3streNtNtB7_6borrow7ToOwned8to_ownedCshrhKyGBusiH_18build_script_build: argument 0"}
!12 = !{!"address", !"read_provenance"}
!13 = !{!8}
!14 = !{!11}
end_hunk_0
