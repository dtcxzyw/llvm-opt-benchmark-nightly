Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_parser?download=true
inline.NumInlined: 13536
inline.NumDeleted: 4031
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN11flatbuffers6Parser9ParseDeclEPKc:bb.a
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !81
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375
  %i.nd = load ptr, ptr %25, align 8, !tbaa !82   ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.nf = icmp eq ptr %i.nd, %i.ne
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
  %i.ng = load i64, ptr %i.ne, align 8, !tbaa !81
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.nh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378
  %i.ni = load ptr, ptr %26, align 8, !tbaa !82   ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !81
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381
  %i.nn = load ptr, ptr %27, align 8, !tbaa !82   ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.np = icmp eq ptr %i.nn, %i.no
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383
  %i.nq = load i64, ptr %i.no, align 8, !tbaa !81
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384
  %i.ns = load ptr, ptr %28, align 8, !tbaa !82   ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.nu = icmp eq ptr %i.ns, %i.nt
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386
  %i.nv = load i64, ptr %i.nt, align 8, !tbaa !81
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387
  %i.nx = load ptr, ptr %29, align 8, !tbaa !82   ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.nz = icmp eq ptr %i.nx, %i.ny
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389
  %i.oa = load i64, ptr %i.ny, align 8, !tbaa !81
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.ob) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %.critedge232

bb.cs:                                            ; preds = %bb.ck
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410

bb.ct:                                            ; preds = %bb.cl
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407

bb.cu:                                            ; preds = %bb.cm
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404

bb.cv:                                            ; preds = %bb.cn
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401

bb.cw:                                            ; preds = %bb.co
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398

bb.cx:                                            ; preds = %bb.cp
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395

bb.cy:                                            ; preds = %bb.cq
  %i.oi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oj = load ptr, ptr %24, align 8, !tbaa !82   ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393: ; preds = %bb.cy
  %i.om = load i64, ptr %i.ok, align 8, !tbaa !81
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.on) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393, %bb.cx
  %.pn188 = phi { ptr, i32 } [ %i.oh, %bb.cx ], [ %i.oi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393 ], [ %i.oi, %bb.cy ] ; 2 uses
  %i.oo = load ptr, ptr %25, align 8, !tbaa !82   ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395
  %i.or = load i64, ptr %i.op, align 8, !tbaa !81
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396, %bb.cw
  %.pn188.pn = phi { ptr, i32 } [ %i.og, %bb.cw ], [ %.pn188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396 ], [ %.pn188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395 ] ; 2 uses
  %i.ot = load ptr, ptr %26, align 8, !tbaa !82   ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ov = icmp eq ptr %i.ot, %i.ou
  br i1 %i.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398
  %i.ow = load i64, ptr %i.ou, align 8, !tbaa !81
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ox) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399, %bb.cv
  %.pn188.pn.pn = phi { ptr, i32 } [ %i.of, %bb.cv ], [ %.pn188.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399 ], [ %.pn188.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398 ] ; 2 uses
  %i.oy = load ptr, ptr %27, align 8, !tbaa !82   ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401
  %i.pb = load i64, ptr %i.oz, align 8, !tbaa !81
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402, %bb.cu
  %.pn188.pn.pn.pn = phi { ptr, i32 } [ %i.oe, %bb.cu ], [ %.pn188.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402 ], [ %.pn188.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401 ] ; 2 uses
  %i.pd = load ptr, ptr %28, align 8, !tbaa !82   ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404
  %i.pg = load i64, ptr %i.pe, align 8, !tbaa !81
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.ph) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405, %bb.ct
  %.pn188.pn.pn.pn.pn = phi { ptr, i32 } [ %i.od, %bb.ct ], [ %.pn188.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405 ], [ %.pn188.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404 ] ; 2 uses
  %i.pi = load ptr, ptr %29, align 8, !tbaa !82   ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.pk = icmp eq ptr %i.pi, %i.pj
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407
  %i.pl = load i64, ptr %i.pj, align 8, !tbaa !81
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408, %bb.cs
  %.pn188.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oc, %bb.cs ], [ %.pn188.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408 ], [ %.pn188.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.da

bb.cz:                                            ; preds = %bb.cj
  %i.pn = shl i16 %i.mx, 1
  %i.po = add i16 %i.pn, 4
  %i.pp = getelementptr inbounds nuw i8, ptr %i.kv, i64 264
  store i16 %i.po, ptr %i.pp, align 8, !tbaa !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %32 = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.pq = load ptr, ptr %i.hs, align 8, !tbaa !313
  %i.pr = load ptr, ptr %i.hr, align 8, !tbaa !314 ; 2 uses
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %33 = trunc i64 %i.pu to i32
  %34 = lshr i32 %33, 3
  %35 = and i32 %34, 65535
  %.not197 = icmp samesign ugt i32 %35, %32
  br i1 %.not197, label %bb.bt, label %.critedge234, !llvm.loop !1830

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, %bb.ce
  %.pn188.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410 ], [ %.pn183.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374 ], [ %i.mb, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  br label %bb.ed

.critedge232:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  br label %.critedge236

.critedge234:                                     ; preds = %bb.cz, %bb.bc, %_ZN11flatbuffers9StructDef12PadLastFieldEm.exit.thread, %.preheader, %._crit_edge.thread
  %i.pv = load ptr, ptr %i.d, align 8, !tbaa !252 ; 8 uses
  invoke void @_ZN11flatbuffers6Parser10CheckClashERSt6vectorIPNS_8FieldDefESaIS3_EEPNS_9StructDefEPKcNS_8BaseTypeE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef %i.pv, ptr noundef nonnull @.str.288, i32 noundef 16)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %.critedge234
  store i8 1, ptr %i.bx, align 1, !tbaa !213
  %i.pw = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.px = trunc nuw i8 %i.pw to i1
  br i1 %i.px, label %.critedge236, label %bb.dd

bb.dc:                                            ; preds = %bb.dn, %bb.dl, %bb.dj, %bb.dh, %bb.df, %bb.dd, %.critedge234
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dd:                                            ; preds = %bb.db
  invoke void @_ZN11flatbuffers6Parser10CheckClashERSt6vectorIPNS_8FieldDefESaIS3_EEPNS_9StructDefEPKcNS_8BaseTypeE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef %i.pv, ptr noundef nonnull @.str.195, i32 noundef 16)
          to label %bb.de unwind label %bb.dc

bb.de:                                            ; preds = %bb.dd
  store i8 1, ptr %i.bx, align 1, !tbaa !213
  %i.pz = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.qa = trunc nuw i8 %i.pz to i1
  br i1 %i.qa, label %.critedge236, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN11flatbuffers6Parser10CheckClashERSt6vectorIPNS_8FieldDefESaIS3_EEPNS_9StructDefEPKcNS_8BaseTypeE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef %i.pv, ptr noundef nonnull @.str.196, i32 noundef 14)
          to label %bb.dg unwind label %bb.dc

bb.dg:                                            ; preds = %bb.df
  store i8 1, ptr %i.bx, align 1, !tbaa !213
  %i.qb = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %.critedge236, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN11flatbuffers6Parser10CheckClashERSt6vectorIPNS_8FieldDefESaIS3_EEPNS_9StructDefEPKcNS_8BaseTypeE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef %i.pv, ptr noundef nonnull @.str.197, i32 noundef 14)
          to label %bb.di unwind label %bb.dc

bb.di:                                            ; preds = %bb.dh
  store i8 1, ptr %i.bx, align 1, !tbaa !213
  %i.qd = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %.critedge236, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN11flatbuffers6Parser10CheckClashERSt6vectorIPNS_8FieldDefESaIS3_EEPNS_9StructDefEPKcNS_8BaseTypeE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef %i.pv, ptr noundef nonnull @.str.198, i32 noundef 13)
          to label %bb.dk unwind label %bb.dc

bb.dk:                                            ; preds = %bb.dj
  store i8 1, ptr %i.bx, align 1, !tbaa !213
  %i.qf = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %.critedge236, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN11flatbuffers6Parser10CheckClashERSt6vectorIPNS_8FieldDefESaIS3_EEPNS_9StructDefEPKcNS_8BaseTypeE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef %i.pv, ptr noundef nonnull @.str.199, i32 noundef 13)
          to label %bb.dm unwind label %bb.dc

bb.dm:                                            ; preds = %bb.dl
  store i8 1, ptr %i.bx, align 1, !tbaa !213
  %i.qh = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.qi = trunc nuw i8 %i.qh to i1
  br i1 %i.qi, label %.critedge236, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN11flatbuffers6Parser6ExpectEi(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, i32 noundef 125)
          to label %bb.do unwind label %bb.dc

bb.do:                                            ; preds = %bb.dn
  store i8 1, ptr %i.bx, align 1, !tbaa !213
  %i.qj = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %.critedge236, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !230
  invoke void @_ZNK11flatbuffers9Namespace21GetFullyQualifiedNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %i.qm, ptr noundef nonnull align 8 dereferenceable(32) %i.pv, i64 noundef 1000)
          to label %bb.dq unwind label %bb.dw

bb.dq:                                            ; preds = %bb.dp
  %i.qn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %bb.dr unwind label %bb.dx     ; 6 uses

bb.dr:                                            ; preds = %bb.dq
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 15, ptr %i.qn, align 8, !tbaa !268
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  store i32 0, ptr %i.qp, align 4, !tbaa !306
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store ptr %i.pv, ptr %i.qq, align 8, !tbaa !269
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store ptr null, ptr %i.qr, align 8, !tbaa !324
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  store i16 0, ptr %i.qs, align 8, !tbaa !319
  %i.qt = invoke noundef zeroext i1 @_ZN11flatbuffers11SymbolTableINS_4TypeEE3AddERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.qo, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull %i.qn)
          to label %bb.ds unwind label %bb.dx

bb.ds:                                            ; preds = %bb.dr
  br i1 %i.qt, label %bb.dt, label %bb.ea

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull @.str.182, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.du unwind label %bb.dy

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %bb.du
  %i.qu = load ptr, ptr %31, align 8, !tbaa !82   ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411: ; preds = %bb.dv
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !81
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  br label %bb.eb

bb.dw:                                            ; preds = %bb.dp
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

bb.dx:                                            ; preds = %bb.dr, %bb.dq
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.dy:                                            ; preds = %bb.dt
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416

bb.dz:                                            ; preds = %bb.du
  %i.rc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rd = load ptr, ptr %31, align 8, !tbaa !82   ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.rf = icmp eq ptr %i.rd, %i.re
  br i1 %i.rf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414: ; preds = %bb.dz
  %i.rg = load i64, ptr %i.re, align 8, !tbaa !81
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414, %bb.dy
  %.pn206 = phi { ptr, i32 } [ %i.rb, %bb.dy ], [ %i.rc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414 ], [ %i.rc, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  br label %bb.ec

bb.ea:                                            ; preds = %bb.ds
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !1834
  store i8 0, ptr %i.bx, align 1, !tbaa !213, !alias.scope !1834
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413
  %i.ri = load ptr, ptr %30, align 8, !tbaa !82   ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417: ; preds = %bb.eb
  %i.rl = load i64, ptr %i.rj, align 8, !tbaa !81
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %.critedge236

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416, %bb.dx
  %.pn206.pn = phi { ptr, i32 } [ %.pn206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416 ], [ %i.ra, %bb.dx ] ; 2 uses
  %i.rn = load ptr, ptr %30, align 8, !tbaa !82   ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.rp = icmp eq ptr %i.rn, %i.ro
end_hunk_0
