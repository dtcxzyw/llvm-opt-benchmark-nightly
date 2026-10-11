Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.00?download=true
inline.NumInlined: 2834
inline.NumDeleted: 785
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtCsbNLsQi0JuJ4_5tgrep5serve12publish_file:bb.a
          cleanup
  br label %bb.n

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.p = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.q = and i64 %i.p, 3
  switch i64 %i.q, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 0, label %bb.h
    i64 1, label %bb.i
  ], !prof !18

default.unreachable:                              ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit
  unreachable

bb.f:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit
  %i.r = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  %i.s = lshr i64 %i.p, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  %i.w = invoke noundef i8 %i.v(i32 noundef %i.t)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.l, !inline_history !2

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit
  %i.x = lshr i64 %i.p, 32
  %i.y = icmp ult ptr %i.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.x to i8   ; 2 uses
  %i.z = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.y)
  call void @llvm.assume(i1 %i.z)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !32, !noundef !9
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.i:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit
  %i.ac = getelementptr i8, ptr %i.i, i64 31
  %i.ad = load i8, ptr %i.ac, align 8, !range !32, !noundef !9
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.j:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.i, %bb.h, %bb.g, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.ad, %bb.i ], [ %switch.idx.cast.i.i.i, %bb.g ], [ %i.ab, %bb.h ], [ %i.w, %.noexc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.i, ptr %i.ae, align 8
  %i.af = invoke noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtCsbNLsQi0JuJ4_5tgrep5serve12PublishErrorEB1m_(i8 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

bb.l:                                             ; preds = %.noexc, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #31
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.n, %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.e
  %.pn.ph = phi { ptr, i32 } [ %i.o, %bb.e ], [ %lpad.thr_comm, %bb.l ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #31
          to label %bb.p unwind label %bb.m

bb.o:                                             ; preds = %bb.p
  resume { ptr, i32 } %.pn.pn

bb.p:                                             ; preds = %bb.j, %bb.b, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph, %bb.n ], [ %i.j, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.j ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr null) #31
          to label %bb.o unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve12reindex_file(ptr %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [80 x i8], align 8                ; 21 uses
  %i.f = alloca [176 x i8], align 8               ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 1                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [80 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [17 x i8], align 1               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 12 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [32 x i8], align 8               ; 6 uses
  %i.aj = alloca [80 x i8], align 8               ; 4 uses
  %i.ak = alloca [17 x i8], align 1               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [8 x i8], align 8                ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 12 uses
  %i.at = alloca [17 x i8], align 1               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 9 uses
  %i.av = alloca [24 x i8], align 8               ; 5 uses
  %i.aw = alloca [176 x i8], align 8              ; 12 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [16 x i8], align 16              ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 11 uses
  %i.ba = alloca [24 x i8], align 8               ; 14 uses
  %i.bb = alloca [80 x i8], align 8               ; 19 uses
  %i.bc = alloca [176 x i8], align 8              ; 12 uses
  %i.bd = alloca [176 x i8], align 8              ; 10 uses
  %i.be = alloca [8 x i8], align 8                ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 11 uses
  %i.bg = alloca [4 x i8], align 4                ; 17 uses
  %i.bh = alloca [24 x i8], align 8               ; 13 uses
  %i.bi = alloca [24 x i8], align 8               ; 10 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [16 x i8], align 16              ; 7 uses
  %i.bl = alloca [80 x i8], align 8               ; 12 uses
  %i.bm = alloca [176 x i8], align 8              ; 7 uses
  %i.bn = alloca [176 x i8], align 8              ; 8 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [16 x i8], align 8               ; 7 uses
  %i.bq = alloca [4 x i8], align 4                ; 5 uses
  %i.br = alloca [16 x i8], align 8               ; 36 uses
  store ptr %2, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 33 uses
  store i64 %3, ptr %i.bs, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %i.bu = tail call noundef zeroext i1 @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path11starts_withRNtB7_7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt)
  br i1 %i.bu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuarduEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.val, i64 1040
  call void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexuE4lockCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 4 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !9, !align !21 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ca = load i8, ptr %i.bz, align 8, !range !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cb = trunc nuw i8 %i.ca to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 4 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !9, !noundef !9
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 4 uses
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !9
  invoke void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve16open_within_root(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.cf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.d unwind label %bb.c

.thread66:                                        ; preds = %bb.da, %bb.hz, %.thread59, %bb.jm, %bb.jw, %bb.jr, %bb.m, %.thread16, %bb.ka, %bb.c
  %.pn116.pn = phi { ptr, i32 } [ %lpad.thr_comm75, %bb.ka ], [ %i.wa, %bb.jr ], [ %i.cg, %bb.c ], [ %.pn11415, %.thread16 ], [ %lpad.thr_comm.split-lp, %bb.m ], [ %i.wl, %bb.jw ], [ %.pn105, %bb.da ], [ %.pn105, %bb.hz ], [ %.pn109.pn, %.thread59 ], [ %.pn109.pn, %bb.jm ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuarduEECsbNLsQi0JuJ4_5tgrep(ptr nonnull %i.by, i8 %i.ca) #31
          to label %bb.kb unwind label %bb.an

bb.c:                                             ; preds = %bb.ju, %bb.b
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.thread66

bb.d:                                             ; preds = %bb.b
  %i.ch = load i32, ptr %i.bp, align 8, !range !31, !noundef !9
  %i.ci = trunc nuw i32 %i.ch to i1
  br i1 %i.ci, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %.val154 = load ptr, ptr %i.cj, align 8, !nonnull !9, !noundef !9 ; 10 uses
  %i.ck = ptrtoint ptr %.val154 to i64            ; 7 uses
  %i.cl = and i64 %i.ck, 3                        ; 4 uses
  switch i64 %i.cl, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 0, label %bb.h
    i64 1, label %bb.i
  ], !prof !18

default.unreachable:                              ; preds = %bb.jx, %bb.js, %bb.jn, %bb.cs, %bb.bp, %bb.j, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.cm = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.ka

.noexc:                                           ; preds = %bb.f
  %i.cn = lshr i64 %i.ck, 32
  %i.co = trunc nuw i64 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !9, !noundef !9
  %i.cr = invoke noundef i8 %i.cq(i32 noundef %i.co)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.ka, !inline_history !33

bb.g:                                             ; preds = %bb.e
  %i.cs = lshr i64 %i.ck, 32
  %i.ct = icmp ult ptr %.val154, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.cs to i8 ; 2 uses
  %i.cu = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ct)
  call void @llvm.assume(i1 %i.cu)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i

bb.h:                                             ; preds = %bb.e
  %i.cv = getelementptr inbounds nuw i8, ptr %.val154, i64 16
  %i.cw = load i8, ptr %i.cv, align 8, !range !32, !noundef !9
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i

bb.i:                                             ; preds = %bb.e
  %i.cx = getelementptr i8, ptr %.val154, i64 31
  %i.cy = load i8, ptr %i.cx, align 8, !range !32, !noundef !9
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %.noexc, %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i.i = phi i8 [ %i.cy, %bb.i ], [ %switch.idx.cast.i.i.i.i, %bb.g ], [ %i.cw, %bb.h ], [ %i.cr, %.noexc ]
  switch i8 %.sroa.0.0.i.i, label %bb.j [
    i8 0, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread75
    i8 14, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread75
    i8 20, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread75
  ]

bb.j:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i
  switch i64 %i.cl, label %default.unreachable [
    i64 2, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit
    i64 3, label %bb.k
    i64 0, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread
    i64 1, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread
  ], !prof !18

bb.k:                                             ; preds = %bb.j
  %i.cz = icmp ult ptr %.val154, inttoptr (i64 188978561024 to ptr)
  %i.da = and i64 %i.ck, 1095216660480
  %i.db = icmp ne i64 %i.da, 1095216660480
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.assume(i1 %i.db)
  br label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread

bb.l:                                             ; preds = %bb.d
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !range !23, !noundef !9 ; 4 uses
  store i32 %i.dd, ptr %i.bq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.bm, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bq)
          to label %bb.n unwind label %.thread20

.thread20:                                        ; preds = %bb.jq, %bb.jp, %bb.y, %bb.am, %bb.al, %bb.l, %_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, %bb.ab, %bb.u, %bb.s, %bb.p, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread16

bb.m:                                             ; preds = %bb.gx, %bb.hw, %bb.jf
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread66

bb.n:                                             ; preds = %bb.l
  %i.de = load i64, ptr %i.bm, align 8, !range !17, !noundef !9
  %i.df = icmp eq i64 %i.de, 2
  br i1 %i.df, label %bb.jn, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bn, ptr noundef nonnull align 8 dereferenceable(176) %i.bm, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.dg = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.dh = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve22record_path_visibility(ptr noundef nonnull align 8 %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dg, i64 noundef %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.bn)
          to label %bb.p unwind label %.thread20

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core4meta12file_version(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.bn)
          to label %bb.q unwind label %.thread20

bb.q:                                             ; preds = %bb.p
  %i.di = load i64, ptr %i.bl, align 8, !noundef !9
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !9 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.dm = load i32, ptr %i.dl, align 8, !noundef !9
  %i.dn = and i32 %i.dm, 61440
  %i.do = icmp eq i32 %i.dn, 32768
  br i1 %i.do, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dp = load i64, ptr %i.bv, align 8, !range !14, !noundef !9
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q, %bb.t
  %i.dr = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.ds = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17drop_indexed_file(ptr noundef nonnull align 8 %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dr, i64 noundef %i.ds, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 18)
          to label %bb.v unwind label %.thread20

bb.t:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.du = load i64, ptr %i.dt, align 8
  %.not = icmp ugt i64 %i.dk, %i.du
  br i1 %.not, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t
  %i.dv = invoke noundef zeroext i1 @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.w unwind label %.thread20

bb.v:                                             ; preds = %bb.y, %bb.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEECsbNLsQi0JuJ4_5tgrep.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.jl

bb.w:                                             ; preds = %bb.u
  br i1 %i.dv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %4, label %bb.ao, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dw = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.dx = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve18mark_filename_only(ptr noundef nonnull align 8 %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %i.dx)
          to label %bb.v unwind label %.thread20

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.val, i64 1272 ; 4 uses
  %i.dz = load atomic i32, ptr %i.dy monotonic, align 8 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.dz, 1073741822
  br i1 %or.cond3.i, label %bb.aa, label %bb.ab, !prof !34

bb.aa:                                            ; preds = %bb.z
  %i.ea = add nuw nsw i32 %i.dz, 1
  %i.eb = cmpxchg weak ptr %i.dy, i32 %i.dz, i32 %i.ea acquire monotonic, align 4
  %i.ec = extractvalue { i32, i1 } %i.eb, 1
  br i1 %i.ec, label %_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, label %bb.ab, !prof !13

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.dy)
          to label %_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit unwind label %.thread20

_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.aa, %bb.ab
  invoke void @_RNvMsd_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceE3newCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bj, ptr noundef nonnull align 8 %i.dy)
          to label %bb.ac unwind label %.thread20

bb.ac:                                            ; preds = %_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.ed = load i64, ptr %i.bj, align 8, !range !14, !alias.scope !1160, !noalias !1161, !noundef !9
  %i.ee = trunc nuw i64 %i.ed to i1
  br i1 %i.ee, label %bb.ad, label %bb.ah, !prof !20

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1162
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.eg = load <2 x ptr>, ptr %i.ef, align 8, !alias.scope !1160, !noalias !1161
  store <2 x ptr> %i.eg, ptr %i.m, align 16, !noalias !1162
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #35
          to label %bb.af unwind label %bb.ae, !noalias !1160

bb.ae:                                            ; preds = %bb.ad
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.thread16 unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !1160
  unreachable

bb.ah:                                            ; preds = %bb.ac
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.ek = load <2 x ptr>, ptr %i.ej, align 8, !alias.scope !1160, !noalias !1161
  %i.el = load ptr, ptr %i.ej, align 8, !alias.scope !1160, !noalias !1161, !nonnull !9, !noundef !9
  store <2 x ptr> %i.ek, ptr %i.bk, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.em = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.en = load i64, ptr %i.bs, align 8, !noundef !9
  %i.eo = invoke noundef align 8 ptr @_RNvMs4_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidence7version(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.el, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef %i.en)
          to label %bb.aj unwind label %bb.ai     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bk)
          to label %.thread16 unwind label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %.not86 = icmp eq ptr %i.eo, null
  br i1 %.not86, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eq = call fastcc noundef zeroext i1 @_RNvXsf_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_11FileVersionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bl)
  br i1 %i.eq, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bk)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEECsbNLsQi0JuJ4_5tgrep.exit185 unwind label %.thread20

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bk)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEECsbNLsQi0JuJ4_5tgrep.exit187 unwind label %.thread20

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEECsbNLsQi0JuJ4_5tgrep.exit185: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.ao

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEECsbNLsQi0JuJ4_5tgrep.exit187: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.v

bb.an:                                            ; preds = %bb.in, %bb.hy, %bb.hg, %.thread51, %bb.fe, %.body132, %.body128, %bb.ai, %bb.ed, %bb.gn, %.thread66, %bb.ka, %bb.jw, %bb.jm, %5, %bb.jb, %bb.ib, %bb.hz, %bb.dq, %bb.hs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1z_13TrigramHasherEEECsbNLsQi0JuJ4_5tgrep.exit223
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ao:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEECsbNLsQi0JuJ4_5tgrep.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.es = call noundef i32 @close(i32 noundef %i.dd) #32 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store i64 -1, ptr %i.bh, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bd, i64 56 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bb, i64 56 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bb, i64 72 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bb, i64 64 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.fq = load ptr, ptr %i.cc, align 8, !nonnull !9, !noundef !9
  %i.fr = load i64, ptr %i.ce, align 8, !noundef !9
  invoke void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve16open_within_root(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fq, i64 noundef %i.fr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.ap unwind label %.loopexit85

.loopexit:                                        ; preds = %bb.cw, %bb.cx
  %.sroa.8.0 = phi i64 [ %.lcssa130, %bb.cx ], [ %i.dk, %bb.cw ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.lcssa139, %bb.cx ], [ %i.di, %bb.cw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %.val167.1 = load i32, ptr %i.bg, align 4, !range !23, !noundef !9
  %i.fs = call noundef i32 @close(i32 noundef %.val167.1) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.ft = load i64, ptr %i.bh, align 8, !range !8, !noundef !9
  %.not88 = icmp eq i64 %i.ft, -1
  br i1 %.not88, label %bb.cz, label %bb.cy

.thread59:                                        ; preds = %.loopexit85, %.loopexit.split-lp, %bb.jb, %bb.iv, %.body126, %5
  %.pn109.pn = phi { ptr, i32 } [ %lpad.thr_comm64, %5 ], [ %i.vb, %bb.iv ], [ %i.vg, %bb.jb ], [ %.pn107, %.body126 ], [ %lpad.loopexit, %.loopexit85 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fu = load i64, ptr %i.bh, align 8, !range !8, !noundef !9
  %.not112 = icmp eq i64 %i.fu, -1
  br i1 %.not112, label %.thread66, label %bb.jm

.loopexit85:                                      ; preds = %bb.bx, %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread59

.loopexit.split-lp:                               ; preds = %bb.iz, %bb.cz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread59

bb.ap:                                            ; preds = %bb.ao
  %i.fv = load i32, ptr %i.bf, align 8, !range !31, !noundef !9
  %i.fw = trunc nuw i32 %i.fv to i1
  br i1 %i.fw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.by, %bb.ap
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %.val153 = load ptr, ptr %i.fx, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.fy = invoke fastcc noundef zeroext i1 @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible(ptr nonnull %.val153)
          to label %bb.iw unwind label %5

bb.ar:                                            ; preds = %bb.ap
  %i.fz = load i32, ptr %i.et, align 4, !range !23, !noundef !9
  store i32 %i.fz, ptr %i.bg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.bc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bg)
          to label %bb.as unwind label %.loopexit86

.body126:                                         ; preds = %.loopexit86, %.loopexit.split-lp87, %bb.in, %bb.ij, %bb.bt, %bb.bf, %bb.ib
  %.pn107 = phi { ptr, i32 } [ %i.um, %bb.ij ], [ %i.ua, %bb.ib ], [ %i.gw, %bb.bf ], [ %i.ik, %bb.bt ], [ %i.uu, %bb.in ], [ %lpad.loopexit88, %.loopexit86 ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp87 ]
  %.val168 = load i32, ptr %i.bg, align 4, !range !23, !noundef !9
  %i.ga = call noundef i32 @close(i32 noundef %.val168) #32 ; 0 uses
  br label %.thread59

.loopexit86:                                      ; preds = %bb.cw, %bb.cg, %bb.cd, %bb.cb, %bb.bz, %bb.ar, %bb.at, %bb.aw, %bb.az, %bb.bu
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %.body126

.loopexit.split-lp87:                             ; preds = %bb.av, %bb.bd, %_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit226, %bb.ip, %bb.is, %bb.it, %bb.ig, %bb.if, %bb.io
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %.body126

bb.as:                                            ; preds = %bb.ar
  %i.gb = load i64, ptr %i.bc, align 8, !range !17, !noundef !9
  %i.gc = icmp eq i64 %i.gb, 2
  br i1 %i.gc, label %bb.is, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bd, ptr noundef nonnull align 8 dereferenceable(176) %i.bc, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core4meta12file_version(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.bd)
          to label %bb.au unwind label %.loopexit86

bb.au:                                            ; preds = %bb.at
  %i.gd = load i64, ptr %i.bb, align 8, !noundef !9 ; 3 uses
  %i.ge = load i64, ptr %i.eu, align 8, !noundef !9 ; 5 uses
  %i.gf = load i32, ptr %i.ev, align 8, !noundef !9
  %i.gg = and i32 %i.gf, 61440
  %i.gh = icmp eq i32 %i.gg, 32768
  br i1 %i.gh, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.cf, %bb.ce, %bb.cc, %bb.ay, %bb.ax, %bb.au
  %i.gi = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.gj = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17drop_indexed_file(ptr noundef nonnull align 8 %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gi, i64 noundef %i.gj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 18)
          to label %bb.iq unwind label %.loopexit.split-lp87

bb.aw:                                            ; preds = %bb.au
  %i.gk = invoke noundef zeroext i1 @_RNvNtCsbzNSmZPCnTx_10tgrep_core6walker19is_binary_extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.ax unwind label %.loopexit86

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.gk, label %bb.av, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gl = load i64, ptr %i.bv, align 8, !range !14, !noundef !9 ; 2 uses
  %i.gm = load i64, ptr %i.ew, align 8            ; 2 uses
  %i.gn = trunc nuw i64 %i.gl to i1
  %i.go = icmp ugt i64 %i.ge, %i.gm
  %or.cond16 = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %or.cond16, label %bb.av, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.gp = call i64 @llvm.umin.i64(i64 %i.ge, i64 1048576)
  invoke void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17read_within_limit(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.bg, i64 noundef %i.gl, i64 %i.gm, i64 noundef %i.gp)
          to label %bb.ba unwind label %.loopexit86

bb.ba:                                            ; preds = %bb.az
  %i.gq = load i64, ptr %i.az, align 8, !range !1163, !noundef !9 ; 2 uses
  %i.gr = icmp slt i64 %i.gq, 0
  %i.gs = add i64 %i.gq, -9223372036854775807
  %i.gt = select i1 %i.gr, i64 %i.gs, i64 0
  switch i64 %i.gt, label %bb.bb [
    i64 0, label %bb.bc
    i64 1, label %bb.bd
    i64 2, label %bb.be
  ]

bb.bb:                                            ; preds = %bb.ch, %bb.ba
  unreachable

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.aw, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bg)
          to label %bb.bg unwind label %bb.ib

bb.bd:                                            ; preds = %bb.ch, %bb.ba
  %i.gu = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.gv = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17drop_indexed_file(ptr noundef nonnull align 8 %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gu, i64 noundef %i.gv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 41)
          to label %bb.ic unwind label %.loopexit.split-lp87

bb.be:                                            ; preds = %bb.ch, %bb.ba
  br i1 %4, label %bb.ig, label %bb.id

bb.bf:                                            ; preds = %bb.bw
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  br label %.body126

bb.bg:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.gx = load i64, ptr %i.aw, align 8, !range !17, !alias.scope !1164, !noundef !9
  %i.gy = icmp eq i64 %i.gx, 2
  br i1 %i.gy, label %bb.bp, label %.noexc.i

.noexc.i:                                         ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(176) %i.aw, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1165
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core4meta12file_version(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.f)
          to label %.noexc194 unwind label %bb.ib

.noexc194:                                        ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %i.gz = load i64, ptr %i.ex, align 8, !alias.scope !1166, !noalias !1168, !noundef !9
  %i.ha = load i64, ptr %i.ey, align 8, !alias.scope !1167, !noalias !1169, !noundef !9
  %i.hb = icmp eq i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.bh, label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep5serve12reindex_files0_0EB1V_.exit.thread28

bb.bh:                                            ; preds = %.noexc194
  %i.hc = load i64, ptr %i.ez, align 8, !alias.scope !1166, !noalias !1168, !noundef !9
  %i.hd = load i64, ptr %i.fa, align 8, !alias.scope !1167, !noalias !1169, !noundef !9
  %i.he = icmp eq i64 %i.hc, %i.hd
  br i1 %i.he, label %bb.bi, label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep5serve12reindex_files0_0EB1V_.exit.thread28

bb.bi:                                            ; preds = %bb.bh
  %i.hf = load i64, ptr %i.fb, align 8, !alias.scope !1166, !noalias !1168, !noundef !9
  %i.hg = load i64, ptr %i.fc, align 8, !alias.scope !1167, !noalias !1169, !noundef !9
  %i.hh = icmp eq i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.bj, label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep5serve12reindex_files0_0EB1V_.exit.thread28

bb.bj:                                            ; preds = %bb.bi
  %i.hi = load i64, ptr %i.fd, align 8, !alias.scope !1166, !noalias !1168, !noundef !9
  %i.hj = load i64, ptr %i.fe, align 8, !alias.scope !1167, !noalias !1169, !noundef !9
  %i.hk = icmp eq i64 %i.hi, %i.hj
  %i.hl = load i64, ptr %i.e, align 8
  %i.hm = icmp eq i64 %i.hl, %i.gd
  %or.cond81 = select i1 %i.hk, i1 %i.hm, i1 false
  %i.hn = load i64, ptr %i.ff, align 8
  %i.ho = icmp eq i64 %i.hn, %i.ge
  %or.cond84 = select i1 %or.cond81, i1 %i.ho, i1 false
  br i1 %or.cond84, label %bb.bk, label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep5serve12reindex_files0_0EB1V_.exit.thread28

bb.bk:                                            ; preds = %bb.bj
  %i.hp = load i32, ptr %i.fh, align 8, !range !35, !alias.scope !1166, !noalias !1168, !noundef !9 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.hp, -1
  %i.hq = load i32, ptr %i.fi, align 8, !range !35, !alias.scope !1167, !noalias !1169, !noundef !9 ; 2 uses
  %i.hr = icmp eq i32 %i.hq, -1                   ; 2 uses
  br i1 %.not.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.hr, label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep5serve12reindex_files0_0EB1V_.exit.thread28, label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  br i1 %i.hr, label %bb.bo, label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep5serve12reindex_files0_0EB1V_.exit.thread28

bb.bn:                                            ; preds = %bb.bl
  %i.hs = load i64, ptr %i.fg, align 8, !alias.scope !1166, !noalias !1168, !noundef !9
  %i.ht = load i64, ptr %i.fj, align 8, !alias.scope !1167, !noalias !1169, !noundef !9
  %i.hu = icmp eq i64 %i.hs, %i.ht
  %i.hv = icmp eq i32 %i.hp, %i.hq
  %or.cond.i.i.i = and i1 %i.hv, %i.hu
  br i1 %or.cond.i.i.i, label %bb.bo, label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep5serve12reindex_files0_0EB1V_.exit.thread28

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.hw = load i32, ptr %i.fk, align 8, !range !35, !alias.scope !1166, !noalias !1168, !noundef !9 ; 3 uses
  %.not3.i.i.i = icmp eq i32 %i.hw, -1
  %i.hx = load i32, ptr %i.fl, align 8, !range !35, !alias.scope !1167, !noalias !1169, !noundef !9 ; 3 uses
  %i.hy = icmp eq i32 %i.hx, -1
  %brmerge.i.i.i = or i1 %.not3.i.i.i, %i.hy
  br i1 %brmerge.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB5_2io5error5ErrorE9is_ok_andNCNvNtCsbNLsQi0JuJ4_5tgrep5serve12reindex_files0_0EB1V_.exit, label %.split

.split:                                           ; preds = %bb.bo
  %i.hz = load i64, ptr %i.fm, align 8, !alias.scope !1166, !noalias !1168, !noundef !9
  %i.ia = load i64, ptr %i.fn, align 8, !alias.scope !1167, !noalias !1169, !noundef !9
  %i.ib = icmp eq i64 %i.hz, %i.ia
  %i.ic = icmp eq i32 %i.hw, %i.hx
  %spec.select.i.i.i = and i1 %i.ic, %i.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1164
  br i1 %spec.select.i.i.i, label %bb.bw, label %bb.bs

bb.bp:                                            ; preds = %bb.bg
  %.val4.i = load ptr, ptr %i.fo, align 8, !alias.scope !1164, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1170
  %i.id = ptrtoint ptr %.val4.i to i64            ; 2 uses
  %i.ie = and i64 %i.id, 3
  switch i64 %i.ie, label %default.unreachable [
end_hunk_0
begin_hunk_1_@_RNvNtCsbNLsQi0JuJ4_5tgrep5serve12reindex_file:bb.a
  br i1 %.not102, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1z_13TrigramHasherEEECsbNLsQi0JuJ4_5tgrep.exit221, label %bb.hv

bb.ho:                                            ; preds = %bb.dm
  br i1 %i.lz, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.tu = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.tv = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve20retry_failed_reindex(ptr nonnull %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tu, i64 noundef %i.tv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 30)
          to label %bb.hr unwind label %bb.dq

bb.hq:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %.val152, ptr %i.ap, align 8
  %i.tw = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.tx = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17drop_indexed_file(ptr noundef nonnull align 8 %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tw, i64 noundef %i.tx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 18)
          to label %bb.ht unwind label %bb.hs

bb.hr:                                            ; preds = %bb.hp
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ly)
          to label %.thread50 unwind label %bb.dk

.thread50:                                        ; preds = %bb.dt, %bb.ds, %bb.hu, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.hn

bb.hs:                                            ; preds = %bb.hq
  %i.ty = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #31
          to label %.body130 unwind label %bb.an

bb.ht:                                            ; preds = %bb.hq
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.hu unwind label %.thread45

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %.thread50

bb.hv:                                            ; preds = %bb.hn
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1z_13TrigramHasherEEECsbNLsQi0JuJ4_5tgrep.exit221 unwind label %bb.dd

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1z_13TrigramHasherEEECsbNLsQi0JuJ4_5tgrep.exit221: ; preds = %bb.hv, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au)
          to label %bb.hw unwind label %bb.db

bb.hw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1z_13TrigramHasherEEECsbNLsQi0JuJ4_5tgrep.exit221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bi)
          to label %bb.hx unwind label %bb.m

bb.hx:                                            ; preds = %bb.je, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.jg

bb.hy:                                            ; preds = %.body130
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1z_13TrigramHasherEEECsbNLsQi0JuJ4_5tgrep.exit223 unwind label %bb.an

bb.hz:                                            ; preds = %bb.da
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bi) #31
          to label %.thread66 unwind label %bb.an

bb.ia:                                            ; preds = %bb.cz, %bb.iu
  %i.tz = load i64, ptr %i.bh, align 8, !range !8, !noundef !9
  %.not113 = icmp eq i64 %i.tz, -1
  br i1 %.not113, label %bb.je, label %bb.jf

bb.ib:                                            ; preds = %bb.ct, %.noexc.i.1, %bb.ci, %bb.br, %.noexc.i, %bb.bc
  %i.ua = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #31
          to label %.body126 unwind label %bb.an

bb.ic:                                            ; preds = %bb.ig, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.iq

bb.id:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.ub = getelementptr inbounds nuw i8, ptr %.0.val, i64 272 ; 4 uses
  %i.uc = load atomic i32, ptr %i.ub monotonic, align 8 ; 3 uses
  %or.cond3.i224 = icmp ult i32 %i.uc, 1073741822
  br i1 %or.cond3.i224, label %bb.ie, label %bb.if, !prof !34

bb.ie:                                            ; preds = %bb.id
  %i.ud = add nuw nsw i32 %i.uc, 1
  %i.ue = cmpxchg weak ptr %i.ub, i32 %i.uc, i32 %i.ud acquire monotonic, align 4
  %i.uf = extractvalue { i32, i1 } %i.ue, 1
  br i1 %i.uf, label %_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit226, label %bb.if, !prof !13

bb.if:                                            ; preds = %bb.ie, %bb.id
  invoke void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.ub)
          to label %_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit226 unwind label %.loopexit.split-lp87

bb.ig:                                            ; preds = %bb.ip, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep.exit230, %bb.be
  %i.ug = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.uh = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve20retry_failed_reindex(ptr nonnull %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ug, i64 noundef %i.uh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 28)
          to label %bb.ic unwind label %.loopexit.split-lp87

_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit226: ; preds = %bb.ie, %bb.if
  invoke void @_RNvMsd_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexE3newCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noundef nonnull align 8 %i.ub)
          to label %bb.ih unwind label %.loopexit.split-lp87

bb.ih:                                            ; preds = %_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit226
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.ui = load i64, ptr %i.ax, align 8, !range !14, !alias.scope !1197, !noalias !1198, !noundef !9
  %i.uj = trunc nuw i64 %i.ui to i1
  br i1 %i.uj, label %bb.ii, label %bb.im, !prof !20

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1199
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ul = load <2 x ptr>, ptr %i.uk, align 8, !alias.scope !1197, !noalias !1198
  store <2 x ptr> %i.ul, ptr %i.l, align 16, !noalias !1199
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #35
          to label %bb.ik unwind label %bb.ij, !noalias !1197

bb.ij:                                            ; preds = %bb.ii
  %i.um = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.body126 unwind label %bb.il

bb.ik:                                            ; preds = %bb.ii
  unreachable

bb.il:                                            ; preds = %bb.ij
  %i.un = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !1197
  unreachable

bb.im:                                            ; preds = %bb.ih
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.up = load <2 x ptr>, ptr %i.uo, align 8, !alias.scope !1197, !noalias !1198
  %i.uq = load ptr, ptr %i.uo, align 8, !alias.scope !1197, !noalias !1198, !nonnull !9, !noundef !9
  store <2 x ptr> %i.up, ptr %i.ay, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.ur = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.us = load i64, ptr %i.bs, align 8, !noundef !9
  %i.ut = invoke noundef zeroext i1 @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB2_11HybridIndex15has_active_path(ptr noundef nonnull align 8 %i.uq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ur, i64 noundef %i.us)
          to label %bb.io unwind label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.uu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %.body126 unwind label %bb.an

bb.io:                                            ; preds = %bb.im
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep.exit230 unwind label %.loopexit.split-lp87

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep.exit230: ; preds = %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br i1 %i.ut, label %bb.ig, label %bb.ip

bb.ip:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep.exit230
  %i.uv = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.uw = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve18mark_filename_only(ptr noundef nonnull align 8 %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uv, i64 noundef %i.uw)
          to label %bb.ig unwind label %.loopexit.split-lp87

bb.iq:                                            ; preds = %bb.av, %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.ir

bb.ir:                                            ; preds = %bb.it, %bb.iq
  %.val165 = load i32, ptr %i.bg, align 4, !range !23, !noundef !9
  %i.ux = call noundef i32 @close(i32 noundef %.val165) #32 ; 0 uses
  br label %bb.iu

bb.is:                                            ; preds = %bb.ca, %bb.as
  %i.uy = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val147 = load ptr, ptr %i.uy, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5Xr050g3D4S_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep(i64 2, ptr %.val147)
          to label %bb.it unwind label %.loopexit.split-lp87

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.uz = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.va = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve20retry_failed_reindex(ptr nonnull %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uz, i64 noundef %i.va, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 46)
          to label %bb.ir unwind label %.loopexit.split-lp87

bb.iu:                                            ; preds = %bb.ir, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.ia

bb.iv:                                            ; preds = %bb.jc
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %.thread59

bb.iw:                                            ; preds = %bb.aq
  br i1 %i.fy, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.vc = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.vd = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve20retry_failed_reindex(ptr nonnull %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vc, i64 noundef %i.vd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 43)
          to label %bb.iz unwind label %5

bb.iy:                                            ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr %.val153, ptr %i.be, align 8
  %i.ve = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.vf = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17drop_indexed_file(ptr noundef nonnull align 8 %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ve, i64 noundef %i.vf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 18)
          to label %bb.jc unwind label %bb.jb

bb.iz:                                            ; preds = %bb.ix
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fx)
          to label %bb.ja unwind label %.loopexit.split-lp

bb.ja:                                            ; preds = %bb.jd, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.iu

bb.jb:                                            ; preds = %bb.iy
  %i.vg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be) #31
          to label %.thread59 unwind label %bb.an

bb.jc:                                            ; preds = %bb.iy
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.jd unwind label %bb.iv

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.ja

bb.je:                                            ; preds = %bb.jf, %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.hx

bb.jf:                                            ; preds = %bb.ia
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh)
          to label %bb.je unwind label %bb.m

bb.jg:                                            ; preds = %bb.jl, %bb.hx, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.vh = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  br i1 %i.cb, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.vi = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.vj = and i64 %i.vi, 9223372036854775807
  %i.vk = icmp eq i64 %i.vj, 0
  br i1 %i.vk, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ji, !prof !13

bb.ji:                                            ; preds = %bb.jh
  %i.vl = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.vl, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  store atomic i8 1, ptr %i.vh monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.jj, %bb.ji, %bb.jh, %bb.jg
  %i.vm = atomicrmw xchg ptr %i.by, i32 0 release, align 4
  %i.vn = icmp eq i32 %i.vm, 2
  br i1 %i.vn, label %bb.jk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuarduEECsbNLsQi0JuJ4_5tgrep.exit, !prof !20

bb.jk:                                            ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.by)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuarduEECsbNLsQi0JuJ4_5tgrep.exit

bb.jl:                                            ; preds = %bb.jq, %bb.v
  %i.vo = call noundef i32 @close(i32 noundef %i.dd) #32 ; 0 uses
  br label %bb.jg

5:                                                ; preds = %bb.ix, %bb.aq
  %lpad.thr_comm64 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fx) #31
          to label %.thread59 unwind label %bb.an

bb.jm:                                            ; preds = %.thread59
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #31
          to label %.thread66 unwind label %bb.an

bb.jn:                                            ; preds = %bb.n
  %i.vp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.val145 = load ptr, ptr %i.vp, align 8, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1200
  %i.vq = ptrtoint ptr %.val145 to i64            ; 2 uses
  %i.vr = and i64 %i.vq, 3
  switch i64 %i.vr, label %default.unreachable [
    i64 2, label %bb.jq
    i64 3, label %bb.jo
    i64 0, label %bb.jq
    i64 1, label %bb.jp
  ], !prof !18

bb.jo:                                            ; preds = %bb.jn
  %i.vs = icmp ult ptr %.val145, inttoptr (i64 188978561024 to ptr)
  %i.vt = and i64 %i.vq, 1095216660480
  %i.vu = icmp ne i64 %i.vt, 1095216660480
  call void @llvm.assume(i1 %i.vs)
  call void @llvm.assume(i1 %i.vu)
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jn
  %i.vv = getelementptr i8, ptr %.val145, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vv) ]
  %i.vw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.vv, ptr %i.vw, align 8, !alias.scope !1201, !noalias !1200
  store i8 3, ptr %i.c, align 8, !alias.scope !1201, !noalias !1200
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vw)
          to label %bb.jq unwind label %.thread20

bb.jq:                                            ; preds = %bb.jp, %bb.jo, %bb.jn, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.vx = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.vy = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve20retry_failed_reindex(ptr nonnull %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vx, i64 noundef %i.vy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 38)
          to label %bb.jl unwind label %.thread20

.thread16:                                        ; preds = %bb.ai, %bb.ae, %.thread20
  %.pn11415 = phi { ptr, i32 } [ %i.eh, %bb.ae ], [ %lpad.thr_comm, %.thread20 ], [ %i.ep, %bb.ai ]
  %i.vz = call noundef i32 @close(i32 noundef %i.dd) #32 ; 0 uses
  br label %.thread66

bb.jr:                                            ; preds = %bb.jz
  %i.wa = landingpad { ptr, i32 }
          cleanup
  br label %.thread66

_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit: ; preds = %bb.j
  %.mask.i = and i64 %i.ck, -4294967296
  %i.wb = icmp eq i64 %.mask.i, 171798691840
  br i1 %i.wb, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread75, label %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread

_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread: ; preds = %bb.k, %bb.j, %bb.j, %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit
  %i.wc = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.wd = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve20retry_failed_reindex(ptr nonnull %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.wc, i64 noundef %i.wd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 28)
          to label %bb.js unwind label %bb.ka

_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread75: ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i, %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr %.val154, ptr %i.bo, align 8
  %i.we = load ptr, ptr %i.br, align 8, !nonnull !9, !noundef !9
  %i.wf = load i64, ptr %i.bs, align 8, !noundef !9
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17drop_indexed_file(ptr noundef nonnull align 8 %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.we, i64 noundef %i.wf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 18)
          to label %bb.jx unwind label %bb.jw

bb.js:                                            ; preds = %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1202
  switch i64 %i.cl, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit
    i64 3, label %bb.jt
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit
    i64 1, label %bb.ju
  ], !prof !18

bb.jt:                                            ; preds = %bb.js
  %i.wg = icmp ult ptr %.val154, inttoptr (i64 188978561024 to ptr)
  %i.wh = and i64 %i.ck, 1095216660480
  %i.wi = icmp ne i64 %i.wh, 1095216660480
  call void @llvm.assume(i1 %i.wg)
  call void @llvm.assume(i1 %i.wi)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.ju:                                            ; preds = %bb.js
  %i.wj = getelementptr i8, ptr %.val154, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wj) ]
  %i.wk = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.wj, ptr %i.wk, align 8, !alias.scope !1203, !noalias !1202
  store i8 3, ptr %i.b, align 8, !alias.scope !1203, !noalias !1202
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.wk)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.ju, %bb.js, %bb.js, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1202
  br label %bb.jv

bb.jv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit, %.thread70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.jg

bb.jw:                                            ; preds = %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread75
  %i.wl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bo) #31
          to label %.thread66 unwind label %bb.an

bb.jx:                                            ; preds = %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1204
  switch i64 %i.cl, label %default.unreachable [
    i64 2, label %.thread70
    i64 3, label %bb.jy
    i64 0, label %.thread70
    i64 1, label %bb.jz
  ], !prof !18

bb.jy:                                            ; preds = %bb.jx
  %i.wm = icmp ult ptr %.val154, inttoptr (i64 188978561024 to ptr)
  %i.wn = and i64 %i.ck, 1095216660480
  %i.wo = icmp ne i64 %i.wn, 1095216660480
  call void @llvm.assume(i1 %i.wm)
  call void @llvm.assume(i1 %i.wo)
  br label %.thread70

bb.jz:                                            ; preds = %bb.jx
  %i.wp = getelementptr i8, ptr %.val154, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wp) ]
  %i.wq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.wp, ptr %i.wq, align 8, !alias.scope !1205, !noalias !1204
  store i8 3, ptr %i.a, align 8, !alias.scope !1205, !noalias !1204
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.wq)
          to label %.thread70 unwind label %bb.jr

.thread70:                                        ; preds = %bb.jy, %bb.jx, %bb.jx, %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.jv

bb.ka:                                            ; preds = %_RNvNtCsbNLsQi0JuJ4_5tgrep5serve17proves_ineligible.exit.thread, %.noexc, %bb.f
  %lpad.thr_comm75 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cj) #31
          to label %.thread66 unwind label %bb.an

bb.kb:                                            ; preds = %.thread66
  resume { ptr, i32 } %.pn116.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep5serve13handle_reload(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [8 x i8], align 8                ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 10 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [48 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 8 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 8 uses
  %i.at = alloca [16 x i8], align 8               ; 11 uses
  %i.au = alloca [152 x i8], align 8              ; 8 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [136 x i8], align 8              ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [8 x i8], align 8                ; 6 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 16              ; 7 uses
  %i.bc = alloca [128 x i8], align 8              ; 7 uses
  %i.bd = alloca [128 x i8], align 8              ; 15 uses
  %i.be = alloca [24 x i8], align 8               ; 8 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [32 x i8], align 8               ; 6 uses
  %i.bh = alloca [32 x i8], align 8               ; 8 uses
  %i.bi = alloca [32 x i8], align 8               ; 9 uses
  %i.bj = alloca [48 x i8], align 8               ; 7 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [32 x i8], align 8               ; 6 uses
  %i.bm = alloca [120 x i8], align 8              ; 7 uses
  %i.bn = alloca [120 x i8], align 8              ; 16 uses
  %i.bo = alloca [48 x i8], align 8               ; 7 uses
  %i.bp = alloca [48 x i8], align 8               ; 7 uses
  %i.bq = alloca [48 x i8], align 8               ; 7 uses
  %i.br = alloca [48 x i8], align 8               ; 7 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 4 uses
  %i.by = alloca [24 x i8], align 8               ; 4 uses
  %i.bz = alloca [32 x i8], align 8               ; 6 uses
  %i.ca = alloca [32 x i8], align 8               ; 4 uses
  %i.cb = alloca [24 x i8], align 8               ; 7 uses
  %i.cc = alloca [32 x i8], align 8               ; 5 uses
  %i.cd = alloca [24 x i8], align 8               ; 7 uses
  %i.ce = alloca [32 x i8], align 8               ; 5 uses
  %i.cf = alloca [32 x i8], align 8               ; 6 uses
  %i.cg = alloca [24 x i8], align 8               ; 4 uses
  %i.ch = alloca [32 x i8], align 8               ; 4 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [24 x i8], align 8               ; 15 uses
  %i.ck = alloca [24 x i8], align 8               ; 8 uses
  %i.cl = alloca [16 x i8], align 8               ; 6 uses
  %i.cm = alloca [144 x i8], align 8              ; 6 uses
  %i.cn = alloca [32 x i8], align 8               ; 4 uses
  %i.co = alloca [16 x i8], align 8               ; 5 uses
  %i.cp = alloca [16 x i8], align 8               ; 5 uses
  %i.cq = alloca [24 x i8], align 8               ; 4 uses
  %i.cr = alloca [24 x i8], align 8               ; 9 uses
  %i.cs = alloca [32 x i8], align 8               ; 6 uses
  %i.ct = alloca [16 x i8], align 8               ; 5 uses
  %i.cu = alloca [32 x i8], align 8               ; 6 uses
  %i.cv = alloca [32 x i8], align 8               ; 6 uses
  %i.cw = alloca [16 x i8], align 8               ; 5 uses
  %i.cx = alloca [32 x i8], align 8               ; 6 uses
  %i.cy = alloca [144 x i8], align 8              ; 4 uses
  %i.cz = alloca [144 x i8], align 8              ; 14 uses
  %i.da = alloca [144 x i8], align 8              ; 22 uses
  %i.db = alloca [24 x i8], align 8               ; 5 uses
  %i.dc = alloca [16 x i8], align 8               ; 5 uses
  %i.dd = alloca [24 x i8], align 8               ; 4 uses
  %i.de = alloca [24 x i8], align 8               ; 9 uses
  %i.df = alloca [32 x i8], align 8               ; 6 uses
  %i.dg = alloca [16 x i8], align 8               ; 5 uses
  %i.dh = alloca [32 x i8], align 8               ; 6 uses
  %i.di = alloca [80 x i8], align 8               ; 17 uses
  %i.dj = alloca [24 x i8], align 8               ; 5 uses
  %i.dk = alloca [80 x i8], align 16              ; 18 uses
  %i.dl = alloca [104 x i8], align 8              ; 7 uses
  %i.dm = alloca [104 x i8], align 8              ; 13 uses
  %i.dn = alloca [24 x i8], align 8               ; 17 uses
  %i.do = alloca [8 x i8], align 8                ; 13 uses
  %i.dp = alloca [24 x i8], align 8               ; 5 uses
  %i.dq = alloca [24 x i8], align 8               ; 8 uses
  %i.dr = alloca [16 x i8], align 8               ; 10 uses
  %i.ds = alloca [24 x i8], align 8               ; 8 uses
  %i.dt = alloca [24 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  %i.du = load ptr, ptr %2, align 8, !nonnull !9, !noundef !9 ; 69 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 80 ; 2 uses
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv)
          to label %bb.c unwind label %bb.b

.body271:                                         ; preds = %bb.b, %.body
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %.body ], [ %i.dz, %bb.b ] ; 2 uses
  %.sroa.018.0 = phi i8 [ %.sroa.018.2, %.body ], [ %.sroa.018.1, %bb.b ]
  %i.dw = trunc nuw i8 %.sroa.018.0 to i1
  %i.dx = load i8, ptr %1, align 8, !range !36
  %i.dy = icmp ne i8 %i.dx, -1
  %or.cond556.not = select i1 %i.dw, i1 %i.dy, i1 false
  br i1 %or.cond556.not, label %bb.ny, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit361

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i313.invoke, %bb.a
  %.sroa.018.1 = phi i8 [ 1, %bb.a ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i313.invoke ]
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body271

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 1991 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 1992
  br label %bb.d

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuarduEECsbNLsQi0JuJ4_5tgrep.exit359
  %.pn79 = phi { ptr, i32 } [ %.pn76, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuarduEECsbNLsQi0JuJ4_5tgrep.exit359 ], [ %.pn76.pn406, %.thread ], [ %i.em, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.sroa.018.2 = phi i8 [ %.sroa.018.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuarduEECsbNLsQi0JuJ4_5tgrep.exit359 ], [ %.sroa.018.3407, %.thread ], [ 1, %bb.j ], [ 1, %.loopexit ], [ 1, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dt) #31
          to label %.body271 unwind label %bb.ik

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.c, %bb.e
  %i.ec = load atomic i8, ptr %i.ea seq_cst, align 1
  %.not = icmp eq i8 %i.ec, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions5sleep(i64 noundef 0, i32 noundef 50000000)
          to label %bb.d unwind label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ed = load atomic i8, ptr %i.eb seq_cst, align 1
  %.not48 = icmp eq i8 %i.ed, 0
  br i1 %.not48, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 1432
  invoke void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexuE4lockCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ds, ptr noundef nonnull align 4 %i.ee)
          to label %bb.h unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  %i.ef = load i64, ptr %i.ds, align 8, !range !14, !alias.scope !1342, !noalias !1343, !noundef !9
  %i.eg = trunc nuw i64 %i.ef to i1
end_hunk_1
